.class public final Lrx/internal/schedulers/NewThreadScheduler;
.super Lrx/Scheduler;
.source "NewThreadScheduler.java"


# instance fields
.field private final threadFactory:Ljava/util/concurrent/ThreadFactory;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ThreadFactory;)V
    .registers 2
    .param p1, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;

    .prologue
    .line 27
    invoke-direct {p0}, Lrx/Scheduler;-><init>()V

    .line 28
    iput-object p1, p0, Lrx/internal/schedulers/NewThreadScheduler;->threadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 29
    return-void
.end method


# virtual methods
.method public createWorker()Lrx/Scheduler$Worker;
    .registers 3

    .prologue
    .line 33
    new-instance v0, Lrx/internal/schedulers/NewThreadWorker;

    iget-object v1, p0, Lrx/internal/schedulers/NewThreadScheduler;->threadFactory:Ljava/util/concurrent/ThreadFactory;

    invoke-direct {v0, v1}, Lrx/internal/schedulers/NewThreadWorker;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    return-object v0
.end method
