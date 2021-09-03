.class Lcom/tds/common/reactor/rxandroid/schedulers/LooperScheduler$HandlerWorker;
.super Lcom/tds/common/reactor/schedulers/Scheduler$Worker;
.source "LooperScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tds/common/reactor/rxandroid/schedulers/LooperScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "HandlerWorker"
.end annotation


# instance fields
.field private final handler:Landroid/os/Handler;

.field private final hook:Lcom/tds/common/reactor/rxandroid/plugins/RxAndroidSchedulersHook;

.field private volatile unsubscribed:Z


# direct methods
.method constructor <init>(Landroid/os/Handler;)V
    .registers 3
    .param p1, "handler"    # Landroid/os/Handler;

    .line 39
    invoke-direct {p0}, Lcom/tds/common/reactor/schedulers/Scheduler$Worker;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/tds/common/reactor/rxandroid/schedulers/LooperScheduler$HandlerWorker;->handler:Landroid/os/Handler;

    .line 41
    invoke-static {}, Lcom/tds/common/reactor/rxandroid/plugins/RxAndroidPlugins;->getInstance()Lcom/tds/common/reactor/rxandroid/plugins/RxAndroidPlugins;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tds/common/reactor/rxandroid/plugins/RxAndroidPlugins;->getSchedulersHook()Lcom/tds/common/reactor/rxandroid/plugins/RxAndroidSchedulersHook;

    move-result-object v0

    iput-object v0, p0, Lcom/tds/common/reactor/rxandroid/schedulers/LooperScheduler$HandlerWorker;->hook:Lcom/tds/common/reactor/rxandroid/plugins/RxAndroidSchedulersHook;

    .line 42
    return-void
.end method


# virtual methods
.method public isUnsubscribed()Z
    .registers 2

    .line 52
    iget-boolean v0, p0, Lcom/tds/common/reactor/rxandroid/schedulers/LooperScheduler$HandlerWorker;->unsubscribed:Z

    return v0
.end method

.method public schedule(Lcom/tds/common/reactor/functions/Action0;)Lcom/tds/common/reactor/Subscription;
    .registers 5
    .param p1, "action"    # Lcom/tds/common/reactor/functions/Action0;

    .line 80
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v1, v2, v0}, Lcom/tds/common/reactor/rxandroid/schedulers/LooperScheduler$HandlerWorker;->schedule(Lcom/tds/common/reactor/functions/Action0;JLjava/util/concurrent/TimeUnit;)Lcom/tds/common/reactor/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public schedule(Lcom/tds/common/reactor/functions/Action0;JLjava/util/concurrent/TimeUnit;)Lcom/tds/common/reactor/Subscription;
    .registers 10
    .param p1, "action"    # Lcom/tds/common/reactor/functions/Action0;
    .param p2, "delayTime"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 57
    iget-boolean v0, p0, Lcom/tds/common/reactor/rxandroid/schedulers/LooperScheduler$HandlerWorker;->unsubscribed:Z

    if-eqz v0, :cond_9

    .line 58
    invoke-static {}, Lcom/tds/common/reactor/subscriptions/Subscriptions;->unsubscribed()Lcom/tds/common/reactor/Subscription;

    move-result-object v0

    return-object v0

    .line 61
    :cond_9
    iget-object v0, p0, Lcom/tds/common/reactor/rxandroid/schedulers/LooperScheduler$HandlerWorker;->hook:Lcom/tds/common/reactor/rxandroid/plugins/RxAndroidSchedulersHook;

    invoke-virtual {v0, p1}, Lcom/tds/common/reactor/rxandroid/plugins/RxAndroidSchedulersHook;->onSchedule(Lcom/tds/common/reactor/functions/Action0;)Lcom/tds/common/reactor/functions/Action0;

    move-result-object p1

    .line 63
    new-instance v0, Lcom/tds/common/reactor/rxandroid/schedulers/LooperScheduler$ScheduledAction;

    iget-object v1, p0, Lcom/tds/common/reactor/rxandroid/schedulers/LooperScheduler$HandlerWorker;->handler:Landroid/os/Handler;

    invoke-direct {v0, p1, v1}, Lcom/tds/common/reactor/rxandroid/schedulers/LooperScheduler$ScheduledAction;-><init>(Lcom/tds/common/reactor/functions/Action0;Landroid/os/Handler;)V

    .line 65
    .local v0, "scheduledAction":Lcom/tds/common/reactor/rxandroid/schedulers/LooperScheduler$ScheduledAction;
    iget-object v1, p0, Lcom/tds/common/reactor/rxandroid/schedulers/LooperScheduler$HandlerWorker;->handler:Landroid/os/Handler;

    invoke-static {v1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v1

    .line 66
    .local v1, "message":Landroid/os/Message;
    iput-object p0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 68
    iget-object v2, p0, Lcom/tds/common/reactor/rxandroid/schedulers/LooperScheduler$HandlerWorker;->handler:Landroid/os/Handler;

    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 70
    iget-boolean v2, p0, Lcom/tds/common/reactor/rxandroid/schedulers/LooperScheduler$HandlerWorker;->unsubscribed:Z

    if-eqz v2, :cond_35

    .line 71
    iget-object v2, p0, Lcom/tds/common/reactor/rxandroid/schedulers/LooperScheduler$HandlerWorker;->handler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 72
    invoke-static {}, Lcom/tds/common/reactor/subscriptions/Subscriptions;->unsubscribed()Lcom/tds/common/reactor/Subscription;

    move-result-object v2

    return-object v2

    .line 75
    :cond_35
    return-object v0
.end method

.method public unsubscribe()V
    .registers 2

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tds/common/reactor/rxandroid/schedulers/LooperScheduler$HandlerWorker;->unsubscribed:Z

    .line 47
    iget-object v0, p0, Lcom/tds/common/reactor/rxandroid/schedulers/LooperScheduler$HandlerWorker;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 48
    return-void
.end method
