.class public abstract Lcom/tds/common/reactor/subjects/Subject;
.super Lcom/tds/common/reactor/Observable;
.source "Subject.java"

# interfaces
.implements Lcom/tds/common/reactor/Observer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/tds/common/reactor/Observable<",
        "TR;>;",
        "Lcom/tds/common/reactor/Observer<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/tds/common/reactor/Observable$OnSubscribe;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tds/common/reactor/Observable$OnSubscribe<",
            "TR;>;)V"
        }
    .end annotation

    .line 27
    .local p0, "this":Lcom/tds/common/reactor/subjects/Subject;, "Lcom/tds/common/reactor/subjects/Subject<TT;TR;>;"
    .local p1, "onSubscribe":Lcom/tds/common/reactor/Observable$OnSubscribe;, "Lcom/tds/common/reactor/Observable$OnSubscribe<TR;>;"
    invoke-direct {p0, p1}, Lcom/tds/common/reactor/Observable;-><init>(Lcom/tds/common/reactor/Observable$OnSubscribe;)V

    return-void
.end method


# virtual methods
.method public abstract hasObservers()Z
.end method

.method public final toSerialized()Lcom/tds/common/reactor/subjects/SerializedSubject;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/tds/common/reactor/subjects/SerializedSubject<",
            "TT;TR;>;"
        }
    .end annotation

    .line 37
    .local p0, "this":Lcom/tds/common/reactor/subjects/Subject;, "Lcom/tds/common/reactor/subjects/Subject<TT;TR;>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/tds/common/reactor/subjects/SerializedSubject;

    if-ne v0, v1, :cond_c

    .line 38
    move-object v0, p0

    check-cast v0, Lcom/tds/common/reactor/subjects/SerializedSubject;

    return-object v0

    .line 40
    :cond_c
    new-instance v0, Lcom/tds/common/reactor/subjects/SerializedSubject;

    invoke-direct {v0, p0}, Lcom/tds/common/reactor/subjects/SerializedSubject;-><init>(Lcom/tds/common/reactor/subjects/Subject;)V

    return-object v0
.end method
