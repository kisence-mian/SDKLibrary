.class public final Lcom/tds/common/reactor/internal/util/atomic/SpscAtomicArrayQueue;
.super Lcom/tds/common/reactor/internal/util/atomic/AtomicReferenceArrayQueue;
.source "SpscAtomicArrayQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/tds/common/reactor/internal/util/atomic/AtomicReferenceArrayQueue<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final MAX_LOOK_AHEAD_STEP:Ljava/lang/Integer;


# instance fields
.field final consumerIndex:Ljava/util/concurrent/atomic/AtomicLong;

.field final lookAheadStep:I

.field final producerIndex:Ljava/util/concurrent/atomic/AtomicLong;

.field producerLookAhead:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 37
    const-string v0, "jctools.spsc.max.lookahead.step"

    const/16 v1, 0x1000

    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/tds/common/reactor/internal/util/atomic/SpscAtomicArrayQueue;->MAX_LOOK_AHEAD_STEP:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 4
    .param p1, "capacity"    # I

    .line 43
    .local p0, "this":Lcom/tds/common/reactor/internal/util/atomic/SpscAtomicArrayQueue;, "Lcom/tds/common/reactor/internal/util/atomic/SpscAtomicArrayQueue<TE;>;"
    invoke-direct {p0, p1}, Lcom/tds/common/reactor/internal/util/atomic/AtomicReferenceArrayQueue;-><init>(I)V

    .line 44
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/tds/common/reactor/internal/util/atomic/SpscAtomicArrayQueue;->producerIndex:Ljava/util/concurrent/atomic/AtomicLong;

    .line 45
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/tds/common/reactor/internal/util/atomic/SpscAtomicArrayQueue;->consumerIndex:Ljava/util/concurrent/atomic/AtomicLong;

    .line 46
    div-int/lit8 v0, p1, 0x4

    sget-object v1, Lcom/tds/common/reactor/internal/util/atomic/SpscAtomicArrayQueue;->MAX_LOOK_AHEAD_STEP:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/tds/common/reactor/internal/util/atomic/SpscAtomicArrayQueue;->lookAheadStep:I

    .line 47
    return-void
.end method

.method private lvConsumerIndex()J
    .registers 3

    .line 125
    .local p0, "this":Lcom/tds/common/reactor/internal/util/atomic/SpscAtomicArrayQueue;, "Lcom/tds/common/reactor/internal/util/atomic/SpscAtomicArrayQueue<TE;>;"
    iget-object v0, p0, Lcom/tds/common/reactor/internal/util/atomic/SpscAtomicArrayQueue;->consumerIndex:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method private lvProducerIndex()J
    .registers 3

    .line 128
    .local p0, "this":Lcom/tds/common/reactor/internal/util/atomic/SpscAtomicArrayQueue;, "Lcom/tds/common/reactor/internal/util/atomic/SpscAtomicArrayQueue<TE;>;"
    iget-object v0, p0, Lcom/tds/common/reactor/internal/util/atomic/SpscAtomicArrayQueue;->producerIndex:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method private soConsumerIndex(J)V
    .registers 4
    .param p1, "newIndex"    # J

    .line 121
    .local p0, "this":Lcom/tds/common/reactor/internal/util/atomic/SpscAtomicArrayQueue;, "Lcom/tds/common/reactor/internal/util/atomic/SpscAtomicArrayQueue<TE;>;"
    iget-object v0, p0, Lcom/tds/common/reactor/internal/util/atomic/SpscAtomicArrayQueue;->consumerIndex:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->lazySet(J)V

    .line 122
    return-void
.end method

.method private soProducerIndex(J)V
    .registers 4
    .param p1, "newIndex"    # J

    .line 117
    .local p0, "this":Lcom/tds/common/reactor/internal/util/atomic/SpscAtomicArrayQueue;, "Lcom/tds/common/reactor/internal/util/atomic/SpscAtomicArrayQueue<TE;>;"
    iget-object v0, p0, Lcom/tds/common/reactor/internal/util/atomic/SpscAtomicArrayQueue;->producerIndex:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->lazySet(J)V

    .line 118
    return-void
.end method


