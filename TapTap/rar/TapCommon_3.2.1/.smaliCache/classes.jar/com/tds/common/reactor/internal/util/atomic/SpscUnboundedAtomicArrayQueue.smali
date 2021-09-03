.class public final Lcom/tds/common/reactor/internal/util/atomic/SpscUnboundedAtomicArrayQueue;
.super Ljava/lang/Object;
.source "SpscUnboundedAtomicArrayQueue.java"

# interfaces
.implements Ljava/util/Queue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Queue<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final HAS_NEXT:Ljava/lang/Object;

.field static final MAX_LOOK_AHEAD_STEP:I


# instance fields
.field consumerBuffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final consumerIndex:Ljava/util/concurrent/atomic/AtomicLong;

.field consumerMask:I

.field producerBuffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final producerIndex:Ljava/util/concurrent/atomic/AtomicLong;

.field producerLookAhead:J

.field producerLookAheadStep:I

.field producerMask:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 38
    const-string v0, "jctools.spsc.max.lookahead.step"

    const/16 v1, 0x1000

    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/tds/common/reactor/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->MAX_LOOK_AHEAD_STEP:I

    .line 47
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/tds/common/reactor/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->HAS_NEXT:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 7
    .param p1, "bufferSize"    # I

    .line 49
    .local p0, "this":Lcom/tds/common/reactor/internal/util/atomic/SpscUnboundedAtomicArrayQueue;, "Lcom/tds/common/reactor/internal/util/atomic/SpscUnboundedAtomicArrayQueue<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/16 v0, 0x8

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0}, Lcom/tds/common/reactor/internal/util/unsafe/Pow2;->roundToPowerOfTwo(I)I

    move-result v0

    .line 51
    .local v0, "p2capacity":I
    add-int/lit8 v1, v0, -0x1

    .line 52
    .local v1, "mask":I
    new-instance v2, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v2, p0, Lcom/tds/common/reactor/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->producerIndex:Ljava/util/concurrent/atomic/AtomicLong;

    .line 53
    new-instance v2, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v2, p0, Lcom/tds/common/reactor/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->consumerIndex:Ljava/util/concurrent/atomic/AtomicLong;

    .line 54
    new-instance v2, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    add-int/lit8 v3, v0, 0x1

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    .line 55
    .local v2, "buffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Ljava/lang/Object;>;"
    iput-object v2, p0, Lcom/tds/common/reactor/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->producerBuffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 56
    iput v1, p0, Lcom/tds/common/reactor/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->producerMask:I

    .line 57
    invoke-direct {p0, v0}, Lcom/tds/common/reactor/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->adjustLookAheadStep(I)V

    .line 58
    iput-object v2, p0, Lcom/tds/common/reactor/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->consumerBuffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 59
    iput v1, p0, Lcom/tds/common/reactor/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->consumerMask:I

    .line 60
    add-int/lit8 v3, v1, -0x1

    int-to-long v3, v3

    iput-wide v3, p0, Lcom/tds/common/reactor/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->producerLookAhead:J

    .line 61
    const-wide/16 v3, 0x0

    invoke-direct {p0, v3, v4}, Lcom/tds/common/reactor/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->soProducerIndex(J)V

    .line 62
    return-void
.end method

.method private adjustLookAheadStep(I)V
    .registers 4
    .param p1, "capacity"    # I

    .line 220
    .local p0, "this":Lcom/tds/common/reactor/internal/util/atomic/SpscUnboundedAtomicArrayQueue;, "Lcom/tds/common/reactor/internal/util/atomic/SpscUnboundedAtomicArrayQueue<TT;>;"
    div-int/lit8 v0, p1, 0x4

    sget v1, Lcom/tds/common/reactor/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->MAX_LOOK_AHEAD_STEP:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/tds/common/reactor/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->producerLookAheadStep:I

    .line 221
    return-void
.end method

.method private static calcDirectOffset(I)I
    .registers 1
    .param p0, "index"    # I

    .line 251
    return p0
.end method

