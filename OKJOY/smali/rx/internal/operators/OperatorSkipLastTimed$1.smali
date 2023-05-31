.class Lrx/internal/operators/OperatorSkipLastTimed$1;
.super Lrx/Subscriber;
.source "OperatorSkipLastTimed.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorSkipLastTimed;->call(Lrx/Subscriber;)Lrx/Subscriber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private buffer:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque",
            "<",
            "Lrx/schedulers/Timestamped",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lrx/internal/operators/OperatorSkipLastTimed;

.field final synthetic val$subscriber:Lrx/Subscriber;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorSkipLastTimed;Lrx/Subscriber;Lrx/Subscriber;)V
    .registers 5

    .prologue
    .line 41
    .local p0, "this":Lrx/internal/operators/OperatorSkipLastTimed$1;, "Lrx/internal/operators/OperatorSkipLastTimed.1;"
    .local p2, "x0":Lrx/Subscriber;, "Lrx/Subscriber<*>;"
    iput-object p1, p0, Lrx/internal/operators/OperatorSkipLastTimed$1;->this$0:Lrx/internal/operators/OperatorSkipLastTimed;

    iput-object p3, p0, Lrx/internal/operators/OperatorSkipLastTimed$1;->val$subscriber:Lrx/Subscriber;

    invoke-direct {p0, p2}, Lrx/Subscriber;-><init>(Lrx/Subscriber;)V

    .line 43
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OperatorSkipLastTimed$1;->buffer:Ljava/util/Deque;

    return-void
.end method

.method private emitItemsOutOfWindow(J)V
    .registers 10
    .param p1, "now"    # J

    .prologue
    .line 46
    .local p0, "this":Lrx/internal/operators/OperatorSkipLastTimed$1;, "Lrx/internal/operators/OperatorSkipLastTimed.1;"
    iget-object v3, p0, Lrx/internal/operators/OperatorSkipLastTimed$1;->this$0:Lrx/internal/operators/OperatorSkipLastTimed;

    iget-wide v4, v3, Lrx/internal/operators/OperatorSkipLastTimed;->timeInMillis:J

    sub-long v0, p1, v4

    .line 47
    .local v0, "limit":J
    :goto_6
    iget-object v3, p0, Lrx/internal/operators/OperatorSkipLastTimed$1;->buffer:Ljava/util/Deque;

    invoke-interface {v3}, Ljava/util/Deque;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2d

    .line 48
    iget-object v3, p0, Lrx/internal/operators/OperatorSkipLastTimed$1;->buffer:Ljava/util/Deque;

    invoke-interface {v3}, Ljava/util/Deque;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lrx/schedulers/Timestamped;

    .line 49
    .local v2, "v":Lrx/schedulers/Timestamped;, "Lrx/schedulers/Timestamped<TT;>;"
    invoke-virtual {v2}, Lrx/schedulers/Timestamped;->getTimestampMillis()J

    move-result-wide v4

    cmp-long v3, v4, v0

    if-gez v3, :cond_2d

    .line 50
    iget-object v3, p0, Lrx/internal/operators/OperatorSkipLastTimed$1;->buffer:Ljava/util/Deque;

    invoke-interface {v3}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    .line 51
    iget-object v3, p0, Lrx/internal/operators/OperatorSkipLastTimed$1;->val$subscriber:Lrx/Subscriber;

    invoke-virtual {v2}, Lrx/schedulers/Timestamped;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    goto :goto_6

    .line 56
    .end local v2    # "v":Lrx/schedulers/Timestamped;, "Lrx/schedulers/Timestamped<TT;>;"
    :cond_2d
    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 3

    .prologue
    .line 72
    .local p0, "this":Lrx/internal/operators/OperatorSkipLastTimed$1;, "Lrx/internal/operators/OperatorSkipLastTimed.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorSkipLastTimed$1;->this$0:Lrx/internal/operators/OperatorSkipLastTimed;

    iget-object v0, v0, Lrx/internal/operators/OperatorSkipLastTimed;->scheduler:Lrx/Scheduler;

    invoke-virtual {v0}, Lrx/Scheduler;->now()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lrx/internal/operators/OperatorSkipLastTimed$1;->emitItemsOutOfWindow(J)V

    .line 73
    iget-object v0, p0, Lrx/internal/operators/OperatorSkipLastTimed$1;->val$subscriber:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    .line 74
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 67
    .local p0, "this":Lrx/internal/operators/OperatorSkipLastTimed$1;, "Lrx/internal/operators/OperatorSkipLastTimed.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorSkipLastTimed$1;->val$subscriber:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 68
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 60
    .local p0, "this":Lrx/internal/operators/OperatorSkipLastTimed$1;, "Lrx/internal/operators/OperatorSkipLastTimed.1;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iget-object v2, p0, Lrx/internal/operators/OperatorSkipLastTimed$1;->this$0:Lrx/internal/operators/OperatorSkipLastTimed;

    iget-object v2, v2, Lrx/internal/operators/OperatorSkipLastTimed;->scheduler:Lrx/Scheduler;

    invoke-virtual {v2}, Lrx/Scheduler;->now()J

    move-result-wide v0

    .line 61
    .local v0, "now":J
    invoke-direct {p0, v0, v1}, Lrx/internal/operators/OperatorSkipLastTimed$1;->emitItemsOutOfWindow(J)V

    .line 62
    iget-object v2, p0, Lrx/internal/operators/OperatorSkipLastTimed$1;->buffer:Ljava/util/Deque;

    new-instance v3, Lrx/schedulers/Timestamped;

    invoke-direct {v3, v0, v1, p1}, Lrx/schedulers/Timestamped;-><init>(JLjava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/Deque;->offerLast(Ljava/lang/Object;)Z

    .line 63
    return-void
.end method
