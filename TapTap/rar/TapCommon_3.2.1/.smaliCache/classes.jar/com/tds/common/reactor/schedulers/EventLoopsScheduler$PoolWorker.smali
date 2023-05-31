.class final Lcom/tds/common/reactor/schedulers/EventLoopsScheduler$PoolWorker;
.super Lcom/tds/common/reactor/internal/schedulers/NewThreadWorker;
.source "EventLoopsScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tds/common/reactor/schedulers/EventLoopsScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PoolWorker"
.end annotation


# direct methods
.method constructor <init>(Ljava/util/concurrent/ThreadFactory;)V
    .registers 2
    .param p1, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;

    .line 200
    invoke-direct {p0, p1}, Lcom/tds/common/reactor/internal/schedulers/NewThreadWorker;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    .line 201
    return-void
.end method
