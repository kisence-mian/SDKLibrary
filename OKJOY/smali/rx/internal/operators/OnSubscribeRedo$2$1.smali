.class Lrx/internal/operators/OnSubscribeRedo$2$1;
.super Lrx/Subscriber;
.source "OnSubscribeRedo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OnSubscribeRedo$2;->call()V
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
.field done:Z

.field final synthetic this$1:Lrx/internal/operators/OnSubscribeRedo$2;


# direct methods
.method constructor <init>(Lrx/internal/operators/OnSubscribeRedo$2;)V
    .registers 2

    .prologue
    .line 220
    .local p0, "this":Lrx/internal/operators/OnSubscribeRedo$2$1;, "Lrx/internal/operators/OnSubscribeRedo$2.1;"
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeRedo$2$1;->this$1:Lrx/internal/operators/OnSubscribeRedo$2;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    return-void
.end method

.method private decrementConsumerCapacity()V
    .registers 7

    .prologue
    .line 254
    .local p0, "this":Lrx/internal/operators/OnSubscribeRedo$2$1;, "Lrx/internal/operators/OnSubscribeRedo$2.1;"
    :cond_0
    iget-object v2, p0, Lrx/internal/operators/OnSubscribeRedo$2$1;->this$1:Lrx/internal/operators/OnSubscribeRedo$2;

    iget-object v2, v2, Lrx/internal/operators/OnSubscribeRedo$2;->val$consumerCapacity:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    .line 255
    .local v0, "cc":J
    const-wide v2, 0x7fffffffffffffffL

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1f

    .line 256
    iget-object v2, p0, Lrx/internal/operators/OnSubscribeRedo$2$1;->this$1:Lrx/internal/operators/OnSubscribeRedo$2;

    iget-object v2, v2, Lrx/internal/operators/OnSubscribeRedo$2;->val$consumerCapacity:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v4, 0x1

    sub-long v4, v0, v4

    invoke-virtual {v2, v0, v1, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 263
    :cond_1f
    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 3

    .prologue
    .line 225
    .local p0, "this":Lrx/internal/operators/OnSubscribeRedo$2$1;, "Lrx/internal/operators/OnSubscribeRedo$2.1;"
    iget-boolean v0, p0, Lrx/internal/operators/OnSubscribeRedo$2$1;->done:Z

    if-nez v0, :cond_15

    .line 226
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OnSubscribeRedo$2$1;->done:Z

    .line 227
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeRedo$2$1;->unsubscribe()V

    .line 228
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeRedo$2$1;->this$1:Lrx/internal/operators/OnSubscribeRedo$2;

    iget-object v0, v0, Lrx/internal/operators/OnSubscribeRedo$2;->val$terminals:Lrx/subjects/BehaviorSubject;

    invoke-static {}, Lrx/Notification;->createOnCompleted()Lrx/Notification;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    .line 230
    :cond_15
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 234
    .local p0, "this":Lrx/internal/operators/OnSubscribeRedo$2$1;, "Lrx/internal/operators/OnSubscribeRedo$2.1;"
    iget-boolean v0, p0, Lrx/internal/operators/OnSubscribeRedo$2$1;->done:Z

    if-nez v0, :cond_15

    .line 235
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OnSubscribeRedo$2$1;->done:Z

    .line 236
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeRedo$2$1;->unsubscribe()V

    .line 237
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeRedo$2$1;->this$1:Lrx/internal/operators/OnSubscribeRedo$2;

    iget-object v0, v0, Lrx/internal/operators/OnSubscribeRedo$2;->val$terminals:Lrx/subjects/BehaviorSubject;

    invoke-static {p1}, Lrx/Notification;->createOnError(Ljava/lang/Throwable;)Lrx/Notification;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    .line 239
    :cond_15
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
    .line 243
    .local p0, "this":Lrx/internal/operators/OnSubscribeRedo$2$1;, "Lrx/internal/operators/OnSubscribeRedo$2.1;"
    .local p1, "v":Ljava/lang/Object;, "TT;"
    iget-boolean v0, p0, Lrx/internal/operators/OnSubscribeRedo$2$1;->done:Z

    if-nez v0, :cond_17

    .line 244
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeRedo$2$1;->this$1:Lrx/internal/operators/OnSubscribeRedo$2;

    iget-object v0, v0, Lrx/internal/operators/OnSubscribeRedo$2;->val$child:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 245
    invoke-direct {p0}, Lrx/internal/operators/OnSubscribeRedo$2$1;->decrementConsumerCapacity()V

    .line 246
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeRedo$2$1;->this$1:Lrx/internal/operators/OnSubscribeRedo$2;

    iget-object v0, v0, Lrx/internal/operators/OnSubscribeRedo$2;->val$arbiter:Lrx/internal/producers/ProducerArbiter;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Lrx/internal/producers/ProducerArbiter;->produced(J)V

    .line 248
    :cond_17
    return-void
.end method

.method public setProducer(Lrx/Producer;)V
    .registers 3
    .param p1, "producer"    # Lrx/Producer;

    .prologue
    .line 267
    .local p0, "this":Lrx/internal/operators/OnSubscribeRedo$2$1;, "Lrx/internal/operators/OnSubscribeRedo$2.1;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeRedo$2$1;->this$1:Lrx/internal/operators/OnSubscribeRedo$2;

    iget-object v0, v0, Lrx/internal/operators/OnSubscribeRedo$2;->val$arbiter:Lrx/internal/producers/ProducerArbiter;

    invoke-virtual {v0, p1}, Lrx/internal/producers/ProducerArbiter;->setProducer(Lrx/Producer;)V

    .line 268
    return-void
.end method
