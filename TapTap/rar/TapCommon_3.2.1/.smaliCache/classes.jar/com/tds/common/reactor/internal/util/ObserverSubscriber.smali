.class public Lcom/tds/common/reactor/internal/util/ObserverSubscriber;
.super Lcom/tds/common/reactor/Subscriber;
.source "ObserverSubscriber.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/tds/common/reactor/Subscriber<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final observer:Lcom/tds/common/reactor/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tds/common/reactor/Observer<",
            "-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/tds/common/reactor/Observer;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tds/common/reactor/Observer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 9
    .local p0, "this":Lcom/tds/common/reactor/internal/util/ObserverSubscriber;, "Lcom/tds/common/reactor/internal/util/ObserverSubscriber<TT;>;"
    .local p1, "observer":Lcom/tds/common/reactor/Observer;, "Lcom/tds/common/reactor/Observer<-TT;>;"
    invoke-direct {p0}, Lcom/tds/common/reactor/Subscriber;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/tds/common/reactor/internal/util/ObserverSubscriber;->observer:Lcom/tds/common/reactor/Observer;

    .line 11
    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 2

    .line 25
    .local p0, "this":Lcom/tds/common/reactor/internal/util/ObserverSubscriber;, "Lcom/tds/common/reactor/internal/util/ObserverSubscriber<TT;>;"
    iget-object v0, p0, Lcom/tds/common/reactor/internal/util/ObserverSubscriber;->observer:Lcom/tds/common/reactor/Observer;

    invoke-interface {v0}, Lcom/tds/common/reactor/Observer;->onCompleted()V

    .line 26
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 20
    .local p0, "this":Lcom/tds/common/reactor/internal/util/ObserverSubscriber;, "Lcom/tds/common/reactor/internal/util/ObserverSubscriber<TT;>;"
    iget-object v0, p0, Lcom/tds/common/reactor/internal/util/ObserverSubscriber;->observer:Lcom/tds/common/reactor/Observer;

    invoke-interface {v0, p1}, Lcom/tds/common/reactor/Observer;->onError(Ljava/lang/Throwable;)V

    .line 21
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 15
    .local p0, "this":Lcom/tds/common/reactor/internal/util/ObserverSubscriber;, "Lcom/tds/common/reactor/internal/util/ObserverSubscriber<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/tds/common/reactor/internal/util/ObserverSubscriber;->observer:Lcom/tds/common/reactor/Observer;

    invoke-interface {v0, p1}, Lcom/tds/common/reactor/Observer;->onNext(Ljava/lang/Object;)V

    .line 16
    return-void
.end method
