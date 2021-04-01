.class public Lcom/bytedance/sdk/openadsdk/h/f;
.super Ljava/lang/Object;
.source "ProxyServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/h/f$a;
    }
.end annotation


# static fields
.field private static volatile d:Lcom/bytedance/sdk/openadsdk/h/f;


# instance fields
.field private volatile a:Ljava/net/ServerSocket;

.field private volatile b:I

.field private final c:Ljava/util/concurrent/atomic/AtomicInteger;

.field private volatile e:Lcom/bytedance/sdk/openadsdk/h/b/c;

.field private volatile f:Lcom/bytedance/sdk/openadsdk/h/a/c;

.field private volatile g:Lcom/bytedance/sdk/openadsdk/h/a/b;

.field private final h:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/Set",
            "<",
            "Lcom/bytedance/sdk/openadsdk/h/g;",
            ">;>;"
        }
    .end annotation
.end field

.field private final i:Lcom/bytedance/sdk/openadsdk/h/g$c;

.field private volatile j:Lcom/bytedance/sdk/openadsdk/h/c;

.field private volatile k:Lcom/bytedance/sdk/openadsdk/h/c;

.field private final l:Ljava/lang/Runnable;

.field private final m:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method private constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/f;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 66
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/f;->h:Landroid/util/SparseArray;

    .line 68
    new-instance v0, Lcom/bytedance/sdk/openadsdk/h/f$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/h/f$1;-><init>(Lcom/bytedance/sdk/openadsdk/h/f;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/f;->i:Lcom/bytedance/sdk/openadsdk/h/g$c;

    .line 223
    new-instance v0, Lcom/bytedance/sdk/openadsdk/h/f$2;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/h/f$2;-><init>(Lcom/bytedance/sdk/openadsdk/h/f;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/f;->l:Ljava/lang/Runnable;

    .line 307
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/f;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 124
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/f;->h:Landroid/util/SparseArray;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 125
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/f;->h:Landroid/util/SparseArray;

    const/4 v1, 0x1

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 126
    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/h/f;I)I
    .registers 2

    .prologue
    .line 36
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/h/f;->b:I

    return p1
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/h/f;)Landroid/util/SparseArray;
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/f;->h:Landroid/util/SparseArray;

    return-object v0
.end method

.method public static a()Lcom/bytedance/sdk/openadsdk/h/f;
    .registers 2

    .prologue
    .line 113
    sget-object v0, Lcom/bytedance/sdk/openadsdk/h/f;->d:Lcom/bytedance/sdk/openadsdk/h/f;

    if-nez v0, :cond_13

    .line 114
    const-class v1, Lcom/bytedance/sdk/openadsdk/h/f;

    monitor-enter v1

    .line 115
    :try_start_7
    sget-object v0, Lcom/bytedance/sdk/openadsdk/h/f;->d:Lcom/bytedance/sdk/openadsdk/h/f;

    if-nez v0, :cond_12

    .line 116
    new-instance v0, Lcom/bytedance/sdk/openadsdk/h/f;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/h/f;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/h/f;->d:Lcom/bytedance/sdk/openadsdk/h/f;

    .line 118
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 120
    :cond_13
    sget-object v0, Lcom/bytedance/sdk/openadsdk/h/f;->d:Lcom/bytedance/sdk/openadsdk/h/f;

    return-object v0

    .line 118
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/h/f;Ljava/net/ServerSocket;)Ljava/net/ServerSocket;
    .registers 2

    .prologue
    .line 36
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/h/f;->a:Ljava/net/ServerSocket;

    return-object p1
.end method

.method static synthetic a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 36
    invoke-static {p0, p1}, Lcom/bytedance/sdk/openadsdk/h/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/h/f;)V
    .registers 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/h/f;->e()V

    return-void
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 473
    return-void
.end method

.method static synthetic c(Lcom/bytedance/sdk/openadsdk/h/f;)Ljava/net/ServerSocket;
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/f;->a:Ljava/net/ServerSocket;

    return-object v0
.end method

.method static synthetic d(Lcom/bytedance/sdk/openadsdk/h/f;)I
    .registers 2

    .prologue
    .line 36
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/h/f;->b:I

    return v0
.end method

.method private e()V
    .registers 4

    .prologue
    const/4 v2, 0x2

    .line 324
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/f;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/f;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    .line 325
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 326
    :cond_13
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/f;->a:Ljava/net/ServerSocket;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/h/g/d;->a(Ljava/net/ServerSocket;)V

    .line 328
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/h/f;->f()V

    .line 330
    :cond_1b
    return-void
.end method

.method static synthetic e(Lcom/bytedance/sdk/openadsdk/h/f;)Z
    .registers 2

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/h/f;->g()Z

    move-result v0

    return v0
.end method

