.class public Lcom/bytedance/sdk/openadsdk/i/f;
.super Ljava/lang/Object;
.source "ProxyServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/i/f$a;
    }
.end annotation


# static fields
.field private static volatile d:Lcom/bytedance/sdk/openadsdk/i/f;


# instance fields
.field private volatile a:Ljava/net/ServerSocket;

.field private volatile b:I

.field private final c:Ljava/util/concurrent/atomic/AtomicInteger;

.field private volatile e:Lcom/bytedance/sdk/openadsdk/i/b/c;

.field private volatile f:Lcom/bytedance/sdk/openadsdk/i/a/c;

.field private volatile g:Lcom/bytedance/sdk/openadsdk/i/a/b;

.field private final h:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/Set<",
            "Lcom/bytedance/sdk/openadsdk/i/g;",
            ">;>;"
        }
    .end annotation
.end field

.field private final i:Lcom/bytedance/sdk/openadsdk/i/g$c;

.field private volatile j:Lcom/bytedance/sdk/openadsdk/i/c;

.field private volatile k:Lcom/bytedance/sdk/openadsdk/i/c;

.field private final l:Ljava/lang/Runnable;

.field private final m:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method private constructor <init>()V
    .registers 4

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/i/f;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 67
    new-instance v0, Landroid/util/SparseArray;

    const/4 v2, 0x2

    invoke-direct {v0, v2}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/i/f;->h:Landroid/util/SparseArray;

    .line 69
    new-instance v2, Lcom/bytedance/sdk/openadsdk/i/f$1;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/i/f$1;-><init>(Lcom/bytedance/sdk/openadsdk/i/f;)V

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/i/f;->i:Lcom/bytedance/sdk/openadsdk/i/g$c;

    .line 224
    new-instance v2, Lcom/bytedance/sdk/openadsdk/i/f$2;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/i/f$2;-><init>(Lcom/bytedance/sdk/openadsdk/i/f;)V

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/i/f;->l:Ljava/lang/Runnable;

    .line 308
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/i/f;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 125
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 126
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 127
    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/i/f;I)I
    .registers 2

    .line 37
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/i/f;->b:I

    return p1
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/i/f;)Landroid/util/SparseArray;
    .registers 1

    .line 37
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/i/f;->h:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static a()Lcom/bytedance/sdk/openadsdk/i/f;
    .registers 2

    .line 114
    sget-object v0, Lcom/bytedance/sdk/openadsdk/i/f;->d:Lcom/bytedance/sdk/openadsdk/i/f;

    if-nez v0, :cond_17

    .line 115
    const-class v0, Lcom/bytedance/sdk/openadsdk/i/f;

    monitor-enter v0

    .line 116
    :try_start_7
    sget-object v1, Lcom/bytedance/sdk/openadsdk/i/f;->d:Lcom/bytedance/sdk/openadsdk/i/f;

    if-nez v1, :cond_12

    .line 117
    new-instance v1, Lcom/bytedance/sdk/openadsdk/i/f;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/i/f;-><init>()V

    sput-object v1, Lcom/bytedance/sdk/openadsdk/i/f;->d:Lcom/bytedance/sdk/openadsdk/i/f;

    .line 119
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 121
    :cond_17
    :goto_17
    sget-object v0, Lcom/bytedance/sdk/openadsdk/i/f;->d:Lcom/bytedance/sdk/openadsdk/i/f;

    return-object v0
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/i/f;Ljava/net/ServerSocket;)Ljava/net/ServerSocket;
    .registers 2

    .line 37
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/i/f;->a:Ljava/net/ServerSocket;

    return-object p1
.end method

.method static synthetic a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2

    .line 37
    invoke-static {p0, p1}, Lcom/bytedance/sdk/openadsdk/i/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/i/f;)V
    .registers 1

    .line 37
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/i/f;->e()V

    return-void
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2

    .line 476
    return-void
.end method

.method static synthetic c(Lcom/bytedance/sdk/openadsdk/i/f;)Ljava/net/ServerSocket;
    .registers 1

    .line 37
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/i/f;->a:Ljava/net/ServerSocket;

    return-object p0
.end method

.method static synthetic d(Lcom/bytedance/sdk/openadsdk/i/f;)I
    .registers 1

    .line 37
    iget p0, p0, Lcom/bytedance/sdk/openadsdk/i/f;->b:I

    return p0
.end method

.method private e()V
    .registers 4

    .line 327
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/i/f;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/i/f;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    .line 328
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 329
    :cond_13
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/i/f;->a:Ljava/net/ServerSocket;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/i/g/d;->a(Ljava/net/ServerSocket;)V

    .line 331
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/i/f;->f()V

    .line 333
    :cond_1b
    return-void
.end method

.method static synthetic e(Lcom/bytedance/sdk/openadsdk/i/f;)Z
    .registers 1

    .line 37
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/i/f;->g()Z

    move-result p0

    return p0
.end method

