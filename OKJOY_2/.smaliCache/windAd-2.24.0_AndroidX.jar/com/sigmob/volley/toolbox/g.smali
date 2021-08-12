.class public Lcom/sigmob/volley/toolbox/g;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sigmob/volley/toolbox/g$a;
    }
.end annotation


# instance fields
.field final a:Lcom/sigmob/volley/n;

.field private final b:I

.field private final c:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/sigmob/volley/toolbox/g$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sigmob/volley/n;I)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/sigmob/volley/n;->e()I

    move-result v0

    if-ge p2, v0, :cond_15

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sigmob/volley/toolbox/g;->c:Ljava/util/LinkedList;

    iput p2, p0, Lcom/sigmob/volley/toolbox/g;->b:I

    iput-object p1, p0, Lcom/sigmob/volley/toolbox/g;->a:Lcom/sigmob/volley/n;

    return-void

    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parallelTaskCount["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, "] must less than threadPoolSize["

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Lcom/sigmob/volley/n;->e()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "] of the RequestQueue."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private d()V
    .registers 3

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_b

    return-void

    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "FileDownloader must be invoked from the main thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a(Lcom/sigmob/volley/toolbox/d;Lcom/sigmob/volley/toolbox/f$a;)Lcom/sigmob/volley/toolbox/g$a;
    .registers 5

    invoke-direct {p0}, Lcom/sigmob/volley/toolbox/g;->d()V

    iget-object v0, p1, Lcom/sigmob/volley/toolbox/d;->c:Ljava/lang/String;

    iget-object v1, p1, Lcom/sigmob/volley/toolbox/d;->a:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/sigmob/volley/toolbox/g;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/sigmob/volley/toolbox/g$a;

    move-result-object v0

    if-nez v0, :cond_22

    new-instance v0, Lcom/sigmob/volley/toolbox/g$a;

    invoke-direct {v0, p0, p1, p2}, Lcom/sigmob/volley/toolbox/g$a;-><init>(Lcom/sigmob/volley/toolbox/g;Lcom/sigmob/volley/toolbox/d;Lcom/sigmob/volley/toolbox/f$a;)V

    iget-object p1, p0, Lcom/sigmob/volley/toolbox/g;->c:Ljava/util/LinkedList;

    monitor-enter p1

    :try_start_15
    iget-object p2, p0, Lcom/sigmob/volley/toolbox/g;->c:Ljava/util/LinkedList;

    invoke-virtual {p2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    monitor-exit p1
    :try_end_1b
    .catchall {:try_start_15 .. :try_end_1b} :catchall_1f

    invoke-virtual {p0}, Lcom/sigmob/volley/toolbox/g;->a()V

    goto :goto_22

    :catchall_1f
    move-exception p2

    :try_start_20
    monitor-exit p1
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw p2

    :cond_22
    :goto_22
    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/sigmob/volley/toolbox/g$a;
    .registers 7

    iget-object v0, p0, Lcom/sigmob/volley/toolbox/g;->c:Ljava/util/LinkedList;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/sigmob/volley/toolbox/g;->c:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sigmob/volley/toolbox/g$a;

    invoke-virtual {v2}, Lcom/sigmob/volley/toolbox/g$a;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {v2}, Lcom/sigmob/volley/toolbox/g$a;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    monitor-exit v0

    return-object v2

    :cond_2b
    monitor-exit v0

    const/4 p1, 0x0

    return-object p1

    :catchall_2e
    move-exception p1

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_2e

    throw p1
.end method

.method a()V
    .registers 5

    iget-object v0, p0, Lcom/sigmob/volley/toolbox/g;->c:Ljava/util/LinkedList;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_4
    iget-object v2, p0, Lcom/sigmob/volley/toolbox/g;->c:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_a
    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sigmob/volley/toolbox/g$a;

    invoke-virtual {v3}, Lcom/sigmob/volley/toolbox/g$a;->b()Z

    move-result v3

    if-eqz v3, :cond_a

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_1f
    iget v2, p0, Lcom/sigmob/volley/toolbox/g;->b:I

    if-lt v1, v2, :cond_25

    monitor-exit v0

    return-void

    :cond_25
    iget-object v2, p0, Lcom/sigmob/volley/toolbox/g;->c:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_45

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sigmob/volley/toolbox/g$a;

    invoke-virtual {v3}, Lcom/sigmob/volley/toolbox/g$a;->a()Z

    move-result v3

    if-eqz v3, :cond_2b

    add-int/lit8 v1, v1, 0x1

    iget v3, p0, Lcom/sigmob/volley/toolbox/g;->b:I

    if-ne v1, v3, :cond_2b

    monitor-exit v0

    return-void

    :cond_45
    monitor-exit v0

    return-void

    :catchall_47
    move-exception v1

    monitor-exit v0
    :try_end_49
    .catchall {:try_start_4 .. :try_end_49} :catchall_47

    throw v1
.end method

.method a(Lcom/sigmob/volley/toolbox/g$a;)V
    .registers 4

    iget-object v0, p0, Lcom/sigmob/volley/toolbox/g;->c:Ljava/util/LinkedList;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/sigmob/volley/toolbox/g;->c:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_d

    invoke-virtual {p0}, Lcom/sigmob/volley/toolbox/g;->a()V

    return-void

    :catchall_d
    move-exception p1

    :try_start_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    throw p1
.end method

.method public b(Lcom/sigmob/volley/toolbox/d;Lcom/sigmob/volley/toolbox/f$a;)Lcom/sigmob/volley/toolbox/f;
    .registers 4

    new-instance v0, Lcom/sigmob/volley/toolbox/f;

    invoke-direct {v0, p1, p2}, Lcom/sigmob/volley/toolbox/f;-><init>(Lcom/sigmob/volley/toolbox/d;Lcom/sigmob/volley/toolbox/f$a;)V

    return-object v0
.end method

.method public b()V
    .registers 4

    iget-object v0, p0, Lcom/sigmob/volley/toolbox/g;->c:Ljava/util/LinkedList;

    monitor-enter v0

    :goto_3
    :try_start_3
    iget-object v1, p0, Lcom/sigmob/volley/toolbox/g;->c:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lez v1, :cond_18

    iget-object v1, p0, Lcom/sigmob/volley/toolbox/g;->c:Ljava/util/LinkedList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sigmob/volley/toolbox/g$a;

    invoke-virtual {v1}, Lcom/sigmob/volley/toolbox/g$a;->g()Z

    goto :goto_3

    :cond_18
    monitor-exit v0

    return-void

    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method public c()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sigmob/volley/toolbox/g$a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sigmob/volley/toolbox/g;->c:Ljava/util/LinkedList;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/sigmob/volley/toolbox/g;->c:Ljava/util/LinkedList;

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method