# virtual methods
.method public bridge synthetic clear()V
    .registers 1

    .line 36
    .local p0, "this":Lcom/tds/common/reactor/internal/util/atomic/SpscAtomicArrayQueue;, "Lcom/tds/common/reactor/internal/util/atomic/SpscAtomicArrayQueue<TE;>;"
    invoke-super {p0}, Lcom/tds/common/reactor/internal/util/atomic/AtomicReferenceArrayQueue;->clear()V

    return-void
.end method

.method public isEmpty()Z
    .registers 5

    .line 113
    .local p0, "this":Lcom/tds/common/reactor/internal/util/atomic/SpscAtomicArrayQueue;, "Lcom/tds/common/reactor/internal/util/atomic/SpscAtomicArrayQueue<TE;>;"
    invoke-direct {p0}, Lcom/tds/common/reactor/internal/util/atomic/SpscAtomicArrayQueue;->lvProducerIndex()J

    move-result-wide v0

    invoke-direct {p0}, Lcom/tds/common/reactor/internal/util/atomic/SpscAtomicArrayQueue;->lvConsumerIndex()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .registers 2

    .line 36
    .local p0, "this":Lcom/tds/common/reactor/internal/util/atomic/SpscAtomicArrayQueue;, "Lcom/tds/common/reactor/internal/util/atomic/SpscAtomicArrayQueue<TE;>;"
    invoke-super {p0}, Lcom/tds/common/reactor/internal/util/atomic/AtomicReferenceArrayQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 51
    .local p0, "this":Lcom/tds/common/reactor/internal/util/atomic/SpscAtomicArrayQueue;, "Lcom/tds/common/reactor/internal/util/atomic/SpscAtomicArrayQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    if-eqz p1, :cond_3c

    .line 55
    iget-object v0, p0, Lcom/tds/common/reactor/internal/util/atomic/SpscAtomicArrayQueue;->buffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 56
    .local v0, "buffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    iget v1, p0, Lcom/tds/common/reactor/internal/util/atomic/SpscAtomicArrayQueue;->mask:I

    .line 57
    .local v1, "mask":I
    iget-object v2, p0, Lcom/tds/common/reactor/internal/util/atomic/SpscAtomicArrayQueue;->producerIndex:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    .line 58
    .local v2, "index":J
    invoke-virtual {p0, v2, v3, v1}, Lcom/tds/common/reactor/internal/util/atomic/SpscAtomicArrayQueue;->calcElementOffset(JI)I

    move-result v4

    .line 59
    .local v4, "offset":I
    iget-wide v5, p0, Lcom/tds/common/reactor/internal/util/atomic/SpscAtomicArrayQueue;->producerLookAhead:J

    cmp-long v5, v2, v5

    if-ltz v5, :cond_31

    .line 60
    iget v5, p0, Lcom/tds/common/reactor/internal/util/atomic/SpscAtomicArrayQueue;->lookAheadStep:I

    .line 61
    .local v5, "step":I
    int-to-long v6, v5

    add-long/2addr v6, v2

    invoke-virtual {p0, v6, v7, v1}, Lcom/tds/common/reactor/internal/util/atomic/SpscAtomicArrayQueue;->calcElementOffset(JI)I

    move-result v6

    invoke-virtual {p0, v0, v6}, Lcom/tds/common/reactor/internal/util/atomic/SpscAtomicArrayQueue;->lvElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_29

    .line 62
    int-to-long v6, v5

    add-long/2addr v6, v2

    iput-wide v6, p0, Lcom/tds/common/reactor/internal/util/atomic/SpscAtomicArrayQueue;->producerLookAhead:J

    goto :goto_31

    .line 64
    :cond_29
    invoke-virtual {p0, v0, v4}, Lcom/tds/common/reactor/internal/util/atomic/SpscAtomicArrayQueue;->lvElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_31

    .line 65
    const/4 v6, 0x0

    return v6

    .line 68
    .end local v5    # "step":I
    :cond_31
    :goto_31
    invoke-virtual {p0, v0, v4, p1}, Lcom/tds/common/reactor/internal/util/atomic/SpscAtomicArrayQueue;->soElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;)V

    .line 69
    const-wide/16 v5, 0x1

    add-long/2addr v5, v2

    invoke-direct {p0, v5, v6}, Lcom/tds/common/reactor/internal/util/atomic/SpscAtomicArrayQueue;->soProducerIndex(J)V

    .line 70
    const/4 v5, 0x1

    return v5

    .line 52
    .end local v0    # "buffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    .end local v1    # "mask":I
    .end local v2    # "index":J
    .end local v4    # "offset":I
    :cond_3c
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null is not a valid element"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public peek()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 90
    .local p0, "this":Lcom/tds/common/reactor/internal/util/atomic/SpscAtomicArrayQueue;, "Lcom/tds/common/reactor/internal/util/atomic/SpscAtomicArrayQueue<TE;>;"
    iget-object v0, p0, Lcom/tds/common/reactor/internal/util/atomic/SpscAtomicArrayQueue;->consumerIndex:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/tds/common/reactor/internal/util/atomic/SpscAtomicArrayQueue;->calcElementOffset(J)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tds/common/reactor/internal/util/atomic/SpscAtomicArrayQueue;->lvElement(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public poll()Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 75
    .local p0, "this":Lcom/tds/common/reactor/internal/util/atomic/SpscAtomicArrayQueue;, "Lcom/tds/common/reactor/internal/util/atomic/SpscAtomicArrayQueue<TE;>;"
    iget-object v0, p0, Lcom/tds/common/reactor/internal/util/atomic/SpscAtomicArrayQueue;->consumerIndex:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    .line 76
    .local v0, "index":J
    invoke-virtual {p0, v0, v1}, Lcom/tds/common/reactor/internal/util/atomic/SpscAtomicArrayQueue;->calcElementOffset(J)I

    move-result v2

    .line 78
    .local v2, "offset":I
    iget-object v3, p0, Lcom/tds/common/reactor/internal/util/atomic/SpscAtomicArrayQueue;->buffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 79
    .local v3, "lElementBuffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    invoke-virtual {p0, v3, v2}, Lcom/tds/common/reactor/internal/util/atomic/SpscAtomicArrayQueue;->lvElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/lang/Object;

    move-result-object v4

    .line 80
    .local v4, "e":Ljava/lang/Object;, "TE;"
    const/4 v5, 0x0

    if-nez v4, :cond_14

    .line 81
    return-object v5

    .line 83
    :cond_14
    invoke-virtual {p0, v3, v2, v5}, Lcom/tds/common/reactor/internal/util/atomic/SpscAtomicArrayQueue;->soElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;)V

    .line 84
    const-wide/16 v5, 0x1

    add-long/2addr v5, v0

    invoke-direct {p0, v5, v6}, Lcom/tds/common/reactor/internal/util/atomic/SpscAtomicArrayQueue;->soConsumerIndex(J)V

    .line 85
    return-object v4