.method static synthetic f(Lcom/bytedance/sdk/openadsdk/i/f;)Ljava/util/concurrent/atomic/AtomicInteger;
    .registers 1

    .line 37
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/i/f;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method private f()V
    .registers 7

    .line 368
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 369
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/i/f;->h:Landroid/util/SparseArray;

    monitor-enter v1

    .line 370
    const/4 v2, 0x0

    :try_start_9
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/i/f;->h:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    :goto_f
    if-ge v2, v3, :cond_28

    .line 371
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/i/f;->h:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    .line 372
    if-eqz v4, :cond_25

    .line 373
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 374
    invoke-interface {v4}, Ljava/util/Set;->clear()V

    .line 370
    :cond_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 377
    :cond_28
    monitor-exit v1
    :try_end_29
    .catchall {:try_start_9 .. :try_end_29} :catchall_3e

    .line 379
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/i/g;

    .line 380
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/i/g;->a()V

    .line 381
    goto :goto_2d

    .line 382
    :cond_3d
    return-void

    .line 377
    :catchall_3e
    move-exception v0

    :try_start_3f
    monitor-exit v1
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_3e

    throw v0
.end method

.method static synthetic g(Lcom/bytedance/sdk/openadsdk/i/f;)Lcom/bytedance/sdk/openadsdk/i/b/c;
    .registers 1

    .line 37
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/i/f;->e:Lcom/bytedance/sdk/openadsdk/i/b/c;

    return-object p0
.end method

.method private g()Z
    .registers 6

    .line 385
    const-string v0, "ping error"

    new-instance v1, Lcom/bytedance/sdk/openadsdk/i/f$a;

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/i/f;->b:I

    const-string v3, "127.0.0.1"

    invoke-direct {v1, v3, v2}, Lcom/bytedance/sdk/openadsdk/i/f$a;-><init>(Ljava/lang/String;I)V

    .line 388
    new-instance v2, Lcom/bytedance/sdk/openadsdk/j/f;

    const/4 v3, 0x5

    const/4 v4, 0x1

    invoke-direct {v2, v1, v3, v4}, Lcom/bytedance/sdk/openadsdk/j/f;-><init>(Ljava/util/concurrent/Callable;II)V

    .line 389
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/j/e;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v3, Lcom/bytedance/sdk/openadsdk/i/f$3;

    invoke-direct {v3, p0, v2}, Lcom/bytedance/sdk/openadsdk/i/f$3;-><init>(Lcom/bytedance/sdk/openadsdk/i/f;Lcom/bytedance/sdk/openadsdk/j/f;)V

    invoke-interface {v1, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 397
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/i/f;->h()V

    .line 400
    const/4 v1, 0x0

    :try_start_22
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/j/f;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2
    :try_end_2c
    .catchall {:try_start_22 .. :try_end_2c} :catchall_49

    const-string v3, "TAG_PROXY_ProxyServer"

    if-nez v2, :cond_3e

    .line 401
    :try_start_30
    const-string v2, "Ping error"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    const-string v2, ""

    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/i/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/i/f;->e()V

    .line 404
    return v1

    .line 407
    :cond_3e
    sget-boolean v2, Lcom/bytedance/sdk/openadsdk/i/e;->c:Z

    if-eqz v2, :cond_47

    .line 408
    const-string v2, "Ping OK!"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_47
    .catchall {:try_start_30 .. :try_end_47} :catchall_49

    .line 416
    :cond_47
    nop

    .line 418
    return v4

    .line 411
    :catchall_49
    move-exception v2

    .line 412
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 413
    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/i/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/i/f;->e()V

    .line 415
    return v1
.end method

.method static synthetic h(Lcom/bytedance/sdk/openadsdk/i/f;)Lcom/bytedance/sdk/openadsdk/i/g$c;
    .registers 1

    .line 37
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/i/f;->i:Lcom/bytedance/sdk/openadsdk/i/g$c;

    return-object p0
.end method

.method private h()V
    .registers 5

    .line 453
    nop

    .line 455
    const/4 v0, 0x0

    :try_start_2
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/i/f;->a:Ljava/net/ServerSocket;

    invoke-virtual {v1}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v0

    .line 456
    const/16 v1, 0x7d0

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 457
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 458
    const-string v2, "Ping"

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_49

    .line 459
    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 460
    const-string v2, "OK\n"

    sget-object v3, Lcom/bytedance/sdk/openadsdk/i/g/d;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 461
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_39} :catch_3c
    .catchall {:try_start_2 .. :try_end_39} :catchall_3a

    goto :goto_49

    .line 467
    :catchall_3a
    move-exception v1

    goto :goto_4e

    .line 463
    :catch_3c
    move-exception v1

    .line 464
    :try_start_3d
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 465
    const-string v2, "ping error"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/bytedance/sdk/openadsdk/i/f;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_49
    .catchall {:try_start_3d .. :try_end_49} :catchall_3a

    .line 467
    :cond_49
    :goto_49
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/i/g/d;->a(Ljava/net/Socket;)V

    .line 468
    nop

    .line 469
    return-void

    .line 467
    :goto_4e
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/i/g/d;->a(Ljava/net/Socket;)V

    .line 468
    throw v1
.end method


