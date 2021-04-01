.class public Lrx/internal/util/SynchronizedQueue;
.super Ljava/lang/Object;
.source "SynchronizedQueue.java"

# interfaces
.implements Ljava/util/Queue;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Queue",
        "<TT;>;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field private final list:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final size:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 33
    .local p0, "this":Lrx/internal/util/SynchronizedQueue;, "Lrx/internal/util/SynchronizedQueue<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lrx/internal/util/SynchronizedQueue;->list:Ljava/util/Queue;

    .line 34
    const/4 v0, -0x1

    iput v0, p0, Lrx/internal/util/SynchronizedQueue;->size:I

    .line 35
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 37
    .local p0, "this":Lrx/internal/util/SynchronizedQueue;, "Lrx/internal/util/SynchronizedQueue<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lrx/internal/util/SynchronizedQueue;->list:Ljava/util/Queue;

    .line 38
    iput p1, p0, Lrx/internal/util/SynchronizedQueue;->size:I

    .line 39
    return-void
.end method


# virtual methods
.method public declared-synchronized add(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 63
    .local p0, "this":Lrx/internal/util/SynchronizedQueue;, "Lrx/internal/util/SynchronizedQueue<TT;>;"
    .local p1, "e":Ljava/lang/Object;, "TT;"
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lrx/internal/util/SynchronizedQueue;->list:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result v0

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 78
    .local p0, "this":Lrx/internal/util/SynchronizedQueue;, "Lrx/internal/util/SynchronizedQueue<TT;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TT;>;"
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lrx/internal/util/SynchronizedQueue;->list:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->addAll(Ljava/util/Collection;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result v0

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clear()V
    .registers 2

    .prologue
    .line 93
    .local p0, "this":Lrx/internal/util/SynchronizedQueue;, "Lrx/internal/util/SynchronizedQueue<TT;>;"
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lrx/internal/util/SynchronizedQueue;->list:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 94
    monitor-exit p0

    return-void

    .line 93
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clone()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 151
    .local p0, "this":Lrx/internal/util/SynchronizedQueue;, "Lrx/internal/util/SynchronizedQueue<TT;>;"
    monitor-enter p0

    :try_start_1
    new-instance v0, Lrx/internal/util/SynchronizedQueue;

    iget v1, p0, Lrx/internal/util/SynchronizedQueue;->size:I

    invoke-direct {v0, v1}, Lrx/internal/util/SynchronizedQueue;-><init>(I)V

    .line 152
    .local v0, "q":Lrx/internal/util/SynchronizedQueue;, "Lrx/internal/util/SynchronizedQueue<TT;>;"
    iget-object v1, p0, Lrx/internal/util/SynchronizedQueue;->list:Ljava/util/Queue;

    invoke-virtual {v0, v1}, Lrx/internal/util/SynchronizedQueue;->addAll(Ljava/util/Collection;)Z
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 153
    monitor-exit p0

    return-object v0

    .line 151
    .end local v0    # "q":Lrx/internal/util/SynchronizedQueue;, "Lrx/internal/util/SynchronizedQueue<TT;>;"
    :catchall_f
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized contains(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 48
    .local p0, "this":Lrx/internal/util/SynchronizedQueue;, "Lrx/internal/util/SynchronizedQueue<TT;>;"
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lrx/internal/util/SynchronizedQueue;->list:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result v0

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized containsAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 73
    .local p0, "this":Lrx/internal/util/SynchronizedQueue;, "Lrx/internal/util/SynchronizedQueue<TT;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lrx/internal/util/SynchronizedQueue;->list:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->containsAll(Ljava/util/Collection;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result v0

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized element()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 128
    .local p0, "this":Lrx/internal/util/SynchronizedQueue;, "Lrx/internal/util/SynchronizedQueue<TT;>;"
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lrx/internal/util/SynchronizedQueue;->list:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->element()Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lrx/internal/util/SynchronizedQueue;, "Lrx/internal/util/SynchronizedQueue<TT;>;"
    const/4 v1, 0x0

    .line 108
    if-ne p0, p1, :cond_5

    .line 109
    const/4 v1, 0x1

    .line 118
    :cond_4
    :goto_4
    return v1

    .line 111
    :cond_5
    if-eqz p1, :cond_4

    .line 114
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_4

    move-object v0, p1

    .line 117
    check-cast v0, Lrx/internal/util/SynchronizedQueue;

    .line 118
    .local v0, "other":Lrx/internal/util/SynchronizedQueue;, "Lrx/internal/util/SynchronizedQueue<*>;"
    iget-object v1, p0, Lrx/internal/util/SynchronizedQueue;->list:Ljava/util/Queue;

    iget-object v2, v0, Lrx/internal/util/SynchronizedQueue;->list:Ljava/util/Queue;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_4
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 103
    .local p0, "this":Lrx/internal/util/SynchronizedQueue;, "Lrx/internal/util/SynchronizedQueue<TT;>;"
    iget-object v0, p0, Lrx/internal/util/SynchronizedQueue;->list:Ljava/util/Queue;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public declared-synchronized isEmpty()Z
    .registers 2

    .prologue
    .line 43
    .local p0, "this":Lrx/internal/util/SynchronizedQueue;, "Lrx/internal/util/SynchronizedQueue<TT;>;"
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lrx/internal/util/SynchronizedQueue;->list:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result v0

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 53
    .local p0, "this":Lrx/internal/util/SynchronizedQueue;, "Lrx/internal/util/SynchronizedQueue<TT;>;"
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lrx/internal/util/SynchronizedQueue;->list:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized offer(Ljava/lang/Object;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 143
    .local p0, "this":Lrx/internal/util/SynchronizedQueue;, "Lrx/internal/util/SynchronizedQueue<TT;>;"
    .local p1, "e":Ljava/lang/Object;, "TT;"
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lrx/internal/util/SynchronizedQueue;->size:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_15

    iget-object v0, p0, Lrx/internal/util/SynchronizedQueue;->list:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lrx/internal/util/SynchronizedQueue;->size:I
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_1c

    if-le v0, v1, :cond_15

    .line 144
    const/4 v0, 0x0

    .line 146
    :goto_13
    monitor-exit p0

    return v0

    :cond_15
    :try_start_15
    iget-object v0, p0, Lrx/internal/util/SynchronizedQueue;->list:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z
    :try_end_1a
    .catchall {:try_start_15 .. :try_end_1a} :catchall_1c

    move-result v0

    goto :goto_13

    .line 143
    :catchall_1c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized peek()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 123
    .local p0, "this":Lrx/internal/util/SynchronizedQueue;, "Lrx/internal/util/SynchronizedQueue<TT;>;"
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lrx/internal/util/SynchronizedQueue;->list:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized poll()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 133
    .local p0, "this":Lrx/internal/util/SynchronizedQueue;, "Lrx/internal/util/SynchronizedQueue<TT;>;"
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lrx/internal/util/SynchronizedQueue;->list:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized remove()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 138
    .local p0, "this":Lrx/internal/util/SynchronizedQueue;, "Lrx/internal/util/SynchronizedQueue<TT;>;"
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lrx/internal/util/SynchronizedQueue;->list:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized remove(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 68
    .local p0, "this":Lrx/internal/util/SynchronizedQueue;, "Lrx/internal/util/SynchronizedQueue<TT;>;"
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lrx/internal/util/SynchronizedQueue;->list:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result v0

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 83
    .local p0, "this":Lrx/internal/util/SynchronizedQueue;, "Lrx/internal/util/SynchronizedQueue<TT;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lrx/internal/util/SynchronizedQueue;->list:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->removeAll(Ljava/util/Collection;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result v0

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized retainAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 88
    .local p0, "this":Lrx/internal/util/SynchronizedQueue;, "Lrx/internal/util/SynchronizedQueue<TT;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lrx/internal/util/SynchronizedQueue;->list:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->retainAll(Ljava/util/Collection;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result v0

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized size()I
    .registers 2

    .prologue
    .line 58
    .local p0, "this":Lrx/internal/util/SynchronizedQueue;, "Lrx/internal/util/SynchronizedQueue<TT;>;"
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lrx/internal/util/SynchronizedQueue;->list:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result v0

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized toArray()[Ljava/lang/Object;
    .registers 2

    .prologue
    .line 158
    .local p0, "this":Lrx/internal/util/SynchronizedQueue;, "Lrx/internal/util/SynchronizedQueue<TT;>;"
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lrx/internal/util/SynchronizedQueue;->list:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->toArray()[Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">([TR;)[TR;"
        }
    .end annotation

    .prologue
    .line 163
    .local p0, "this":Lrx/internal/util/SynchronizedQueue;, "Lrx/internal/util/SynchronizedQueue<TT;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TR;"
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lrx/internal/util/SynchronizedQueue;->list:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 98
    .local p0, "this":Lrx/internal/util/SynchronizedQueue;, "Lrx/internal/util/SynchronizedQueue<TT;>;"
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lrx/internal/util/SynchronizedQueue;->list:Ljava/util/Queue;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method
