.class abstract Lcom/tds/common/reactor/internal/util/atomic/AtomicReferenceArrayQueue;
.super Ljava/util/AbstractQueue;
.source "AtomicReferenceArrayQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractQueue<",
        "TE;>;"
    }
.end annotation


# instance fields
.field protected final buffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "TE;>;"
        }
    .end annotation
.end field

.field protected final mask:I


# direct methods
.method public constructor <init>(I)V
    .registers 4
    .param p1, "capacity"    # I

    .line 29
    .local p0, "this":Lcom/tds/common/reactor/internal/util/atomic/AtomicReferenceArrayQueue;, "Lcom/tds/common/reactor/internal/util/atomic/AtomicReferenceArrayQueue<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    .line 30
    invoke-static {p1}, Lcom/tds/common/reactor/internal/util/unsafe/Pow2;->roundToPowerOfTwo(I)I

    move-result v0

    .line 31
    .local v0, "actualCapacity":I
    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/tds/common/reactor/internal/util/atomic/AtomicReferenceArrayQueue;->mask:I

    .line 32
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    iput-object v1, p0, Lcom/tds/common/reactor/internal/util/atomic/AtomicReferenceArrayQueue;->buffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 33
    return-void
.end method


# virtual methods
.method protected final calcElementOffset(J)I
    .registers 5
    .param p1, "index"    # J

    .line 47
    .local p0, "this":Lcom/tds/common/reactor/internal/util/atomic/AtomicReferenceArrayQueue;, "Lcom/tds/common/reactor/internal/util/atomic/AtomicReferenceArrayQueue<TE;>;"
    long-to-int v0, p1

    iget v1, p0, Lcom/tds/common/reactor/internal/util/atomic/AtomicReferenceArrayQueue;->mask:I

    and-int/2addr v0, v1

    return v0
.end method

.method protected final calcElementOffset(JI)I
    .registers 5
    .param p1, "index"    # J
    .param p3, "mask"    # I

    .line 44
    .local p0, "this":Lcom/tds/common/reactor/internal/util/atomic/AtomicReferenceArrayQueue;, "Lcom/tds/common/reactor/internal/util/atomic/AtomicReferenceArrayQueue<TE;>;"
    long-to-int v0, p1

    and-int/2addr v0, p3

    return v0
.end method

