.class final Lcom/tds/common/reactor/operators/OnSubscribeCreate$NoneEmitter;
.super Lcom/tds/common/reactor/operators/OnSubscribeCreate$BaseEmitter;
.source "OnSubscribeCreate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tds/common/reactor/operators/OnSubscribeCreate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "NoneEmitter"
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
.field private static final serialVersionUID:J = 0x34699b00190316f1L


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

    .line 162
    .local p0, "this":Lcom/tds/common/reactor/operators/OnSubscribeCreate$NoneEmitter;, "Lcom/tds/common/reactor/operators/OnSubscribeCreate$NoneEmitter<TT;>;"
    .local p1, "actual":Lcom/tds/common/reactor/Subscriber;, "Lcom/tds/common/reactor/Subscriber<-TT;>;"
    invoke-direct {p0, p1}, Lcom/tds/common/reactor/operators/OnSubscribeCreate$BaseEmitter;-><init>(Lcom/tds/common/reactor/Subscriber;)V

    .line 163
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

    .line 167
    .local p0, "this":Lcom/tds/common/reactor/operators/OnSubscribeCreate$NoneEmitter;, "Lcom/tds/common/reactor/operators/OnSubscribeCreate$NoneEmitter<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/tds/common/reactor/operators/OnSubscribeCreate$NoneEmitter;->actual:Lcom/tds/common/reactor/Subscriber;

    invoke-virtual {v0}, Lcom/tds/common/reactor/Subscriber;->isUnsubscribed()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 168
    return-void

    .line 171
    :cond_9
    iget-object v0, p0, Lcom/tds/common/reactor/operators/OnSubscribeCreate$NoneEmitter;->actual:Lcom/tds/common/reactor/Subscriber;

    invoke-virtual {v0, p1}, Lcom/tds/common/reactor/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 174
    :goto_e
    invoke-virtual {p0}, Lcom/tds/common/reactor/operators/OnSubscribeCreate$NoneEmitter;->get()J

    move-result-wide v0

    .line 175
    .local v0, "r":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_24

    const-wide/16 v2, 0x1

    sub-long v2, v0, v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/tds/common/reactor/operators/OnSubscribeCreate$NoneEmitter;->compareAndSet(JJ)Z

    move-result v2

    if-eqz v2, :cond_23

    goto :goto_24

    .line 178
    .end local v0    # "r":J
    :cond_23
    goto :goto_e

    .line 176
    .restart local v0    # "r":J
    :cond_24
    :goto_24
    return-void
.end method
