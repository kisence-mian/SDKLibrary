.class Lrx/internal/schedulers/SleepingAction;
.super Ljava/lang/Object;
.source "SleepingAction.java"

# interfaces
.implements Lrx/functions/Action0;


# instance fields
.field private final execTime:J

.field private final innerScheduler:Lrx/Scheduler$Worker;

.field private final underlying:Lrx/functions/Action0;


# direct methods
.method public constructor <init>(Lrx/functions/Action0;Lrx/Scheduler$Worker;J)V
    .registers 6
    .param p1, "underlying"    # Lrx/functions/Action0;
    .param p2, "scheduler"    # Lrx/Scheduler$Worker;
    .param p3, "execTime"    # J

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lrx/internal/schedulers/SleepingAction;->underlying:Lrx/functions/Action0;

    .line 29
    iput-object p2, p0, Lrx/internal/schedulers/SleepingAction;->innerScheduler:Lrx/Scheduler$Worker;

    .line 30
    iput-wide p3, p0, Lrx/internal/schedulers/SleepingAction;->execTime:J

    .line 31
    return-void
.end method


# virtual methods
.method public call()V
    .registers 9

    .prologue
    .line 35
    iget-object v3, p0, Lrx/internal/schedulers/SleepingAction;->innerScheduler:Lrx/Scheduler$Worker;

    invoke-virtual {v3}, Lrx/Scheduler$Worker;->isUnsubscribed()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 54
    :cond_8
    :goto_8
    return-void

    .line 39
    :cond_9
    iget-wide v4, p0, Lrx/internal/schedulers/SleepingAction;->execTime:J

    iget-object v3, p0, Lrx/internal/schedulers/SleepingAction;->innerScheduler:Lrx/Scheduler$Worker;

    invoke-virtual {v3}, Lrx/Scheduler$Worker;->now()J

    move-result-wide v6

    sub-long v0, v4, v6

    .line 40
    .local v0, "delay":J
    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-lez v3, :cond_1c

    .line 42
    :try_start_19
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1c
    .catch Ljava/lang/InterruptedException; {:try_start_19 .. :try_end_1c} :catch_2a

    .line 50
    :cond_1c
    :goto_1c
    iget-object v3, p0, Lrx/internal/schedulers/SleepingAction;->innerScheduler:Lrx/Scheduler$Worker;

    invoke-virtual {v3}, Lrx/Scheduler$Worker;->isUnsubscribed()Z

    move-result v3

    if-nez v3, :cond_8

    .line 53
    iget-object v3, p0, Lrx/internal/schedulers/SleepingAction;->underlying:Lrx/functions/Action0;

    invoke-interface {v3}, Lrx/functions/Action0;->call()V

    goto :goto_8

    .line 43
    :catch_2a
    move-exception v2

    .line 44
    .local v2, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    .line 45
    invoke-static {v2}, Lrx/exceptions/Exceptions;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    goto :goto_1c
.end method
