.class public final Lrx/internal/util/atomic/SpscExactAtomicArrayQueue;
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
        "Ljava/util/concurrent/atomic/AtomicReferenceArray",
        "<TT;>;",
        "Ljava/util/Queue",
        "<TT;>;"
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

    .prologue
    .line 40
    .local p0, "this":Lrx/internal/util/atomic/SpscExactAtomicArrayQueue;, "Lrx/internal/util/atomic/SpscExactAtomicArrayQueue<TT;>;"
    invoke-static {p1}, Lrx/internal/util/unsafe/Pow2;->roundToPowerOfTwo(I)I

    move-result v1

    invoke-direct {p0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    .line 41
    invoke-virtual {p0}, Lrx/internal/util/atomic/SpscExactAtomicArrayQueue;->length()I

    move-result v0

    .line 42
    .local v0, "len":I
    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lrx/internal/util/atomic/SpscExactAtomicArrayQueue;->mask:I

    .line 43
    sub-int v1, v0, p1

    iput v1, p0, Lrx/internal/util/atomic/SpscExactAtomicArrayQueue;->capacitySkip:I

    .line 44
    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v1, p0, Lrx/internal/util/atomic/SpscExactAtomicArrayQueue;->producerIndex:Ljava/util/concurrent/atomic/AtomicLong;

    .line 45
    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v1, p0, Lrx/internal/util/atomic/SpscExactAtomicArrayQueue;->consumerIndex:Ljava/util/concurrent/atomic/AtomicLong;

    .line 46
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

    .prologue
    .line 152
    .local p0, "this":Lrx/internal/util/atomic/SpscExactAtomicArrayQueue;, "Lrx/internal/util/atomic/SpscExactAtomicArrayQueue<TT;>;"
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
            "Ljava/util/Collection",
            "<+TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 137
    .local p0, "this":Lrx/internal/util/atomic/SpscExactAtomicArrayQueue;, "Lrx/internal/util/atomic/SpscExactAtomicArrayQueue<TT;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public clear()V
    .registers 2

    .prologue
    .line 85
    .local p0, "this":Lrx/internal/util/atomic/SpscExactAtomicArrayQueue;, "Lrx/internal/util/atomic/SpscExactAtomicArrayQueue<TT;>;"
    :cond_0
    invoke-virtual {p0}, Lrx/internal/util/atomic/SpscExactAtomicArrayQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lrx/internal/util/atomic/SpscExactAtomicArrayQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 107
    .local p0, "this":Lrx/internal/util/atomic/SpscExactAtomicArrayQueue;, "Lrx/internal/util/atomic/SpscExactAtomicArrayQueue<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 132
    .local p0, "this":Lrx/internal/util/atomic/SpscExactAtomicArrayQueue;, "Lrx/internal/util/atomic/SpscExactAtomicArrayQueue<TT;>;"
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

    .prologue
    .line 162
    .local p0, "this":Lrx/internal/util/atomic/SpscExactAtomicArrayQueue;, "Lrx/internal/util/atomic/SpscExactAtomicArrayQueue<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public isEmpty()Z
    .registers 3

    .prologue
    .line 89
    .local p0, "this":Lrx/internal/util/atomic/SpscExactAtomicArrayQueue;, "Lrx/internal/util/atomic/SpscExactAtomicArrayQueue<TT;>;"
    iget-object v0, p0, Lrx/internal/util/atomic/SpscExactAtomicArrayQueue;->producerIndex:Ljava/util/concurrent/atomic/AtomicLong;

    iget-object v1, p0, Lrx/internal/util/atomic/SpscExactAtomicArrayQueue;->consumerIndex:Ljava/util/concurrent/atomic/AtomicLong;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 112
    .local p0, "this":Lrx/internal/util/atomic/SpscExactAtomicArrayQueue;, "Lrx/internal/util/atomic/SpscExactAtomicArrayQueue<TT;>;"
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

    .prologue
    .line 51
    .local p0, "this":Lrx/internal/util/atomic/SpscExactAtomicArrayQueue;, "Lrx/internal/util/atomic/SpscExactAtomicArrayQueue<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    if-nez p1, :cond_8

    .line 52
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 55
    :cond_8
    iget-object v3, p0, Lrx/internal/util/atomic/SpscExactAtomicArrayQueue;->producerIndex:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    .line 56
    .local v4, "pi":J
    iget v1, p0, Lrx/internal/util/atomic/SpscExactAtomicArrayQueue;->mask:I

    .line 58
    .local v1, "m":I
    iget v3, p0, Lrx/internal/util/atomic/SpscExactAtomicArrayQueue;->capacitySkip:I

    int-to-long v6, v3

    add-long/2addr v6, v4

    long-to-int v3, v6

    and-int v0, v3, v1

    .line 59
    .local v0, "fullCheck":I
    invoke-virtual {p0, v0}, Lrx/internal/util/atomic/SpscExactAtomicArrayQueue;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1f

    .line 60
    const/4 v3, 0x0

    .line 65
    :goto_1e
    return v3

    .line 62
    :cond_1f
    long-to-int v3, v4

    and-int v2, v3, v1

    .line 63
    .local v2, "offset":I
    iget-object v3, p0, Lrx/internal/util/atomic/SpscExactAtomicArrayQueue;->producerIndex:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v6, 0x1

    add-long/2addr v6, v4

    invoke-virtual {v3, v6, v7}, Ljava/util/concurrent/atomic/AtomicLong;->lazySet(J)V

    .line 64
    invoke-virtual {p0, v2, p1}, Lrx/internal/util/atomic/SpscExactAtomicArrayQueue;->lazySet(ILjava/lang/Object;)V

    .line 65
    const/4 v3, 0x1

    goto :goto_1e
.end method

.method public peek()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 81
    .local p0, "this":Lrx/internal/util/atomic/SpscExactAtomicArrayQueue;, "Lrx/internal/util/atomic/SpscExactAtomicArrayQueue<TT;>;"
    iget-object v0, p0, Lrx/internal/util/atomic/SpscExactAtomicArrayQueue;->consumerIndex:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    long-to-int v0, v0

    iget v1, p0, Lrx/internal/util/atomic/SpscExactAtomicArrayQueue;->mask:I

    and-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lrx/internal/util/atomic/SpscExactAtomicArrayQueue;->get(I)Ljava/lang/Object;

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

    .prologue
    .local p0, "this":Lrx/internal/util/atomic/SpscExactAtomicArrayQueue;, "Lrx/internal/util/atomic/SpscExactAtomicArrayQueue<TT;>;"
    const/4 v4, 0x0

    .line 69
    iget-object v5, p0, Lrx/internal/util/atomic/SpscExactAtomicArrayQueue;->consumerIndex:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    .line 70
    .local v0, "ci":J
    long-to-int v5, v0

    iget v6, p0, Lrx/internal/util/atomic/SpscExactAtomicArrayQueue;->mask:I

    and-int v2, v5, v6

    .line 71
    .local v2, "offset":I
    invoke-virtual {p0, v2}, Lrx/internal/util/atomic/SpscExactAtomicArrayQueue;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 72
    .local v3, "value":Ljava/lang/Object;, "TT;"
    if-nez v3, :cond_14

    move-object v3, v4

    .line 77
    .end local v3    # "value":Ljava/lang/Object;, "TT;"
    :goto_13
    return-object v3

    .line 75
    .restart local v3    # "value":Ljava/lang/Object;, "TT;"
    :cond_14
    iget-object v5, p0, Lrx/internal/util/atomic/SpscExactAtomicArrayQueue;->consumerIndex:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v6, 0x1

    add-long/2addr v6, v0

    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/atomic/AtomicLong;->lazySet(J)V

    .line 76
    invoke-virtual {p0, v2, v4}, Lrx/internal/util/atomic/SpscExactAtomicArrayQueue;->lazySet(ILjava/lang/Object;)V

    goto :goto_13
.end method

.method public remove()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 157
    .local p0, "this":Lrx/internal/util/atomic/SpscExactAtomicArrayQueue;, "Lrx/internal/util/atomic/SpscExactAtomicArrayQueue<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 127
    .local p0, "this":Lrx/internal/util/atomic/SpscExactAtomicArrayQueue;, "Lrx/internal/util/atomic/SpscExactAtomicArrayQueue<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 142
    .local p0, "this":Lrx/internal/util/atomic/SpscExactAtomicArrayQueue;, "Lrx/internal/util/atomic/SpscExactAtomicArrayQueue<TT;>;"
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
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 147
    .local p0, "this":Lrx/internal/util/atomic/SpscExactAtomicArrayQueue;, "Lrx/internal/util/atomic/SpscExactAtomicArrayQueue<TT;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public size()I
    .registers 9

    .prologue
    .line 94
    .local p0, "this":Lrx/internal/util/atomic/SpscExactAtomicArrayQueue;, "Lrx/internal/util/atomic/SpscExactAtomicArrayQueue<TT;>;"
    iget-object v6, p0, Lrx/internal/util/atomic/SpscExactAtomicArrayQueue;->consumerIndex:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    .line 96
    .local v0, "ci":J
    :goto_6
    iget-object v6, p0, Lrx/internal/util/atomic/SpscExactAtomicArrayQueue;->producerIndex:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    .line 97
    .local v4, "pi":J
    iget-object v6, p0, Lrx/internal/util/atomic/SpscExactAtomicArrayQueue;->consumerIndex:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    .line 98
    .local v2, "ci2":J
    cmp-long v6, v0, v2

    if-nez v6, :cond_1a

    .line 99
    sub-long v6, v4, v2

    long-to-int v6, v6

    return v6

    .line 101
    :cond_1a
    move-wide v0, v2

    .line 102
    goto :goto_6
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 2

    .prologue
    .line 117
    .local p0, "this":Lrx/internal/util/atomic/SpscExactAtomicArrayQueue;, "Lrx/internal/util/atomic/SpscExactAtomicArrayQueue<TT;>;"
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

    .prologue
    .line 122
    .local p0, "this":Lrx/internal/util/atomic/SpscExactAtomicArrayQueue;, "Lrx/internal/util/atomic/SpscExactAtomicArrayQueue<TT;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TE;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
