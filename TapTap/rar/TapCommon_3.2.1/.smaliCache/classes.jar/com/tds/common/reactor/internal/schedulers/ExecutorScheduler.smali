.class public final Lcom/tds/common/reactor/internal/schedulers/ExecutorScheduler;
.super Lcom/tds/common/reactor/schedulers/Scheduler;
.source "ExecutorScheduler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tds/common/reactor/internal/schedulers/ExecutorScheduler$ExecutorSchedulerWorker;
    }
.end annotation


# instance fields
.field final executor:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .registers 2
    .param p1, "executor"    # Ljava/util/concurrent/Executor;

    .line 44
    invoke-direct {p0}, Lcom/tds/common/reactor/schedulers/Scheduler;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/tds/common/reactor/internal/schedulers/ExecutorScheduler;->executor:Ljava/util/concurrent/Executor;

    .line 46
    return-void
.end method


# virtual methods
.method public createWorker()Lcom/tds/common/reactor/schedulers/Scheduler$Worker;
    .registers 3

    .line 50
    new-instance v0, Lcom/tds/common/reactor/internal/schedulers/ExecutorScheduler$ExecutorSchedulerWorker;

    iget-object v1, p0, Lcom/tds/common/reactor/internal/schedulers/ExecutorScheduler;->executor:Ljava/util/concurrent/Executor;

    invoke-direct {v0, v1}, Lcom/tds/common/reactor/internal/schedulers/ExecutorScheduler$ExecutorSchedulerWorker;-><init>(Ljava/util/concurrent/Executor;)V

    return-object v0
.end method
