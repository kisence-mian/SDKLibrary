.class public Lcom/tds/common/reactor/rxandroid/schedulers/LooperScheduler;
.super Lcom/tds/common/reactor/schedulers/Scheduler;
.source "LooperScheduler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tds/common/reactor/rxandroid/schedulers/LooperScheduler$ScheduledAction;,
        Lcom/tds/common/reactor/rxandroid/schedulers/LooperScheduler$HandlerWorker;
    }
.end annotation


# instance fields
.field private final handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/os/Handler;)V
    .registers 2
    .param p1, "handler"    # Landroid/os/Handler;

    .line 25
    invoke-direct {p0}, Lcom/tds/common/reactor/schedulers/Scheduler;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/tds/common/reactor/rxandroid/schedulers/LooperScheduler;->handler:Landroid/os/Handler;

    .line 27
    return-void
.end method

.method constructor <init>(Landroid/os/Looper;)V
    .registers 3
    .param p1, "looper"    # Landroid/os/Looper;

    .line 21
    invoke-direct {p0}, Lcom/tds/common/reactor/schedulers/Scheduler;-><init>()V

    .line 22
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/tds/common/reactor/rxandroid/schedulers/LooperScheduler;->handler:Landroid/os/Handler;

    .line 23
    return-void
.end method


# virtual methods
.method public createWorker()Lcom/tds/common/reactor/schedulers/Scheduler$Worker;
    .registers 3

    .line 31
    new-instance v0, Lcom/tds/common/reactor/rxandroid/schedulers/LooperScheduler$HandlerWorker;

    iget-object v1, p0, Lcom/tds/common/reactor/rxandroid/schedulers/LooperScheduler;->handler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Lcom/tds/common/reactor/rxandroid/schedulers/LooperScheduler$HandlerWorker;-><init>(Landroid/os/Handler;)V

    return-object v0
.end method
