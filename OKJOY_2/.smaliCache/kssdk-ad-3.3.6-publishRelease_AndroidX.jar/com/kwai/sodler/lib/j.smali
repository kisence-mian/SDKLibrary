.class public final Lcom/kwai/sodler/lib/j;
.super Lcom/kwai/sodler/lib/k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwai/sodler/lib/j$a;,
        Lcom/kwai/sodler/lib/j$b;
    }
.end annotation


# static fields
.field private static volatile a:Lcom/kwai/sodler/lib/j;


# instance fields
.field private volatile b:Z

.field private c:Lcom/kwai/sodler/lib/k;

.field private d:Lcom/kwai/sodler/lib/ext/a;

.field private e:Ljava/util/concurrent/ExecutorService;

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/kwai/sodler/lib/j$b;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/kwai/sodler/lib/j$a;


# direct methods
.method private constructor <init>()V
    .registers 8

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/kwai/sodler/lib/k;-><init>(Lcom/kwai/sodler/lib/a/d;Lcom/kwai/sodler/lib/a/g;Lcom/kwai/sodler/lib/a/c;Lcom/kwai/sodler/lib/a/b;Lcom/kwai/sodler/lib/ext/c;Lcom/kwai/sodler/lib/ext/a;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kwai/sodler/lib/j;->b:Z

    return-void
.end method

.method public static a()Lcom/kwai/sodler/lib/j;
    .registers 2

    sget-object v0, Lcom/kwai/sodler/lib/j;->a:Lcom/kwai/sodler/lib/j;

    if-nez v0, :cond_17

    const-class v0, Lcom/kwai/sodler/lib/j;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/kwai/sodler/lib/j;->a:Lcom/kwai/sodler/lib/j;

    if-nez v1, :cond_12

    new-instance v1, Lcom/kwai/sodler/lib/j;

    invoke-direct {v1}, Lcom/kwai/sodler/lib/j;-><init>()V

    sput-object v1, Lcom/kwai/sodler/lib/j;->a:Lcom/kwai/sodler/lib/j;

    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    :cond_17
    :goto_17
    sget-object v0, Lcom/kwai/sodler/lib/j;->a:Lcom/kwai/sodler/lib/j;

    return-object v0
.end method

.method private static i()Ljava/util/concurrent/ExecutorService;
    .registers 8

    new-instance v7, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v6}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    const/4 v1, 0x1

    const v2, 0x7fffffff

    const-wide/16 v3, 0x3c

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    return-object v7
.end method

