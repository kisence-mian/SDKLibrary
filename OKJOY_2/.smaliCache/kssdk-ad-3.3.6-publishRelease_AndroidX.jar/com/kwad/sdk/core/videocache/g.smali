.class final Lcom/kwad/sdk/core/videocache/g;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/sdk/core/videocache/g$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final b:Ljava/lang/String;

.field private volatile c:Lcom/kwad/sdk/core/videocache/e;

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/kwad/sdk/core/videocache/b;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/kwad/sdk/core/videocache/b;

.field private final f:Lcom/kwad/sdk/core/videocache/c;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/kwad/sdk/core/videocache/c;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/kwad/sdk/core/videocache/g;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/kwad/sdk/core/videocache/g;->d:Ljava/util/List;

    invoke-static {p1}, Lcom/kwad/sdk/core/videocache/j;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/kwad/sdk/core/videocache/g;->b:Ljava/lang/String;

    invoke-static {p2}, Lcom/kwad/sdk/core/videocache/j;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/kwad/sdk/core/videocache/c;

    iput-object p2, p0, Lcom/kwad/sdk/core/videocache/g;->f:Lcom/kwad/sdk/core/videocache/c;

    new-instance p2, Lcom/kwad/sdk/core/videocache/g$a;

    invoke-direct {p2, p1, v0}, Lcom/kwad/sdk/core/videocache/g$a;-><init>(Ljava/lang/String;Ljava/util/List;)V

    iput-object p2, p0, Lcom/kwad/sdk/core/videocache/g;->e:Lcom/kwad/sdk/core/videocache/b;

    return-void
.end method

.method private declared-synchronized c()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/kwad/sdk/core/videocache/g;->c:Lcom/kwad/sdk/core/videocache/e;

    if-nez v0, :cond_a

    invoke-direct {p0}, Lcom/kwad/sdk/core/videocache/g;->e()Lcom/kwad/sdk/core/videocache/e;

    move-result-object v0

    goto :goto_c

    :cond_a
    iget-object v0, p0, Lcom/kwad/sdk/core/videocache/g;->c:Lcom/kwad/sdk/core/videocache/e;

    :goto_c
    iput-object v0, p0, Lcom/kwad/sdk/core/videocache/g;->c:Lcom/kwad/sdk/core/videocache/e;
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    monitor-exit p0

    return-void

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized d()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/kwad/sdk/core/videocache/g;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-gtz v0, :cond_11

    iget-object v0, p0, Lcom/kwad/sdk/core/videocache/g;->c:Lcom/kwad/sdk/core/videocache/e;

    invoke-virtual {v0}, Lcom/kwad/sdk/core/videocache/e;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kwad/sdk/core/videocache/g;->c:Lcom/kwad/sdk/core/videocache/e;
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    :cond_11
    monitor-exit p0

    return-void

    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private e()Lcom/kwad/sdk/core/videocache/e;
    .registers 5

    new-instance v0, Lcom/kwad/sdk/core/videocache/h;

    iget-object v1, p0, Lcom/kwad/sdk/core/videocache/g;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/kwad/sdk/core/videocache/g;->f:Lcom/kwad/sdk/core/videocache/c;

    iget-object v2, v2, Lcom/kwad/sdk/core/videocache/c;->d:Lcom/kwad/sdk/core/videocache/d/b;

    iget-object v3, p0, Lcom/kwad/sdk/core/videocache/g;->f:Lcom/kwad/sdk/core/videocache/c;

    iget-object v3, v3, Lcom/kwad/sdk/core/videocache/c;->e:Lcom/kwad/sdk/core/videocache/b/b;

    invoke-direct {v0, v1, v2, v3}, Lcom/kwad/sdk/core/videocache/h;-><init>(Ljava/lang/String;Lcom/kwad/sdk/core/videocache/d/b;Lcom/kwad/sdk/core/videocache/b/b;)V

    new-instance v1, Lcom/kwad/sdk/core/videocache/a/b;

    iget-object v2, p0, Lcom/kwad/sdk/core/videocache/g;->f:Lcom/kwad/sdk/core/videocache/c;

    iget-object v3, p0, Lcom/kwad/sdk/core/videocache/g;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/kwad/sdk/core/videocache/c;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    iget-object v3, p0, Lcom/kwad/sdk/core/videocache/g;->f:Lcom/kwad/sdk/core/videocache/c;

    iget-object v3, v3, Lcom/kwad/sdk/core/videocache/c;->c:Lcom/kwad/sdk/core/videocache/a/a;

    invoke-direct {v1, v2, v3}, Lcom/kwad/sdk/core/videocache/a/b;-><init>(Ljava/io/File;Lcom/kwad/sdk/core/videocache/a/a;)V

    new-instance v2, Lcom/kwad/sdk/core/videocache/e;

    invoke-direct {v2, v0, v1}, Lcom/kwad/sdk/core/videocache/e;-><init>(Lcom/kwad/sdk/core/videocache/h;Lcom/kwad/sdk/core/videocache/a/b;)V

    iget-object v0, p0, Lcom/kwad/sdk/core/videocache/g;->e:Lcom/kwad/sdk/core/videocache/b;

    invoke-virtual {v2, v0}, Lcom/kwad/sdk/core/videocache/e;->a(Lcom/kwad/sdk/core/videocache/b;)V

    return-object v2
.end method


# virtual methods
.method public a()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/core/videocache/g;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/kwad/sdk/core/videocache/g;->c:Lcom/kwad/sdk/core/videocache/e;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/kwad/sdk/core/videocache/g;->c:Lcom/kwad/sdk/core/videocache/e;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/videocache/e;->a(Lcom/kwad/sdk/core/videocache/b;)V

    iget-object v0, p0, Lcom/kwad/sdk/core/videocache/g;->c:Lcom/kwad/sdk/core/videocache/e;

    invoke-virtual {v0}, Lcom/kwad/sdk/core/videocache/e;->a()V

    iput-object v1, p0, Lcom/kwad/sdk/core/videocache/g;->c:Lcom/kwad/sdk/core/videocache/e;

    :cond_16
    iget-object v0, p0, Lcom/kwad/sdk/core/videocache/g;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method public a(Lcom/kwad/sdk/core/videocache/d;Ljava/net/Socket;)V
    .registers 4

    invoke-direct {p0}, Lcom/kwad/sdk/core/videocache/g;->c()V

    :try_start_3
    iget-object v0, p0, Lcom/kwad/sdk/core/videocache/g;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-object v0, p0, Lcom/kwad/sdk/core/videocache/g;->c:Lcom/kwad/sdk/core/videocache/e;

    invoke-virtual {v0, p1, p2}, Lcom/kwad/sdk/core/videocache/e;->a(Lcom/kwad/sdk/core/videocache/d;Ljava/net/Socket;)V
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_11

    invoke-direct {p0}, Lcom/kwad/sdk/core/videocache/g;->d()V

    return-void

    :catchall_11
    move-exception p1

    invoke-direct {p0}, Lcom/kwad/sdk/core/videocache/g;->d()V

    throw p1
.end method

.method public b()I
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/core/videocache/g;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method
