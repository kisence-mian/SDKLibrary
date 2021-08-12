.class public Lcom/kwad/sdk/core/videocache/f;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/sdk/core/videocache/f$a;,
        Lcom/kwad/sdk/core/videocache/f$b;,
        Lcom/kwad/sdk/core/videocache/f$c;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Ljava/util/concurrent/ExecutorService;

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/kwad/sdk/core/videocache/g;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/net/ServerSocket;

.field private final e:I

.field private final f:Ljava/lang/Thread;

.field private final g:Lcom/kwad/sdk/core/videocache/c;


# direct methods
.method private constructor <init>(Lcom/kwad/sdk/core/videocache/c;)V
    .registers 6

    const-string v0, "127.0.0.1"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/kwad/sdk/core/videocache/f;->a:Ljava/lang/Object;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    iput-object v2, p0, Lcom/kwad/sdk/core/videocache/f;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v2, p0, Lcom/kwad/sdk/core/videocache/f;->c:Ljava/util/Map;

    invoke-static {p1}, Lcom/kwad/sdk/core/videocache/j;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kwad/sdk/core/videocache/c;

    iput-object p1, p0, Lcom/kwad/sdk/core/videocache/f;->g:Lcom/kwad/sdk/core/videocache/c;

    :try_start_23
    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p1

    new-instance v2, Ljava/net/ServerSocket;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v1, p1}, Ljava/net/ServerSocket;-><init>(IILjava/net/InetAddress;)V

    iput-object v2, p0, Lcom/kwad/sdk/core/videocache/f;->d:Ljava/net/ServerSocket;

    invoke-virtual {v2}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result p1

    iput p1, p0, Lcom/kwad/sdk/core/videocache/f;->e:I

    invoke-static {v0, p1}, Lcom/kwad/sdk/core/videocache/i;->a(Ljava/lang/String;I)V

    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/kwad/sdk/core/videocache/f$c;

    invoke-direct {v1, p0, p1}, Lcom/kwad/sdk/core/videocache/f$c;-><init>(Lcom/kwad/sdk/core/videocache/f;Ljava/util/concurrent/CountDownLatch;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/kwad/sdk/core/videocache/f;->f:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_50} :catch_53
    .catch Ljava/lang/InterruptedException; {:try_start_23 .. :try_end_50} :catch_51

    return-void

    :catch_51
    move-exception p1

    goto :goto_54

    :catch_53
    move-exception p1

    :goto_54
    iget-object v0, p0, Lcom/kwad/sdk/core/videocache/f;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Error starting local proxy server"

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method synthetic constructor <init>(Lcom/kwad/sdk/core/videocache/c;Lcom/kwad/sdk/core/videocache/f$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/kwad/sdk/core/videocache/f;-><init>(Lcom/kwad/sdk/core/videocache/c;)V

    return-void
.end method

.method private a()V
    .registers 5

    :goto_0
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_3e

    iget-object v0, p0, Lcom/kwad/sdk/core/videocache/f;->d:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v0

    const-string v1, "HttpProxyCacheServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Accept new socket "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kwad/sdk/core/videocache/f;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/kwad/sdk/core/videocache/f$b;

    invoke-direct {v2, p0, v0}, Lcom/kwad/sdk/core/videocache/f$b;-><init>(Lcom/kwad/sdk/core/videocache/f;Ljava/net/Socket;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_32} :catch_33

    goto :goto_0

    :catch_33
    move-exception v0

    new-instance v1, Lcom/kwad/sdk/core/videocache/ProxyCacheException;

    const-string v2, "Error during waiting connection"

    invoke-direct {v1, v2, v0}, Lcom/kwad/sdk/core/videocache/ProxyCacheException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0, v1}, Lcom/kwad/sdk/core/videocache/f;->a(Ljava/lang/Throwable;)V

    :cond_3e
    return-void
.end method

.method static synthetic a(Lcom/kwad/sdk/core/videocache/f;)V
    .registers 1

    invoke-direct {p0}, Lcom/kwad/sdk/core/videocache/f;->a()V

    return-void
.end method

