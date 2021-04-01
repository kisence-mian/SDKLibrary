.class Lrx/internal/schedulers/SchedulerWhen$2;
.super Lrx/Scheduler$Worker;
.source "SchedulerWhen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/schedulers/SchedulerWhen;->createWorker()Lrx/Scheduler$Worker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lrx/internal/schedulers/SchedulerWhen;

.field private final unsubscribed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic val$actionObserver:Lrx/Observer;

.field final synthetic val$actualWorker:Lrx/Scheduler$Worker;


# direct methods
.method constructor <init>(Lrx/internal/schedulers/SchedulerWhen;Lrx/Scheduler$Worker;Lrx/Observer;)V
    .registers 5

    .prologue
    .line 158
    iput-object p1, p0, Lrx/internal/schedulers/SchedulerWhen$2;->this$0:Lrx/internal/schedulers/SchedulerWhen;

    iput-object p2, p0, Lrx/internal/schedulers/SchedulerWhen$2;->val$actualWorker:Lrx/Scheduler$Worker;

    iput-object p3, p0, Lrx/internal/schedulers/SchedulerWhen$2;->val$actionObserver:Lrx/Observer;

    invoke-direct {p0}, Lrx/Scheduler$Worker;-><init>()V

    .line 159
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lrx/internal/schedulers/SchedulerWhen$2;->unsubscribed:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public isUnsubscribed()Z
    .registers 2

    .prologue
    .line 173
    iget-object v0, p0, Lrx/internal/schedulers/SchedulerWhen$2;->unsubscribed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public schedule(Lrx/functions/Action0;)Lrx/Subscription;
    .registers 4
    .param p1, "action"    # Lrx/functions/Action0;

    .prologue
    .line 187
    new-instance v0, Lrx/internal/schedulers/SchedulerWhen$ImmediateAction;

    invoke-direct {v0, p1}, Lrx/internal/schedulers/SchedulerWhen$ImmediateAction;-><init>(Lrx/functions/Action0;)V

    .line 188
    .local v0, "immediateAction":Lrx/internal/schedulers/SchedulerWhen$ImmediateAction;
    iget-object v1, p0, Lrx/internal/schedulers/SchedulerWhen$2;->val$actionObserver:Lrx/Observer;

    invoke-interface {v1, v0}, Lrx/Observer;->onNext(Ljava/lang/Object;)V

    .line 189
    return-object v0
.end method

.method public schedule(Lrx/functions/Action0;JLjava/util/concurrent/TimeUnit;)Lrx/Subscription;
    .registers 7
    .param p1, "action"    # Lrx/functions/Action0;
    .param p2, "delayTime"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 179
    new-instance v0, Lrx/internal/schedulers/SchedulerWhen$DelayedAction;

    invoke-direct {v0, p1, p2, p3, p4}, Lrx/internal/schedulers/SchedulerWhen$DelayedAction;-><init>(Lrx/functions/Action0;JLjava/util/concurrent/TimeUnit;)V

    .line 180
    .local v0, "delayedAction":Lrx/internal/schedulers/SchedulerWhen$DelayedAction;
    iget-object v1, p0, Lrx/internal/schedulers/SchedulerWhen$2;->val$actionObserver:Lrx/Observer;

    invoke-interface {v1, v0}, Lrx/Observer;->onNext(Ljava/lang/Object;)V

    .line 181
    return-object v0
.end method

.method public unsubscribe()V
    .registers 4

    .prologue
    .line 165
    iget-object v0, p0, Lrx/internal/schedulers/SchedulerWhen$2;->unsubscribed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 166
    iget-object v0, p0, Lrx/internal/schedulers/SchedulerWhen$2;->val$actualWorker:Lrx/Scheduler$Worker;

    invoke-virtual {v0}, Lrx/Scheduler$Worker;->unsubscribe()V

    .line 167
    iget-object v0, p0, Lrx/internal/schedulers/SchedulerWhen$2;->val$actionObserver:Lrx/Observer;

    invoke-interface {v0}, Lrx/Observer;->onCompleted()V

    .line 169
    :cond_14
    return-void
.end method
