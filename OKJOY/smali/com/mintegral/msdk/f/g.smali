.class public final Lcom/mintegral/msdk/f/g;
.super Ljava/lang/Object;
.source "HttpProxyCacheServerClients.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mintegral/msdk/f/g$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final b:Ljava/lang/String;

.field private volatile c:Lcom/mintegral/msdk/f/e;

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mintegral/msdk/f/b;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/mintegral/msdk/f/b;

.field private final f:Lcom/mintegral/msdk/f/c;

.field private g:Z

.field private h:Lcom/mintegral/msdk/f/a/b;

.field private i:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Lcom/mintegral/msdk/f/c;)V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/mintegral/msdk/f/g;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 24
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/mintegral/msdk/f/g;->d:Ljava/util/List;

    .line 27
    iput-boolean v1, p0, Lcom/mintegral/msdk/f/g;->g:Z

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mintegral/msdk/f/g;->i:Ljava/lang/String;

    .line 40
    invoke-static {p1}, Lcom/mintegral/msdk/f/l;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/mintegral/msdk/f/g;->b:Ljava/lang/String;

    .line 41
    invoke-static {p2}, Lcom/mintegral/msdk/f/l;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/f/c;

    iput-object v0, p0, Lcom/mintegral/msdk/f/g;->f:Lcom/mintegral/msdk/f/c;

    .line 42
    new-instance v0, Lcom/mintegral/msdk/f/g$a;

    iget-object v1, p0, Lcom/mintegral/msdk/f/g;->d:Ljava/util/List;

    invoke-direct {v0, p1, v1}, Lcom/mintegral/msdk/f/g$a;-><init>(Ljava/lang/String;Ljava/util/List;)V

    iput-object v0, p0, Lcom/mintegral/msdk/f/g;->e:Lcom/mintegral/msdk/f/b;

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/mintegral/msdk/f/c;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/mintegral/msdk/f/g;-><init>(Ljava/lang/String;Lcom/mintegral/msdk/f/c;)V

    .line 47
    iput-object p3, p0, Lcom/mintegral/msdk/f/g;->i:Ljava/lang/String;

    .line 48
    return-void
.end method