.method static synthetic f(Lcom/bytedance/sdk/openadsdk/h/f;)Ljava/util/concurrent/atomic/AtomicInteger;
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/f;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method private f()V
    .registers 7

    .prologue
    .line 365
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 366
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/h/f;->h:Landroid/util/SparseArray;

    monitor-enter v3

    .line 367
    const/4 v0, 0x0

    :try_start_9
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/h/f;->h:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v4

    move v1, v0

    :goto_10
    if-ge v1, v4, :cond_2c

    .line 368
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/f;->h:Landroid/util/SparseArray;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/h/f;->h:Landroid/util/SparseArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 369
    if-eqz v0, :cond_28

    .line 370
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 371
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 367
    :cond_28
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_10

    .line 374
    :cond_2c
    monitor-exit v3
    :try_end_2d
    .catchall {:try_start_9 .. :try_end_2d} :catchall_41

    .line 376
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_31
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_44

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/h/g;

    .line 377
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/h/g;->a()V

    goto :goto_31

    .line 374
    :catchall_41
    move-exception v0

    :try_start_42
    monitor-exit v3
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_41

    throw v0

    .line 379
    :cond_44
    return-void
.end method

.method static synthetic g(Lcom/bytedance/sdk/openadsdk/h/f;)Lcom/bytedance/sdk/openadsdk/h/b/c;
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/f;->e:Lcom/bytedance/sdk/openadsdk/h/b/c;

    return-object v0
.end method

.method private g()Z
    .registers 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 382
    new-instance v0, Lcom/bytedance/sdk/openadsdk/h/f$a;

    const-string v3, "127.0.0.1"

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/h/f;->b:I

    invoke-direct {v0, v3, v4}, Lcom/bytedance/sdk/openadsdk/h/f$a;-><init>(Ljava/lang/String;I)V

    .line 385
    new-instance v3, Lcom/bytedance/sdk/openadsdk/i/b;

    const/4 v4, 0x5

    invoke-direct {v3, v0, v4, v2}, Lcom/bytedance/sdk/openadsdk/i/b;-><init>(Ljava/util/concurrent/Callable;II)V

    .line 386
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/i/a;->a()Lcom/bytedance/sdk/openadsdk/i/a;

    move-result-object v0

    new-instance v4, Lcom/bytedance/sdk/openadsdk/h/f$3;

    invoke-direct {v4, p0, v3}, Lcom/bytedance/sdk/openadsdk/h/f$3;-><init>(Lcom/bytedance/sdk/openadsdk/h/f;Lcom/bytedance/sdk/openadsdk/i/b;)V

    invoke-virtual {v0, v4}, Lcom/bytedance/sdk/openadsdk/i/a;->a(Lcom/bytedance/sdk/openadsdk/i/c;)V

    .line 394
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/h/f;->h()V

    .line 397
    :try_start_20
    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/i/b;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3f

    .line 398
    const-string v0, "TAG_PROXY_ProxyServer"

    const-string v2, "Ping error"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    const-string v0, "ping error"

    const-string v2, ""

    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/h/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/h/f;->e()V

    move v0, v1

    .line 415
    :goto_3e
    return v0

    .line 404
    :cond_3f
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/h/e;->c:Z

    if-eqz v0, :cond_4a

    .line 405
    const-string v0, "TAG_PROXY_ProxyServer"

    const-string v3, "Ping OK!"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4a
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_4a} :catch_4c

    :cond_4a
    move v0, v2

    .line 415
    goto :goto_3e

    .line 408
    :catch_4c
    move-exception v0

    .line 409
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 410
    const-string v2, "ping error"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/bytedance/sdk/openadsdk/h/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/h/f;->e()V

    move v0, v1

    .line 412
    goto :goto_3e
.end method

.method static synthetic h(Lcom/bytedance/sdk/openadsdk/h/f;)Lcom/bytedance/sdk/openadsdk/h/g$c;
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/f;->i:Lcom/bytedance/sdk/openadsdk/h/g$c;

    return-object v0
.end method

.method private h()V
    .registers 5

    .prologue
    .line 450
    const/4 v1, 0x0

    .line 452
    :try_start_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/f;->a:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v1

    .line 453
    const/16 v0, 0x7d0

    invoke-virtual {v1, v0}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 454
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 455
    const-string v2, "Ping"

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 456
    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 457
    const-string v2, "OK\n"

    sget-object v3, Lcom/bytedance/sdk/openadsdk/h/g/d;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V

    .line 458
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_38} :catch_3c
    .catchall {:try_start_1 .. :try_end_38} :catchall_4d

    .line 464
    :cond_38
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/h/g/d;->a(Ljava/net/Socket;)V

    .line 466
    :goto_3b
    return-void

    .line 460
    :catch_3c
    move-exception v0

    .line 461
    :try_start_3d
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 462
    const-string v2, "ping error"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/bytedance/sdk/openadsdk/h/f;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_49
    .catchall {:try_start_3d .. :try_end_49} :catchall_4d

    .line 464
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/h/g/d;->a(Ljava/net/Socket;)V

    goto :goto_3b

    :catchall_4d
    move-exception v0

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/h/g/d;->a(Ljava/net/Socket;)V

    throw v0
