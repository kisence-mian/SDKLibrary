.class public Lcom/mintegral/msdk/f/f;
.super Ljava/lang/Object;
.source "HttpProxyCacheServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mintegral/msdk/f/f$a;,
        Lcom/mintegral/msdk/f/f$b;,
        Lcom/mintegral/msdk/f/f$c;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String;

.field private static k:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private final b:Ljava/lang/Object;

.field private final c:Ljava/util/concurrent/ExecutorService;

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/mintegral/msdk/f/g;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/net/ServerSocket;

.field private final f:I

.field private final g:Ljava/lang/Thread;

.field private final h:Lcom/mintegral/msdk/f/c;

.field private final i:Lcom/mintegral/msdk/f/k;

.field private j:Ljava/lang/String;

.field private volatile l:I

.field private volatile m:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 39
    const-class v0, Lcom/mintegral/msdk/f/f;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mintegral/msdk/f/f;->a:Ljava/lang/String;

    .line 51
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/mintegral/msdk/f/f;->k:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method private constructor <init>(Lcom/mintegral/msdk/f/c;)V
    .registers 6

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/mintegral/msdk/f/f;->b:Ljava/lang/Object;

    .line 43
    invoke-static {v2}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/f/f;->c:Ljava/util/concurrent/ExecutorService;

    .line 44
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/mintegral/msdk/f/f;->d:Ljava/util/Map;

    .line 56
    const/16 v0, 0x28

    iput v0, p0, Lcom/mintegral/msdk/f/f;->l:I

    .line 57
    iput-boolean v1, p0, Lcom/mintegral/msdk/f/f;->m:Z

    .line 119
    invoke-static {p1}, Lcom/mintegral/msdk/f/l;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/f/c;

    iput-object v0, p0, Lcom/mintegral/msdk/f/f;->h:Lcom/mintegral/msdk/f/c;

    .line 121
    :try_start_28
    const-string v0, "127.0.0.1"

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 122
    new-instance v1, Ljava/net/ServerSocket;

    const/4 v2, 0x0

    const/16 v3, 0x8

    invoke-direct {v1, v2, v3, v0}, Ljava/net/ServerSocket;-><init>(IILjava/net/InetAddress;)V

    iput-object v1, p0, Lcom/mintegral/msdk/f/f;->e:Ljava/net/ServerSocket;

    .line 123
    iget-object v0, p0, Lcom/mintegral/msdk/f/f;->e:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v0

    iput v0, p0, Lcom/mintegral/msdk/f/f;->f:I

    .line 124
    const-string v0, "127.0.0.1"

    iget v1, p0, Lcom/mintegral/msdk/f/f;->f:I

    invoke-static {v0, v1}, Lcom/mintegral/msdk/f/i;->a(Ljava/lang/String;I)V

    .line 125
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 126
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/mintegral/msdk/f/f$c;

    invoke-direct {v2, p0, v0}, Lcom/mintegral/msdk/f/f$c;-><init>(Lcom/mintegral/msdk/f/f;Ljava/util/concurrent/CountDownLatch;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/mintegral/msdk/f/f;->g:Ljava/lang/Thread;

    .line 127
    iget-object v1, p0, Lcom/mintegral/msdk/f/f;->g:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 128
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 129
    new-instance v0, Lcom/mintegral/msdk/f/k;

    const-string v1, "127.0.0.1"

    iget v2, p0, Lcom/mintegral/msdk/f/f;->f:I

    invoke-direct {v0, v1, v2}, Lcom/mintegral/msdk/f/k;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mintegral/msdk/f/f;->i:Lcom/mintegral/msdk/f/k;

    .line 130
    const-string v0, "VideoCache"

    const-string v1, "\u6784\u9020\u51fd\u6570\u88ab\u6267\u884c"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_73
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_73} :catch_82
    .catch Ljava/lang/InterruptedException; {:try_start_28 .. :try_end_73} :catch_74

    .line 134
    return-void

    .line 131
    :catch_74
    move-exception v0

    .line 132
    :goto_75
    iget-object v1, p0, Lcom/mintegral/msdk/f/f;->c:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 133
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Error starting local proxy server"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 131
    :catch_82
    move-exception v0

    goto :goto_75
.end method