.method private declared-synchronized b()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mintegral/msdk/f/n;
        }
    .end annotation

    .prologue
    .line 70
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/mintegral/msdk/f/g;->c:Lcom/mintegral/msdk/f/e;

    if-nez v0, :cond_42

    .line 71
    iget-object v0, p0, Lcom/mintegral/msdk/f/g;->i:Ljava/lang/String;

    if-nez v0, :cond_4d

    .line 1134
    new-instance v0, Lcom/mintegral/msdk/f/h;

    iget-object v1, p0, Lcom/mintegral/msdk/f/g;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/mintegral/msdk/f/g;->f:Lcom/mintegral/msdk/f/c;

    iget-object v2, v2, Lcom/mintegral/msdk/f/c;->d:Lcom/mintegral/msdk/f/c/c;

    iget-object v3, p0, Lcom/mintegral/msdk/f/g;->f:Lcom/mintegral/msdk/f/c;

    iget-object v3, v3, Lcom/mintegral/msdk/f/c;->e:Lcom/mintegral/msdk/f/b/b;

    invoke-direct {v0, v1, v2, v3}, Lcom/mintegral/msdk/f/h;-><init>(Ljava/lang/String;Lcom/mintegral/msdk/f/c/c;Lcom/mintegral/msdk/f/b/b;)V

    .line 1135
    new-instance v1, Lcom/mintegral/msdk/f/a/b;

    iget-object v2, p0, Lcom/mintegral/msdk/f/g;->f:Lcom/mintegral/msdk/f/c;

    iget-object v3, p0, Lcom/mintegral/msdk/f/g;->b:Ljava/lang/String;

    .line 2027
    iget-object v4, v2, Lcom/mintegral/msdk/f/c;->b:Lcom/mintegral/msdk/f/a/c;

    invoke-interface {v4, v3}, Lcom/mintegral/msdk/f/a/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2028
    new-instance v4, Ljava/io/File;

    iget-object v2, v2, Lcom/mintegral/msdk/f/c;->a:Ljava/io/File;

    invoke-direct {v4, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1135
    iget-object v2, p0, Lcom/mintegral/msdk/f/g;->f:Lcom/mintegral/msdk/f/c;

    iget-object v2, v2, Lcom/mintegral/msdk/f/c;->c:Lcom/mintegral/msdk/f/a/a;

    invoke-direct {v1, v4, v2}, Lcom/mintegral/msdk/f/a/b;-><init>(Ljava/io/File;Lcom/mintegral/msdk/f/a/a;)V

    iput-object v1, p0, Lcom/mintegral/msdk/f/g;->h:Lcom/mintegral/msdk/f/a/b;

    .line 1136
    new-instance v1, Lcom/mintegral/msdk/f/e;

    iget-object v2, p0, Lcom/mintegral/msdk/f/g;->h:Lcom/mintegral/msdk/f/a/b;

    invoke-direct {v1, v0, v2}, Lcom/mintegral/msdk/f/e;-><init>(Lcom/mintegral/msdk/f/h;Lcom/mintegral/msdk/f/a/b;)V

    .line 1137
    iget-object v0, p0, Lcom/mintegral/msdk/f/g;->e:Lcom/mintegral/msdk/f/b;

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/f/e;->a(Lcom/mintegral/msdk/f/b;)V

    .line 73
    iput-object v1, p0, Lcom/mintegral/msdk/f/g;->c:Lcom/mintegral/msdk/f/e;

    .line 80
    :cond_42
    :goto_42
    iget-boolean v0, p0, Lcom/mintegral/msdk/f/g;->g:Z

    if-eqz v0, :cond_4b

    .line 81
    iget-object v0, p0, Lcom/mintegral/msdk/f/g;->c:Lcom/mintegral/msdk/f/e;

    invoke-virtual {v0}, Lcom/mintegral/msdk/f/e;->a()V
    :try_end_4b
    .catchall {:try_start_1 .. :try_end_4b} :catchall_88

    .line 83
    :cond_4b
    monitor-exit p0

    return-void

    .line 76
    :cond_4d
    :try_start_4d
    iget-object v0, p0, Lcom/mintegral/msdk/f/g;->i:Ljava/lang/String;

    .line 2125
    new-instance v1, Lcom/mintegral/msdk/f/h;

    iget-object v2, p0, Lcom/mintegral/msdk/f/g;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/mintegral/msdk/f/g;->f:Lcom/mintegral/msdk/f/c;

    iget-object v3, v3, Lcom/mintegral/msdk/f/c;->d:Lcom/mintegral/msdk/f/c/c;

    iget-object v4, p0, Lcom/mintegral/msdk/f/g;->f:Lcom/mintegral/msdk/f/c;

    iget-object v4, v4, Lcom/mintegral/msdk/f/c;->e:Lcom/mintegral/msdk/f/b/b;

    invoke-direct {v1, v2, v3, v4}, Lcom/mintegral/msdk/f/h;-><init>(Ljava/lang/String;Lcom/mintegral/msdk/f/c/c;Lcom/mintegral/msdk/f/b/b;)V

    .line 2126
    const-string v2, "VideoCachedown"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "--->"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2127
    new-instance v2, Lcom/mintegral/msdk/f/a/b;

    invoke-direct {v2, v0}, Lcom/mintegral/msdk/f/a/b;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/mintegral/msdk/f/g;->h:Lcom/mintegral/msdk/f/a/b;

    .line 2128
    new-instance v0, Lcom/mintegral/msdk/f/e;

    iget-object v2, p0, Lcom/mintegral/msdk/f/g;->h:Lcom/mintegral/msdk/f/a/b;

    invoke-direct {v0, v1, v2}, Lcom/mintegral/msdk/f/e;-><init>(Lcom/mintegral/msdk/f/h;Lcom/mintegral/msdk/f/a/b;)V

    .line 2129
    iget-object v1, p0, Lcom/mintegral/msdk/f/g;->e:Lcom/mintegral/msdk/f/b;

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/f/e;->a(Lcom/mintegral/msdk/f/b;)V

    .line 2130
    iput-object v0, p0, Lcom/mintegral/msdk/f/g;->c:Lcom/mintegral/msdk/f/e;
    :try_end_87
    .catchall {:try_start_4d .. :try_end_87} :catchall_88

    goto :goto_42

    .line 70
    :catchall_88
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized c()V
    .registers 2

    .prologue
    .line 86
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/mintegral/msdk/f/g;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-gtz v0, :cond_11

    .line 87
    iget-object v0, p0, Lcom/mintegral/msdk/f/g;->c:Lcom/mintegral/msdk/f/e;

    invoke-virtual {v0}, Lcom/mintegral/msdk/f/e;->d()V

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mintegral/msdk/f/g;->c:Lcom/mintegral/msdk/f/e;
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    .line 90
    :cond_11
    monitor-exit p0

    return-void

    .line 86
    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final a()Lcom/mintegral/msdk/f/e;
    .registers 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/mintegral/msdk/f/g;->c:Lcom/mintegral/msdk/f/e;

    return-object v0
.end method

.method public final a(Lcom/mintegral/msdk/f/b;)V
    .registers 3

    .prologue
    .line 93
    iget-object v0, p0, Lcom/mintegral/msdk/f/g;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    return-void
.end method

.method public final a(Lcom/mintegral/msdk/f/d;Ljava/net/Socket;)V
    .registers 5

    .prologue
    .line 52
    :try_start_0
    invoke-direct {p0}, Lcom/mintegral/msdk/f/g;->b()V

    .line 53
    iget-object v0, p0, Lcom/mintegral/msdk/f/g;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 54
    iget-object v0, p0, Lcom/mintegral/msdk/f/g;->c:Lcom/mintegral/msdk/f/e;

    invoke-virtual {v0, p1, p2}, Lcom/mintegral/msdk/f/e;->a(Lcom/mintegral/msdk/f/d;Ljava/net/Socket;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_11
    .catchall {:try_start_0 .. :try_end_d} :catchall_22

    .line 61
    invoke-direct {p0}, Lcom/mintegral/msdk/f/g;->c()V

    .line 62
    :goto_10
    return-void

    .line 55
    :catch_11
    move-exception v0

    .line 56
    :try_start_12
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 57
    instance-of v1, v0, Lcom/mintegral/msdk/f/n;

    if-eqz v1, :cond_1e

    .line 58
    iget-object v1, p0, Lcom/mintegral/msdk/f/g;->e:Lcom/mintegral/msdk/f/b;

    invoke-interface {v1, v0}, Lcom/mintegral/msdk/f/b;->onCacheError(Ljava/lang/Throwable;)V
    :try_end_1e
    .catchall {:try_start_12 .. :try_end_1e} :catchall_22

    .line 61
    :cond_1e
    invoke-direct {p0}, Lcom/mintegral/msdk/f/g;->c()V

    goto :goto_10

    :catchall_22
    move-exception v0

    invoke-direct {p0}, Lcom/mintegral/msdk/f/g;->c()V

    throw v0
.end method
