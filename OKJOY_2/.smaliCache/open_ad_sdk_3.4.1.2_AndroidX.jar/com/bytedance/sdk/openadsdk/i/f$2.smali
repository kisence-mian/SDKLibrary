.class Lcom/bytedance/sdk/openadsdk/i/f$2;
.super Ljava/lang/Object;
.source "ProxyServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/i/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/i/f;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/i/f;)V
    .registers 2

    .line 224
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/i/f$2;->a:Lcom/bytedance/sdk/openadsdk/i/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 228
    const-string v0, "127.0.0.1"

    const-string v1, "TAG_PROXY_ProxyServer"

    :try_start_4
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/i/f$2;->a:Lcom/bytedance/sdk/openadsdk/i/f;

    new-instance v3, Ljava/net/ServerSocket;

    const/16 v4, 0x32

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v3, v6, v4, v5}, Ljava/net/ServerSocket;-><init>(IILjava/net/InetAddress;)V

    invoke-static {v2, v3}, Lcom/bytedance/sdk/openadsdk/i/f;->a(Lcom/bytedance/sdk/openadsdk/i/f;Ljava/net/ServerSocket;)Ljava/net/ServerSocket;
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_15} :catch_eb

    .line 237
    nop

    .line 238
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/i/f$2;->a:Lcom/bytedance/sdk/openadsdk/i/f;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/i/f;->c(Lcom/bytedance/sdk/openadsdk/i/f;)Ljava/net/ServerSocket;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v3

    invoke-static {v2, v3}, Lcom/bytedance/sdk/openadsdk/i/f;->a(Lcom/bytedance/sdk/openadsdk/i/f;I)I

    .line 239
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/i/f$2;->a:Lcom/bytedance/sdk/openadsdk/i/f;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/i/f;->d(Lcom/bytedance/sdk/openadsdk/i/f;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_39

    .line 241
    const-string v0, "socket not bound"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/i/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/i/f$2;->a:Lcom/bytedance/sdk/openadsdk/i/f;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/i/f;->b(Lcom/bytedance/sdk/openadsdk/i/f;)V

    .line 243
    return-void

    .line 246
    :cond_39
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/i/f$2;->a:Lcom/bytedance/sdk/openadsdk/i/f;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/i/f;->d(Lcom/bytedance/sdk/openadsdk/i/f;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/i/j;->a(Ljava/lang/String;I)V

    .line 248
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/i/f$2;->a:Lcom/bytedance/sdk/openadsdk/i/f;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/i/f;->e(Lcom/bytedance/sdk/openadsdk/i/f;)Z

    move-result v0

    if-nez v0, :cond_4b

    .line 249
    return-void

    .line 252
    :cond_4b
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/i/f$2;->a:Lcom/bytedance/sdk/openadsdk/i/f;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/i/f;->f(Lcom/bytedance/sdk/openadsdk/i/f;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v6, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-nez v0, :cond_59

    .line 253
    return-void

    .line 256
    :cond_59
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/i/e;->c:Z

    if-eqz v0, :cond_62

    .line 257
    const-string v0, "proxy server start!"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    :cond_62
    nop

    .line 263
    :goto_63
    :try_start_63
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/i/f$2;->a:Lcom/bytedance/sdk/openadsdk/i/f;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/i/f;->f(Lcom/bytedance/sdk/openadsdk/i/f;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0
    :try_end_6d
    .catchall {:try_start_63 .. :try_end_6d} :catchall_bc

    if-ne v0, v2, :cond_bb

    .line 266
    :try_start_6f
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/i/f$2;->a:Lcom/bytedance/sdk/openadsdk/i/f;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/i/f;->c(Lcom/bytedance/sdk/openadsdk/i/f;)Ljava/net/ServerSocket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v0
    :try_end_79
    .catch Ljava/io/IOException; {:try_start_6f .. :try_end_79} :catch_a7
    .catchall {:try_start_6f .. :try_end_79} :catchall_bc

    .line 276
    nop

    .line 280
    :try_start_7a
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/i/f$2;->a:Lcom/bytedance/sdk/openadsdk/i/f;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/i/f;->g(Lcom/bytedance/sdk/openadsdk/i/f;)Lcom/bytedance/sdk/openadsdk/i/b/c;

    move-result-object v3

    .line 281
    if-eqz v3, :cond_a3

    .line 282
    new-instance v4, Lcom/bytedance/sdk/openadsdk/i/g$a;

    invoke-direct {v4}, Lcom/bytedance/sdk/openadsdk/i/g$a;-><init>()V

    .line 284
    invoke-virtual {v4, v3}, Lcom/bytedance/sdk/openadsdk/i/g$a;->a(Lcom/bytedance/sdk/openadsdk/i/b/c;)Lcom/bytedance/sdk/openadsdk/i/g$a;

    move-result-object v3

    .line 285
    invoke-virtual {v3, v0}, Lcom/bytedance/sdk/openadsdk/i/g$a;->a(Ljava/net/Socket;)Lcom/bytedance/sdk/openadsdk/i/g$a;

    move-result-object v0

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/i/f$2;->a:Lcom/bytedance/sdk/openadsdk/i/f;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/i/f;->h(Lcom/bytedance/sdk/openadsdk/i/f;)Lcom/bytedance/sdk/openadsdk/i/g$c;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/i/g$a;->a(Lcom/bytedance/sdk/openadsdk/i/g$c;)Lcom/bytedance/sdk/openadsdk/i/g$a;

    move-result-object v0

    .line 286
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/i/g$a;->a()Lcom/bytedance/sdk/openadsdk/i/g;

    move-result-object v0

    .line 288
    const/16 v3, 0xa

    invoke-static {v0, v3}, Lcom/bytedance/sdk/openadsdk/j/e;->a(Ljava/lang/Runnable;I)V

    .line 290
    goto :goto_a6

    .line 291
    :cond_a3
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/i/g/d;->a(Ljava/net/Socket;)V

    .line 293
    :goto_a6
    goto :goto_63

    .line 267
    :catch_a7
    move-exception v0

    .line 268
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 269
    const-string v3, "accept error"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/bytedance/sdk/openadsdk/i/f;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b4
    .catchall {:try_start_7a .. :try_end_b4} :catchall_bc

    .line 271
    add-int/lit8 v6, v6, 0x1

    const/4 v0, 0x3

    if-le v6, v0, :cond_ba

    .line 272
    goto :goto_bb

    .line 274
    :cond_ba
    goto :goto_63

    .line 299
    :cond_bb
    :goto_bb
    goto :goto_dc

    .line 294
    :catchall_bc
    move-exception v0

    .line 296
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 297
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

    .line 298
    const-string v2, "error"

    invoke-static {v2, v0}, Lcom/bytedance/sdk/openadsdk/i/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    :goto_dc
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/i/e;->c:Z

    if-eqz v0, :cond_e5

    .line 302
    const-string v0, "proxy server closed!"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    :cond_e5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/i/f$2;->a:Lcom/bytedance/sdk/openadsdk/i/f;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/i/f;->b(Lcom/bytedance/sdk/openadsdk/i/f;)V

    .line 305
    return-void

    .line 229
    :catch_eb
    move-exception v0

    .line 230
    sget-boolean v2, Lcom/bytedance/sdk/openadsdk/i/e;->c:Z

    if-eqz v2, :cond_10a

    .line 231
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

    .line 233
    :cond_10a
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "create ServerSocket error"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/i/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/i/f$2;->a:Lcom/bytedance/sdk/openadsdk/i/f;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/i/f;->b(Lcom/bytedance/sdk/openadsdk/i/f;)V

    .line 236
    return-void
.end method