.method private static calcWrappedOffset(JI)I
    .registers 4
    .param p0, "index"    # J
    .param p2, "mask"    # I

    .line 248
    long-to-int v0, p0

    and-int/2addr v0, p2

    invoke-static {v0}, Lcom/tds/common/reactor/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->calcDirectOffset(I)I

    move-result v0

    return v0
.end method

.method private lpConsumerIndex()J
    .registers 3

    .line 236
    .local p0, "this":Lcom/tds/common/reactor/internal/util/atomic/SpscUnboundedAtomicArrayQueue;, "Lcom/tds/common/reactor/internal/util/atomic/SpscUnboundedAtomicArrayQueue<TT;>;"
    iget-object v0, p0, Lcom/tds/common/reactor/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->consumerIndex:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method private lpProducerIndex()J
    .registers 3

    .line 232
    .local p0, "this":Lcom/tds/common/reactor/internal/util/atomic/SpscUnboundedAtomicArrayQueue;, "Lcom/tds/common/reactor/internal/util/atomic/SpscUnboundedAtomicArrayQueue<TT;>;"
    iget-object v0, p0, Lcom/tds/common/reactor/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->producerIndex:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method private lvConsumerIndex()J
    .registers 3

    .line 228
    .local p0, "this":Lcom/tds/common/reactor/internal/util/atomic/SpscUnboundedAtomicArrayQueue;, "Lcom/tds/common/reactor/internal/util/atomic/SpscUnboundedAtomicArrayQueue<TT;>;"
    iget-object v0, p0, Lcom/tds/common/reactor/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->consumerIndex:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method private static lvElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/lang/Object;
    .registers 3
    .param p1, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "Ljava/lang/Object;",
            ">;I)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 258
    .local p0, "buffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Ljava/lang/Object;>;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private lvNext(Ljava/util/concurrent/atomic/AtomicReferenceArray;)Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 121
    .local p0, "this":Lcom/tds/common/reactor/internal/util/atomic/SpscUnboundedAtomicArrayQueue;, "Lcom/tds/common/reactor/internal/util/atomic/SpscUnboundedAtomicArrayQueue<TT;>;"
    .local p1, "curr":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Ljava/lang/Object;>;"
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Lcom/tds/common/reactor/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->calcDirectOffset(I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/tds/common/reactor/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->lvElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    return-object v0
.end method

.method private lvProducerIndex()J
    .registers 3

    .line 224
    .local p0, "this":Lcom/tds/common/reactor/internal/util/atomic/SpscUnboundedAtomicArrayQueue;, "Lcom/tds/common/reactor/internal/util/atomic/SpscUnboundedAtomicArrayQueue<TT;>;"
    iget-object v0, p0, Lcom/tds/common/reactor/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->producerIndex:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method private newBufferPeek(Ljava/util/concurrent/atomic/AtomicReferenceArray;JI)Ljava/lang/Object;
    .registers 7
    .param p2, "index"    # J
    .param p4, "mask"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "Ljava/lang/Object;",
            ">;JI)TT;"
        }
    .end annotation

    .line 190
    .local p0, "this":Lcom/tds/common/reactor/internal/util/atomic/SpscUnboundedAtomicArrayQueue;, "Lcom/tds/common/reactor/internal/util/atomic/SpscUnboundedAtomicArrayQueue<TT;>;"
    .local p1, "nextBuffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Ljava/lang/Object;>;"
    iput-object p1, p0, Lcom/tds/common/reactor/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->consumerBuffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 191
    invoke-static {p2, p3, p4}, Lcom/tds/common/reactor/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->calcWrappedOffset(JI)I

    move-result v0

    .line 192
    .local v0, "offsetInNew":I
    invoke-static {p1, v0}, Lcom/tds/common/reactor/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->lvElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method private newBufferPoll(Ljava/util/concurrent/atomic/AtomicReferenceArray;JI)Ljava/lang/Object;
    .registers 10
    .param p2, "index"    # J
    .param p4, "mask"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "Ljava/lang/Object;",
            ">;JI)TT;"
        }
    .end annotation

    .line 151
    .local p0, "this":Lcom/tds/common/reactor/internal/util/atomic/SpscUnboundedAtomicArrayQueue;, "Lcom/tds/common/reactor/internal/util/atomic/SpscUnboundedAtomicArrayQueue<TT;>;"
    .local p1, "nextBuffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Ljava/lang/Object;>;"
    iput-object p1, p0, Lcom/tds/common/reactor/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->consumerBuffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 152
    invoke-static {p2, p3, p4}, Lcom/tds/common/reactor/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->calcWrappedOffset(JI)I

    move-result v0

    .line 153
    .local v0, "offsetInNew":I
    invoke-static {p1, v0}, Lcom/tds/common/reactor/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->lvElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/lang/Object;

    move-result-object v1

    .line 154
    .local v1, "n":Ljava/lang/Object;, "TT;"
    const/4 v2, 0x0

    if-nez v1, :cond_e

    .line 155
    return-object v2

    .line 157
    :cond_e
    const-wide/16 v3, 0x1

    add-long/2addr v3, p2

    invoke-direct {p0, v3, v4}, Lcom/tds/common/reactor/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->soConsumerIndex(J)V

    .line 158
    invoke-static {p1, v0, v2}, Lcom/tds/common/reactor/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->soElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;)V

    .line 159
    return-object v1
