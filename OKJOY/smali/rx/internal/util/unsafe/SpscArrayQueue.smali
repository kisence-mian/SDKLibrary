.class public final Lrx/internal/util/unsafe/SpscArrayQueue;
.super Lrx/internal/util/unsafe/SpscArrayQueueL3Pad;
.source "SpscArrayQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/internal/util/unsafe/SpscArrayQueueL3Pad",
        "<TE;>;"
    }
.end annotation

.annotation build Lrx/internal/util/SuppressAnimalSniffer;
.end annotation


# direct methods
.method public constructor <init>(I)V
    .registers 2
    .param p1, "capacity"    # I

    .prologue
    .line 98
    .local p0, "this":Lrx/internal/util/unsafe/SpscArrayQueue;, "Lrx/internal/util/unsafe/SpscArrayQueue<TE;>;"
    invoke-direct {p0, p1}, Lrx/internal/util/unsafe/SpscArrayQueueL3Pad;-><init>(I)V

    .line 99
    return-void
.end method

.method private lvConsumerIndex()J
    .registers 5

    .prologue
    .line 189
    .local p0, "this":Lrx/internal/util/unsafe/SpscArrayQueue;, "Lrx/internal/util/unsafe/SpscArrayQueue<TE;>;"
    sget-object v0, Lrx/internal/util/unsafe/UnsafeAccess;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Lrx/internal/util/unsafe/SpscArrayQueue;->C_INDEX_OFFSET:J

    invoke-virtual {v0, p0, v2, v3}, Lsun/misc/Unsafe;->getLongVolatile(Ljava/lang/Object;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private lvProducerIndex()J
    .registers 5

    .prologue
    .line 185
    .local p0, "this":Lrx/internal/util/unsafe/SpscArrayQueue;, "Lrx/internal/util/unsafe/SpscArrayQueue<TE;>;"
    sget-object v0, Lrx/internal/util/unsafe/UnsafeAccess;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Lrx/internal/util/unsafe/SpscArrayQueue;->P_INDEX_OFFSET:J

    invoke-virtual {v0, p0, v2, v3}, Lsun/misc/Unsafe;->getLongVolatile(Ljava/lang/Object;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private soConsumerIndex(J)V
    .registers 10
    .param p1, "v"    # J

    .prologue
    .line 181
    .local p0, "this":Lrx/internal/util/unsafe/SpscArrayQueue;, "Lrx/internal/util/unsafe/SpscArrayQueue<TE;>;"
    sget-object v0, Lrx/internal/util/unsafe/UnsafeAccess;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Lrx/internal/util/unsafe/SpscArrayQueue;->C_INDEX_OFFSET:J

    move-object v1, p0

    move-wide v4, p1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putOrderedLong(Ljava/lang/Object;JJ)V

    .line 182
    return-void
.end method

.method private soProducerIndex(J)V
    .registers 10
    .param p1, "v"    # J

    .prologue
    .line 177
    .local p0, "this":Lrx/internal/util/unsafe/SpscArrayQueue;, "Lrx/internal/util/unsafe/SpscArrayQueue<TE;>;"
    sget-object v0, Lrx/internal/util/unsafe/UnsafeAccess;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Lrx/internal/util/unsafe/SpscArrayQueue;->P_INDEX_OFFSET:J

    move-object v1, p0

    move-wide v4, p1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putOrderedLong(Ljava/lang/Object;JJ)V

    .line 178
    return-void
.end method


# virtual methods
.method public isEmpty()Z
    .registers 5

    .prologue
    .line 173
    .local p0, "this":Lrx/internal/util/unsafe/SpscArrayQueue;, "Lrx/internal/util/unsafe/SpscArrayQueue<TE;>;"
    invoke-direct {p0}, Lrx/internal/util/unsafe/SpscArrayQueue;->lvProducerIndex()J

    move-result-wide v0

    invoke-direct {p0}, Lrx/internal/util/unsafe/SpscArrayQueue;->lvConsumerIndex()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public offer(Ljava/lang/Object;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 108
    .local p0, "this":Lrx/internal/util/unsafe/SpscArrayQueue;, "Lrx/internal/util/unsafe/SpscArrayQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    if-nez p1, :cond_a

    .line 109
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v6, "null elements not allowed"

    invoke-direct {v3, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 112
    :cond_a
    iget-object v2, p0, Lrx/internal/util/unsafe/SpscArrayQueue;->buffer:[Ljava/lang/Object;

    .line 113
    .local v2, "lElementBuffer":[Ljava/lang/Object;, "[TE;"
    iget-wide v0, p0, Lrx/internal/util/unsafe/SpscArrayQueue;->producerIndex:J

    .line 114
    .local v0, "index":J
    invoke-virtual {p0, v0, v1}, Lrx/internal/util/unsafe/SpscArrayQueue;->calcElementOffset(J)J

    move-result-wide v4

    .line 115
    .local v4, "offset":J
    invoke-virtual {p0, v2, v4, v5}, Lrx/internal/util/unsafe/SpscArrayQueue;->lvElement([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1a

    .line 116
    const/4 v3, 0x0

    .line 120
    :goto_19
    return v3

    .line 118
    :cond_1a
    invoke-virtual {p0, v2, v4, v5, p1}, Lrx/internal/util/unsafe/SpscArrayQueue;->soElement([Ljava/lang/Object;JLjava/lang/Object;)V

    .line 119
    const-wide/16 v6, 0x1

    add-long/2addr v6, v0

    invoke-direct {p0, v6, v7}, Lrx/internal/util/unsafe/SpscArrayQueue;->soProducerIndex(J)V

    .line 120
    const/4 v3, 0x1

    goto :goto_19
.end method

.method public peek()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 150
    .local p0, "this":Lrx/internal/util/unsafe/SpscArrayQueue;, "Lrx/internal/util/unsafe/SpscArrayQueue<TE;>;"
    iget-wide v0, p0, Lrx/internal/util/unsafe/SpscArrayQueue;->consumerIndex:J

    invoke-virtual {p0, v0, v1}, Lrx/internal/util/unsafe/SpscArrayQueue;->calcElementOffset(J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lrx/internal/util/unsafe/SpscArrayQueue;->lvElement(J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public poll()Ljava/lang/Object;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lrx/internal/util/unsafe/SpscArrayQueue;, "Lrx/internal/util/unsafe/SpscArrayQueue<TE;>;"
    const/4 v6, 0x0

    .line 130
    iget-wide v2, p0, Lrx/internal/util/unsafe/SpscArrayQueue;->consumerIndex:J

    .line 131
    .local v2, "index":J
    invoke-virtual {p0, v2, v3}, Lrx/internal/util/unsafe/SpscArrayQueue;->calcElementOffset(J)J

    move-result-wide v4

    .line 133
    .local v4, "offset":J
    iget-object v1, p0, Lrx/internal/util/unsafe/SpscArrayQueue;->buffer:[Ljava/lang/Object;

    .line 134
    .local v1, "lElementBuffer":[Ljava/lang/Object;, "[TE;"
    invoke-virtual {p0, v1, v4, v5}, Lrx/internal/util/unsafe/SpscArrayQueue;->lvElement([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    .line 135
    .local v0, "e":Ljava/lang/Object;, "TE;"
    if-nez v0, :cond_11

    move-object v0, v6

    .line 140
    .end local v0    # "e":Ljava/lang/Object;, "TE;"
    :goto_10
    return-object v0

    .line 138
    .restart local v0    # "e":Ljava/lang/Object;, "TE;"
    :cond_11
    invoke-virtual {p0, v1, v4, v5, v6}, Lrx/internal/util/unsafe/SpscArrayQueue;->soElement([Ljava/lang/Object;JLjava/lang/Object;)V

    .line 139
    const-wide/16 v6, 0x1

    add-long/2addr v6, v2

    invoke-direct {p0, v6, v7}, Lrx/internal/util/unsafe/SpscArrayQueue;->soConsumerIndex(J)V

    goto :goto_10
.end method

.method public size()I
    .registers 9

    .prologue
    .line 160
    .local p0, "this":Lrx/internal/util/unsafe/SpscArrayQueue;, "Lrx/internal/util/unsafe/SpscArrayQueue<TE;>;"
    invoke-direct {p0}, Lrx/internal/util/unsafe/SpscArrayQueue;->lvConsumerIndex()J

    move-result-wide v0

    .line 162
    .local v0, "after":J
    :cond_4
    move-wide v2, v0

    .line 163
    .local v2, "before":J
    invoke-direct {p0}, Lrx/internal/util/unsafe/SpscArrayQueue;->lvProducerIndex()J

    move-result-wide v4

    .line 164
    .local v4, "currentProducerIndex":J
    invoke-direct {p0}, Lrx/internal/util/unsafe/SpscArrayQueue;->lvConsumerIndex()J

    move-result-wide v0

    .line 165
    cmp-long v6, v2, v0

    if-nez v6, :cond_4

    .line 166
    sub-long v6, v4, v0

    long-to-int v6, v6

    return v6
.end method
