.class final Lcom/bytedance/sdk/openadsdk/h/f$a;
.super Ljava/lang/Object;
.source "ProxyServer.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/h/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .prologue
    .line 421
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 422
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/h/f$a;->a:Ljava/lang/String;

    .line 423
    iput p2, p0, Lcom/bytedance/sdk/openadsdk/h/f$a;->b:I

    .line 424
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Boolean;
    .registers 5

    .prologue
    .line 427
    const/4 v2, 0x0

    .line 429
    :try_start_1
    new-instance v1, Ljava/net/Socket;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/f$a;->a:Ljava/lang/String;

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/h/f$a;->b:I

    invoke-direct {v1, v0, v3}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_a} :catch_4d
    .catchall {:try_start_1 .. :try_end_a} :catchall_5f

    .line 430
    const/16 v0, 0x7d0

    :try_start_c
    invoke-virtual {v1, v0}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 431
    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 432
    const-string v2, "Ping\n"

    sget-object v3, Lcom/bytedance/sdk/openadsdk/h/g/d;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V

    .line 433
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 434
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 435
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 436
    const-string v2, "OK"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 437
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_3f
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_3f} :catch_67
    .catchall {:try_start_c .. :try_end_3f} :catchall_65

    move-result-object v0

    .line 443
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/h/g/d;->a(Ljava/net/Socket;)V

    .line 445
    :goto_43
    return-object v0

    .line 443
    :cond_44
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/h/g/d;->a(Ljava/net/Socket;)V

    .line 445
    :goto_47
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_43

    .line 439
    :catch_4d
    move-exception v0

    move-object v1, v2

    .line 440
    :goto_4f
    :try_start_4f
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 441
    const-string v2, "ping error"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/bytedance/sdk/openadsdk/h/f;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5b
    .catchall {:try_start_4f .. :try_end_5b} :catchall_65

    .line 443
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/h/g/d;->a(Ljava/net/Socket;)V

    goto :goto_47

    :catchall_5f
    move-exception v0

    move-object v1, v2

    :goto_61
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/h/g/d;->a(Ljava/net/Socket;)V

    throw v0

    :catchall_65
    move-exception v0

    goto :goto_61

    .line 439
    :catch_67
    move-exception v0

    goto :goto_4f
.end method

.method public synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 418
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/h/f$a;->a()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
