.class public abstract Lcom/tds/common/reactor/plugins/RxJavaObservableExecutionHook;
.super Ljava/lang/Object;
.source "RxJavaObservableExecutionHook.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Lcom/tds/common/reactor/Observable$OnSubscribe;)Lcom/tds/common/reactor/Observable$OnSubscribe;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/tds/common/reactor/Observable$OnSubscribe<",
            "TT;>;)",
            "Lcom/tds/common/reactor/Observable$OnSubscribe<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 42
    .local p1, "f":Lcom/tds/common/reactor/Observable$OnSubscribe;, "Lcom/tds/common/reactor/Observable$OnSubscribe<TT;>;"
    return-object p1
.end method

.method public onLift(Lcom/tds/common/reactor/Observable$Operator;)Lcom/tds/common/reactor/Observable$Operator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/tds/common/reactor/Observable$Operator<",
            "+TR;-TT;>;)",
            "Lcom/tds/common/reactor/Observable$Operator<",
            "+TR;-TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 77
    .local p1, "lift":Lcom/tds/common/reactor/Observable$Operator;, "Lcom/tds/common/reactor/Observable$Operator<+TR;-TT;>;"
    return-object p1
.end method

.method public onSubscribeError(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .registers 2
    .param p1, "e"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Throwable;",
            ")",
            "Ljava/lang/Throwable;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 61
    return-object p1
.end method

.method public onSubscribeReturn(Lcom/tds/common/reactor/Subscription;)Lcom/tds/common/reactor/Subscription;
    .registers 2
    .param p1, "subscription"    # Lcom/tds/common/reactor/Subscription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/tds/common/reactor/Subscription;",
            ")",
            "Lcom/tds/common/reactor/Subscription;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 55
    return-object p1
.end method

.method public onSubscribeStart(Lcom/tds/common/reactor/Observable;Lcom/tds/common/reactor/Observable$OnSubscribe;)Lcom/tds/common/reactor/Observable$OnSubscribe;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/tds/common/reactor/Observable<",
            "+TT;>;",
            "Lcom/tds/common/reactor/Observable$OnSubscribe<",
            "TT;>;)",
            "Lcom/tds/common/reactor/Observable$OnSubscribe<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 48
    .local p1, "observableInstance":Lcom/tds/common/reactor/Observable;, "Lcom/tds/common/reactor/Observable<+TT;>;"
    .local p2, "onSubscribe":Lcom/tds/common/reactor/Observable$OnSubscribe;, "Lcom/tds/common/reactor/Observable$OnSubscribe<TT;>;"
    return-object p2
.end method