.method synthetic constructor <init>(Lcom/mintegral/msdk/f/c;B)V
    .registers 3

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/mintegral/msdk/f/f;-><init>(Lcom/mintegral/msdk/f/c;)V

    return-void
.end method

.method static synthetic a(Lcom/mintegral/msdk/f/f;I)I
    .registers 2

    .prologue
    .line 37
    iput p1, p0, Lcom/mintegral/msdk/f/f;->l:I

    return p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Lcom/mintegral/msdk/f/g;
    .registers 6

    .prologue
    .line 327
    iget-object v1, p0, Lcom/mintegral/msdk/f/f;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 328
    :try_start_3
    iget-object v0, p0, Lcom/mintegral/msdk/f/f;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/f/g;

    .line 329
    if-nez v0, :cond_19

    .line 330
    new-instance v0, Lcom/mintegral/msdk/f/g;

    iget-object v2, p0, Lcom/mintegral/msdk/f/f;->h:Lcom/mintegral/msdk/f/c;

    invoke-direct {v0, p1, v2, p2}, Lcom/mintegral/msdk/f/g;-><init>(Ljava/lang/String;Lcom/mintegral/msdk/f/c;Ljava/lang/String;)V

    .line 331
    iget-object v2, p0, Lcom/mintegral/msdk/f/f;->d:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    :cond_19
    monitor-exit v1

    return-object v0

    .line 334
    :catchall_1b
    move-exception v0

    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v0
.end method

.method static synthetic a(Lcom/mintegral/msdk/f/f;Ljava/net/Socket;)V
    .registers 7

    .prologue
    .line 3289
    :try_start_0
    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/f/d;->a(Ljava/io/InputStream;)Lcom/mintegral/msdk/f/d;

    move-result-object v0

    .line 3290
    iget-object v1, v0, Lcom/mintegral/msdk/f/d;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/mintegral/msdk/f/o;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3291
    invoke-static {v1}, Lcom/mintegral/msdk/f/k;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 3292
    invoke-static {p1}, Lcom/mintegral/msdk/f/k;->a(Ljava/net/Socket;)V

    .line 3293
    const-string v0, "VideoCache"

    const-string v1, "pinger\u9636\u6bb5"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1e
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_1e} :catch_42
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1e} :catch_47
    .catchall {:try_start_0 .. :try_end_1e} :catchall_53

    .line 3305
    :goto_1e
    invoke-static {p1}, Lcom/mintegral/msdk/f/f;->a(Ljava/net/Socket;)V

    .line 3307
    :goto_21
    return-void

    .line 3295
    :cond_22
    :try_start_22
    const-string v2, "VideoCache"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "else\u9636\u6bb5-->"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/mintegral/msdk/f/f;->j:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3296
    iget-object v2, p0, Lcom/mintegral/msdk/f/f;->j:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/mintegral/msdk/f/f;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/mintegral/msdk/f/g;

    move-result-object v1

    .line 3297
    invoke-virtual {v1, v0, p1}, Lcom/mintegral/msdk/f/g;->a(Lcom/mintegral/msdk/f/d;Ljava/net/Socket;)V
    :try_end_41
    .catch Ljava/net/SocketException; {:try_start_22 .. :try_end_41} :catch_42
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_41} :catch_47
    .catchall {:try_start_22 .. :try_end_41} :catchall_53

    goto :goto_1e

    .line 3305
    :catch_42
    move-exception v0

    invoke-static {p1}, Lcom/mintegral/msdk/f/f;->a(Ljava/net/Socket;)V

    goto :goto_21

    .line 3302
    :catch_47
    move-exception v0

    .line 3303
    :try_start_48
    new-instance v1, Lcom/mintegral/msdk/f/n;

    const-string v2, "Error processing request"

    invoke-direct {v1, v2, v0}, Lcom/mintegral/msdk/f/n;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4f
    .catchall {:try_start_48 .. :try_end_4f} :catchall_53

    .line 3305
    invoke-static {p1}, Lcom/mintegral/msdk/f/f;->a(Ljava/net/Socket;)V

    goto :goto_21

    :catchall_53
    move-exception v0

    invoke-static {p1}, Lcom/mintegral/msdk/f/f;->a(Ljava/net/Socket;)V

    throw v0
.end method

