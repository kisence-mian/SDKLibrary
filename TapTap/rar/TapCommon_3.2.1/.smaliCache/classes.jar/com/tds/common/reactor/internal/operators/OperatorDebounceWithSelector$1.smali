.class Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithSelector$1;
.super Lcom/tds/common/reactor/Subscriber;
.source "OperatorDebounceWithSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithSelector;->call(Lcom/tds/common/reactor/Subscriber;)Lcom/tds/common/reactor/Subscriber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tds/common/reactor/Subscriber<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final self:Lcom/tds/common/reactor/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tds/common/reactor/Subscriber<",
            "*>;"
        }
    .end annotation
.end field

.field final state:Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithTime$DebounceState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithTime$DebounceState<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithSelector;

.field final synthetic val$s:Lcom/tds/common/reactor/observers/SerializedSubscriber;

.field final synthetic val$serial:Lcom/tds/common/reactor/subscriptions/SerialSubscription;


# direct methods
.method constructor <init>(Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithSelector;Lcom/tds/common/reactor/Subscriber;Lcom/tds/common/reactor/observers/SerializedSubscriber;Lcom/tds/common/reactor/subscriptions/SerialSubscription;)V
    .registers 5
    .param p1, "this$0"    # Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithSelector;

    .line 23
    .local p0, "this":Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithSelector$1;, "Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithSelector$1;"
    .local p2, "subscriber":Lcom/tds/common/reactor/Subscriber;, "Lcom/tds/common/reactor/Subscriber<*>;"
    iput-object p1, p0, Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithSelector$1;->this$0:Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithSelector;

    iput-object p3, p0, Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithSelector$1;->val$s:Lcom/tds/common/reactor/observers/SerializedSubscriber;

    iput-object p4, p0, Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithSelector$1;->val$serial:Lcom/tds/common/reactor/subscriptions/SerialSubscription;

    invoke-direct {p0, p2}, Lcom/tds/common/reactor/Subscriber;-><init>(Lcom/tds/common/reactor/Subscriber;)V

    .line 24
    new-instance p3, Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithTime$DebounceState;

    invoke-direct {p3}, Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithTime$DebounceState;-><init>()V

    iput-object p3, p0, Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithSelector$1;->state:Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithTime$DebounceState;

    .line 25
    iput-object p0, p0, Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithSelector$1;->self:Lcom/tds/common/reactor/Subscriber;

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 3

    .line 80
    .local p0, "this":Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithSelector$1;, "Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithSelector$1;"
    iget-object v0, p0, Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithSelector$1;->state:Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithTime$DebounceState;

    iget-object v1, p0, Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithSelector$1;->val$s:Lcom/tds/common/reactor/observers/SerializedSubscriber;

    invoke-virtual {v0, v1, p0}, Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithTime$DebounceState;->emitAndComplete(Lcom/tds/common/reactor/Subscriber;Lcom/tds/common/reactor/Subscriber;)V

    .line 81
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 73
    .local p0, "this":Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithSelector$1;, "Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithSelector$1;"
    iget-object v0, p0, Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithSelector$1;->val$s:Lcom/tds/common/reactor/observers/SerializedSubscriber;

    invoke-virtual {v0, p1}, Lcom/tds/common/reactor/observers/SerializedSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 74
    invoke-virtual {p0}, Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithSelector$1;->unsubscribe()V

    .line 75
    iget-object v0, p0, Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithSelector$1;->state:Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithTime$DebounceState;

    invoke-virtual {v0}, Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithTime$DebounceState;->clear()V

    .line 76
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 38
    .local p0, "this":Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithSelector$1;, "Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithSelector$1;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    :try_start_0
    iget-object v0, p0, Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithSelector$1;->this$0:Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithSelector;

    iget-object v0, v0, Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithSelector;->selector:Lcom/tds/common/reactor/functions/Func1;

    invoke-interface {v0, p1}, Lcom/tds/common/reactor/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tds/common/reactor/Observable;
    :try_end_a
    .catchall {:try_start_0 .. :try_end_a} :catchall_1f

    .line 42
    .local v0, "debouncer":Lcom/tds/common/reactor/Observable;, "Lcom/tds/common/reactor/Observable<TU;>;"
    nop

    .line 45
    iget-object v1, p0, Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithSelector$1;->state:Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithTime$DebounceState;

    invoke-virtual {v1, p1}, Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithTime$DebounceState;->next(Ljava/lang/Object;)I

    move-result v1

    .line 47
    .local v1, "index":I
    new-instance v2, Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithSelector$1$1;

    invoke-direct {v2, p0, v1}, Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithSelector$1$1;-><init>(Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithSelector$1;I)V

    .line 65
    .local v2, "debounceSubscriber":Lcom/tds/common/reactor/Subscriber;, "Lcom/tds/common/reactor/Subscriber<TU;>;"
    iget-object v3, p0, Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithSelector$1;->val$serial:Lcom/tds/common/reactor/subscriptions/SerialSubscription;

    invoke-virtual {v3, v2}, Lcom/tds/common/reactor/subscriptions/SerialSubscription;->set(Lcom/tds/common/reactor/Subscription;)V

    .line 67
    invoke-virtual {v0, v2}, Lcom/tds/common/reactor/Observable;->unsafeSubscribe(Lcom/tds/common/reactor/Subscriber;)Lcom/tds/common/reactor/Subscription;

    .line 69
    return-void

    .line 39
    .end local v0    # "debouncer":Lcom/tds/common/reactor/Observable;, "Lcom/tds/common/reactor/Observable<TU;>;"
    .end local v1    # "index":I
    .end local v2    # "debounceSubscriber":Lcom/tds/common/reactor/Subscriber;, "Lcom/tds/common/reactor/Subscriber<TU;>;"
    :catchall_1f
    move-exception v0

    .line 40
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0, p0}, Lcom/tds/common/reactor/exceptions/Exceptions;->throwOrReport(Ljava/lang/Throwable;Lcom/tds/common/reactor/Observer;)V

    .line 41
    return-void
.end method

.method public onStart()V
    .registers 3

    .line 30
    .local p0, "this":Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithSelector$1;, "Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithSelector$1;"
    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithSelector$1;->request(J)V

    .line 31
    return-void
.end method
