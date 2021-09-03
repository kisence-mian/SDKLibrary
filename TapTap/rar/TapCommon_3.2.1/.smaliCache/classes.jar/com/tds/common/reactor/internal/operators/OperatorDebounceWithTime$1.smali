.class Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithTime$1;
.super Lcom/tds/common/reactor/Subscriber;
.source "OperatorDebounceWithTime.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithTime;->call(Lcom/tds/common/reactor/Subscriber;)Lcom/tds/common/reactor/Subscriber;
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

.field final synthetic this$0:Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithTime;

.field final synthetic val$s:Lcom/tds/common/reactor/observers/SerializedSubscriber;

.field final synthetic val$serial:Lcom/tds/common/reactor/subscriptions/SerialSubscription;

.field final synthetic val$worker:Lcom/tds/common/reactor/schedulers/Scheduler$Worker;


# direct methods
.method constructor <init>(Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithTime;Lcom/tds/common/reactor/Subscriber;Lcom/tds/common/reactor/subscriptions/SerialSubscription;Lcom/tds/common/reactor/schedulers/Scheduler$Worker;Lcom/tds/common/reactor/observers/SerializedSubscriber;)V
    .registers 6
    .param p1, "this$0"    # Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithTime;

    .line 41
    .local p0, "this":Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithTime$1;, "Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithTime$1;"
    .local p2, "subscriber":Lcom/tds/common/reactor/Subscriber;, "Lcom/tds/common/reactor/Subscriber<*>;"
    iput-object p1, p0, Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithTime$1;->this$0:Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithTime;

    iput-object p3, p0, Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithTime$1;->val$serial:Lcom/tds/common/reactor/subscriptions/SerialSubscription;

    iput-object p4, p0, Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithTime$1;->val$worker:Lcom/tds/common/reactor/schedulers/Scheduler$Worker;

    iput-object p5, p0, Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithTime$1;->val$s:Lcom/tds/common/reactor/observers/SerializedSubscriber;

    invoke-direct {p0, p2}, Lcom/tds/common/reactor/Subscriber;-><init>(Lcom/tds/common/reactor/Subscriber;)V

    .line 42
    new-instance p3, Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithTime$DebounceState;

    invoke-direct {p3}, Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithTime$DebounceState;-><init>()V

    iput-object p3, p0, Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithTime$1;->state:Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithTime$DebounceState;

    .line 43
    iput-object p0, p0, Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithTime$1;->self:Lcom/tds/common/reactor/Subscriber;

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 3

    .line 71
    .local p0, "this":Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithTime$1;, "Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithTime$1;"
    iget-object v0, p0, Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithTime$1;->state:Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithTime$DebounceState;

    iget-object v1, p0, Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithTime$1;->val$s:Lcom/tds/common/reactor/observers/SerializedSubscriber;

    invoke-virtual {v0, v1, p0}, Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithTime$DebounceState;->emitAndComplete(Lcom/tds/common/reactor/Subscriber;Lcom/tds/common/reactor/Subscriber;)V

    .line 72
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 64
    .local p0, "this":Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithTime$1;, "Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithTime$1;"
    iget-object v0, p0, Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithTime$1;->val$s:Lcom/tds/common/reactor/observers/SerializedSubscriber;

    invoke-virtual {v0, p1}, Lcom/tds/common/reactor/observers/SerializedSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 65
    invoke-virtual {p0}, Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithTime$1;->unsubscribe()V

    .line 66
    iget-object v0, p0, Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithTime$1;->state:Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithTime$DebounceState;

    invoke-virtual {v0}, Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithTime$DebounceState;->clear()V

    .line 67
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 53
    .local p0, "this":Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithTime$1;, "Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithTime$1;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithTime$1;->state:Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithTime$DebounceState;

    invoke-virtual {v0, p1}, Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithTime$DebounceState;->next(Ljava/lang/Object;)I

    move-result v0

    .line 54
    .local v0, "index":I
    iget-object v1, p0, Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithTime$1;->val$serial:Lcom/tds/common/reactor/subscriptions/SerialSubscription;

    iget-object v2, p0, Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithTime$1;->val$worker:Lcom/tds/common/reactor/schedulers/Scheduler$Worker;

    new-instance v3, Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithTime$1$1;

    invoke-direct {v3, p0, v0}, Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithTime$1$1;-><init>(Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithTime$1;I)V

    iget-object v4, p0, Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithTime$1;->this$0:Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithTime;

    iget-wide v4, v4, Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithTime;->timeout:J

    iget-object v6, p0, Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithTime$1;->this$0:Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithTime;

    iget-object v6, v6, Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithTime;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/tds/common/reactor/schedulers/Scheduler$Worker;->schedule(Lcom/tds/common/reactor/functions/Action0;JLjava/util/concurrent/TimeUnit;)Lcom/tds/common/reactor/Subscription;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tds/common/reactor/subscriptions/SerialSubscription;->set(Lcom/tds/common/reactor/Subscription;)V

    .line 60
    return-void
.end method

.method public onStart()V
    .registers 3

    .line 47
    .local p0, "this":Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithTime$1;, "Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithTime$1;"
    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lcom/tds/common/reactor/internal/operators/OperatorDebounceWithTime$1;->request(J)V

    .line 48
    return-void
.end method