.method private static a(Ljava/net/Socket;)V
    .registers 4

    .prologue
    .line 2379
    :try_start_0
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_9

    .line 2380
    invoke-virtual {p0}, Ljava/net/Socket;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_9} :catch_a

    .line 2384
    :cond_9
    :goto_9
    return-void

    .line 2382
    :catch_a
    move-exception v0

    .line 2383
    new-instance v1, Lcom/mintegral/msdk/f/n;

    const-string v2, "Error closing socket"

    invoke-direct {v1, v2, v0}, Lcom/mintegral/msdk/f/n;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9
.end method

.method static synthetic a(Lcom/mintegral/msdk/f/f;)Z
    .registers 2

    .prologue
    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mintegral/msdk/f/f;->m:Z

    return v0
.end method

.method static synthetic b(Lcom/mintegral/msdk/f/f;)V
    .registers 4

    .prologue
    .line 3278
    :goto_0
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_23

    .line 3279
    iget-object v0, p0, Lcom/mintegral/msdk/f/f;->e:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v0

    .line 3280
    iget-object v1, p0, Lcom/mintegral/msdk/f/f;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/mintegral/msdk/f/f$b;

    invoke-direct {v2, p0, v0}, Lcom/mintegral/msdk/f/f$b;-><init>(Lcom/mintegral/msdk/f/f;Ljava/net/Socket;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1a} :catch_1b

    goto :goto_0

    .line 3282
    :catch_1b
    move-exception v0

    .line 3283
    new-instance v1, Lcom/mintegral/msdk/f/n;

    const-string v2, "Error during waiting connection"

    invoke-direct {v1, v2, v0}, Lcom/mintegral/msdk/f/n;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3284
    :cond_23
    return-void
.end method

.method private e(Ljava/lang/String;)Ljava/io/File;
    .registers 5

    .prologue
    .line 254
    iget-object v0, p0, Lcom/mintegral/msdk/f/f;->h:Lcom/mintegral/msdk/f/c;

    iget-object v0, v0, Lcom/mintegral/msdk/f/c;->a:Ljava/io/File;

    .line 255
    iget-object v1, p0, Lcom/mintegral/msdk/f/f;->h:Lcom/mintegral/msdk/f/c;

    iget-object v1, v1, Lcom/mintegral/msdk/f/c;->b:Lcom/mintegral/msdk/f/a/c;

    invoke-interface {v1, p1}, Lcom/mintegral/msdk/f/a/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 256
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v2
.end method


