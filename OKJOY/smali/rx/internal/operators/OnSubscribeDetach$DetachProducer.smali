.class final Lrx/internal/operators/OnSubscribeDetach$DetachProducer;
.super Ljava/lang/Object;
.source "OnSubscribeDetach.java"

# interfaces
.implements Lrx/Producer;
.implements Lrx/Subscription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OnSubscribeDetach;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DetachProducer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Producer;",
        "Lrx/Subscription;"
    }
.end annotation


# instance fields
.field final parent:Lrx/internal/operators/OnSubscribeDetach$DetachSubscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/OnSubscribeDetach$DetachSubscriber",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/internal/operators/OnSubscribeDetach$DetachSubscriber;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/OnSubscribeDetach$DetachSubscriber",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 142
    .local p0, "this":Lrx/internal/operators/OnSubscribeDetach$DetachProducer;, "Lrx/internal/operators/OnSubscribeDetach$DetachProducer<TT;>;"
    .local p1, "parent":Lrx/internal/operators/OnSubscribeDetach$DetachSubscriber;, "Lrx/internal/operators/OnSubscribeDetach$DetachSubscriber<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeDetach$DetachProducer;->parent:Lrx/internal/operators/OnSubscribeDetach$DetachSubscriber;

    .line 144
    return-void
.end method


# virtual methods
.method public isUnsubscribed()Z
    .registers 2

    .prologue
    .line 153
    .local p0, "this":Lrx/internal/operators/OnSubscribeDetach$DetachProducer;, "Lrx/internal/operators/OnSubscribeDetach$DetachProducer<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeDetach$DetachProducer;->parent:Lrx/internal/operators/OnSubscribeDetach$DetachSubscriber;

    invoke-virtual {v0}, Lrx/internal/operators/OnSubscribeDetach$DetachSubscriber;->isUnsubscribed()Z

    move-result v0

    return v0
.end method

.method public request(J)V
    .registers 4
    .param p1, "n"    # J

    .prologue
    .line 148
    .local p0, "this":Lrx/internal/operators/OnSubscribeDetach$DetachProducer;, "Lrx/internal/operators/OnSubscribeDetach$DetachProducer<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeDetach$DetachProducer;->parent:Lrx/internal/operators/OnSubscribeDetach$DetachSubscriber;

    invoke-virtual {v0, p1, p2}, Lrx/internal/operators/OnSubscribeDetach$DetachSubscriber;->innerRequest(J)V

    .line 149
    return-void
.end method

.method public unsubscribe()V
    .registers 2

    .prologue
    .line 158
    .local p0, "this":Lrx/internal/operators/OnSubscribeDetach$DetachProducer;, "Lrx/internal/operators/OnSubscribeDetach$DetachProducer<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeDetach$DetachProducer;->parent:Lrx/internal/operators/OnSubscribeDetach$DetachSubscriber;

    invoke-virtual {v0}, Lrx/internal/operators/OnSubscribeDetach$DetachSubscriber;->innerUnsubscribe()V

    .line 159
    return-void
.end method