.method private j()V
    .registers 3

    iget-boolean v0, p0, Lcom/kwai/sodler/lib/j;->b:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Sodler has not yet been init."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a(Lcom/kwai/sodler/lib/a/f;Lcom/kwai/sodler/lib/k$a;)Lcom/kwai/sodler/lib/a/f;
    .registers 5

    iget-boolean v0, p0, Lcom/kwai/sodler/lib/j;->b:Z

    if-eqz v0, :cond_16

    invoke-virtual {p1}, Lcom/kwai/sodler/lib/a/f;->b()Lcom/kwai/sodler/lib/a/e;

    move-result-object v0

    iget-object v1, p0, Lcom/kwai/sodler/lib/j;->c:Lcom/kwai/sodler/lib/k;

    if-nez v0, :cond_d

    move-object v0, v1

    :cond_d
    invoke-virtual {p1, v0}, Lcom/kwai/sodler/lib/a/f;->a(Lcom/kwai/sodler/lib/a/e;)Lcom/kwai/sodler/lib/a/f;

    move-result-object p1

    invoke-virtual {v1, p1, p2}, Lcom/kwai/sodler/lib/k;->a(Lcom/kwai/sodler/lib/a/f;Lcom/kwai/sodler/lib/k$a;)Lcom/kwai/sodler/lib/a/f;

    move-result-object p1

    return-object p1

    :cond_16
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Sodler has not yet been init."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lcom/kwai/sodler/lib/a/f;I)Lcom/kwai/sodler/lib/j$b;
    .registers 3

    invoke-static {p0, p2}, Lcom/kwai/sodler/lib/k$a;->a(Lcom/kwai/sodler/lib/a/e;I)Lcom/kwai/sodler/lib/k$a;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/kwai/sodler/lib/j;->b(Lcom/kwai/sodler/lib/a/f;Lcom/kwai/sodler/lib/k$a;)Lcom/kwai/sodler/lib/j$b;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized a(Landroid/content/Context;Lcom/kwai/sodler/lib/ext/c;)V
    .registers 11

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/kwai/sodler/lib/j;->b:Z

    if-nez v0, :cond_3a

    new-instance v2, Lcom/kwai/sodler/lib/d;

    invoke-direct {v2, p1}, Lcom/kwai/sodler/lib/d;-><init>(Landroid/content/Context;)V

    new-instance v3, Lcom/kwai/sodler/lib/e;

    invoke-direct {v3, p1}, Lcom/kwai/sodler/lib/e;-><init>(Landroid/content/Context;)V

    new-instance v4, Lcom/kwai/sodler/lib/c;

    invoke-direct {v4, p1, p2}, Lcom/kwai/sodler/lib/c;-><init>(Landroid/content/Context;Lcom/kwai/sodler/lib/ext/c;)V

    new-instance v5, Lcom/kwai/sodler/lib/b;

    invoke-direct {v5}, Lcom/kwai/sodler/lib/b;-><init>()V

    new-instance p1, Lcom/kwai/sodler/lib/ext/a;

    invoke-direct {p1}, Lcom/kwai/sodler/lib/ext/a;-><init>()V

    iput-object p1, p0, Lcom/kwai/sodler/lib/j;->d:Lcom/kwai/sodler/lib/ext/a;

    invoke-static {}, Lcom/kwai/sodler/lib/j;->i()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/kwai/sodler/lib/j;->e:Ljava/util/concurrent/ExecutorService;

    new-instance p1, Lcom/kwai/sodler/lib/k;

    new-instance v7, Lcom/kwai/sodler/lib/ext/a;

    invoke-direct {v7}, Lcom/kwai/sodler/lib/ext/a;-><init>()V

    move-object v1, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v7}, Lcom/kwai/sodler/lib/k;-><init>(Lcom/kwai/sodler/lib/a/d;Lcom/kwai/sodler/lib/a/g;Lcom/kwai/sodler/lib/a/c;Lcom/kwai/sodler/lib/a/b;Lcom/kwai/sodler/lib/ext/c;Lcom/kwai/sodler/lib/ext/a;)V

    iput-object p1, p0, Lcom/kwai/sodler/lib/j;->c:Lcom/kwai/sodler/lib/k;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/kwai/sodler/lib/j;->b:Z

    invoke-direct {p0}, Lcom/kwai/sodler/lib/j;->j()V
    :try_end_3a
    .catchall {:try_start_1 .. :try_end_3a} :catchall_3c

    :cond_3a
    monitor-exit p0

    return-void

    :catchall_3c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public b()Lcom/kwai/sodler/lib/ext/c;
    .registers 3

    iget-boolean v0, p0, Lcom/kwai/sodler/lib/j;->b:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/kwai/sodler/lib/j;->c:Lcom/kwai/sodler/lib/k;

    invoke-virtual {v0}, Lcom/kwai/sodler/lib/k;->b()Lcom/kwai/sodler/lib/ext/c;

    move-result-object v0

    return-object v0

    :cond_b
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Sodler has not yet been init."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b(Lcom/kwai/sodler/lib/a/f;Lcom/kwai/sodler/lib/k$a;)Lcom/kwai/sodler/lib/j$b;
    .registers 5

    iget-boolean v0, p0, Lcom/kwai/sodler/lib/j;->b:Z

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lcom/kwai/sodler/lib/j;->f:Ljava/util/Map;

    invoke-virtual {p0, v0}, Lcom/kwai/sodler/lib/j;->a(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/kwai/sodler/lib/j;->f:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/kwai/sodler/lib/a/f;->i()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwai/sodler/lib/j$b;

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Lcom/kwai/sodler/lib/j$b;->a()V

    :cond_1b
    invoke-virtual {p1, p0}, Lcom/kwai/sodler/lib/a/f;->a(Lcom/kwai/sodler/lib/a/e;)Lcom/kwai/sodler/lib/a/f;

    iget-object v0, p0, Lcom/kwai/sodler/lib/j;->e:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/kwai/sodler/lib/j$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/kwai/sodler/lib/j$1;-><init>(Lcom/kwai/sodler/lib/j;Lcom/kwai/sodler/lib/a/f;Lcom/kwai/sodler/lib/k$a;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p2

    new-instance v0, Lcom/kwai/sodler/lib/j$b;

    invoke-direct {v0, p1, p2}, Lcom/kwai/sodler/lib/j$b;-><init>(Lcom/kwai/sodler/lib/a/f;Ljava/util/concurrent/Future;)V

    invoke-virtual {p1}, Lcom/kwai/sodler/lib/a/f;->i()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_3d

    iget-object p2, p0, Lcom/kwai/sodler/lib/j;->f:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/kwai/sodler/lib/a/f;->i()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3d
    return-object v0

    :cond_3e
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Sodler has not yet been init."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c()Lcom/kwai/sodler/lib/a/d;
    .registers 3

    iget-boolean v0, p0, Lcom/kwai/sodler/lib/j;->b:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/kwai/sodler/lib/j;->c:Lcom/kwai/sodler/lib/k;

    invoke-virtual {v0}, Lcom/kwai/sodler/lib/k;->c()Lcom/kwai/sodler/lib/a/d;

    move-result-object v0

    return-object v0

    :cond_b
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Sodler has not yet been init."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public d()Lcom/kwai/sodler/lib/a/g;
    .registers 3

    iget-boolean v0, p0, Lcom/kwai/sodler/lib/j;->b:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/kwai/sodler/lib/j;->c:Lcom/kwai/sodler/lib/k;

    invoke-virtual {v0}, Lcom/kwai/sodler/lib/k;->d()Lcom/kwai/sodler/lib/a/g;

    move-result-object v0

    return-object v0

    :cond_b
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Sodler has not yet been init."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public e()Lcom/kwai/sodler/lib/a/c;
    .registers 3

    iget-boolean v0, p0, Lcom/kwai/sodler/lib/j;->b:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/kwai/sodler/lib/j;->c:Lcom/kwai/sodler/lib/k;

    invoke-virtual {v0}, Lcom/kwai/sodler/lib/k;->e()Lcom/kwai/sodler/lib/a/c;

    move-result-object v0

    return-object v0

    :cond_b
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Sodler has not yet been init."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public f()Lcom/kwai/sodler/lib/a/b;
    .registers 3

    iget-boolean v0, p0, Lcom/kwai/sodler/lib/j;->b:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/kwai/sodler/lib/j;->c:Lcom/kwai/sodler/lib/k;

    invoke-virtual {v0}, Lcom/kwai/sodler/lib/k;->f()Lcom/kwai/sodler/lib/a/b;

    move-result-object v0

    return-object v0

    :cond_b
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Sodler has not yet been init."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public g()Lcom/kwai/sodler/lib/ext/a;
    .registers 3

    iget-boolean v0, p0, Lcom/kwai/sodler/lib/j;->b:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/kwai/sodler/lib/j;->d:Lcom/kwai/sodler/lib/ext/a;

    return-object v0

    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Sodler has not yet been init."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public h()Lcom/kwai/sodler/lib/j$a;
    .registers 2

    iget-object v0, p0, Lcom/kwai/sodler/lib/j;->g:Lcom/kwai/sodler/lib/j$a;

    return-object v0
.end method
