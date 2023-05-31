.class public final Lrx/internal/util/ObserverSubscriber;
.super Lrx/Subscriber;
.source "ObserverSubscriber.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/Subscriber",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final observer:Lrx/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observer",
            "<-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/Observer;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observer",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 28
    .local p0, "this":Lrx/internal/util/ObserverSubscriber;, "Lrx/internal/util/ObserverSubscriber<TT;>;"
    .local p1, "observer":Lrx/Observer;, "Lrx/Observer<-TT;>;"
    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 29
    iput-object p1, p0, Lrx/internal/util/ObserverSubscriber;->observer:Lrx/Observer;

    .line 30
    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 2

    .prologue
    .line 44
    .local p0, "this":Lrx/internal/util/ObserverSubscriber;, "Lrx/internal/util/ObserverSubscriber<TT;>;"
    iget-object v0, p0, Lrx/internal/util/ObserverSubscriber;->observer:Lrx/Observer;

    invoke-interface {v0}, Lrx/Observer;->onCompleted()V

    .line 45
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 39
    .local p0, "this":Lrx/internal/util/ObserverSubscriber;, "Lrx/internal/util/ObserverSubscriber<TT;>;"
    iget-object v0, p0, Lrx/internal/util/ObserverSubscriber;->observer:Lrx/Observer;

    invoke-interface {v0, p1}, Lrx/Observer;->onError(Ljava/lang/Throwable;)V

    .line 40
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p0, "this":Lrx/internal/util/ObserverSubscriber;, "Lrx/internal/util/ObserverSubscriber<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/internal/util/ObserverSubscriber;->observer:Lrx/Observer;

    invoke-interface {v0, p1}, Lrx/Observer;->onNext(Ljava/lang/Object;)V

    .line 35
    return-void
.end method
