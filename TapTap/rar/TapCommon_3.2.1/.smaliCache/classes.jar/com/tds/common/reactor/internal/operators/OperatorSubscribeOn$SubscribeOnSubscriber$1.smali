.class Lcom/tds/common/reactor/internal/operators/OperatorSubscribeOn$SubscribeOnSubscriber$1;
.super Ljava/lang/Object;
.source "OperatorSubscribeOn.java"

# interfaces
.implements Lcom/tds/common/reactor/Producer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tds/common/reactor/internal/operators/OperatorSubscribeOn$SubscribeOnSubscriber;->setProducer(Lcom/tds/common/reactor/Producer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tds/common/reactor/internal/operators/OperatorSubscribeOn$SubscribeOnSubscriber;

.field final synthetic val$p:Lcom/tds/common/reactor/Producer;


# direct methods
.method constructor <init>(Lcom/tds/common/reactor/internal/operators/OperatorSubscribeOn$SubscribeOnSubscriber;Lcom/tds/common/reactor/Producer;)V
    .registers 3
    .param p1, "this$0"    # Lcom/tds/common/reactor/internal/operators/OperatorSubscribeOn$SubscribeOnSubscriber;

    .line 107
    .local p0, "this":Lcom/tds/common/reactor/internal/operators/OperatorSubscribeOn$SubscribeOnSubscriber$1;, "Lcom/tds/common/reactor/internal/operators/OperatorSubscribeOn$SubscribeOnSubscriber$1;"
    iput-object p1, p0, Lcom/tds/common/reactor/internal/operators/OperatorSubscribeOn$SubscribeOnSubscriber$1;->this$0:Lcom/tds/common/reactor/internal/operators/OperatorSubscribeOn$SubscribeOnSubscriber;

    iput-object p2, p0, Lcom/tds/common/reactor/internal/operators/OperatorSubscribeOn$SubscribeOnSubscriber$1;->val$p:Lcom/tds/common/reactor/Producer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public request(J)V
    .registers 5
    .param p1, "n"    # J

    .line 110
    .local p0, "this":Lcom/tds/common/reactor/internal/operators/OperatorSubscribeOn$SubscribeOnSubscriber$1;, "Lcom/tds/common/reactor/internal/operators/OperatorSubscribeOn$SubscribeOnSubscriber$1;"
    iget-object v0, p0, Lcom/tds/common/reactor/internal/operators/OperatorSubscribeOn$SubscribeOnSubscriber$1;->this$0:Lcom/tds/common/reactor/internal/operators/OperatorSubscribeOn$SubscribeOnSubscriber;

    iget-object v0, v0, Lcom/tds/common/reactor/internal/operators/OperatorSubscribeOn$SubscribeOnSubscriber;->t:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_1e

    iget-object v0, p0, Lcom/tds/common/reactor/internal/operators/OperatorSubscribeOn$SubscribeOnSubscriber$1;->this$0:Lcom/tds/common/reactor/internal/operators/OperatorSubscribeOn$SubscribeOnSubscriber;

    iget-boolean v0, v0, Lcom/tds/common/reactor/internal/operators/OperatorSubscribeOn$SubscribeOnSubscriber;->requestOn:Z

    if-nez v0, :cond_11

    goto :goto_1e

    .line 113
    :cond_11
    iget-object v0, p0, Lcom/tds/common/reactor/internal/operators/OperatorSubscribeOn$SubscribeOnSubscriber$1;->this$0:Lcom/tds/common/reactor/internal/operators/OperatorSubscribeOn$SubscribeOnSubscriber;

    iget-object v0, v0, Lcom/tds/common/reactor/internal/operators/OperatorSubscribeOn$SubscribeOnSubscriber;->worker:Lcom/tds/common/reactor/schedulers/Scheduler$Worker;

    new-instance v1, Lcom/tds/common/reactor/internal/operators/OperatorSubscribeOn$SubscribeOnSubscriber$1$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/tds/common/reactor/internal/operators/OperatorSubscribeOn$SubscribeOnSubscriber$1$1;-><init>(Lcom/tds/common/reactor/internal/operators/OperatorSubscribeOn$SubscribeOnSubscriber$1;J)V

    invoke-virtual {v0, v1}, Lcom/tds/common/reactor/schedulers/Scheduler$Worker;->schedule(Lcom/tds/common/reactor/functions/Action0;)Lcom/tds/common/reactor/Subscription;

    goto :goto_23

    .line 111
    :cond_1e
    :goto_1e
    iget-object v0, p0, Lcom/tds/common/reactor/internal/operators/OperatorSubscribeOn$SubscribeOnSubscriber$1;->val$p:Lcom/tds/common/reactor/Producer;

    invoke-interface {v0, p1, p2}, Lcom/tds/common/reactor/Producer;->request(J)V

    .line 120
    :goto_23
    return-void
.end method
