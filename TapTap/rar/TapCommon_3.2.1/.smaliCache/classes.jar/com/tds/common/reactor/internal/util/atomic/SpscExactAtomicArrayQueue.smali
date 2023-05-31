.class public final Lcom/tds/common/reactor/internal/util/atomic/SpscExactAtomicArrayQueue;
.super Ljava/util/concurrent/atomic/AtomicReferenceArray;
.source "SpscExactAtomicArrayQueue.java"

# interfaces
.implements Ljava/util/Queue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
        "TT;>;",
        "Ljava/util/Queue<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x5631d997036b8b85L


# instance fields
.field final capacitySkip:I

.field final consumerIndex:Ljava/util/concurrent/atomic/AtomicLong;

.field final mask:I

.field final producerIndex:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method public constructor <init>(I)V
    .registers 4
    .param p1, "capacity"    # I

    .line 44
    .local p0, "this":Lcom/tds/common/reactor/internal/util/atomic/SpscExactAtomicArrayQueue;, "Lcom/tds/common/reactor/internal/util/atomic/SpscExactAtomicArrayQueue<TT;>;"
    invoke-static {p1}, Lcom/tds/common/reactor/internal/util/unsafe/Pow2;->roundToPowerOfTwo(I)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    .line 45
    invoke-virtual {p0}, Lcom/tds/common/reactor/internal/util/atomic/SpscExactAtomicArrayQueue;->length()I

    move-result v0

    .line 46
    .local v0, "len":I
    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/tds/common/reactor/internal/util/atomic/SpscExactAtomicArrayQueue;->mask:I

    .line 47
    sub-int v1, v0, p1

    iput v1, p0, Lcom/tds/common/reactor/internal/util/atomic/SpscExactAtomicArrayQueue;->capacitySkip:I

    .line 48
    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v1, p0, Lcom/tds/common/reactor/internal/util/atomic/SpscExactAtomicArrayQueue;->producerIndex:Ljava/util/concurrent/atomic/AtomicLong;

    .line 49
    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v1, p0, Lcom/tds/common/reactor/internal/util/atomic/SpscExactAtomicArrayQueue;->consumerIndex:Ljava/util/concurrent/atomic/AtomicLong;

    .line 50
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 156
    .local p0, "this":Lcom/tds/common/reactor/internal/util/atomic/SpscExactAtomicArrayQueue;, "Lcom/tds/common/reactor/internal/util/atomic/SpscExactAtomicArrayQueue<TT;>;"
    .local p1, "e":Ljava/lang/Object;, "TT;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TT;>;)Z"
        }
    .end annotation

    .line 141
    .local p0, "this":Lcom/tds/common/reactor/internal/util/atomic/SpscExactAtomicArrayQueue;, "Lcom/tds/common/reactor/internal/util/atomic/SpscExactAtomicArrayQueue<TT;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public clear()V
    .registers 2

    .line 89
    .local p0, "this":Lcom/tds/common/reactor/internal/util/atomic/SpscExactAtomicArrayQueue;, "Lcom/tds/common/reactor/internal/util/atomic/SpscExactAtomicArrayQueue<TT;>;"
    :goto_0
    invoke-virtual {p0}, Lcom/tds/common/reactor/internal/util/atomic/SpscExactAtomicArrayQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_e

    invoke-virtual {p0}, Lcom/tds/common/reactor/internal/util/atomic/SpscExactAtomicArrayQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_e

    .line 90
    :cond_d
    return-void

    .line 89
    :cond_e
    :goto_e
    goto :goto_0
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 111
    .local p0, "this":Lcom/tds/common/reactor/internal/util/atomic/SpscExactAtomicArrayQueue;, "Lcom/tds/common/reactor/internal/util/atomic/SpscExactAtomicArrayQueue<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 136
    .local p0, "this":Lcom/tds/common/reactor/internal/util/atomic/SpscExactAtomicArrayQueue;, "Lcom/tds/common/reactor/internal/util/atomic/SpscExactAtomicArrayQueue<TT;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public element()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 166
    .local p0, "this":Lcom/tds/common/reactor/internal/util/atomic/SpscExactAtomicArrayQueue;, "Lcom/tds/common/reactor/internal/util/atomic/SpscExactAtomicArrayQueue<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public isEmpty()Z
    .registers 3

    .line 93
    .local p0, "this":Lcom/tds/common/reactor/internal/util/atomic/SpscExactAtomicArrayQueue;, "Lcom/tds/common/reactor/internal/util/atomic/SpscExactAtomicArrayQueue<TT;>;"
    iget-object v0, p0, Lcom/tds/common/reactor/internal/util/atomic/SpscExactAtomicArrayQueue;->producerIndex:Ljava/util/concurrent/atomic/AtomicLong;

    iget-object v1, p0, Lcom/tds/common/reactor/internal/util/atomic/SpscExactAtomicArrayQueue;->consumerIndex:Ljava/util/concurrent/atomic/AtomicLong;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 116
    .local p0, "this":Lcom/tds/common/reactor/internal/util/atomic/SpscExactAtomicArrayQueue;, "Lcom/tds/common/reactor/internal/util/atomic/SpscExactAtomicArrayQueue<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 55
    .local p0, "this":Lcom/tds/common/reactor/internal/util/atomic/SpscExactAtomicArrayQueue;, "Lcom/tds/common/reactor/internal/util/atomic/SpscExactAtomicArrayQueue<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    if-eqz p1, :cond_27

    .line 59
    iget-object v0, p0, Lcom/tds/common/reactor/internal/util/atomic/SpscExactAtomicArrayQueue;->producerIndex:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    .line 60
    .local v0, "pi":J
    iget v2, p0, Lcom/tds/common/reactor/internal/util/atomic/SpscExactAtomicArrayQueue;->mask:I

    .line 62
    .local v2, "m":I
    iget v3, p0, Lcom/tds/common/reactor/internal/util/atomic/SpscExactAtomicArrayQueue;->capacitySkip:I

    int-to-long v3, v3

    add-long/2addr v3, v0

    long-to-int v3, v3

    and-int/2addr v3, v2

    .line 63
    .local v3, "fullCheck":I
    invoke-virtual {p0, v3}, Lcom/tds/common/reactor/internal/util/atomic/SpscExactAtomicArrayQueue;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_18

    .line 64
    const/4 v4, 0x0

    return v4

    .line 66
    :cond_18
    long-to-int v4, v0

    and-int/2addr v4, v2

    .line 67
    .local v4, "offset":I
    iget-object v5, p0, Lcom/tds/common/reactor/internal/util/atomic/SpscExactAtomicArrayQueue;->producerIndex:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v6, 0x1

    add-long/2addr v6, v0

    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/atomic/AtomicLong;->lazySet(J)V

    .line 68
    invoke-virtual {p0, v4, p1}, Lcom/tds/common/reactor/internal/util/atomic/SpscExactAtomicArrayQueue;->lazySet(ILjava/lang/Object;)V

    .line 69
    const/4 v5, 0x1

    return v5

    .line 56
    .end local v0    # "pi":J
    .end local v2    # "m":I
    .end local v3    # "fullCheck":I
    .end local v4    # "offset":I
    :cond_27
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public peek()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 85
    .local p0, "this":Lcom/tds/common/reactor/internal/util/atomic/SpscExactAtomicArrayQueue;, "Lcom/tds/common/reactor/internal/util/atomic/SpscExactAtomicArrayQueue<TT;>;"
    iget-object v0, p0, Lcom/tds/common/reactor/internal/util/atomic/SpscExactAtomicArrayQueue;->consumerIndex:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    long-to-int v0, v0

    iget v1, p0, Lcom/tds/common/reactor/internal/util/atomic/SpscExactAtomicArrayQueue;->mask:I

    and-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/tds/common/reactor/internal/util/atomic/SpscExactAtomicArrayQueue;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public poll()Ljava/lang/Object;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 73
    .local p0, "this":Lcom/tds/common/reactor/internal/util/atomic/SpscExactAtomicArrayQueue;, "Lcom/tds/common/reactor/internal/util/atomic/SpscExactAtomicArrayQueue<TT;>;"
    iget-object v0, p0, Lcom/tds/common/reactor/internal/util/atomic/SpscExactAtomicArrayQueue;->consumerIndex:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    .line 74
    .local v0, "ci":J
    long-to-int v2, v0

    iget v3, p0, Lcom/tds/common/reactor/internal/util/atomic/SpscExactAtomicArrayQueue;->mask:I

    and-int/2addr v2, v3

    .line 75
    .local v2, "offset":I
    invoke-virtual {p0, v2}, Lcom/tds/common/reactor/internal/util/atomic/SpscExactAtomicArrayQueue;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 76
    .local v3, "value":Ljava/lang/Object;, "TT;"
    const/4 v4, 0x0

    if-nez v3, :cond_12

    .line 77
    return-object v4

    .line 79
    :cond_12
    iget-object v5, p0, Lcom/tds/common/reactor/internal/util/atomic/SpscExactAtomicArrayQueue;->consumerIndex:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v6, 0x1

    add-long/2addr v6, v0

    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/atomic/AtomicLong;->lazySet(J)V

    .line 80
    invoke-virtual {p0, v2, v4}, Lcom/tds/common/reactor/internal/util/atomic/SpscExactAtomicArrayQueue;->lazySet(ILjava/lang/Object;)V

    .line 81
    return-object v3