.end method

.method private resize(Ljava/util/concurrent/atomic/AtomicReferenceArray;JILjava/lang/Object;J)V
    .registers 14
    .param p2, "currIndex"    # J
    .param p4, "offset"    # I
    .param p6, "mask"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "Ljava/lang/Object;",
            ">;JITT;J)V"
        }
    .end annotation

    .line 105
    .local p0, "this":Lcom/tds/common/reactor/internal/util/atomic/SpscUnboundedAtomicArrayQueue;, "Lcom/tds/common/reactor/internal/util/atomic/SpscUnboundedAtomicArrayQueue<TT;>;"
    .local p1, "oldBuffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Ljava/lang/Object;>;"
    .local p5, "e":Ljava/lang/Object;, "TT;"
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    .line 106
    .local v0, "capacity":I
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    .line 107
    .local v1, "newBuffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Ljava/lang/Object;>;"
    iput-object v1, p0, Lcom/tds/common/reactor/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->producerBuffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 108
    add-long v2, p2, p6

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/tds/common/reactor/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->producerLookAhead:J

    .line 109
    add-long/2addr v4, p2

    invoke-direct {p0, v4, v5}, Lcom/tds/common/reactor/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->soProducerIndex(J)V

    .line 110
    invoke-static {v1, p4, p5}, Lcom/tds/common/reactor/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->soElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;)V

    .line 111
    invoke-direct {p0, p1, v1}, Lcom/tds/common/reactor/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->soNext(Ljava/util/concurrent/atomic/AtomicReferenceArray;Ljava/util/concurrent/atomic/AtomicReferenceArray;)V

    .line 112
    sget-object v2, Lcom/tds/common/reactor/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->HAS_NEXT:Ljava/lang/Object;

    invoke-static {p1, p4, v2}, Lcom/tds/common/reactor/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->soElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;)V

    .line 114
    return-void
.end method

.method private soConsumerIndex(J)V
    .registers 4
    .param p1, "v"    # J

    .line 244
    .local p0, "this":Lcom/tds/common/reactor/internal/util/atomic/SpscUnboundedAtomicArrayQueue;, "Lcom/tds/common/reactor/internal/util/atomic/SpscUnboundedAtomicArrayQueue<TT;>;"
    iget-object v0, p0, Lcom/tds/common/reactor/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->consumerIndex:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->lazySet(J)V

    .line 245
    return-void
.end method

.method private static soElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;)V
    .registers 3
    .param p1, "offset"    # I
    .param p2, "e"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "Ljava/lang/Object;",
            ">;I",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 254
    .local p0, "buffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Ljava/lang/Object;>;"
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->lazySet(ILjava/lang/Object;)V

    .line 255
    return-void
.end method