.end method


# virtual methods
.method public varargs a(ZZLjava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 177
    if-eqz p4, :cond_7

    array-length v0, p4

    if-nez v0, :cond_10

    .line 178
    :cond_7
    const-string v0, "url"

    const-string v1, "url is empty"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/h/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    const/4 v0, 0x0

    .line 220
    :goto_f
    return-object v0

    .line 182
    :cond_10
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 183
    const-string v0, "key"

    const-string v1, "key is empty"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/h/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    aget-object v0, p4, v4

    goto :goto_f

    .line 187
    :cond_20
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/f;->e:Lcom/bytedance/sdk/openadsdk/h/b/c;

    if-nez v0, :cond_2e

    .line 188
    const-string v0, "db"

    const-string v1, "VideoProxyDB is null"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/h/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    aget-object v0, p4, v4

    goto :goto_f

    .line 192
    :cond_2e
    if-eqz p1, :cond_3e

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/f;->g:Lcom/bytedance/sdk/openadsdk/h/a/b;

    .line 193
    :goto_32
    if-nez v0, :cond_41

    .line 194
    const-string v0, "cache"

    const-string v1, "Cache is null"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/h/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    aget-object v0, p4, v4

    goto :goto_f

    .line 192
    :cond_3e
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/f;->f:Lcom/bytedance/sdk/openadsdk/h/a/c;

    goto :goto_32

    .line 198
    :cond_41
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/f;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 199
    if-eq v0, v3, :cond_64

    .line 200
    const-string v1, "state"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ProxyServer is not running, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/h/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    aget-object v0, p4, v4

    goto :goto_f

    .line 204
    :cond_64
    invoke-static {p4}, Lcom/bytedance/sdk/openadsdk/h/g/d;->a([Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 205
    if-nez v1, :cond_74

    .line 206
    const-string v0, "url"

    const-string v1, "url not start with http/https"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/h/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    aget-object v0, p4, v4

    goto :goto_f

    .line 209
    :cond_74
    if-eqz p2, :cond_87

    move-object v0, p3

    .line 211
    :goto_77
    invoke-static {p3, v0, v1}, Lcom/bytedance/sdk/openadsdk/h/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 212
    if-nez v0, :cond_8c

    .line 213
    const-string v0, "url"

    const-string v1, "combine proxy url error"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/h/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    aget-object v0, p4, v4

    goto :goto_f

    .line 209
    :cond_87
    invoke-static {p3}, Lcom/bytedance/sdk/openadsdk/h/g/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_77

    .line 217
    :cond_8c
    if-eqz p1, :cond_b9

    .line 218
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://127.0.0.1:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/h/f;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?f="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_f

    .line 220
    :cond_b9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://127.0.0.1:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/h/f;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_f
.end method

.method a(Lcom/bytedance/sdk/openadsdk/h/a/c;)V
    .registers 2

    .prologue
    .line 166
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/h/f;->f:Lcom/bytedance/sdk/openadsdk/h/a/c;

    .line 167
    return-void
.end method

.method a(Lcom/bytedance/sdk/openadsdk/h/b/c;)V
    .registers 2

    .prologue
    .line 163
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/h/f;->e:Lcom/bytedance/sdk/openadsdk/h/b/c;

    .line 164
    return-void
.end method

.method a(ILjava/lang/String;)Z
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 95
    if-nez p2, :cond_5

    move v0, v1

    .line 109
    :goto_4
    return v0

    .line 99
    :cond_5
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/h/f;->h:Landroid/util/SparseArray;

    monitor-enter v2

    .line 100
    :try_start_8
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/f;->h:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 101
    if-eqz v0, :cond_32

    .line 102
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_16
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/h/g;

    .line 103
    if-eqz v0, :cond_16

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/h/g;->h:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 104
    const/4 v0, 0x1

    monitor-exit v2

    goto :goto_4

    .line 108
    :catchall_2f
    move-exception v0

    monitor-exit v2
    :try_end_31
    .catchall {:try_start_8 .. :try_end_31} :catchall_2f

    throw v0

    :cond_32
    :try_start_32
    monitor-exit v2
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_2f

    move v0, v1

    .line 109
    goto :goto_4
.end method

.method b()Lcom/bytedance/sdk/openadsdk/h/c;
    .registers 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/f;->j:Lcom/bytedance/sdk/openadsdk/h/c;

    return-object v0
.end method

.method c()Lcom/bytedance/sdk/openadsdk/h/c;
    .registers 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/f;->k:Lcom/bytedance/sdk/openadsdk/h/c;

    return-object v0
.end method

.method public d()V
    .registers 4

    .prologue
    .line 309
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/f;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 310
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/h/f;->l:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 312
    :cond_14
    return-void
.end method
