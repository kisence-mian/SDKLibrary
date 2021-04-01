.class public Lcom/sigmob/volley/toolbox/i;
.super Ljava/lang/Object;


# instance fields
.field final a:Lcom/sigmob/volley/u;

.field private final b:I

.field private final c:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/sigmob/volley/toolbox/j;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sigmob/volley/u;)V
    .registers 4

    invoke-virtual {p1}, Lcom/sigmob/volley/u;->g()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/sigmob/volley/toolbox/i;-><init>(Lcom/sigmob/volley/u;I)V

    return-void
.end method

.method public constructor <init>(Lcom/sigmob/volley/u;I)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/sigmob/volley/u;->g()I

    move-result v0

    if-lt p2, v0, :cond_36

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parallelTaskCount["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] must less than threadPoolSize["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sigmob/volley/u;->g()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] of the RequestQueue."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_36
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sigmob/volley/toolbox/i;->c:Ljava/util/LinkedList;

    iput p2, p0, Lcom/sigmob/volley/toolbox/i;->b:I

    iput-object p1, p0, Lcom/sigmob/volley/toolbox/i;->a:Lcom/sigmob/volley/u;

    return-void
.end method

.method private d()V
    .registers 3

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_12

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "FileDownloader must be invoked from the main thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    return-void
.end method


# virtual methods
.method public a(Lcom/sigmob/volley/toolbox/d;Lcom/sigmob/volley/toolbox/h;)Lcom/sigmob/volley/toolbox/j;
    .registers 6

    invoke-direct {p0}, Lcom/sigmob/volley/toolbox/i;->d()V

    iget-object v0, p1, Lcom/sigmob/volley/toolbox/d;->c:Ljava/lang/String;

    iget-object v1, p1, Lcom/sigmob/volley/toolbox/d;->a:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/sigmob/volley/toolbox/i;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/sigmob/volley/toolbox/j;

    move-result-object v0

    if-nez v0, :cond_1e

    new-instance v0, Lcom/sigmob/volley/toolbox/j;

    invoke-direct {v0, p0, p1, p2}, Lcom/sigmob/volley/toolbox/j;-><init>(Lcom/sigmob/volley/toolbox/i;Lcom/sigmob/volley/toolbox/d;Lcom/sigmob/volley/toolbox/h;)V

    iget-object v1, p0, Lcom/sigmob/volley/toolbox/i;->c:Ljava/util/LinkedList;

    monitor-enter v1

    :try_start_15
    iget-object v2, p0, Lcom/sigmob/volley/toolbox/i;->c:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_15 .. :try_end_1b} :catchall_1f

    invoke-virtual {p0}, Lcom/sigmob/volley/toolbox/i;->a()V

    :cond_1e
    return-object v0

    :catchall_1f
    move-exception v0

    :try_start_20
    monitor-exit v1
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/sigmob/volley/toolbox/j;
    .registers 7

    iget-object v1, p0, Lcom/sigmob/volley/toolbox/i;->c:Ljava/util/LinkedList;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/sigmob/volley/toolbox/i;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/volley/toolbox/j;

    invoke-virtual {v0}, Lcom/sigmob/volley/toolbox/j;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {v0}, Lcom/sigmob/volley/toolbox/j;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    monitor-exit v1

    :goto_2a
    return-object v0

    :cond_2b
    monitor-exit v1

    const/4 v0, 0x0

    goto :goto_2a

    :catchall_2e
    move-exception v0

    monitor-exit v1
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_2e

    throw v0
.end method

.method a()V
    .registers 5

    iget-object v2, p0, Lcom/sigmob/volley/toolbox/i;->c:Ljava/util/LinkedList;

    monitor-enter v2

    const/4 v1, 0x0

    :try_start_4
    iget-object v0, p0, Lcom/sigmob/volley/toolbox/i;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/volley/toolbox/j;

    invoke-virtual {v0}, Lcom/sigmob/volley/toolbox/j;->c()Z

    move-result v0

    if-eqz v0, :cond_4e

    add-int/lit8 v0, v1, 0x1

    :goto_1e
    move v1, v0

    goto :goto_a

    :cond_20
    iget v0, p0, Lcom/sigmob/volley/toolbox/i;->b:I

    if-lt v1, v0, :cond_26

    monitor-exit v2

    :goto_25
    return-void

    :cond_26
    iget-object v0, p0, Lcom/sigmob/volley/toolbox/i;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/volley/toolbox/j;

    invoke-virtual {v0}, Lcom/sigmob/volley/toolbox/j;->a()Z

    move-result v0

    if-eqz v0, :cond_49

    add-int/lit8 v0, v1, 0x1

    iget v1, p0, Lcom/sigmob/volley/toolbox/i;->b:I

    if-ne v0, v1, :cond_4a

    monitor-exit v2

    goto :goto_25

    :catchall_46
    move-exception v0

    monitor-exit v2
    :try_end_48
    .catchall {:try_start_4 .. :try_end_48} :catchall_46

    throw v0

    :cond_49
    move v0, v1

    :cond_4a
    move v1, v0

    goto :goto_2c

    :cond_4c
    :try_start_4c
    monitor-exit v2
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_46

    goto :goto_25

    :cond_4e
    move v0, v1

    goto :goto_1e
.end method

.method a(Lcom/sigmob/volley/toolbox/j;)V
    .registers 4

    iget-object v1, p0, Lcom/sigmob/volley/toolbox/i;->c:Ljava/util/LinkedList;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/sigmob/volley/toolbox/i;->c:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_d

    invoke-virtual {p0}, Lcom/sigmob/volley/toolbox/i;->a()V

    return-void

    :catchall_d
    move-exception v0

    :try_start_e
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    throw v0
.end method

.method public b(Lcom/sigmob/volley/toolbox/d;Lcom/sigmob/volley/toolbox/h;)Lcom/sigmob/volley/toolbox/g;
    .registers 4

    new-instance v0, Lcom/sigmob/volley/toolbox/g;

    invoke-direct {v0, p1, p2}, Lcom/sigmob/volley/toolbox/g;-><init>(Lcom/sigmob/volley/toolbox/d;Lcom/sigmob/volley/toolbox/h;)V

    return-object v0
.end method

.method public b()V
    .registers 4

    iget-object v1, p0, Lcom/sigmob/volley/toolbox/i;->c:Ljava/util/LinkedList;

    monitor-enter v1

    :goto_3
    :try_start_3
    iget-object v0, p0, Lcom/sigmob/volley/toolbox/i;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_1b

    iget-object v0, p0, Lcom/sigmob/volley/toolbox/i;->c:Ljava/util/LinkedList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/volley/toolbox/j;

    invoke-virtual {v0}, Lcom/sigmob/volley/toolbox/j;->j()Z

    goto :goto_3

    :catchall_18
    move-exception v0

    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v0

    :cond_1b
    :try_start_1b
    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_18

    return-void
.end method

.method public c()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sigmob/volley/toolbox/j;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Lcom/sigmob/volley/toolbox/i;->c:Ljava/util/LinkedList;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/sigmob/volley/toolbox/i;->c:Ljava/util/LinkedList;

    monitor-exit v1

    return-object v0

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method
