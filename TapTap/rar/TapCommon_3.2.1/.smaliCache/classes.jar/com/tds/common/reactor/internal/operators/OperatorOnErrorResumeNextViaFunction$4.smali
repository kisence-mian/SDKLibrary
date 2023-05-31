.class Lcom/tds/common/reactor/internal/operators/OperatorOnErrorResumeNextViaFunction$4;
.super Lcom/tds/common/reactor/Subscriber;
.source "OperatorOnErrorResumeNextViaFunction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tds/common/reactor/internal/operators/OperatorOnErrorResumeNextViaFunction;->call(Lcom/tds/common/reactor/Subscriber;)Lcom/tds/common/reactor/Subscriber;
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
.field private done:Z

.field produced:J

.field final synthetic this$0:Lcom/tds/common/reactor/internal/operators/OperatorOnErrorResumeNextViaFunction;

.field final synthetic val$child:Lcom/tds/common/reactor/Subscriber;

.field final synthetic val$pa:Lcom/tds/common/reactor/internal/producers/ProducerArbiter;

.field final synthetic val$serial:Lcom/tds/common/reactor/subscriptions/SerialSubscription;


# direct methods
.method constructor <init>(Lcom/tds/common/reactor/internal/operators/OperatorOnErrorResumeNextViaFunction;Lcom/tds/common/reactor/Subscriber;Lcom/tds/common/reactor/internal/producers/ProducerArbiter;Lcom/tds/common/reactor/subscriptions/SerialSubscription;)V
    .registers 5
    .param p1, "this$0"    # Lcom/tds/common/reactor/internal/operators/OperatorOnErrorResumeNextViaFunction;

    .line 91
    .local p0, "this":Lcom/tds/common/reactor/internal/operators/OperatorOnErrorResumeNextViaFunction$4;, "Lcom/tds/common/reactor/internal/operators/OperatorOnErrorResumeNextViaFunction$4;"
    iput-object p1, p0, Lcom/tds/common/reactor/internal/operators/OperatorOnErrorResumeNextViaFunction$4;->this$0:Lcom/tds/common/reactor/internal/operators/OperatorOnErrorResumeNextViaFunction;

    iput-object p2, p0, Lcom/tds/common/reactor/internal/operators/OperatorOnErrorResumeNextViaFunction$4;->val$child:Lcom/tds/common/reactor/Subscriber;

    iput-object p3, p0, Lcom/tds/common/reactor/internal/operators/OperatorOnErrorResumeNextViaFunction$4;->val$pa:Lcom/tds/common/reactor/internal/producers/ProducerArbiter;

    iput-object p4, p0, Lcom/tds/common/reactor/internal/operators/OperatorOnErrorResumeNextViaFunction$4;->val$serial:Lcom/tds/common/reactor/subscriptions/SerialSubscription;

    invoke-direct {p0}, Lcom/tds/common/reactor/Subscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 2

    .line 99
    .local p0, "this":Lcom/tds/common/reactor/internal/operators/OperatorOnErrorResumeNextViaFunction$4;, "Lcom/tds/common/reactor/internal/operators/OperatorOnErrorResumeNextViaFunction$4;"
    iget-boolean v0, p0, Lcom/tds/common/reactor/internal/operators/OperatorOnErrorResumeNextViaFunction$4;->done:Z

    if-eqz v0, :cond_5

    .line 100
    return-void

    .line 102
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tds/common/reactor/internal/operators/OperatorOnErrorResumeNextViaFunction$4;->done:Z

    .line 103
    iget-object v0, p0, Lcom/tds/common/reactor/internal/operators/OperatorOnErrorResumeNextViaFunction$4;->val$child:Lcom/tds/common/reactor/Subscriber;

    invoke-virtual {v0}, Lcom/tds/common/reactor/Subscriber;->onCompleted()V

    .line 104
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 7
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 108
    .local p0, "this":Lcom/tds/common/reactor/internal/operators/OperatorOnErrorResumeNextViaFunction$4;, "Lcom/tds/common/reactor/internal/operators/OperatorOnErrorResumeNextViaFunction$4;"
    iget-boolean v0, p0, Lcom/tds/common/reactor/internal/operators/OperatorOnErrorResumeNextViaFunction$4;->done:Z

    if-eqz v0, :cond_b

    .line 109
    invoke-static {p1}, Lcom/tds/common/reactor/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 110
    invoke-static {p1}, Lcom/tds/common/reactor/plugins/RxJavaHooks;->onError(Ljava/lang/Throwable;)V

    .line 111
    return-void

    .line 113
    :cond_b
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tds/common/reactor/internal/operators/OperatorOnErrorResumeNextViaFunction$4;->done:Z

    .line 115
    :try_start_e
    invoke-virtual {p0}, Lcom/tds/common/reactor/internal/operators/OperatorOnErrorResumeNextViaFunction$4;->unsubscribe()V

    .line 117
    new-instance v0, Lcom/tds/common/reactor/internal/operators/OperatorOnErrorResumeNextViaFunction$4$1;

    invoke-direct {v0, p0}, Lcom/tds/common/reactor/internal/operators/OperatorOnErrorResumeNextViaFunction$4$1;-><init>(Lcom/tds/common/reactor/internal/operators/OperatorOnErrorResumeNextViaFunction$4;)V

    .line 135
    .local v0, "next":Lcom/tds/common/reactor/Subscriber;, "Lcom/tds/common/reactor/Subscriber<TT;>;"
    iget-object v1, p0, Lcom/tds/common/reactor/internal/operators/OperatorOnErrorResumeNextViaFunction$4;->val$serial:Lcom/tds/common/reactor/subscriptions/SerialSubscription;

    invoke-virtual {v1, v0}, Lcom/tds/common/reactor/subscriptions/SerialSubscription;->set(Lcom/tds/common/reactor/Subscription;)V

    .line 137
    iget-wide v1, p0, Lcom/tds/common/reactor/internal/operators/OperatorOnErrorResumeNextViaFunction$4;->produced:J

    .line 138
    .local v1, "p":J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_28

    .line 139
    iget-object v3, p0, Lcom/tds/common/reactor/internal/operators/OperatorOnErrorResumeNextViaFunction$4;->val$pa:Lcom/tds/common/reactor/internal/producers/ProducerArbiter;

    invoke-virtual {v3, v1, v2}, Lcom/tds/common/reactor/internal/producers/ProducerArbiter;->produced(J)V

    .line 142
    :cond_28
    iget-object v3, p0, Lcom/tds/common/reactor/internal/operators/OperatorOnErrorResumeNextViaFunction$4;->this$0:Lcom/tds/common/reactor/internal/operators/OperatorOnErrorResumeNextViaFunction;

    iget-object v3, v3, Lcom/tds/common/reactor/internal/operators/OperatorOnErrorResumeNextViaFunction;->resumeFunction:Lcom/tds/common/reactor/functions/Func1;

    invoke-interface {v3, p1}, Lcom/tds/common/reactor/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tds/common/reactor/Observable;

    .line 144
    .local v3, "resume":Lcom/tds/common/reactor/Observable;, "Lcom/tds/common/reactor/Observable<+TT;>;"
    invoke-virtual {v3, v0}, Lcom/tds/common/reactor/Observable;->unsafeSubscribe(Lcom/tds/common/reactor/Subscriber;)Lcom/tds/common/reactor/Subscription;
    :try_end_35
    .catchall {:try_start_e .. :try_end_35} :catchall_37

    .line 147
    nop

    .end local v0    # "next":Lcom/tds/common/reactor/Subscriber;, "Lcom/tds/common/reactor/Subscriber<TT;>;"
    .end local v1    # "p":J
    .end local v3    # "resume":Lcom/tds/common/reactor/Observable;, "Lcom/tds/common/reactor/Observable<+TT;>;"
    goto :goto_3d

    .line 145
    :catchall_37
    move-exception v0

    .line 146
    .local v0, "e2":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/tds/common/reactor/internal/operators/OperatorOnErrorResumeNextViaFunction$4;->val$child:Lcom/tds/common/reactor/Subscriber;

    invoke-static {v0, v1}, Lcom/tds/common/reactor/exceptions/Exceptions;->throwOrReport(Ljava/lang/Throwable;Lcom/tds/common/reactor/Observer;)V

    .line 148
    .end local v0    # "e2":Ljava/lang/Throwable;
    :goto_3d
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 152
    .local p0, "this":Lcom/tds/common/reactor/internal/operators/OperatorOnErrorResumeNextViaFunction$4;, "Lcom/tds/common/reactor/internal/operators/OperatorOnErrorResumeNextViaFunction$4;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-boolean v0, p0, Lcom/tds/common/reactor/internal/operators/OperatorOnErrorResumeNextViaFunction$4;->done:Z

    if-eqz v0, :cond_5

    .line 153
    return-void

    .line 155
    :cond_5
    iget-wide v0, p0, Lcom/tds/common/reactor/internal/operators/OperatorOnErrorResumeNextViaFunction$4;->produced:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/tds/common/reactor/internal/operators/OperatorOnErrorResumeNextViaFunction$4;->produced:J

    .line 156
    iget-object v0, p0, Lcom/tds/common/reactor/internal/operators/OperatorOnErrorResumeNextViaFunction$4;->val$child:Lcom/tds/common/reactor/Subscriber;

    invoke-virtual {v0, p1}, Lcom/tds/common/reactor/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 157
    return-void
.end method

.method public setProducer(Lcom/tds/common/reactor/Producer;)V
    .registers 3
    .param p1, "producer"    # Lcom/tds/common/reactor/Producer;

    .line 161
    .local p0, "this":Lcom/tds/common/reactor/internal/operators/OperatorOnErrorResumeNextViaFunction$4;, "Lcom/tds/common/reactor/internal/operators/OperatorOnErrorResumeNextViaFunction$4;"
    iget-object v0, p0, Lcom/tds/common/reactor/internal/operators/OperatorOnErrorResumeNextViaFunction$4;->val$pa:Lcom/tds/common/reactor/internal/producers/ProducerArbiter;

    invoke-virtual {v0, p1}, Lcom/tds/common/reactor/internal/producers/ProducerArbiter;->setProducer(Lcom/tds/common/reactor/Producer;)V

    .line 162
    return-void
.end method
