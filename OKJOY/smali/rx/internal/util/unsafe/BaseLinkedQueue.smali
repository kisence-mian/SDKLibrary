.class abstract Lrx/internal/util/unsafe/BaseLinkedQueue;
.super Lrx/internal/util/unsafe/BaseLinkedQueueConsumerNodeRef;
.source "BaseLinkedQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/internal/util/unsafe/BaseLinkedQueueConsumerNodeRef",
        "<TE;>;"
    }
.end annotation

.annotation build Lrx/internal/util/SuppressAnimalSniffer;
.end annotation


# instance fields
.field p00:J

.field p01:J

.field p02:J

.field p03:J

.field p04:J

.field p05:J

.field p06:J

.field p07:J

.field p30:J

.field p31:J

.field p32:J

.field p33:J

.field p34:J

.field p35:J

.field p36:J

.field p37:J


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 81
    .local p0, "this":Lrx/internal/util/unsafe/BaseLinkedQueue;, "Lrx/internal/util/unsafe/BaseLinkedQueue<TE;>;"
    invoke-direct {p0}, Lrx/internal/util/unsafe/BaseLinkedQueueConsumerNodeRef;-><init>()V

    return-void
.end method


# virtual methods
.method public final isEmpty()Z
    .registers 3

    .prologue
    .line 128
    .local p0, "this":Lrx/internal/util/unsafe/BaseLinkedQueue;, "Lrx/internal/util/unsafe/BaseLinkedQueue<TE;>;"
    invoke-virtual {p0}, Lrx/internal/util/unsafe/BaseLinkedQueue;->lvConsumerNode()Lrx/internal/util/atomic/LinkedQueueNode;

    move-result-object v0

    invoke-virtual {p0}, Lrx/internal/util/unsafe/BaseLinkedQueue;->lvProducerNode()Lrx/internal/util/atomic/LinkedQueueNode;

    move-result-object v1

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public final iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 88
    .local p0, "this":Lrx/internal/util/unsafe/BaseLinkedQueue;, "Lrx/internal/util/unsafe/BaseLinkedQueue<TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final size()I
    .registers 6

    .prologue
    .line 103
    .local p0, "this":Lrx/internal/util/unsafe/BaseLinkedQueue;, "Lrx/internal/util/unsafe/BaseLinkedQueue<TE;>;"
    invoke-virtual {p0}, Lrx/internal/util/unsafe/BaseLinkedQueue;->lvConsumerNode()Lrx/internal/util/atomic/LinkedQueueNode;

    move-result-object v0

    .line 104
    .local v0, "chaserNode":Lrx/internal/util/atomic/LinkedQueueNode;, "Lrx/internal/util/atomic/LinkedQueueNode<TE;>;"
    invoke-virtual {p0}, Lrx/internal/util/unsafe/BaseLinkedQueue;->lvProducerNode()Lrx/internal/util/atomic/LinkedQueueNode;

    move-result-object v2

    .line 105
    .local v2, "producerNode":Lrx/internal/util/atomic/LinkedQueueNode;, "Lrx/internal/util/atomic/LinkedQueueNode<TE;>;"
    const/4 v3, 0x0

    .line 107
    .local v3, "size":I
    :goto_9
    if-eq v0, v2, :cond_1a

    const v4, 0x7fffffff

    if-ge v3, v4, :cond_1a

    .line 109
    :cond_10
    invoke-virtual {v0}, Lrx/internal/util/atomic/LinkedQueueNode;->lvNext()Lrx/internal/util/atomic/LinkedQueueNode;

    move-result-object v1

    .local v1, "next":Lrx/internal/util/atomic/LinkedQueueNode;, "Lrx/internal/util/atomic/LinkedQueueNode<TE;>;"
    if-eqz v1, :cond_10

    .line 110
    move-object v0, v1

    .line 111
    add-int/lit8 v3, v3, 0x1

    .line 112
    goto :goto_9

    .line 113
    .end local v1    # "next":Lrx/internal/util/atomic/LinkedQueueNode;, "Lrx/internal/util/atomic/LinkedQueueNode<TE;>;"
    :cond_1a
    return v3
.end method