.end method

.method public remove()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 161
    .local p0, "this":Lcom/tds/common/reactor/internal/util/atomic/SpscExactAtomicArrayQueue;, "Lcom/tds/common/reactor/internal/util/atomic/SpscExactAtomicArrayQueue<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 131
    .local p0, "this":Lcom/tds/common/reactor/internal/util/atomic/SpscExactAtomicArrayQueue;, "Lcom/tds/common/reactor/internal/util/atomic/SpscExactAtomicArrayQueue<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 146
    .local p0, "this":Lcom/tds/common/reactor/internal/util/atomic/SpscExactAtomicArrayQueue;, "Lcom/tds/common/reactor/internal/util/atomic/SpscExactAtomicArrayQueue<TT;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 151
    .local p0, "this":Lcom/tds/common/reactor/internal/util/atomic/SpscExactAtomicArrayQueue;, "Lcom/tds/common/reactor/internal/util/atomic/SpscExactAtomicArrayQueue<TT;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public size()I
    .registers 9

    .line 98
    .local p0, "this":Lcom/tds/common/reactor/internal/util/atomic/SpscExactAtomicArrayQueue;, "Lcom/tds/common/reactor/internal/util/atomic/SpscExactAtomicArrayQueue<TT;>;"
    iget-object v0, p0, Lcom/tds/common/reactor/internal/util/atomic/SpscExactAtomicArrayQueue;->consumerIndex:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    .line 100
    .local v0, "ci":J
    :goto_6
    iget-object v2, p0, Lcom/tds/common/reactor/internal/util/atomic/SpscExactAtomicArrayQueue;->producerIndex:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    .line 101
    .local v2, "pi":J
    iget-object v4, p0, Lcom/tds/common/reactor/internal/util/atomic/SpscExactAtomicArrayQueue;->consumerIndex:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    .line 102
    .local v4, "ci2":J
    cmp-long v6, v0, v4

    if-nez v6, :cond_1a

    .line 103
    sub-long v6, v2, v4

    long-to-int v6, v6

    return v6

    .line 105
    :cond_1a
    move-wide v0, v4

    .line 106
    .end local v2    # "pi":J
    .end local v4    # "ci2":J
    goto :goto_6
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 2

    .line 121
    .local p0, "this":Lcom/tds/common/reactor/internal/util/atomic/SpscExactAtomicArrayQueue;, "Lcom/tds/common/reactor/internal/util/atomic/SpscExactAtomicArrayQueue<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)[TE;"
        }
    .end annotation

    .line 126
    .local p0, "this":Lcom/tds/common/reactor/internal/util/atomic/SpscExactAtomicArrayQueue;, "Lcom/tds/common/reactor/internal/util/atomic/SpscExactAtomicArrayQueue<TT;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TE;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