# virtual methods
.method public varargs a(ZZLjava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    .line 178
    const-string v0, "url"

    if-eqz p4, :cond_cd

    array-length v1, p4

    if-nez v1, :cond_9

    goto/16 :goto_cd

    .line 183
    :cond_9
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1a

    .line 184
    const-string p1, "key"

    const-string p2, "key is empty"

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/i/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    aget-object p1, p4, v2

    return-object p1

    .line 188
    :cond_1a
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/i/f;->e:Lcom/bytedance/sdk/openadsdk/i/b/c;

    if-nez v1, :cond_28

    .line 189
    const-string p1, "db"

    const-string p2, "VideoProxyDB is null"

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/i/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    aget-object p1, p4, v2

    return-object p1

    .line 193
    :cond_28
    if-eqz p1, :cond_2d

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/i/f;->g:Lcom/bytedance/sdk/openadsdk/i/a/b;

    goto :goto_2f

    :cond_2d
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/i/f;->f:Lcom/bytedance/sdk/openadsdk/i/a/c;

    .line 194
    :goto_2f
    if-nez v1, :cond_3b

    .line 195
    const-string p1, "cache"

    const-string p2, "Cache is null"

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/i/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    aget-object p1, p4, v2

    return-object p1

    .line 199
    :cond_3b
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/i/f;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    .line 200
    const/4 v3, 0x1

    if-eq v1, v3, :cond_5f

    .line 201
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "ProxyServer is not running, "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "state"

    invoke-static {p2, p1}, Lcom/bytedance/sdk/openadsdk/i/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    aget-object p1, p4, v2

    return-object p1

    .line 205
    :cond_5f
    invoke-static {p4}, Lcom/bytedance/sdk/openadsdk/i/g/d;->a([Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 206
    if-nez v1, :cond_6d

    .line 207
    const-string p1, "url not start with http/https"

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/i/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    aget-object p1, p4, v2

    return-object p1

    .line 210
    :cond_6d
    if-eqz p2, :cond_71

    move-object p2, p3

    goto :goto_75

    :cond_71
    invoke-static {p3}, Lcom/bytedance/sdk/openadsdk/i/g/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 212
    :goto_75
    invoke-static {p3, p2, v1}, Lcom/bytedance/sdk/openadsdk/i/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object p2

    .line 213
    if-nez p2, :cond_83

    .line 214
    const-string p1, "combine proxy url error"

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/i/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    aget-object p1, p4, v2

    return-object p1

    .line 218
    :cond_83
    const-string p3, "http://127.0.0.1:"

    if-eqz p1, :cond_af

    .line 219
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p3, p0, Lcom/bytedance/sdk/openadsdk/i/f;->b:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, "?f="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, "&"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 221
    :cond_af
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p3, p0, Lcom/bytedance/sdk/openadsdk/i/f;->b:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, "?"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 179
    :cond_cd
    :goto_cd
    const-string p1, "url is empty"

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/i/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    const/4 p1, 0x0

    return-object p1
.end method

.method a(Lcom/bytedance/sdk/openadsdk/i/a/c;)V
    .registers 2

    .line 167
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/i/f;->f:Lcom/bytedance/sdk/openadsdk/i/a/c;

    .line 168
    return-void
.end method

.method a(Lcom/bytedance/sdk/openadsdk/i/b/c;)V
    .registers 2

    .line 164
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/i/f;->e:Lcom/bytedance/sdk/openadsdk/i/b/c;

    .line 165
    return-void
.end method

.method a(ILjava/lang/String;)Z
    .registers 6

    .line 96
    const/4 v0, 0x0

    if-nez p2, :cond_4

    .line 97
    return v0

    .line 100
    :cond_4
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/i/f;->h:Landroid/util/SparseArray;

    monitor-enter v1

    .line 101
    :try_start_7
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/i/f;->h:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    .line 102
    if-eqz p1, :cond_2f

    .line 103
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_15
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/sdk/openadsdk/i/g;

    .line 104
    if-eqz v2, :cond_2e

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/i/g;->h:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 105
    const/4 p1, 0x1

    monitor-exit v1

    return p1

    .line 107
    :cond_2e
    goto :goto_15

    .line 109
    :cond_2f
    monitor-exit v1

    .line 110
    return v0

    .line 109
    :catchall_31
    move-exception p1

    monitor-exit v1
    :try_end_33
    .catchall {:try_start_7 .. :try_end_33} :catchall_31

    throw p1
.end method

.method b()Lcom/bytedance/sdk/openadsdk/i/c;
    .registers 2

    .line 153
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/i/f;->j:Lcom/bytedance/sdk/openadsdk/i/c;

    return-object v0
.end method

.method c()Lcom/bytedance/sdk/openadsdk/i/c;
    .registers 2

    .line 156
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/i/f;->k:Lcom/bytedance/sdk/openadsdk/i/c;

    return-object v0
.end method

.method public d()V
    .registers 4

    .line 310
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/i/f;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 311
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/i/f;->l:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 312
    const-string v1, "tt_pangle_thread_proxy_server"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 313
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 315
    :cond_19
    return-void
.end method
