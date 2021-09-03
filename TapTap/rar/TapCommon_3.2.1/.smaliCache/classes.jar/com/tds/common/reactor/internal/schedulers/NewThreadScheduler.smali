.class public final Lcom/tds/common/reactor/internal/schedulers/NewThreadScheduler;
.super Lcom/tds/common/reactor/schedulers/Scheduler;
.source "NewThreadScheduler.java"


# instance fields
.field private final threadFactory:Ljava/util/concurrent/ThreadFactory;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ThreadFactory;)V
    .registers 2
    .param p1, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;

    .line 28
    invoke-direct {p0}, Lcom/tds/common/reactor/schedulers/Scheduler;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/tds/common/reactor/internal/schedulers/NewThreadScheduler;->threadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 30
    return-void
.end method


# virtual methods
.method public createWorker()Lcom/tds/common/reactor/schedulers/Scheduler$Worker;
    .registers 3

    .line 34
    new-instance v0, Lcom/tds/common/reactor/internal/schedulers/NewThreadWorker;

    iget-object v1, p0, Lcom/tds/common/reactor/internal/schedulers/NewThreadScheduler;->threadFactory:Ljava/util/concurrent/ThreadFactory;

    invoke-direct {v0, v1}, Lcom/tds/common/reactor/internal/schedulers/NewThreadWorker;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    return-object v0
.end method
