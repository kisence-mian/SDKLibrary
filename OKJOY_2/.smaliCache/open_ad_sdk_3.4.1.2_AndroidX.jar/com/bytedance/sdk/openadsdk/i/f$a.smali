.class final Lcom/bytedance/sdk/openadsdk/i/f$a;
.super Ljava/lang/Object;
.source "ProxyServer.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/i/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
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

    .line 424
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 425
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/i/f$a;->a:Ljava/lang/String;

    .line 426
    iput p2, p0, Lcom/bytedance/sdk/openadsdk/i/f$a;->b:I

    .line 427
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Boolean;
    .registers 6

    .line 430
    nop

    .line 432
    const/4 v0, 0x0

    :try_start_2
    new-instance v1, Ljava/net/Socket;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/i/f$a;->a:Ljava/lang/String;

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/i/f$a;->b:I

    invoke-direct {v1, v2, v3}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V
    :try_end_b
    .catchall {:try_start_2 .. :try_end_b} :catchall_47

    .line 433
    const/16 v0, 0x7d0

    :try_start_d
    invoke-virtual {v1, v0}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 434
    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 435
    const-string v2, "Ping\n"

    sget-object v3, Lcom/bytedance/sdk/openadsdk/i/g/d;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V

    .line 436
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 437
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 438
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 439
    const-string v2, "OK"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_57

    .line 440
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_41
    .catchall {:try_start_d .. :try_end_41} :catchall_45

    .line 446
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/i/g/d;->a(Ljava/net/Socket;)V

    .line 440
    return-object v0

    .line 442
    :catchall_45
    move-exception v0

    goto :goto_4b

    :catchall_47
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    .line 443
    :goto_4b
    :try_start_4b
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 444
    const-string v2, "ping error"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/bytedance/sdk/openadsdk/i/f;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_57
    .catchall {:try_start_4b .. :try_end_57} :catchall_61

    .line 446
    :cond_57
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/i/g/d;->a(Ljava/net/Socket;)V

    .line 447
    nop

    .line 448
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 446
    :catchall_61
    move-exception v0

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/i/g/d;->a(Ljava/net/Socket;)V

    .line 447
    throw v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 421
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/i/f$a;->a()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
