.class public final Lcom/tds/common/reactor/subjects/PublishSubject;
.super Lcom/tds/common/reactor/subjects/Subject;
.source "PublishSubject.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectProducer;,
        Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/tds/common/reactor/subjects/Subject<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field final state:Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectState<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectState;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectState<",
            "TT;>;)V"
        }
    .end annotation

    .line 31
    .local p0, "this":Lcom/tds/common/reactor/subjects/PublishSubject;, "Lcom/tds/common/reactor/subjects/PublishSubject<TT;>;"
    .local p1, "state":Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectState;, "Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectState<TT;>;"
    invoke-direct {p0, p1}, Lcom/tds/common/reactor/subjects/Subject;-><init>(Lcom/tds/common/reactor/Observable$OnSubscribe;)V

    .line 32
    iput-object p1, p0, Lcom/tds/common/reactor/subjects/PublishSubject;->state:Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectState;

    .line 33
    return-void
.end method

.method public static create()Lcom/tds/common/reactor/subjects/PublishSubject;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/tds/common/reactor/subjects/PublishSubject<",
            "TT;>;"
        }
    .end annotation

    .line 27
    new-instance v0, Lcom/tds/common/reactor/subjects/PublishSubject;

    new-instance v1, Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectState;

    invoke-direct {v1}, Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectState;-><init>()V

    invoke-direct {v0, v1}, Lcom/tds/common/reactor/subjects/PublishSubject;-><init>(Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectState;)V

    return-object v0
.end method


# virtual methods
.method public getThrowable()Ljava/lang/Throwable;
    .registers 3

    .line 79
    .local p0, "this":Lcom/tds/common/reactor/subjects/PublishSubject;, "Lcom/tds/common/reactor/subjects/PublishSubject<TT;>;"
    iget-object v0, p0, Lcom/tds/common/reactor/subjects/PublishSubject;->state:Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectState;

    invoke-virtual {v0}, Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectState;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectState;->TERMINATED:[Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectProducer;

    if-ne v0, v1, :cond_f

    .line 80
    iget-object v0, p0, Lcom/tds/common/reactor/subjects/PublishSubject;->state:Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectState;

    iget-object v0, v0, Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectState;->error:Ljava/lang/Throwable;

    return-object v0

    .line 82
    :cond_f
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasCompleted()Z
    .registers 3

    .line 70
    .local p0, "this":Lcom/tds/common/reactor/subjects/PublishSubject;, "Lcom/tds/common/reactor/subjects/PublishSubject<TT;>;"
    iget-object v0, p0, Lcom/tds/common/reactor/subjects/PublishSubject;->state:Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectState;

    invoke-virtual {v0}, Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectState;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectState;->TERMINATED:[Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectProducer;

    if-ne v0, v1, :cond_12

    iget-object v0, p0, Lcom/tds/common/reactor/subjects/PublishSubject;->state:Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectState;

    iget-object v0, v0, Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectState;->error:Ljava/lang/Throwable;

    if-nez v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public hasObservers()Z
    .registers 2

    .line 53
    .local p0, "this":Lcom/tds/common/reactor/subjects/PublishSubject;, "Lcom/tds/common/reactor/subjects/PublishSubject<TT;>;"
    iget-object v0, p0, Lcom/tds/common/reactor/subjects/PublishSubject;->state:Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectState;

    invoke-virtual {v0}, Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectState;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectProducer;

    array-length v0, v0

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method public hasThrowable()Z
    .registers 3

    .line 62
    .local p0, "this":Lcom/tds/common/reactor/subjects/PublishSubject;, "Lcom/tds/common/reactor/subjects/PublishSubject<TT;>;"
    iget-object v0, p0, Lcom/tds/common/reactor/subjects/PublishSubject;->state:Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectState;

    invoke-virtual {v0}, Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectState;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectState;->TERMINATED:[Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectProducer;

    if-ne v0, v1, :cond_12

    iget-object v0, p0, Lcom/tds/common/reactor/subjects/PublishSubject;->state:Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectState;

    iget-object v0, v0, Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectState;->error:Ljava/lang/Throwable;

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public onCompleted()V
    .registers 2

    .line 47
    .local p0, "this":Lcom/tds/common/reactor/subjects/PublishSubject;, "Lcom/tds/common/reactor/subjects/PublishSubject<TT;>;"
    iget-object v0, p0, Lcom/tds/common/reactor/subjects/PublishSubject;->state:Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectState;

    invoke-virtual {v0}, Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectState;->onCompleted()V

    .line 48
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 42
    .local p0, "this":Lcom/tds/common/reactor/subjects/PublishSubject;, "Lcom/tds/common/reactor/subjects/PublishSubject<TT;>;"
    iget-object v0, p0, Lcom/tds/common/reactor/subjects/PublishSubject;->state:Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectState;

    invoke-virtual {v0, p1}, Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectState;->onError(Ljava/lang/Throwable;)V

    .line 43
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 37
    .local p0, "this":Lcom/tds/common/reactor/subjects/PublishSubject;, "Lcom/tds/common/reactor/subjects/PublishSubject<TT;>;"
    .local p1, "v":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/tds/common/reactor/subjects/PublishSubject;->state:Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectState;

    invoke-virtual {v0, p1}, Lcom/tds/common/reactor/subjects/PublishSubject$PublishSubjectState;->onNext(Ljava/lang/Object;)V

    .line 38
    return-void
.end method
