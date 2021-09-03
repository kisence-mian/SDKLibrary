.class Lcom/tds/common/reactor/internal/schedulers/ExecutorScheduler$ExecutorSchedulerWorker$1;
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

.field final synthetic val$mas:Lcom/tds/common/reactor/subscriptions/MultipleAssignmentSubscription;


# direct methods
.method constructor <init>(Lcom/tds/common/reactor/internal/schedulers/ExecutorScheduler$ExecutorSchedulerWorker;Lcom/tds/common/reactor/subscriptions/MultipleAssignmentSubscription;)V
    .registers 3
    .param p1, "this$0"    # Lcom/tds/common/reactor/internal/schedulers/ExecutorScheduler$ExecutorSchedulerWorker;

    .line 141
    iput-object p1, p0, Lcom/tds/common/reactor/internal/schedulers/ExecutorScheduler$ExecutorSchedulerWorker$1;->this$0:Lcom/tds/common/reactor/internal/schedulers/ExecutorScheduler$ExecutorSchedulerWorker;

    iput-object p2, p0, Lcom/tds/common/reactor/internal/schedulers/ExecutorScheduler$ExecutorSchedulerWorker$1;->val$mas:Lcom/tds/common/reactor/subscriptions/MultipleAssignmentSubscription;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .registers 3

    .line 144
    iget-object v0, p0, Lcom/tds/common/reactor/internal/schedulers/ExecutorScheduler$ExecutorSchedulerWorker$1;->this$0:Lcom/tds/common/reactor/internal/schedulers/ExecutorScheduler$ExecutorSchedulerWorker;

    iget-object v0, v0, Lcom/tds/common/reactor/internal/schedulers/ExecutorScheduler$ExecutorSchedulerWorker;->tasks:Lcom/tds/common/reactor/subscriptions/CompositeSubscription;

    iget-object v1, p0, Lcom/tds/common/reactor/internal/schedulers/ExecutorScheduler$ExecutorSchedulerWorker$1;->val$mas:Lcom/tds/common/reactor/subscriptions/MultipleAssignmentSubscription;

    invoke-virtual {v0, v1}, Lcom/tds/common/reactor/subscriptions/CompositeSubscription;->remove(Lcom/tds/common/reactor/Subscription;)V

    .line 145
    return-void
.end method
