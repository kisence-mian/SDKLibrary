.class public final Lrx/internal/operators/OnSubscribeCollect;
.super Ljava/lang/Object;
.source "OnSubscribeCollect.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OnSubscribeCollect$CollectSubscriber;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe",
        "<TR;>;"
    }
.end annotation


# instance fields
.field final collectionFactory:Lrx/functions/Func0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func0",
            "<TR;>;"
        }
    .end annotation
.end field

.field final collector:Lrx/functions/Action2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Action2",
            "<TR;-TT;>;"
        }
    .end annotation
.end field

.field final source:Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/Observable;Lrx/functions/Func0;Lrx/functions/Action2;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable",
            "<TT;>;",
            "Lrx/functions/Func0",
            "<TR;>;",
            "Lrx/functions/Action2",
            "<TR;-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p0, "this":Lrx/internal/operators/OnSubscribeCollect;, "Lrx/internal/operators/OnSubscribeCollect<TT;TR;>;"
    .local p1, "source":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p2, "collectionFactory":Lrx/functions/Func0;, "Lrx/functions/Func0<TR;>;"
    .local p3, "collector":Lrx/functions/Action2;, "Lrx/functions/Action2<TR;-TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeCollect;->source:Lrx/Observable;

    .line 34
    iput-object p2, p0, Lrx/internal/operators/OnSubscribeCollect;->collectionFactory:Lrx/functions/Func0;

    .line 35
    iput-object p3, p0, Lrx/internal/operators/OnSubscribeCollect;->collector:Lrx/functions/Action2;

    .line 36
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 24
    .local p0, "this":Lrx/internal/operators/OnSubscribeCollect;, "Lrx/internal/operators/OnSubscribeCollect<TT;TR;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OnSubscribeCollect;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TR;>;)V"
        }
    .end annotation

    .prologue
    .line 43
    .local p0, "this":Lrx/internal/operators/OnSubscribeCollect;, "Lrx/internal/operators/OnSubscribeCollect<TT;TR;>;"
    .local p1, "t":Lrx/Subscriber;, "Lrx/Subscriber<-TR;>;"
    :try_start_0
    iget-object v2, p0, Lrx/internal/operators/OnSubscribeCollect;->collectionFactory:Lrx/functions/Func0;

    invoke-interface {v2}, Lrx/functions/Func0;->call()Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5} :catch_13

    move-result-object v1

    .line 50
    .local v1, "initialValue":Ljava/lang/Object;, "TR;"
    new-instance v2, Lrx/internal/operators/OnSubscribeCollect$CollectSubscriber;

    iget-object v3, p0, Lrx/internal/operators/OnSubscribeCollect;->collector:Lrx/functions/Action2;

    invoke-direct {v2, p1, v1, v3}, Lrx/internal/operators/OnSubscribeCollect$CollectSubscriber;-><init>(Lrx/Subscriber;Ljava/lang/Object;Lrx/functions/Action2;)V

    iget-object v3, p0, Lrx/internal/operators/OnSubscribeCollect;->source:Lrx/Observable;

    invoke-virtual {v2, v3}, Lrx/internal/operators/OnSubscribeCollect$CollectSubscriber;->subscribeTo(Lrx/Observable;)V

    .line 51
    .end local v1    # "initialValue":Ljava/lang/Object;, "TR;"
    :goto_12
    return-void

    .line 44
    :catch_13
    move-exception v0

    .line 45
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-static {v0}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 46
    invoke-virtual {p1, v0}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_12
.end method
