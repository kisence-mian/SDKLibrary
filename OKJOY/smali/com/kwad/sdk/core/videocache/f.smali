.class public Lcom/kwad/sdk/core/videocache/f;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/sdk/core/videocache/f$b;,
        Lcom/kwad/sdk/core/videocache/f$c;,
        Lcom/kwad/sdk/core/videocache/f$d;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Ljava/util/concurrent/ExecutorService;

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
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

    const/16 v1, 0x8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/kwad/sdk/core/videocache/f;->a:Ljava/lang/Object;

    invoke-static {v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/core/videocache/f;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/kwad/sdk/core/videocache/f;->c:Ljava/util/Map;

    invoke-static {p1}, Lcom/kwad/sdk/core/videocache/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/core/videocache/c;

    iput-object v0, p0, Lcom/kwad/sdk/core/videocache/f;->g:Lcom/kwad/sdk/core/videocache/c;

    :try_start_21
    const-string v0, "127.0.0.1"

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    new-instance v1, Ljava/net/ServerSocket;

    const/4 v2, 0x0

    const/16 v3, 0x8

    invoke-direct {v1, v2, v3, v0}, Ljava/net/ServerSocket;-><init>(IILjava/net/InetAddress;)V

    iput-object v1, p0, Lcom/kwad/sdk/core/videocache/f;->d:Ljava/net/ServerSocket;

    iget-object v0, p0, Lcom/kwad/sdk/core/videocache/f;->d:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v0

    iput v0, p0, Lcom/kwad/sdk/core/videocache/f;->e:I
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_39} :catch_5b
    .catch Ljava/lang/InterruptedException; {:try_start_21 .. :try_end_39} :catch_69

    const-string v0, "127.0.0.1"

    :try_start_3b
    iget v1, p0, Lcom/kwad/sdk/core/videocache/f;->e:I

    invoke-static {v0, v1}, Lcom/kwad/sdk/core/videocache/i;->a(Ljava/lang/String;I)V

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/kwad/sdk/core/videocache/f$d;

    invoke-direct {v2, p0, v0}, Lcom/kwad/sdk/core/videocache/f$d;-><init>(Lcom/kwad/sdk/core/videocache/f;Ljava/util/concurrent/CountDownLatch;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/kwad/sdk/core/videocache/f;->f:Ljava/lang/Thread;

    iget-object v1, p0, Lcom/kwad/sdk/core/videocache/f;->f:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_5a} :catch_5b
    .catch Ljava/lang/InterruptedException; {:try_start_3b .. :try_end_5a} :catch_69

    return-void

    :catch_5b
    move-exception v0

    :goto_5c
    iget-object v1, p0, Lcom/kwad/sdk/core/videocache/f;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Error starting local proxy server"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_69
    move-exception v0

    goto :goto_5c
.end method

.method synthetic constructor <init>(Lcom/kwad/sdk/core/videocache/c;Lcom/kwad/sdk/core/videocache/f$a;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/kwad/sdk/core/videocache/f;-><init>(Lcom/kwad/sdk/core/videocache/c;)V

    return-void
.end method

.method private a()I
    .registers 5

    iget-object v2, p0, Lcom/kwad/sdk/core/videocache/f;->a:Ljava/lang/Object;

    monitor-enter v2

    const/4 v0, 0x0

    :try_start_4
    iget-object v1, p0, Lcom/kwad/sdk/core/videocache/f;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/core/videocache/g;

    invoke-virtual {v0}, Lcom/kwad/sdk/core/videocache/g;->a()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_f

    :cond_22
    monitor-exit v2

    return v1

    :catchall_24
    move-exception v0

    monitor-exit v2
    :try_end_26
    .catchall {:try_start_4 .. :try_end_26} :catchall_24

    throw v0
.end method

.method static synthetic a(Lcom/kwad/sdk/core/videocache/f;)V
    .registers 1

    invoke-direct {p0}, Lcom/kwad/sdk/core/videocache/f;->b()V

    return-void
.end method

.method static synthetic a(Lcom/kwad/sdk/core/videocache/f;Ljava/net/Socket;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/kwad/sdk/core/videocache/f;->d(Ljava/net/Socket;)V

    return-void
.end method

.method private a(Ljava/io/File;)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/kwad/sdk/core/videocache/f;->g:Lcom/kwad/sdk/core/videocache/c;

    iget-object v0, v0, Lcom/kwad/sdk/core/videocache/c;->c:Lcom/kwad/sdk/core/videocache/q/a;

    invoke-interface {v0, p1}, Lcom/kwad/sdk/core/videocache/q/a;->a(Ljava/io/File;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_7} :catch_8

    :goto_7
    return-void

    :catch_8
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error touching file "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kwad/sdk/core/videocache/j;->b(Ljava/lang/String;)V

    goto :goto_7
.end method

.method private a(Ljava/lang/Throwable;)V
    .registers 3

    const-string v0, "HttpProxyCacheServer error"

    invoke-static {v0}, Lcom/kwad/sdk/core/videocache/j;->b(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/net/Socket;)V
    .registers 5

    :try_start_0
    invoke-virtual {p1}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_9} :catch_a

    :cond_9
    :goto_9
    return-void

    :catch_a
    move-exception v0

    new-instance v1, Lcom/kwad/sdk/core/videocache/ProxyCacheException;

    const-string v2, "Error closing socket"

    invoke-direct {v1, v2, v0}, Lcom/kwad/sdk/core/videocache/ProxyCacheException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0, v1}, Lcom/kwad/sdk/core/videocache/f;->a(Ljava/lang/Throwable;)V

    goto :goto_9
