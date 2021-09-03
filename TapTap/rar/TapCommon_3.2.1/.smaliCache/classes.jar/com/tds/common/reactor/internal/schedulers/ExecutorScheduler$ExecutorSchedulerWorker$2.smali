.class Lcom/tds/common/reactor/internal/schedulers/ExecutorScheduler$ExecutorSchedulerWorker$2;
.super Ljava/lang/Object;
.source "ExecutorScheduler.java"

# interfaces
.implements Lcom/tds/common/reactor/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tds/common/reactor/internal/schedulers/ExecutorScheduler$ExecutorSchedulerWorker;->schedule(Lcom/tds/common/reactor/functions/Action0;JLjava/util/concurrent/TimeUnit;)Lcom/tds/common/reactor/Subscription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tds/common/reactor/internal/schedulers/ExecutorScheduler$ExecutorSchedulerWorker;

.field final synthetic val$decorated:Lcom/tds/common/reactor/functions/Action0;

.field final synthetic val$mas:Lcom/tds/common/reactor/subscriptions/MultipleAssignmentSubscription;

.field final synthetic val$removeMas:Lcom/tds/common/reactor/Subscription;


# direct methods
.method constructor <init>(Lcom/tds/common/reactor/internal/schedulers/ExecutorScheduler$ExecutorSchedulerWorker;Lcom/tds/common/reactor/subscriptions/MultipleAssignmentSubscription;Lcom/tds/common/reactor/functions/Action0;Lcom/tds/common/reactor/Subscription;)V
    .registers 5
    .param p1, "this$0"    # Lcom/tds/common/reactor/internal/schedulers/ExecutorScheduler$ExecutorSchedulerWorker;

    .line 148
    iput-object p1, p0, Lcom/tds/common/reactor/internal/schedulers/ExecutorScheduler$ExecutorSchedulerWorker$2;->this$0:Lcom/tds/common/reactor/internal/schedulers/ExecutorScheduler$ExecutorSchedulerWorker;

    iput-object p2, p0, Lcom/tds/common/reactor/internal/schedulers/ExecutorScheduler$ExecutorSchedulerWorker$2;->val$mas:Lcom/tds/common/reactor/subscriptions/MultipleAssignmentSubscription;

    iput-object p3, p0, Lcom/tds/common/reactor/internal/schedulers/ExecutorScheduler$ExecutorSchedulerWorker$2;->val$decorated:Lcom/tds/common/reactor/functions/Action0;

    iput-object p4, p0, Lcom/tds/common/reactor/internal/schedulers/ExecutorScheduler$ExecutorSchedulerWorker$2;->val$removeMas:Lcom/tds/common/reactor/Subscription;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .registers 4

    .line 151
    iget-object v0, p0, Lcom/tds/common/reactor/internal/schedulers/ExecutorScheduler$ExecutorSchedulerWorker$2;->val$mas:Lcom/tds/common/reactor/subscriptions/MultipleAssignmentSubscription;

    invoke-virtual {v0}, Lcom/tds/common/reactor/subscriptions/MultipleAssignmentSubscription;->isUnsubscribed()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 152
    return-void

    .line 155
    :cond_9
    iget-object v0, p0, Lcom/tds/common/reactor/internal/schedulers/ExecutorScheduler$ExecutorSchedulerWorker$2;->this$0:Lcom/tds/common/reactor/internal/schedulers/ExecutorScheduler$ExecutorSchedulerWorker;

    iget-object v1, p0, Lcom/tds/common/reactor/internal/schedulers/ExecutorScheduler$ExecutorSchedulerWorker$2;->val$decorated:Lcom/tds/common/reactor/functions/Action0;

    invoke-virtual {v0, v1}, Lcom/tds/common/reactor/internal/schedulers/ExecutorScheduler$ExecutorSchedulerWorker;->schedule(Lcom/tds/common/reactor/functions/Action0;)Lcom/tds/common/reactor/Subscription;

    move-result-object v0

    .line 156
    .local v0, "s2":Lcom/tds/common/reactor/Subscription;
    iget-object v1, p0, Lcom/tds/common/reactor/internal/schedulers/ExecutorScheduler$ExecutorSchedulerWorker$2;->val$mas:Lcom/tds/common/reactor/subscriptions/MultipleAssignmentSubscription;

    invoke-virtual {v1, v0}, Lcom/tds/common/reactor/subscriptions/MultipleAssignmentSubscription;->set(Lcom/tds/common/reactor/Subscription;)V

    .line 158
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/tds/common/reactor/schedulers/ScheduledAction;

    if-ne v1, v2, :cond_26

    .line 161
    move-object v1, v0

    check-cast v1, Lcom/tds/common/reactor/schedulers/ScheduledAction;

    iget-object v2, p0, Lcom/tds/common/reactor/internal/schedulers/ExecutorScheduler$ExecutorSchedulerWorker$2;->val$removeMas:Lcom/tds/common/reactor/Subscription;

    invoke-virtual {v1, v2}, Lcom/tds/common/reactor/schedulers/ScheduledAction;->add(Lcom/tds/common/reactor/Subscription;)V

    .line 163
    :cond_26
    return-void
.end method
