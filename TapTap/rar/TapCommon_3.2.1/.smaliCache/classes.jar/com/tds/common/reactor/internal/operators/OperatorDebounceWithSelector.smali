.class public final Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithSelector;
.super Ljava/lang/Object;
.source "OperatorDebounceWithSelector.java"

# interfaces
.implements Lcom/tds/common/reactor/Observable$Operator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/tds/common/reactor/Observable$Operator<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field final selector:Lcom/tds/common/reactor/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tds/common/reactor/functions/Func1<",
            "-TT;+",
            "Lcom/tds/common/reactor/Observable<",
            "TU;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/tds/common/reactor/functions/Func1;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tds/common/reactor/functions/Func1<",
            "-TT;+",
            "Lcom/tds/common/reactor/Observable<",
            "TU;>;>;)V"
        }
    .end annotation

    .line 13
    .local p0, "this":Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithSelector;, "Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithSelector<TT;TU;>;"
    .local p1, "selector":Lcom/tds/common/reactor/functions/Func1;, "Lcom/tds/common/reactor/functions/Func1<-TT;+Lcom/tds/common/reactor/Observable<TU;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithSelector;->selector:Lcom/tds/common/reactor/functions/Func1;

    .line 15
    return-void
.end method


# virtual methods
.method public call(Lcom/tds/common/reactor/Subscriber;)Lcom/tds/common/reactor/Subscriber;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tds/common/reactor/Subscriber<",
            "-TT;>;)",
            "Lcom/tds/common/reactor/Subscriber<",
            "-TT;>;"
        }
    .end annotation

    .line 19
    .local p0, "this":Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithSelector;, "Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithSelector<TT;TU;>;"
    .local p1, "child":Lcom/tds/common/reactor/Subscriber;, "Lcom/tds/common/reactor/Subscriber<-TT;>;"
    new-instance v0, Lcom/tds/common/reactor/observers/SerializedSubscriber;

    invoke-direct {v0, p1}, Lcom/tds/common/reactor/observers/SerializedSubscriber;-><init>(Lcom/tds/common/reactor/Subscriber;)V

    .line 20
    .local v0, "s":Lcom/tds/common/reactor/observers/SerializedSubscriber;, "Lcom/tds/common/reactor/observers/SerializedSubscriber<TT;>;"
    new-instance v1, Lcom/tds/common/reactor/subscriptions/SerialSubscription;

    invoke-direct {v1}, Lcom/tds/common/reactor/subscriptions/SerialSubscription;-><init>()V

    .line 21
    .local v1, "serial":Lcom/tds/common/reactor/subscriptions/SerialSubscription;
    invoke-virtual {p1, v1}, Lcom/tds/common/reactor/Subscriber;->add(Lcom/tds/common/reactor/Subscription;)V

    .line 23
    new-instance v2, Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithSelector$1;

    invoke-direct {v2, p0, p1, v0, v1}, Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithSelector$1;-><init>(Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithSelector;Lcom/tds/common/reactor/Subscriber;Lcom/tds/common/reactor/observers/SerializedSubscriber;Lcom/tds/common/reactor/subscriptions/SerialSubscription;)V

    return-object v2
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 10
    .local p0, "this":Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithSelector;, "Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithSelector<TT;TU;>;"
    check-cast p1, Lcom/tds/common/reactor/Subscriber;

    invoke-virtual {p0, p1}, Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithSelector;->call(Lcom/tds/common/reactor/Subscriber;)Lcom/tds/common/reactor/Subscriber;

    move-result-object p1

    return-object p1
.end method