.end method

.method private b()V
    .registers 4

    :goto_0
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_3c

    iget-object v0, p0, Lcom/kwad/sdk/core/videocache/f;->d:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Accept new socket "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kwad/sdk/core/videocache/j;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kwad/sdk/core/videocache/f;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/kwad/sdk/core/videocache/f$c;

    invoke-direct {v2, p0, v0}, Lcom/kwad/sdk/core/videocache/f$c;-><init>(Lcom/kwad/sdk/core/videocache/f;Ljava/net/Socket;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_30} :catch_31

    goto :goto_0

    :catch_31
    move-exception v0

    new-instance v1, Lcom/kwad/sdk/core/videocache/ProxyCacheException;

    const-string v2, "Error during waiting connection"

    invoke-direct {v1, v2, v0}, Lcom/kwad/sdk/core/videocache/ProxyCacheException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0, v1}, Lcom/kwad/sdk/core/videocache/f;->a(Ljava/lang/Throwable;)V

    :cond_3c
    return-void
.end method

.method private b(Ljava/net/Socket;)V
    .registers 5

    :try_start_0
    invoke-virtual {p1}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p1}, Ljava/net/Socket;->shutdownInput()V
    :try_end_9
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_9} :catch_16
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_9} :catch_a

    :cond_9
    :goto_9
    return-void

    :catch_a
    move-exception v0

    new-instance v1, Lcom/kwad/sdk/core/videocache/ProxyCacheException;

    const-string v2, "Error closing socket input stream"

    invoke-direct {v1, v2, v0}, Lcom/kwad/sdk/core/videocache/ProxyCacheException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0, v1}, Lcom/kwad/sdk/core/videocache/f;->a(Ljava/lang/Throwable;)V

    goto :goto_9

    :catch_16
    move-exception v0

    const-string v0, "Releasing input stream\u2026 Socket is closed by client."

    invoke-static {v0}, Lcom/kwad/sdk/core/videocache/j;->a(Ljava/lang/String;)V

    goto :goto_9
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
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

    invoke-static {p1}, Lcom/kwad/sdk/core/videocache/m;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-string v2, "http://%s:%d/%s"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private c(Ljava/net/Socket;)V
    .registers 3

    :try_start_0
    invoke-virtual {p1}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p1}, Ljava/net/Socket;->shutdownOutput()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_9} :catch_a

    :cond_9
    :goto_9
    return-void

    :catch_a
    move-exception v0

    const-string v0, "Failed to close socket on proxy side: {}. It seems client have already closed connection."

    invoke-static {v0}, Lcom/kwad/sdk/core/videocache/j;->d(Ljava/lang/String;)V

    goto :goto_9
.end method

.method private d(Ljava/lang/String;)Lcom/kwad/sdk/core/videocache/g;
    .registers 5

    iget-object v1, p0, Lcom/kwad/sdk/core/videocache/f;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/kwad/sdk/core/videocache/f;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/core/videocache/g;

    if-nez v0, :cond_19

    new-instance v0, Lcom/kwad/sdk/core/videocache/g;

    iget-object v2, p0, Lcom/kwad/sdk/core/videocache/f;->g:Lcom/kwad/sdk/core/videocache/c;

    invoke-direct {v0, p1, v2}, Lcom/kwad/sdk/core/videocache/g;-><init>(Ljava/lang/String;Lcom/kwad/sdk/core/videocache/c;)V

    iget-object v2, p0, Lcom/kwad/sdk/core/videocache/f;->c:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_19
    monitor-exit v1

    return-object v0

    :catchall_1b
    move-exception v0

    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v0