.method public clear()V
    .registers 2

    .line 41
    .local p0, "this":Lcom/tds/common/reactor/internal/util/atomic/AtomicReferenceArrayQueue;, "Lcom/tds/common/reactor/internal/util/atomic/AtomicReferenceArrayQueue<TE;>;"
    :goto_0
    invoke-virtual {p0}, Lcom/tds/common/reactor/internal/util/atomic/AtomicReferenceArrayQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_e

    invoke-virtual {p0}, Lcom/tds/common/reactor/internal/util/atomic/AtomicReferenceArrayQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_e

    .line 42
    :cond_d
    return-void

    .line 41
    :cond_e
    :goto_e
    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 36
    .local p0, "this":Lcom/tds/common/reactor/internal/util/atomic/AtomicReferenceArrayQueue;, "Lcom/tds/common/reactor/internal/util/atomic/AtomicReferenceArrayQueue<TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected final lpElement(I)Ljava/lang/Object;
    .registers 3
    .param p1, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 56
    .local p0, "this":Lcom/tds/common/reactor/internal/util/atomic/AtomicReferenceArrayQueue;, "Lcom/tds/common/reactor/internal/util/atomic/AtomicReferenceArrayQueue<TE;>;"
    iget-object v0, p0, Lcom/tds/common/reactor/internal/util/atomic/AtomicReferenceArrayQueue;->buffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected final lpElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/lang/Object;
    .registers 4
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "TE;>;I)TE;"
        }
    .end annotation

    .line 53
    .local p0, "this":Lcom/tds/common/reactor/internal/util/atomic/AtomicReferenceArrayQueue;, "Lcom/tds/common/reactor/internal/util/atomic/AtomicReferenceArrayQueue<TE;>;"
    .local p1, "buffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected final lvElement(I)Ljava/lang/Object;
    .registers 3
    .param p1, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 74
    .local p0, "this":Lcom/tds/common/reactor/internal/util/atomic/AtomicReferenceArrayQueue;, "Lcom/tds/common/reactor/internal/util/atomic/AtomicReferenceArrayQueue<TE;>;"
    iget-object v0, p0, Lcom/tds/common/reactor/internal/util/atomic/AtomicReferenceArrayQueue;->buffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {p0, v0, p1}, Lcom/tds/common/reactor/internal/util/atomic/AtomicReferenceArrayQueue;->lvElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected final lvElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/lang/Object;
    .registers 4
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "TE;>;I)TE;"
        }
    .end annotation

    .line 50
    .local p0, "this":Lcom/tds/common/reactor/internal/util/atomic/AtomicReferenceArrayQueue;, "Lcom/tds/common/reactor/internal/util/atomic/AtomicReferenceArrayQueue<TE;>;"
    .local p1, "buffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected final soElement(ILjava/lang/Object;)V
    .registers 4
    .param p1, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .line 68
    .local p0, "this":Lcom/tds/common/reactor/internal/util/atomic/AtomicReferenceArrayQueue;, "Lcom/tds/common/reactor/internal/util/atomic/AtomicReferenceArrayQueue<TE;>;"
    .local p2, "value":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lcom/tds/common/reactor/internal/util/atomic/AtomicReferenceArrayQueue;->buffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->lazySet(ILjava/lang/Object;)V

    .line 69
    return-void
.end method

.method protected final soElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;)V
    .registers 4
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "TE;>;ITE;)V"
        }
    .end annotation

    .line 65
    .local p0, "this":Lcom/tds/common/reactor/internal/util/atomic/AtomicReferenceArrayQueue;, "Lcom/tds/common/reactor/internal/util/atomic/AtomicReferenceArrayQueue<TE;>;"
    .local p1, "buffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    .local p3, "value":Ljava/lang/Object;, "TE;"
    invoke-virtual {p1, p2, p3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->lazySet(ILjava/lang/Object;)V

    .line 66
    return-void
.end method

.method protected final spElement(ILjava/lang/Object;)V
    .registers 4
    .param p1, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .line 62
    .local p0, "this":Lcom/tds/common/reactor/internal/util/atomic/AtomicReferenceArrayQueue;, "Lcom/tds/common/reactor/internal/util/atomic/AtomicReferenceArrayQueue<TE;>;"
    .local p2, "value":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lcom/tds/common/reactor/internal/util/atomic/AtomicReferenceArrayQueue;->buffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->lazySet(ILjava/lang/Object;)V

    .line 63
    return-void
.end method

.method protected final spElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;)V
    .registers 4
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "TE;>;ITE;)V"
        }
    .end annotation

    .line 59
    .local p0, "this":Lcom/tds/common/reactor/internal/util/atomic/AtomicReferenceArrayQueue;, "Lcom/tds/common/reactor/internal/util/atomic/AtomicReferenceArrayQueue<TE;>;"
    .local p1, "buffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    .local p3, "value":Ljava/lang/Object;, "TE;"
    invoke-virtual {p1, p2, p3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->lazySet(ILjava/lang/Object;)V

    .line 60
    return-void
.end method

.method protected final svElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;)V
    .registers 4
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "TE;>;ITE;)V"
        }
    .end annotation

    .line 71
    .local p0, "this":Lcom/tds/common/reactor/internal/util/atomic/AtomicReferenceArrayQueue;, "Lcom/tds/common/reactor/internal/util/atomic/AtomicReferenceArrayQueue<TE;>;"
    .local p1, "buffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    .local p3, "value":Ljava/lang/Object;, "TE;"
    invoke-virtual {p1, p2, p3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 72
    return-void
.end method
