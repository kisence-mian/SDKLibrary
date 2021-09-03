.class public Lcom/tds/common/reactor/subjects/SerializedSubject;
.super Lcom/tds/common/reactor/subjects/Subject;
.source "SerializedSubject.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/tds/common/reactor/subjects/Subject<",
        "TT;TR;>;"
    }
.end annotation


# instance fields
.field private final actual:Lcom/tds/common/reactor/subjects/Subject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tds/common/reactor/subjects/Subject<",
            "TT;TR;>;"
        }
    .end annotation
.end field

.field private final observer:Lcom/tds/common/reactor/observers/SerializedObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tds/common/reactor/observers/SerializedObserver<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/tds/common/reactor/subjects/Subject;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tds/common/reactor/subjects/Subject<",
            "TT;TR;>;)V"
        }
    .end annotation

    .line 11
    .local p0, "this":Lcom/tds/common/reactor/subjects/SerializedSubject;, "Lcom/tds/common/reactor/subjects/SerializedSubject<TT;TR;>;"
    .local p1, "actual":Lcom/tds/common/reactor/subjects/Subject;, "Lcom/tds/common/reactor/subjects/Subject<TT;TR;>;"
    new-instance v0, Lcom/tds/common/reactor/subjects/SerializedSubject$1;

    invoke-direct {v0, p1}, Lcom/tds/common/reactor/subjects/SerializedSubject$1;-><init>(Lcom/tds/common/reactor/subjects/Subject;)V

    invoke-direct {p0, v0}, Lcom/tds/common/reactor/subjects/Subject;-><init>(Lcom/tds/common/reactor/Observable$OnSubscribe;)V

    .line 17
    iput-object p1, p0, Lcom/tds/common/reactor/subjects/SerializedSubject;->actual:Lcom/tds/common/reactor/subjects/Subject;

    .line 18
    new-instance v0, Lcom/tds/common/reactor/observers/SerializedObserver;

    invoke-direct {v0, p1}, Lcom/tds/common/reactor/observers/SerializedObserver;-><init>(Lcom/tds/common/reactor/Observer;)V

    iput-object v0, p0, Lcom/tds/common/reactor/subjects/SerializedSubject;->observer:Lcom/tds/common/reactor/observers/SerializedObserver;

    .line 19
    return-void
.end method


# virtual methods
.method public hasObservers()Z
    .registers 2

    .line 38
    .local p0, "this":Lcom/tds/common/reactor/subjects/SerializedSubject;, "Lcom/tds/common/reactor/subjects/SerializedSubject<TT;TR;>;"
    iget-object v0, p0, Lcom/tds/common/reactor/subjects/SerializedSubject;->actual:Lcom/tds/common/reactor/subjects/Subject;

    invoke-virtual {v0}, Lcom/tds/common/reactor/subjects/Subject;->hasObservers()Z

    move-result v0

    return v0
.end method

.method public onCompleted()V
    .registers 2

    .line 23
    .local p0, "this":Lcom/tds/common/reactor/subjects/SerializedSubject;, "Lcom/tds/common/reactor/subjects/SerializedSubject<TT;TR;>;"
    iget-object v0, p0, Lcom/tds/common/reactor/subjects/SerializedSubject;->observer:Lcom/tds/common/reactor/observers/SerializedObserver;

    invoke-virtual {v0}, Lcom/tds/common/reactor/observers/SerializedObserver;->onCompleted()V

    .line 24
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 28
    .local p0, "this":Lcom/tds/common/reactor/subjects/SerializedSubject;, "Lcom/tds/common/reactor/subjects/SerializedSubject<TT;TR;>;"
    iget-object v0, p0, Lcom/tds/common/reactor/subjects/SerializedSubject;->observer:Lcom/tds/common/reactor/observers/SerializedObserver;

    invoke-virtual {v0, p1}, Lcom/tds/common/reactor/observers/SerializedObserver;->onError(Ljava/lang/Throwable;)V

    .line 29
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 33
    .local p0, "this":Lcom/tds/common/reactor/subjects/SerializedSubject;, "Lcom/tds/common/reactor/subjects/SerializedSubject<TT;TR;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/tds/common/reactor/subjects/SerializedSubject;->observer:Lcom/tds/common/reactor/observers/SerializedObserver;

    invoke-virtual {v0, p1}, Lcom/tds/common/reactor/observers/SerializedObserver;->onNext(Ljava/lang/Object;)V

    .line 34
    return-void
.end method