.method static synthetic a(Lcom/kwad/sdk/core/videocache/f;Ljava/net/Socket;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/kwad/sdk/core/videocache/f;->a(Ljava/net/Socket;)V

    return-void
.end method

.method private a(Ljava/io/File;)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/kwad/sdk/core/videocache/f;->g:Lcom/kwad/sdk/core/videocache/c;

    iget-object v0, v0, Lcom/kwad/sdk/core/videocache/c;->c:Lcom/kwad/sdk/core/videocache/a/a;

    invoke-interface {v0, p1}, Lcom/kwad/sdk/core/videocache/a/a;->a(Ljava/io/File;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_7} :catch_8

    goto :goto_21

    :catch_8
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error touching file "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "HttpProxyCacheServer"

    invoke-static {v0, p1}, Lcom/kwad/sdk/core/d/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_21
    return-void
.end method

.method private a(Ljava/lang/Throwable;)V
    .registers 4

    const-string v0, "HttpProxyCacheServer"

    const-string v1, "HttpProxyCacheServer error"

    invoke-static {v0, v1}, Lcom/kwad/sdk/core/d/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method private a(Ljava/net/Socket;)V
    .registers 7

    const-string v0, "Opened connections: "

    const-string v1, "HttpProxyCacheServer"

    :try_start_4
    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Lcom/kwad/sdk/core/videocache/d;->a(Ljava/io/InputStream;)Lcom/kwad/sdk/core/videocache/d;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Request to cache proxy:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v2, Lcom/kwad/sdk/core/videocache/d;->a:Ljava/lang/String;

    invoke-static {v3}, Lcom/kwad/sdk/core/videocache/l;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/kwad/sdk/core/videocache/f;->f(Ljava/lang/String;)Lcom/kwad/sdk/core/videocache/g;

    move-result-object v3

    invoke-virtual {v3, v2, p1}, Lcom/kwad/sdk/core/videocache/g;->a(Lcom/kwad/sdk/core/videocache/d;Ljava/net/Socket;)V
    :try_end_2f
    .catch Ljava/net/SocketException; {:try_start_4 .. :try_end_2f} :catch_50
    .catch Lcom/kwad/sdk/core/videocache/ProxyCacheException; {:try_start_4 .. :try_end_2f} :catch_3c
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_2f} :catch_3a
    .catchall {:try_start_4 .. :try_end_2f} :catchall_38

    invoke-direct {p0, p1}, Lcom/kwad/sdk/core/videocache/f;->b(Ljava/net/Socket;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_5e

    :catchall_38
    move-exception v2

    goto :goto_72

    :catch_3a
    move-exception v2

    goto :goto_3d

    :catch_3c
    move-exception v2

    :goto_3d
    :try_start_3d
    new-instance v3, Lcom/kwad/sdk/core/videocache/ProxyCacheException;

    const-string v4, "Error processing request"

    invoke-direct {v3, v4, v2}, Lcom/kwad/sdk/core/videocache/ProxyCacheException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0, v3}, Lcom/kwad/sdk/core/videocache/f;->a(Ljava/lang/Throwable;)V
    :try_end_47
    .catchall {:try_start_3d .. :try_end_47} :catchall_38

    invoke-direct {p0, p1}, Lcom/kwad/sdk/core/videocache/f;->b(Ljava/net/Socket;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_5e

    :catch_50
    move-exception v2

    :try_start_51
    const-string v2, "Closing socket\u2026 Socket is closed by client."

    invoke-static {v1, v2}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_56
    .catchall {:try_start_51 .. :try_end_56} :catchall_38

    invoke-direct {p0, p1}, Lcom/kwad/sdk/core/videocache/f;->b(Ljava/net/Socket;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_5e
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-direct {p0}, Lcom/kwad/sdk/core/videocache/f;->b()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :goto_72
    invoke-direct {p0, p1}, Lcom/kwad/sdk/core/videocache/f;->b(Ljava/net/Socket;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-direct {p0}, Lcom/kwad/sdk/core/videocache/f;->b()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    throw v2
.end method

.method private b()I
    .registers 5

    iget-object v0, p0, Lcom/kwad/sdk/core/videocache/f;->a:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_4
    iget-object v2, p0, Lcom/kwad/sdk/core/videocache/f;->c:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_20

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/kwad/sdk/core/videocache/g;

    invoke-virtual {v3}, Lcom/kwad/sdk/core/videocache/g;->b()I

    move-result v3

    add-int/2addr v1, v3

    goto :goto_e

    :cond_20
    monitor-exit v0

    return v1

    :catchall_22
    move-exception v1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_4 .. :try_end_24} :catchall_22

    throw v1
.end method

.method private b(Ljava/net/Socket;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/kwad/sdk/core/videocache/f;->c(Ljava/net/Socket;)V

    invoke-direct {p0, p1}, Lcom/kwad/sdk/core/videocache/f;->d(Ljava/net/Socket;)V

    invoke-direct {p0, p1}, Lcom/kwad/sdk/core/videocache/f;->e(Ljava/net/Socket;)V

    return-void
.end method

.method private c(Ljava/net/Socket;)V
    .registers 4

    :try_start_0
    invoke-virtual {p1}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v0

    if-nez v0, :cond_1e

    invoke-virtual {p1}, Ljava/net/Socket;->shutdownInput()V
    :try_end_9
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_9} :catch_16
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_1e

    :catch_a
    move-exception p1

    new-instance v0, Lcom/kwad/sdk/core/videocache/ProxyCacheException;

    const-string v1, "Error closing socket input stream"

    invoke-direct {v0, v1, p1}, Lcom/kwad/sdk/core/videocache/ProxyCacheException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0, v0}, Lcom/kwad/sdk/core/videocache/f;->a(Ljava/lang/Throwable;)V

    goto :goto_1e

    :catch_16
    move-exception p1

    const-string p1, "HttpProxyCacheServer"

    const-string v0, "Releasing input stream\u2026 Socket is closed by client."

    invoke-static {p1, v0}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1e
    :goto_1e
    return-void
.end method

.method private d(Ljava/net/Socket;)V
    .registers 3

    :try_start_0
    invoke-virtual {p1}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v0

    if-nez v0, :cond_12

    invoke-virtual {p1}, Ljava/net/Socket;->shutdownOutput()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_12

    :catch_a
    move-exception p1

    const-string p1, "HttpProxyCacheServer"

    const-string v0, "Failed to close socket on proxy side: {}. It seems client have already closed connection."

    invoke-static {p1, v0}, Lcom/kwad/sdk/core/d/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_12
    :goto_12
    return-void
.end method

.method private e(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "127.0.0.1"

    aput-object v3, v1, v2

    iget v2, p0, Lcom/kwad/sdk/core/videocache/f;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {p1}, Lcom/kwad/sdk/core/videocache/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x2

    aput-object p1, v1, v2

    const-string p1, "http://%s:%d/%s"

    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private e(Ljava/net/Socket;)V
    .registers 4

    :try_start_0
    invoke-virtual {p1}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_15

    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_15

    :catch_a
    move-exception p1

    new-instance v0, Lcom/kwad/sdk/core/videocache/ProxyCacheException;

    const-string v1, "Error closing socket"

    invoke-direct {v0, v1, p1}, Lcom/kwad/sdk/core/videocache/ProxyCacheException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0, v0}, Lcom/kwad/sdk/core/videocache/f;->a(Ljava/lang/Throwable;)V

    :cond_15
    :goto_15
    return-void
.end method

.method private f(Ljava/lang/String;)Lcom/kwad/sdk/core/videocache/g;
    .registers 5

    iget-object v0, p0, Lcom/kwad/sdk/core/videocache/f;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/kwad/sdk/core/videocache/f;->c:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kwad/sdk/core/videocache/g;

    if-nez v1, :cond_19

    new-instance v1, Lcom/kwad/sdk/core/videocache/g;

    iget-object v2, p0, Lcom/kwad/sdk/core/videocache/f;->g:Lcom/kwad/sdk/core/videocache/c;

    invoke-direct {v1, p1, v2}, Lcom/kwad/sdk/core/videocache/g;-><init>(Ljava/lang/String;Lcom/kwad/sdk/core/videocache/c;)V

    iget-object v2, p0, Lcom/kwad/sdk/core/videocache/f;->c:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_19
    monitor-exit v0

    return-object v1

    :catchall_1b
    move-exception p1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw p1
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/kwad/sdk/core/videocache/f;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 3

    if-eqz p2, :cond_1c

    invoke-virtual {p0, p1}, Lcom/kwad/sdk/core/videocache/f;->d(Ljava/lang/String;)Ljava/io/File;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_1c

    invoke-virtual {p0, p1}, Lcom/kwad/sdk/core/videocache/f;->d(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/kwad/sdk/core/videocache/f;->a(Ljava/io/File;)V

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1c
    invoke-direct {p0, p1}, Lcom/kwad/sdk/core/videocache/f;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;I)Z
    .registers 11

    invoke-virtual {p0, p1}, Lcom/kwad/sdk/core/videocache/f;->b(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    :cond_8
    invoke-direct {p0, p1}, Lcom/kwad/sdk/core/videocache/f;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    const/4 v4, 0x0

    :try_start_10
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_1b} :catch_7e
    .catchall {:try_start_10 .. :try_end_1b} :catchall_7b

    :try_start_1b
    invoke-static {p1}, Lcom/kwad/sdk/core/network/l;->a(Ljava/net/URLConnection;)V

    const-string v5, "Accept-Language"

    const-string v6, "zh-CN"

    invoke-virtual {p1, v5, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0x2710

    invoke-virtual {p1, v5}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const v5, 0x1d4c0

    invoke-virtual {p1, v5}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const-string v5, "Connection"

    const-string v6, "keep-alive"

    invoke-virtual {p1, v5, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "Charset"

    const-string v6, "UTF-8"

    invoke-virtual {p1, v5, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "User-Agent"

    invoke-static {}, Lcom/kwad/sdk/core/network/k;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Ljava/io/BufferedInputStream;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_56} :catch_79
    .catchall {:try_start_1b .. :try_end_56} :catchall_98

    const/16 v4, 0x400

    :try_start_58
    new-array v4, v4, [B

    :cond_5a
    invoke-virtual {v5, v4}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v6
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_5e} :catch_76
    .catchall {:try_start_58 .. :try_end_5e} :catchall_73

    const/4 v7, -0x1

    if-eq v6, v7, :cond_68

    int-to-long v6, v6

    add-long/2addr v2, v6

    int-to-long v6, p2

    cmp-long v6, v2, v6

    if-lez v6, :cond_5a

    :cond_68
    :try_start_68
    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V
    :try_end_6b
    .catch Ljava/io/IOException; {:try_start_68 .. :try_end_6b} :catch_6c

    goto :goto_6d

    :catch_6c
    move-exception p2

    :goto_6d
    if-eqz p1, :cond_97

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_97

    :catchall_73
    move-exception p2

    move-object v4, v5

    goto :goto_99

    :catch_76
    move-exception p2

    move-object v4, v5

    goto :goto_80

    :catch_79
    move-exception p2

    goto :goto_80

    :catchall_7b
    move-exception p2

    move-object p1, v4

    goto :goto_99

    :catch_7e
    move-exception p2

    move-object p1, v4

    :goto_80
    :try_start_80
    invoke-static {p2}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/Throwable;)V

    const-string v1, "HttpProxyCacheServer"

    const-string v2, "downloadUrlToStream file crash"

    invoke-static {v1, v2, p2}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8a
    .catchall {:try_start_80 .. :try_end_8a} :catchall_98

    if-eqz v4, :cond_91

    :try_start_8c
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V
    :try_end_8f
    .catch Ljava/io/IOException; {:try_start_8c .. :try_end_8f} :catch_90

    goto :goto_91

    :catch_90
    move-exception p2

    :cond_91
    :goto_91
    if-eqz p1, :cond_96

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_96
    move v1, v0

    :cond_97
    :goto_97
    return v1

    :catchall_98
    move-exception p2

    :goto_99
    if-eqz v4, :cond_a0

    :try_start_9b
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V
    :try_end_9e
    .catch Ljava/io/IOException; {:try_start_9b .. :try_end_9e} :catch_9f

    goto :goto_a0

    :catch_9f
    move-exception v0

    :cond_a0
    :goto_a0
    if-eqz p1, :cond_a5

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_a5
    throw p2
.end method

.method public b(Ljava/lang/String;)Z
    .registers 3

    const-string v0, "Url can\'t be null!"

    invoke-static {p1, v0}, Lcom/kwad/sdk/core/videocache/j;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/kwad/sdk/core/videocache/f;->d(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    return p1
.end method

.method public c(Ljava/lang/String;)Z
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/core/videocache/f;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/core/videocache/g;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Lcom/kwad/sdk/core/videocache/g;->a()V

    iget-object v0, p0, Lcom/kwad/sdk/core/videocache/f;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1

    :cond_14
    const/4 p1, 0x0

    return p1
.end method

.method public d(Ljava/lang/String;)Ljava/io/File;
    .registers 4

    iget-object v0, p0, Lcom/kwad/sdk/core/videocache/f;->g:Lcom/kwad/sdk/core/videocache/c;

    iget-object v0, v0, Lcom/kwad/sdk/core/videocache/c;->a:Ljava/io/File;

    iget-object v1, p0, Lcom/kwad/sdk/core/videocache/f;->g:Lcom/kwad/sdk/core/videocache/c;

    iget-object v1, v1, Lcom/kwad/sdk/core/videocache/c;->b:Lcom/kwad/sdk/core/videocache/a/c;

    invoke-interface {v1, p1}, Lcom/kwad/sdk/core/videocache/a/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method