.end method

.method public size()I
    .registers 9

    .line 100
    .local p0, "this":Lcom/tds/common/reactor/internal/util/atomic/SpscAtomicArrayQueue;, "Lcom/tds/common/reactor/internal/util/atomic/SpscAtomicArrayQueue<TE;>;"
    invoke-direct {p0}, Lcom/tds/common/reactor/internal/util/atomic/SpscAtomicArrayQueue;->lvConsumerIndex()J

    move-result-wide v0

    .line 102
    .local v0, "after":J
    :goto_4
    move-wide v2, v0

    .line 103
    .local v2, "before":J
    invoke-direct {p0}, Lcom/tds/common/reactor/internal/util/atomic/SpscAtomicArrayQueue;->lvProducerIndex()J

    move-result-wide v4

    .line 104
    .local v4, "currentProducerIndex":J
    invoke-direct {p0}, Lcom/tds/common/reactor/internal/util/atomic/SpscAtomicArrayQueue;->lvConsumerIndex()J

    move-result-wide v0

    .line 105
    cmp-long v6, v2, v0

    if-nez v6, :cond_15

    .line 106
    sub-long v6, v4, v0

    long-to-int v6, v6

    return v6

    .line 108
    .end local v2    # "before":J
    .end local v4    # "currentProducerIndex":J
    :cond_15
    goto :goto_4
.end method
