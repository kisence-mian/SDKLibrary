.class final Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeProducer;
.super Ljava/util/concurrent/atomic/AtomicLong;
.source "OperatorMerge.java"

# interfaces
.implements Lcom/tds/common/reactor/Producer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tds/common/reactor/internal/operators/OperatorMerge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MergeProducer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicLong;",
        "Lcom/tds/common/reactor/Producer;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x10da57706b0ad46fL


# instance fields
.field final subscriber:Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber<",
            "TT;>;)V"
        }
    .end annotation

    .line 133
    .local p0, "this":Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeProducer;, "Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeProducer<TT;>;"
    .local p1, "subscriber":Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;, "Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber<TT;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 134
    iput-object p1, p0, Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeProducer;->subscriber:Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;

    .line 135
    return-void
.end method


# virtual methods
.method public produced(I)J
    .registers 4
    .param p1, "n"    # I

    .line 151
    .local p0, "this":Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeProducer;, "Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeProducer<TT;>;"
    neg-int v0, p1

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeProducer;->addAndGet(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public request(J)V
    .registers 7
    .param p1, "n"    # J

    .line 139
    .local p0, "this":Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeProducer;, "Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeProducer<TT;>;"
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_1d

    .line 140
    invoke-virtual {p0}, Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeProducer;->get()J

    move-result-wide v0

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-nez v0, :cond_14

    .line 141
    return-void

    .line 143
    :cond_14
    invoke-static {p0, p1, p2}, Lcom/tds/common/reactor/operators/BackpressureUtils;->getAndAddRequest(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 144
    iget-object v0, p0, Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeProducer;->subscriber:Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;

    invoke-virtual {v0}, Lcom/tds/common/reactor/internal/operators/OperatorMerge$MergeSubscriber;->emit()V

    goto :goto_21

    .line 145
    :cond_1d
    cmp-long v0, p1, v0

    if-ltz v0, :cond_22

    .line 148
    :goto_21
    return-void

    .line 146
    :cond_22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "n >= 0 required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
