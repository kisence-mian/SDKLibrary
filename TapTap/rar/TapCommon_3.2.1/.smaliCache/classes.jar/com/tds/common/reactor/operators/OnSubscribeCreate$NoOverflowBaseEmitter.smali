.class abstract Lcom/tds/common/reactor/operators/OnSubscribeCreate$NoOverflowBaseEmitter;
.super Lcom/tds/common/reactor/operators/OnSubscribeCreate$BaseEmitter;
.source "OnSubscribeCreate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tds/common/reactor/operators/OnSubscribeCreate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "NoOverflowBaseEmitter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/tds/common/reactor/operators/OnSubscribeCreate$BaseEmitter<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x3948ba7d6479d0d1L


# direct methods
.method public constructor <init>(Lcom/tds/common/reactor/Subscriber;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tds/common/reactor/Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    .line 189
    .local p0, "this":Lcom/tds/common/reactor/operators/OnSubscribeCreate$NoOverflowBaseEmitter;, "Lcom/tds/common/reactor/operators/OnSubscribeCreate$NoOverflowBaseEmitter<TT;>;"
    .local p1, "actual":Lcom/tds/common/reactor/Subscriber;, "Lcom/tds/common/reactor/Subscriber<-TT;>;"
    invoke-direct {p0, p1}, Lcom/tds/common/reactor/operators/OnSubscribeCreate$BaseEmitter;-><init>(Lcom/tds/common/reactor/Subscriber;)V

    .line 190
    return-void
.end method


# virtual methods
.method public onNext(Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 194
    .local p0, "this":Lcom/tds/common/reactor/operators/OnSubscribeCreate$NoOverflowBaseEmitter;, "Lcom/tds/common/reactor/operators/OnSubscribeCreate$NoOverflowBaseEmitter<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/tds/common/reactor/operators/OnSubscribeCreate$NoOverflowBaseEmitter;->actual:Lcom/tds/common/reactor/Subscriber;

    invoke-virtual {v0}, Lcom/tds/common/reactor/Subscriber;->isUnsubscribed()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 195
    return-void

    .line 198
    :cond_9
    invoke-virtual {p0}, Lcom/tds/common/reactor/operators/OnSubscribeCreate$NoOverflowBaseEmitter;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1e

    .line 199
    iget-object v0, p0, Lcom/tds/common/reactor/operators/OnSubscribeCreate$NoOverflowBaseEmitter;->actual:Lcom/tds/common/reactor/Subscriber;

    invoke-virtual {v0, p1}, Lcom/tds/common/reactor/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 200
    const-wide/16 v0, 0x1

    invoke-static {p0, v0, v1}, Lcom/tds/common/reactor/operators/BackpressureUtils;->produced(Ljava/util/concurrent/atomic/AtomicLong;J)J

    goto :goto_21

    .line 202
    :cond_1e
    invoke-virtual {p0}, Lcom/tds/common/reactor/operators/OnSubscribeCreate$NoOverflowBaseEmitter;->onOverflow()V

    .line 204
    :goto_21
    return-void
.end method

.method abstract onOverflow()V
.end method