.method private soNext(Ljava/util/concurrent/atomic/AtomicReferenceArray;Ljava/util/concurrent/atomic/AtomicReferenceArray;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 117
    .local p0, "this":Lcom/tds/common/reactor/internal/util/atomic/SpscUnboundedAtomicArrayQueue;, "Lcom/tds/common/reactor/internal/util/atomic/SpscUnboundedAtomicArrayQueue<TT;>;"
    .local p1, "curr":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Ljava/lang/Object;>;"
    .local p2, "next":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Ljava/lang/Object;>;"
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Lcom/tds/common/reactor/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->calcDirectOffset(I)I

    move-result v0

    invoke-static {p1, v0, p2}, Lcom/tds/common/reactor/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->soElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;)V

    .line 118
    return-void
.end method

.method private soProducerIndex(J)V
    .registers 4
    .param p1, "v"    # J

    .line 240
    .local p0, "this":Lcom/tds/common/reactor/internal/util/atomic/SpscUnboundedAtomicArrayQueue;, "Lcom/tds/common/reactor/internal/util/atomic/SpscUnboundedAtomicArrayQueue<TT;>;"
    iget-object v0, p0, Lcom/tds/common/reactor/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->producerIndex:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->lazySet(J)V

    .line 241
    return-void
.end method

