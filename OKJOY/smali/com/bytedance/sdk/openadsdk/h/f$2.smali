.class Lcom/bytedance/sdk/openadsdk/h/f$2;
.super Ljava/lang/Object;
.source "ProxyServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/h/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/h/f;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/h/f;)V
    .registers 2

    .prologue
    .line 223
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/h/f$2;->a:Lcom/bytedance/sdk/openadsdk/h/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    const/4 v6, 0x1

    const/4 v0, 0x0

    .line 227
    :try_start_2
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/h/f$2;->a:Lcom/bytedance/sdk/openadsdk/h/f;

    new-instance v2, Ljava/net/ServerSocket;

    const/4 v3, 0x0

    const/16 v4, 0x32

    const-string v5, "127.0.0.1"

    invoke-static {v5}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Ljava/net/ServerSocket;-><init>(IILjava/net/InetAddress;)V

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/h/f;->a(Lcom/bytedance/sdk/openadsdk/h/f;Ljava/net/ServerSocket;)Ljava/net/ServerSocket;
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_15} :catch_3a

    .line 237
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/h/f$2;->a:Lcom/bytedance/sdk/openadsdk/h/f;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/h/f$2;->a:Lcom/bytedance/sdk/openadsdk/h/f;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/h/f;->c(Lcom/bytedance/sdk/openadsdk/h/f;)Ljava/net/ServerSocket;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v2

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/h/f;->a(Lcom/bytedance/sdk/openadsdk/h/f;I)I

    .line 238
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/h/f$2;->a:Lcom/bytedance/sdk/openadsdk/h/f;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/h/f;->d(Lcom/bytedance/sdk/openadsdk/h/f;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_6a

    .line 240
    const-string v0, "socket not bound"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/h/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/f$2;->a:Lcom/bytedance/sdk/openadsdk/h/f;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/h/f;->b(Lcom/bytedance/sdk/openadsdk/h/f;)V

    .line 304
    :cond_39
    :goto_39
    return-void

    .line 228
    :catch_3a
    move-exception v0

    .line 229
    sget-boolean v1, Lcom/bytedance/sdk/openadsdk/h/e;->c:Z

    if-eqz v1, :cond_5b

    .line 230
    const-string v1, "TAG_PROXY_ProxyServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create ServerSocket error!  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    :cond_5b
    const-string v1, "create ServerSocket error"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/h/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/f$2;->a:Lcom/bytedance/sdk/openadsdk/h/f;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/h/f;->b(Lcom/bytedance/sdk/openadsdk/h/f;)V

    goto :goto_39

    .line 245
    :cond_6a
    const-string v1, "127.0.0.1"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/h/f$2;->a:Lcom/bytedance/sdk/openadsdk/h/f;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/h/f;->d(Lcom/bytedance/sdk/openadsdk/h/f;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/h/j;->a(Ljava/lang/String;I)V

    .line 247
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/h/f$2;->a:Lcom/bytedance/sdk/openadsdk/h/f;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/h/f;->e(Lcom/bytedance/sdk/openadsdk/h/f;)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 251
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/h/f$2;->a:Lcom/bytedance/sdk/openadsdk/h/f;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/h/f;->f(Lcom/bytedance/sdk/openadsdk/h/f;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1, v0, v6}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 255
    sget-boolean v1, Lcom/bytedance/sdk/openadsdk/h/e;->c:Z

    if-eqz v1, :cond_94

    .line 256
    const-string v1, "TAG_PROXY_ProxyServer"

    const-string v2, "proxy server start!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_94
    move v1, v0

    .line 262
    :goto_95
    :try_start_95
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/f$2;->a:Lcom/bytedance/sdk/openadsdk/h/f;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/h/f;->f(Lcom/bytedance/sdk/openadsdk/h/f;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I
    :try_end_9e
    .catch Ljava/lang/Throwable; {:try_start_95 .. :try_end_9e} :catch_d8

    move-result v0

    if-ne v0, v6, :cond_fa

    .line 265
    :try_start_a1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/f$2;->a:Lcom/bytedance/sdk/openadsdk/h/f;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/h/f;->c(Lcom/bytedance/sdk/openadsdk/h/f;)Ljava/net/ServerSocket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;
    :try_end_aa
    .catch Ljava/io/IOException; {:try_start_a1 .. :try_end_aa} :catch_10c
    .catch Ljava/lang/Throwable; {:try_start_a1 .. :try_end_aa} :catch_d8

    move-result-object v0

    .line 279
    :try_start_ab
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/h/f$2;->a:Lcom/bytedance/sdk/openadsdk/h/f;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/h/f;->g(Lcom/bytedance/sdk/openadsdk/h/f;)Lcom/bytedance/sdk/openadsdk/h/b/c;

    move-result-object v2

    .line 280
    if-eqz v2, :cond_121

    .line 281
    new-instance v3, Lcom/bytedance/sdk/openadsdk/h/g$a;

    invoke-direct {v3}, Lcom/bytedance/sdk/openadsdk/h/g$a;-><init>()V

    .line 283
    invoke-virtual {v3, v2}, Lcom/bytedance/sdk/openadsdk/h/g$a;->a(Lcom/bytedance/sdk/openadsdk/h/b/c;)Lcom/bytedance/sdk/openadsdk/h/g$a;

    move-result-object v2

    .line 284
    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/openadsdk/h/g$a;->a(Ljava/net/Socket;)Lcom/bytedance/sdk/openadsdk/h/g$a;

    move-result-object v0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/h/f$2;->a:Lcom/bytedance/sdk/openadsdk/h/f;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/h/f;->h(Lcom/bytedance/sdk/openadsdk/h/f;)Lcom/bytedance/sdk/openadsdk/h/g$c;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/h/g$a;->a(Lcom/bytedance/sdk/openadsdk/h/g$c;)Lcom/bytedance/sdk/openadsdk/h/g$a;

    move-result-object v0

    .line 285
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/h/g$a;->a()Lcom/bytedance/sdk/openadsdk/h/g;

    move-result-object v0

    .line 287
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/i/a;->a()Lcom/bytedance/sdk/openadsdk/i/a;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v0, v3}, Lcom/bytedance/sdk/openadsdk/i/a;->b(Ljava/lang/Runnable;I)V
    :try_end_d7
    .catch Ljava/lang/Throwable; {:try_start_ab .. :try_end_d7} :catch_d8

    goto :goto_95

    .line 293
    :catch_d8
    move-exception v0

    .line 295
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 296
    const-string v1, "TAG_PROXY_ProxyServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "proxy server crashed!  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    const-string v1, "error"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/h/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    :cond_fa
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/h/e;->c:Z

    if-eqz v0, :cond_105

    .line 301
    const-string v0, "TAG_PROXY_ProxyServer"

    const-string v1, "proxy server closed!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    :cond_105
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/f$2;->a:Lcom/bytedance/sdk/openadsdk/h/f;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/h/f;->b(Lcom/bytedance/sdk/openadsdk/h/f;)V

    goto/16 :goto_39

    .line 266
    :catch_10c
    move-exception v0

    .line 267
    :try_start_10d
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 268
    const-string v2, "accept error"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/bytedance/sdk/openadsdk/h/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    add-int/lit8 v0, v1, 0x1

    const/4 v1, 0x3

    if-gt v0, v1, :cond_fa

    move v1, v0

    .line 273
    goto/16 :goto_95

    .line 290
    :cond_121
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/h/g/d;->a(Ljava/net/Socket;)V
    :try_end_124
    .catch Ljava/lang/Throwable; {:try_start_10d .. :try_end_124} :catch_d8

    goto/16 :goto_95
.end method
