.class public final Lrx/internal/operators/OnSubscribeDetach;
.super Ljava/lang/Object;
.source "OnSubscribeDetach.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OnSubscribeDetach$TerminatedProducer;,
        Lrx/internal/operators/OnSubscribeDetach$DetachProducer;,
        Lrx/internal/operators/OnSubscribeDetach$DetachSubscriber;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final source:Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/Observable;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p0, "this":Lrx/internal/operators/OnSubscribeDetach;, "Lrx/internal/operators/OnSubscribeDetach<TT;>;"
    .local p1, "source":Lrx/Observable;, "Lrx/Observable<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeDetach;->source:Lrx/Observable;

    .line 35
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 29
    .local p0, "this":Lrx/internal/operators/OnSubscribeDetach;, "Lrx/internal/operators/OnSubscribeDetach<TT;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OnSubscribeDetach;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p0, "this":Lrx/internal/operators/OnSubscribeDetach;, "Lrx/internal/operators/OnSubscribeDetach<TT;>;"
    .local p1, "t":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    new-instance v0, Lrx/internal/operators/OnSubscribeDetach$DetachSubscriber;

    invoke-direct {v0, p1}, Lrx/internal/operators/OnSubscribeDetach$DetachSubscriber;-><init>(Lrx/Subscriber;)V

    .line 40
    .local v0, "parent":Lrx/internal/operators/OnSubscribeDetach$DetachSubscriber;, "Lrx/internal/operators/OnSubscribeDetach$DetachSubscriber<TT;>;"
    new-instance v1, Lrx/internal/operators/OnSubscribeDetach$DetachProducer;

    invoke-direct {v1, v0}, Lrx/internal/operators/OnSubscribeDetach$DetachProducer;-><init>(Lrx/internal/operators/OnSubscribeDetach$DetachSubscriber;)V

    .line 42
    .local v1, "producer":Lrx/internal/operators/OnSubscribeDetach$DetachProducer;, "Lrx/internal/operators/OnSubscribeDetach$DetachProducer<TT;>;"
    invoke-virtual {p1, v1}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 43
    invoke-virtual {p1, v1}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    .line 45
    iget-object v2, p0, Lrx/internal/operators/OnSubscribeDetach;->source:Lrx/Observable;

    invoke-virtual {v2, v0}, Lrx/Observable;->unsafeSubscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 46
    return-void
.end method