.method private writeToQueue(Ljava/util/concurrent/atomic/AtomicReferenceArray;Ljava/lang/Object;JI)Z
    .registers 8
    .param p3, "index"    # J
    .param p5, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "Ljava/lang/Object;",
            ">;TT;JI)Z"
        }
    .end annotation

    .line 98
    .local p0, "this":Lcom/tds/common/reactor/internal/util/atomic/SpscUnboundedAtomicArrayQueue;, "Lcom/tds/common/reactor/internal/util/atomic/SpscUnboundedAtomicArrayQueue<TT;>;"
    .local p1, "buffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Ljava/lang/Object;>;"
    .local p2, "e":Ljava/lang/Object;, "TT;"
    const-wide/16 v0, 0x1

    add-long/2addr v0, p3

    invoke-direct {p0, v0, v1}, Lcom/tds/common/reactor/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->soProducerIndex(J)V

    .line 99
    invoke-static {p1, p5, p2}, Lcom/tds/common/reactor/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->soElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;)V

    .line 100
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 308
    .local p0, "this":Lcom/tds/common/reactor/internal/util/atomic/SpscUnboundedAtomicArrayQueue;, "Lcom/tds/common/reactor/internal/util/atomic/SpscUnboundedAtomicArrayQueue<TT;>;"
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

    .line 293
    .local p0, "this":Lcom/tds/common/reactor/internal/util/atomic/SpscUnboundedAtomicArrayQueue;, "Lcom/tds/common/reactor/internal/util/atomic/SpscUnboundedAtomicArrayQueue<TT;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public clear()V
    .registers 2

    .line 185
    .local p0, "this":Lcom/tds/common/reactor/internal/util/atomic/SpscUnboundedAtomicArrayQueue;, "Lcom/tds/common/reactor/internal/util/atomic/SpscUnboundedAtomicArrayQueue<TT;>;"
    :goto_0
    invoke-virtual {p0}, Lcom/tds/common/reactor/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_e

    invoke-virtual {p0}, Lcom/tds/common/reactor/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_e

    .line 186
    :cond_d
    return-void

    .line 185
    :cond_e
    :goto_e
    goto :goto_0
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 268
    .local p0, "this":Lcom/tds/common/reactor/internal/util/atomic/SpscUnboundedAtomicArrayQueue;, "Lcom/tds/common/reactor/internal/util/atomic/SpscUnboundedAtomicArrayQueue<TT;>;"
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

    .line 288
    .local p0, "this":Lcom/tds/common/reactor/internal/util/atomic/SpscUnboundedAtomicArrayQueue;, "Lcom/tds/common/reactor/internal/util/atomic/SpscUnboundedAtomicArrayQueue<TT;>;"
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

    .line 318
    .local p0, "this":Lcom/tds/common/reactor/internal/util/atomic/SpscUnboundedAtomicArrayQueue;, "Lcom/tds/common/reactor/internal/util/atomic/SpscUnboundedAtomicArrayQueue<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public isEmpty()Z
    .registers 5

    .line 216
    .local p0, "this":Lcom/tds/common/reactor/internal/util/atomic/SpscUnboundedAtomicArrayQueue;, "Lcom/tds/common/reactor/internal/util/atomic/SpscUnboundedAtomicArrayQueue<TT;>;"
    invoke-direct {p0}, Lcom/tds/common/reactor/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->lvProducerIndex()J

    move-result-wide v0

    invoke-direct {p0}, Lcom/tds/common/reactor/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->lvConsumerIndex()J

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

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 263
    .local p0, "this":Lcom/tds/common/reactor/internal/util/atomic/SpscUnboundedAtomicArrayQueue;, "Lcom/tds/common/reactor/internal/util/atomic/SpscUnboundedAtomicArrayQueue<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 71
    .local p0, "this":Lcom/tds/common/reactor/internal/util/atomic/SpscUnboundedAtomicArrayQueue;, "Lcom/tds/common/reactor/internal/util/atomic/SpscUnboundedAtomicArrayQueue<TT;>;"
    .local p1, "e":Ljava/lang/Object;, "TT;"
    move-object/from16 v8, p0

    if-eqz p1, :cond_67

    .line 75
    iget-object v9, v8, Lcom/tds/common/reactor/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->producerBuffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 76
    .local v9, "buffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Ljava/lang/Object;>;"
    invoke-direct/range {p0 .. p0}, Lcom/tds/common/reactor/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->lpProducerIndex()J

    move-result-wide v10

    .line 77
    .local v10, "index":J
    iget v12, v8, Lcom/tds/common/reactor/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->producerMask:I

    .line 78
    .local v12, "mask":I
    invoke-static {v10, v11, v12}, Lcom/tds/common/reactor/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->calcWrappedOffset(JI)I

    move-result v13

    .line 79
    .local v13, "offset":I
    iget-wide v0, v8, Lcom/tds/common/reactor/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->producerLookAhead:J

    cmp-long v0, v10, v0

    if-gez v0, :cond_22

    .line 80
    move-object/from16 v0, p0

    move-object v1, v9

    move-object/from16 v2, p1

    move-wide v3, v10

    move v5, v13

    invoke-direct/range {v0 .. v5}, Lcom/tds/common/reactor/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->writeToQueue(Ljava/util/concurrent/atomic/AtomicReferenceArray;Ljava/lang/Object;JI)Z

    move-result v0

    return v0

    .line 82
    :cond_22
    iget v14, v8, Lcom/tds/common/reactor/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->producerLookAheadStep:I

    .line 84
    .local v14, "lookAheadStep":I
    int-to-long v0, v14

    add-long/2addr v0, v10

    invoke-static {v0, v1, v12}, Lcom/tds/common/reactor/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->calcWrappedOffset(JI)I

    move-result v15

    .line 85
    .local v15, "lookAheadElementOffset":I
    invoke-static {v9, v15}, Lcom/tds/common/reactor/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->lvElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/lang/Object;

    move-result-object v0

    const-wide/16 v1, 0x1

    if-nez v0, :cond_43

    .line 86
    int-to-long v3, v14

    add-long/2addr v3, v10

    sub-long/2addr v3, v1

    iput-wide v3, v8, Lcom/tds/common/reactor/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->producerLookAhead:J

    .line 87
    move-object/from16 v0, p0

    move-object v1, v9

    move-object/from16 v2, p1

    move-wide v3, v10

    move v5, v13

    invoke-direct/range {v0 .. v5}, Lcom/tds/common/reactor/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->writeToQueue(Ljava/util/concurrent/atomic/AtomicReferenceArray;Ljava/lang/Object;JI)Z

    move-result v0

    return v0

    .line 88
    :cond_43
    add-long/2addr v1, v10

    invoke-static {v1, v2, v12}, Lcom/tds/common/reactor/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->calcWrappedOffset(JI)I

    move-result v0

    invoke-static {v9, v0}, Lcom/tds/common/reactor/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->lvElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5a

    .line 89
    move-object/from16 v0, p0

    move-object v1, v9

    move-object/from16 v2, p1

    move-wide v3, v10

    move v5, v13

    invoke-direct/range {v0 .. v5}, Lcom/tds/common/reactor/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->writeToQueue(Ljava/util/concurrent/atomic/AtomicReferenceArray;Ljava/lang/Object;JI)Z

    move-result v0

    return v0

    .line 91
    :cond_5a
    int-to-long v6, v12

    move-object/from16 v0, p0

    move-object v1, v9

    move-wide v2, v10

    move v4, v13

    move-object/from16 v5, p1

    invoke-direct/range {v0 .. v7}, Lcom/tds/common/reactor/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->resize(Ljava/util/concurrent/atomic/AtomicReferenceArray;JILjava/lang/Object;J)V

    .line 92
    const/4 v0, 0x1

    return v0

    .line 72
    .end local v9    # "buffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Ljava/lang/Object;>;"
    .end local v10    # "index":J
    .end local v12    # "mask":I
    .end local v13    # "offset":I
    .end local v14    # "lookAheadStep":I
    .end local v15    # "lookAheadElementOffset":I
    :cond_67
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public peek()Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 171
    .local p0, "this":Lcom/tds/common/reactor/internal/util/atomic/SpscUnboundedAtomicArrayQueue;, "Lcom/tds/common/reactor/internal/util/atomic/SpscUnboundedAtomicArrayQueue<TT;>;"
    iget-object v0, p0, Lcom/tds/common/reactor/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->consumerBuffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 172
    .local v0, "buffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Ljava/lang/Object;>;"
    invoke-direct {p0}, Lcom/tds/common/reactor/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->lpConsumerIndex()J

    move-result-wide v1

    .line 173
    .local v1, "index":J
    iget v3, p0, Lcom/tds/common/reactor/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->consumerMask:I

    .line 174
    .local v3, "mask":I
    invoke-static {v1, v2, v3}, Lcom/tds/common/reactor/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->calcWrappedOffset(JI)I

    move-result v4

    .line 175
    .local v4, "offset":I
    invoke-static {v0, v4}, Lcom/tds/common/reactor/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->lvElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/lang/Object;

    move-result-object v5

    .line 176
    .local v5, "e":Ljava/lang/Object;
    sget-object v6, Lcom/tds/common/reactor/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->HAS_NEXT:Ljava/lang/Object;

    if-ne v5, v6, :cond_1d

    .line 177
    invoke-direct {p0, v0}, Lcom/tds/common/reactor/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->lvNext(Ljava/util/concurrent/atomic/AtomicReferenceArray;)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v6

    invoke-direct {p0, v6, v1, v2, v3}, Lcom/tds/common/reactor/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->newBufferPeek(Ljava/util/concurrent/atomic/AtomicReferenceArray;JI)Ljava/lang/Object;

    move-result-object v6

    return-object v6

    .line 180
    :cond_1d
    return-object v5
