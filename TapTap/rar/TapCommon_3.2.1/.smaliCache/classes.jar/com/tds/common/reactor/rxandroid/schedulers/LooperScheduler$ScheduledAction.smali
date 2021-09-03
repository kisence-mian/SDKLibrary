.class final Lcom/tds/common/reactor/rxandroid/schedulers/LooperScheduler$ScheduledAction;
.super Ljava/lang/Object;
.source "LooperScheduler.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lcom/tds/common/reactor/Subscription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tds/common/reactor/rxandroid/schedulers/LooperScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ScheduledAction"
.end annotation


# instance fields
.field private final action:Lcom/tds/common/reactor/functions/Action0;

.field private final handler:Landroid/os/Handler;

.field private volatile unsubscribed:Z


# direct methods
.method constructor <init>(Lcom/tds/common/reactor/functions/Action0;Landroid/os/Handler;)V
    .registers 3
    .param p1, "action"    # Lcom/tds/common/reactor/functions/Action0;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p1, p0, Lcom/tds/common/reactor/rxandroid/schedulers/LooperScheduler$ScheduledAction;->action:Lcom/tds/common/reactor/functions/Action0;

    .line 91
    iput-object p2, p0, Lcom/tds/common/reactor/rxandroid/schedulers/LooperScheduler$ScheduledAction;->handler:Landroid/os/Handler;

    .line 92
    return-void
.end method


# virtual methods
.method public isUnsubscribed()Z
    .registers 2

    .line 120
    iget-boolean v0, p0, Lcom/tds/common/reactor/rxandroid/schedulers/LooperScheduler$ScheduledAction;->unsubscribed:Z

    return v0
.end method

.method public run()V
    .registers 5

    .line 97
    :try_start_0
    iget-object v0, p0, Lcom/tds/common/reactor/rxandroid/schedulers/LooperScheduler$ScheduledAction;->action:Lcom/tds/common/reactor/functions/Action0;

    invoke-interface {v0}, Lcom/tds/common/reactor/functions/Action0;->call()V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_6

    .line 109
    goto :goto_30

    .line 98
    :catchall_6
    move-exception v0

    .line 101
    .local v0, "e":Ljava/lang/Throwable;
    instance-of v1, v0, Lcom/tds/common/reactor/exceptions/OnErrorNotImplementedException;

    if-eqz v1, :cond_13

    .line 102
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Exception thrown on Scheduler.Worker thread. Add `onError` handling."

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .local v1, "ie":Ljava/lang/IllegalStateException;
    goto :goto_1a

    .line 104
    .end local v1    # "ie":Ljava/lang/IllegalStateException;
    :cond_13
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Fatal Exception thrown on Scheduler.Worker thread."

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 106
    .restart local v1    # "ie":Ljava/lang/IllegalStateException;
    :goto_1a
    invoke-static {}, Lcom/tds/common/reactor/plugins/RxJavaPlugins;->getInstance()Lcom/tds/common/reactor/plugins/RxJavaPlugins;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tds/common/reactor/plugins/RxJavaPlugins;->getErrorHandler()Lcom/tds/common/reactor/plugins/RxJavaErrorHandler;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/tds/common/reactor/plugins/RxJavaErrorHandler;->handleError(Ljava/lang/Throwable;)V

    .line 107
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    .line 108
    .local v2, "thread":Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v3

    invoke-interface {v3, v2, v1}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 110
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v1    # "ie":Ljava/lang/IllegalStateException;
    .end local v2    # "thread":Ljava/lang/Thread;
    :goto_30
    return-void
.end method

.method public unsubscribe()V
    .registers 2

    .line 114
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tds/common/reactor/rxandroid/schedulers/LooperScheduler$ScheduledAction;->unsubscribed:Z

    .line 115
    iget-object v0, p0, Lcom/tds/common/reactor/rxandroid/schedulers/LooperScheduler$ScheduledAction;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 116
    return-void
.end method
