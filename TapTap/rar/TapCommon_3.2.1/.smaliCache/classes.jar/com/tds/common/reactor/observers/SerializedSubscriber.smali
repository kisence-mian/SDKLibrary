.class public Lcom/tds/common/reactor/observers/SerializedSubscriber;
.super Lcom/tds/common/reactor/Subscriber;
.source "SerializedSubscriber.java"


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
.field private final s:Lcom/tds/common/reactor/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tds/common/reactor/Observer<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/tds/common/reactor/Subscriber;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tds/common/reactor/Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    .line 11
    .local p0, "this":Lcom/tds/common/reactor/observers/SerializedSubscriber;, "Lcom/tds/common/reactor/observers/SerializedSubscriber<TT;>;"
    .local p1, "s":Lcom/tds/common/reactor/Subscriber;, "Lcom/tds/common/reactor/Subscriber<-TT;>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/tds/common/reactor/observers/SerializedSubscriber;-><init>(Lcom/tds/common/reactor/Subscriber;Z)V

    .line 12
    return-void
.end method

.method public constructor <init>(Lcom/tds/common/reactor/Subscriber;Z)V
    .registers 4
    .param p2, "shareSubscriptions"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tds/common/reactor/Subscriber<",
            "-TT;>;Z)V"
        }
    .end annotation

    .line 25
    .local p0, "this":Lcom/tds/common/reactor/observers/SerializedSubscriber;, "Lcom/tds/common/reactor/observers/SerializedSubscriber<TT;>;"
    .local p1, "s":Lcom/tds/common/reactor/Subscriber;, "Lcom/tds/common/reactor/Subscriber<-TT;>;"
    invoke-direct {p0, p1, p2}, Lcom/tds/common/reactor/Subscriber;-><init>(Lcom/tds/common/reactor/Subscriber;Z)V

    .line 26
    new-instance v0, Lcom/tds/common/reactor/observers/SerializedObserver;

    invoke-direct {v0, p1}, Lcom/tds/common/reactor/observers/SerializedObserver;-><init>(Lcom/tds/common/reactor/Observer;)V

    iput-object v0, p0, Lcom/tds/common/reactor/observers/SerializedSubscriber;->s:Lcom/tds/common/reactor/Observer;

    .line 27
    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 2

    .line 36
    .local p0, "this":Lcom/tds/common/reactor/observers/SerializedSubscriber;, "Lcom/tds/common/reactor/observers/SerializedSubscriber<TT;>;"
    iget-object v0, p0, Lcom/tds/common/reactor/observers/SerializedSubscriber;->s:Lcom/tds/common/reactor/Observer;

    invoke-interface {v0}, Lcom/tds/common/reactor/Observer;->onCompleted()V

    .line 37
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 50
    .local p0, "this":Lcom/tds/common/reactor/observers/SerializedSubscriber;, "Lcom/tds/common/reactor/observers/SerializedSubscriber<TT;>;"
    iget-object v0, p0, Lcom/tds/common/reactor/observers/SerializedSubscriber;->s:Lcom/tds/common/reactor/Observer;

    invoke-interface {v0, p1}, Lcom/tds/common/reactor/Observer;->onError(Ljava/lang/Throwable;)V

    .line 51
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 66
    .local p0, "this":Lcom/tds/common/reactor/observers/SerializedSubscriber;, "Lcom/tds/common/reactor/observers/SerializedSubscriber<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/tds/common/reactor/observers/SerializedSubscriber;->s:Lcom/tds/common/reactor/Observer;

    invoke-interface {v0, p1}, Lcom/tds/common/reactor/Observer;->onNext(Ljava/lang/Object;)V

    .line 67
    return-void
.end method