.end method

.method public poll()Ljava/lang/Object;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 132
    .local p0, "this":Lcom/tds/common/reactor/internal/util/atomic/SpscUnboundedAtomicArrayQueue;, "Lcom/tds/common/reactor/internal/util/atomic/SpscUnboundedAtomicArrayQueue<TT;>;"
    iget-object v0, p0, Lcom/tds/common/reactor/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->consumerBuffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 133
    .local v0, "buffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Ljava/lang/Object;>;"
    invoke-direct {p0}, Lcom/tds/common/reactor/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->lpConsumerIndex()J

    move-result-wide v1

    .line 134
    .local v1, "index":J
    iget v3, p0, Lcom/tds/common/reactor/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->consumerMask:I

    .line 135
    .local v3, "mask":I
    invoke-static {v1, v2, v3}, Lcom/tds/common/reactor/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->calcWrappedOffset(JI)I

    move-result v4

    .line 136
    .local v4, "offset":I
    invoke-static {v0, v4}, Lcom/tds/common/reactor/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->lvElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/lang/Object;

    move-result-object v5

    .line 137
    .local v5, "e":Ljava/lang/Object;
    sget-object v6, Lcom/tds/common/reactor/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->HAS_NEXT:Ljava/lang/Object;

    if-ne v5, v6, :cond_16

    const/4 v6, 0x1

    goto :goto_17

    :cond_16
    const/4 v6, 0x0

    .line 138
    .local v6, "isNextBuffer":Z
    :goto_17
    const/4 v7, 0x0

    if-eqz v5, :cond_26

    if-nez v6, :cond_26

    .line 139
    const-wide/16 v8, 0x1

    add-long/2addr v8, v1

    invoke-direct {p0, v8, v9}, Lcom/tds/common/reactor/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->soConsumerIndex(J)V

    .line 140
    invoke-static {v0, v4, v7}, Lcom/tds/common/reactor/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->soElement(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;)V

    .line 141
    return-object v5

    .line 142
    :cond_26
    if-eqz v6, :cond_31

    .line 143
    invoke-direct {p0, v0}, Lcom/tds/common/reactor/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->lvNext(Ljava/util/concurrent/atomic/AtomicReferenceArray;)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v7

    invoke-direct {p0, v7, v1, v2, v3}, Lcom/tds/common/reactor/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->newBufferPoll(Ljava/util/concurrent/atomic/AtomicReferenceArray;JI)Ljava/lang/Object;

    move-result-object v7

    return-object v7

    .line 146
    :cond_31
    return-object v7
