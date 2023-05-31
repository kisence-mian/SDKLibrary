.class public final Lcom/tds/common/reactor/util/ActionSubscriber;
.super Lcom/tds/common/reactor/Subscriber;
.source "ActionSubscriber.java"


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
.field final onCompleted:Lcom/tds/common/reactor/functions/Action0;

.field final onError:Lcom/tds/common/reactor/functions/Action1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tds/common/reactor/functions/Action1<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field final onNext:Lcom/tds/common/reactor/functions/Action1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tds/common/reactor/functions/Action1<",
            "-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/tds/common/reactor/functions/Action1;Lcom/tds/common/reactor/functions/Action1;Lcom/tds/common/reactor/functions/Action0;)V
    .registers 4
    .param p3, "onCompleted"    # Lcom/tds/common/reactor/functions/Action0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tds/common/reactor/functions/Action1<",
            "-TT;>;",
            "Lcom/tds/common/reactor/functions/Action1<",
            "Ljava/lang/Throwable;",
            ">;",
            "Lcom/tds/common/reactor/functions/Action0;",
            ")V"
        }
    .end annotation

    .line 32
    .local p0, "this":Lcom/tds/common/reactor/util/ActionSubscriber;, "Lcom/tds/common/reactor/util/ActionSubscriber<TT;>;"
    .local p1, "onNext":Lcom/tds/common/reactor/functions/Action1;, "Lcom/tds/common/reactor/functions/Action1<-TT;>;"
    .local p2, "onError":Lcom/tds/common/reactor/functions/Action1;, "Lcom/tds/common/reactor/functions/Action1<Ljava/lang/Throwable;>;"
    invoke-direct {p0}, Lcom/tds/common/reactor/Subscriber;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/tds/common/reactor/util/ActionSubscriber;->onNext:Lcom/tds/common/reactor/functions/Action1;

    .line 34
    iput-object p2, p0, Lcom/tds/common/reactor/util/ActionSubscriber;->onError:Lcom/tds/common/reactor/functions/Action1;

    .line 35
    iput-object p3, p0, Lcom/tds/common/reactor/util/ActionSubscriber;->onCompleted:Lcom/tds/common/reactor/functions/Action0;

    .line 36
    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 2

    .line 50
    .local p0, "this":Lcom/tds/common/reactor/util/ActionSubscriber;, "Lcom/tds/common/reactor/util/ActionSubscriber<TT;>;"
    iget-object v0, p0, Lcom/tds/common/reactor/util/ActionSubscriber;->onCompleted:Lcom/tds/common/reactor/functions/Action0;

    invoke-interface {v0}, Lcom/tds/common/reactor/functions/Action0;->call()V

    .line 51
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 45
    .local p0, "this":Lcom/tds/common/reactor/util/ActionSubscriber;, "Lcom/tds/common/reactor/util/ActionSubscriber<TT;>;"
    iget-object v0, p0, Lcom/tds/common/reactor/util/ActionSubscriber;->onError:Lcom/tds/common/reactor/functions/Action1;

    invoke-interface {v0, p1}, Lcom/tds/common/reactor/functions/Action1;->call(Ljava/lang/Object;)V

    .line 46
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 40
    .local p0, "this":Lcom/tds/common/reactor/util/ActionSubscriber;, "Lcom/tds/common/reactor/util/ActionSubscriber<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/tds/common/reactor/util/ActionSubscriber;->onNext:Lcom/tds/common/reactor/functions/Action1;

    invoke-interface {v0, p1}, Lcom/tds/common/reactor/functions/Action1;->call(Ljava/lang/Object;)V

    .line 41
    return-void
.end method