# virtual methods
.method public final a(Lcom/mintegral/msdk/f/b;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 172
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    invoke-static {v0}, Lcom/mintegral/msdk/f/l;->a([Ljava/lang/Object;)V

    .line 173
    iget-object v1, p0, Lcom/mintegral/msdk/f/f;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 174
    :try_start_f
    invoke-virtual {p0, p2}, Lcom/mintegral/msdk/f/f;->d(Ljava/lang/String;)Lcom/mintegral/msdk/f/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mintegral/msdk/f/g;->a(Lcom/mintegral/msdk/f/b;)V

    .line 175
    monitor-exit v1

    return-void

    :catchall_18
    move-exception v0

    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_f .. :try_end_1a} :catchall_18

    throw v0
.end method

.method public final a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 89
    iput-object p1, p0, Lcom/mintegral/msdk/f/f;->j:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public final a(Ljava/lang/String;IIII)V
    .registers 8

    .prologue
    .line 95
    .line 1061
    iget-boolean v0, p0, Lcom/mintegral/msdk/f/f;->m:Z

    if-nez v0, :cond_11

    .line 1062
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mintegral/msdk/f/f;->m:Z

    .line 1063
    new-instance v0, Lcom/mintegral/msdk/f/f$1;

    invoke-direct {v0, p0}, Lcom/mintegral/msdk/f/f$1;-><init>(Lcom/mintegral/msdk/f/f;)V

    .line 1083
    sget-object v1, Lcom/mintegral/msdk/f/f;->k:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 96
    :cond_11
    iget v0, p0, Lcom/mintegral/msdk/f/f;->l:I

    sub-int v0, p5, v0

    if-le p4, v0, :cond_1b

    .line 97
    iget v0, p0, Lcom/mintegral/msdk/f/f;->l:I

    sub-int p4, p5, v0

    .line 99
    :cond_1b
    if-nez p3, :cond_1e

    .line 106
    :cond_1d
    :goto_1d
    return-void

    .line 102
    :cond_1e
    mul-int/lit8 v0, p2, 0x64

    div-int/2addr v0, p3

    if-lt v0, p4, :cond_1d

    .line 103
    invoke-virtual {p0, p1}, Lcom/mintegral/msdk/f/f;->b(Ljava/lang/String;)V

    goto :goto_1d
.end method

.method public final b(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 109
    invoke-virtual {p0, p1}, Lcom/mintegral/msdk/f/f;->d(Ljava/lang/String;)Lcom/mintegral/msdk/f/g;

    move-result-object v0

    if-eqz v0, :cond_1b

    invoke-virtual {p0, p1}, Lcom/mintegral/msdk/f/f;->d(Ljava/lang/String;)Lcom/mintegral/msdk/f/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/f/g;->a()Lcom/mintegral/msdk/f/e;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 110
    invoke-virtual {p0, p1}, Lcom/mintegral/msdk/f/f;->d(Ljava/lang/String;)Lcom/mintegral/msdk/f/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/f/g;->a()Lcom/mintegral/msdk/f/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/f/e;->b()V

    .line 112
    :cond_1b
    return-void
.end method

.method public final c(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .prologue
    .line 149
    .line 1214
    const-string v0, "Url can\'t be null!"

    invoke-static {p1, v0}, Lcom/mintegral/msdk/f/l;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1215
    invoke-direct {p0, p1}, Lcom/mintegral/msdk/f/f;->e(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    .line 1163
    if-eqz v0, :cond_23

    .line 1164
    invoke-direct {p0, p1}, Lcom/mintegral/msdk/f/f;->e(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 1261
    :try_start_13
    iget-object v1, p0, Lcom/mintegral/msdk/f/f;->h:Lcom/mintegral/msdk/f/c;

    iget-object v1, v1, Lcom/mintegral/msdk/f/c;->c:Lcom/mintegral/msdk/f/a/a;

    invoke-interface {v1, v0}, Lcom/mintegral/msdk/f/a/a;->a(Ljava/io/File;)V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_1a} :catch_4c

    .line 1166
    :goto_1a
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1168
    :cond_22
    :goto_22
    return-object p1

    .line 2246
    :cond_23
    iget-object v0, p0, Lcom/mintegral/msdk/f/f;->i:Lcom/mintegral/msdk/f/k;

    invoke-virtual {v0}, Lcom/mintegral/msdk/f/k;->a()Z

    move-result v0

    .line 1168
    if-eqz v0, :cond_22

    .line 2250
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "http://%s:%d/%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "127.0.0.1"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/mintegral/msdk/f/f;->f:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p1}, Lcom/mintegral/msdk/f/o;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_22

    :catch_4c
    move-exception v1

    goto :goto_1a
.end method

.method public final d(Ljava/lang/String;)Lcom/mintegral/msdk/f/g;
    .registers 6

    .prologue
    .line 311
    iget-object v1, p0, Lcom/mintegral/msdk/f/f;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 312
    :try_start_3
    iget-object v0, p0, Lcom/mintegral/msdk/f/f;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/f/g;

    .line 313
    if-nez v0, :cond_35

    .line 314
    iget-object v2, p0, Lcom/mintegral/msdk/f/f;->j:Ljava/lang/String;

    if-eqz v2, :cond_35

    .line 315
    const-string v0, "VideoCachepath"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "-->"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/mintegral/msdk/f/f;->j:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    new-instance v0, Lcom/mintegral/msdk/f/g;

    iget-object v2, p0, Lcom/mintegral/msdk/f/f;->h:Lcom/mintegral/msdk/f/c;

    iget-object v3, p0, Lcom/mintegral/msdk/f/f;->j:Ljava/lang/String;

    invoke-direct {v0, p1, v2, v3}, Lcom/mintegral/msdk/f/g;-><init>(Ljava/lang/String;Lcom/mintegral/msdk/f/c;Ljava/lang/String;)V

    .line 317
    iget-object v2, p0, Lcom/mintegral/msdk/f/f;->d:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    :cond_35
    monitor-exit v1

    return-object v0

    .line 322
    :catchall_37
    move-exception v0

    monitor-exit v1
    :try_end_39
    .catchall {:try_start_3 .. :try_end_39} :catchall_37

    throw v0
.end method
