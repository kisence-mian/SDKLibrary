.class public final Lrx/internal/util/ActionSubscriber;
.super Lrx/Subscriber;
.source "ActionSubscriber.java"


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
.field final onCompleted:Lrx/functions/Action0;

.field final onError:Lrx/functions/Action1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Action1",
            "<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field final onNext:Lrx/functions/Action1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Action1",
            "<-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/functions/Action1;Lrx/functions/Action1;Lrx/functions/Action0;)V
    .registers 4
    .param p3, "onCompleted"    # Lrx/functions/Action0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Action1",
            "<-TT;>;",
            "Lrx/functions/Action1",
            "<",
            "Ljava/lang/Throwable;",
            ">;",
            "Lrx/functions/Action0;",
            ")V"
        }
    .end annotation

    .prologue
    .line 31
    .local p0, "this":Lrx/internal/util/ActionSubscriber;, "Lrx/internal/util/ActionSubscriber<TT;>;"
    .local p1, "onNext":Lrx/functions/Action1;, "Lrx/functions/Action1<-TT;>;"
    .local p2, "onError":Lrx/functions/Action1;, "Lrx/functions/Action1<Ljava/lang/Throwable;>;"
    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 32
    iput-object p1, p0, Lrx/internal/util/ActionSubscriber;->onNext:Lrx/functions/Action1;

    .line 33
    iput-object p2, p0, Lrx/internal/util/ActionSubscriber;->onError:Lrx/functions/Action1;

    .line 34
    iput-object p3, p0, Lrx/internal/util/ActionSubscriber;->onCompleted:Lrx/functions/Action0;

    .line 35
    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 2

    .prologue
    .line 49
    .local p0, "this":Lrx/internal/util/ActionSubscriber;, "Lrx/internal/util/ActionSubscriber<TT;>;"
    iget-object v0, p0, Lrx/internal/util/ActionSubscriber;->onCompleted:Lrx/functions/Action0;

    invoke-interface {v0}, Lrx/functions/Action0;->call()V

    .line 50
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 44
    .local p0, "this":Lrx/internal/util/ActionSubscriber;, "Lrx/internal/util/ActionSubscriber<TT;>;"
    iget-object v0, p0, Lrx/internal/util/ActionSubscriber;->onError:Lrx/functions/Action1;

    invoke-interface {v0, p1}, Lrx/functions/Action1;->call(Ljava/lang/Object;)V

    .line 45
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
    .line 39
    .local p0, "this":Lrx/internal/util/ActionSubscriber;, "Lrx/internal/util/ActionSubscriber<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/internal/util/ActionSubscriber;->onNext:Lrx/functions/Action1;

    invoke-interface {v0, p1}, Lrx/functions/Action1;->call(Ljava/lang/Object;)V

    .line 40
    return-void
.end method