.end method

.method public remove()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 313
    .local p0, "this":Lcom/tds/common/reactor/internal/util/atomic/SpscUnboundedAtomicArrayQueue;, "Lcom/tds/common/reactor/internal/util/atomic/SpscUnboundedAtomicArrayQueue<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 283
    .local p0, "this":Lcom/tds/common/reactor/internal/util/atomic/SpscUnboundedAtomicArrayQueue;, "Lcom/tds/common/reactor/internal/util/atomic/SpscUnboundedAtomicArrayQueue<TT;>;"
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

    .line 298
    .local p0, "this":Lcom/tds/common/reactor/internal/util/atomic/SpscUnboundedAtomicArrayQueue;, "Lcom/tds/common/reactor/internal/util/atomic/SpscUnboundedAtomicArrayQueue<TT;>;"
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

    .line 303
    .local p0, "this":Lcom/tds/common/reactor/internal/util/atomic/SpscUnboundedAtomicArrayQueue;, "Lcom/tds/common/reactor/internal/util/atomic/SpscUnboundedAtomicArrayQueue<TT;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public size()I
    .registers 9

    .line 203
    .local p0, "this":Lcom/tds/common/reactor/internal/util/atomic/SpscUnboundedAtomicArrayQueue;, "Lcom/tds/common/reactor/internal/util/atomic/SpscUnboundedAtomicArrayQueue<TT;>;"
    invoke-direct {p0}, Lcom/tds/common/reactor/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->lvConsumerIndex()J

    move-result-wide v0

    .line 205
    .local v0, "after":J
    :goto_4
    move-wide v2, v0

    .line 206
    .local v2, "before":J
    invoke-direct {p0}, Lcom/tds/common/reactor/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->lvProducerIndex()J

    move-result-wide v4

    .line 207
    .local v4, "currentProducerIndex":J
    invoke-direct {p0}, Lcom/tds/common/reactor/internal/util/atomic/SpscUnboundedAtomicArrayQueue;->lvConsumerIndex()J

    move-result-wide v0

    .line 208
    cmp-long v6, v2, v0

    if-nez v6, :cond_15

    .line 209
    sub-long v6, v4, v0

    long-to-int v6, v6

    return v6

    .line 211
    .end local v2    # "before":J
    .end local v4    # "currentProducerIndex":J
    :cond_15
    goto :goto_4
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 2

    .line 273
    .local p0, "this":Lcom/tds/common/reactor/internal/util/atomic/SpscUnboundedAtomicArrayQueue;, "Lcom/tds/common/reactor/internal/util/atomic/SpscUnboundedAtomicArrayQueue<TT;>;"
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

    .line 278
    .local p0, "this":Lcom/tds/common/reactor/internal/util/atomic/SpscUnboundedAtomicArrayQueue;, "Lcom/tds/common/reactor/internal/util/atomic/SpscUnboundedAtomicArrayQueue<TT;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TE;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