.end method

.method private d(Ljava/net/Socket;)V
    .registers 5

    :try_start_0
    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/kwad/sdk/core/videocache/d;->a(Ljava/io/InputStream;)Lcom/kwad/sdk/core/videocache/d;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Request to cache proxy:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kwad/sdk/core/videocache/j;->a(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/kwad/sdk/core/videocache/d;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/kwad/sdk/core/videocache/m;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/kwad/sdk/core/videocache/f;->d(Ljava/lang/String;)Lcom/kwad/sdk/core/videocache/g;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/kwad/sdk/core/videocache/g;->a(Lcom/kwad/sdk/core/videocache/d;Ljava/net/Socket;)V
    :try_end_2b
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_2b} :catch_72
    .catch Lcom/kwad/sdk/core/videocache/ProxyCacheException; {:try_start_0 .. :try_end_2b} :catch_49
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_2b} :catch_b5
    .catchall {:try_start_0 .. :try_end_2b} :catchall_96

    invoke-direct {p0, p1}, Lcom/kwad/sdk/core/videocache/f;->e(Ljava/net/Socket;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Opened connections: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/kwad/sdk/core/videocache/f;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kwad/sdk/core/videocache/j;->a(Ljava/lang/String;)V

    :goto_48
    return-void

    :catch_49
    move-exception v0

    :goto_4a
    :try_start_4a
    new-instance v1, Lcom/kwad/sdk/core/videocache/ProxyCacheException;

    const-string v2, "Error processing request"

    invoke-direct {v1, v2, v0}, Lcom/kwad/sdk/core/videocache/ProxyCacheException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0, v1}, Lcom/kwad/sdk/core/videocache/f;->a(Ljava/lang/Throwable;)V
    :try_end_54
    .catchall {:try_start_4a .. :try_end_54} :catchall_96

    invoke-direct {p0, p1}, Lcom/kwad/sdk/core/videocache/f;->e(Ljava/net/Socket;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Opened connections: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/kwad/sdk/core/videocache/f;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kwad/sdk/core/videocache/j;->a(Ljava/lang/String;)V

    goto :goto_48

    :catch_72
    move-exception v0

    :try_start_73
    const-string v0, "Closing socket\u2026 Socket is closed by client."

    invoke-static {v0}, Lcom/kwad/sdk/core/videocache/j;->a(Ljava/lang/String;)V
    :try_end_78
    .catchall {:try_start_73 .. :try_end_78} :catchall_96

    invoke-direct {p0, p1}, Lcom/kwad/sdk/core/videocache/f;->e(Ljava/net/Socket;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Opened connections: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/kwad/sdk/core/videocache/f;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kwad/sdk/core/videocache/j;->a(Ljava/lang/String;)V

    goto :goto_48

    :catchall_96
    move-exception v0

    invoke-direct {p0, p1}, Lcom/kwad/sdk/core/videocache/f;->e(Ljava/net/Socket;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Opened connections: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/kwad/sdk/core/videocache/f;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kwad/sdk/core/videocache/j;->a(Ljava/lang/String;)V

    throw v0

    :catch_b5
    move-exception v0

    goto :goto_4a
.end method

.method private e(Ljava/net/Socket;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/kwad/sdk/core/videocache/f;->b(Ljava/net/Socket;)V

    invoke-direct {p0, p1}, Lcom/kwad/sdk/core/videocache/f;->c(Ljava/net/Socket;)V

    invoke-direct {p0, p1}, Lcom/kwad/sdk/core/videocache/f;->a(Ljava/net/Socket;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/io/File;
    .registers 5

    iget-object v0, p0, Lcom/kwad/sdk/core/videocache/f;->g:Lcom/kwad/sdk/core/videocache/c;

    iget-object v1, v0, Lcom/kwad/sdk/core/videocache/c;->a:Ljava/io/File;

    iget-object v0, v0, Lcom/kwad/sdk/core/videocache/c;->b:Lcom/kwad/sdk/core/videocache/q/c;

    invoke-interface {v0, p1}, Lcom/kwad/sdk/core/videocache/q/c;->generate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v2
.end method

.method public a(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 4

    if-eqz p2, :cond_1c

    invoke-virtual {p0, p1}, Lcom/kwad/sdk/core/videocache/f;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-virtual {p0, p1}, Lcom/kwad/sdk/core/videocache/f;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/kwad/sdk/core/videocache/f;->a(Ljava/io/File;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1b
    return-object v0

    :cond_1c
    invoke-direct {p0, p1}, Lcom/kwad/sdk/core/videocache/f;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1b
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/kwad/sdk/core/videocache/f;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
