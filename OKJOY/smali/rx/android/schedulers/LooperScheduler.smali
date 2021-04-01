.class Lrx/android/schedulers/LooperScheduler;
.super Lrx/Scheduler;
.source "LooperScheduler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/android/schedulers/LooperScheduler$ScheduledAction;,
        Lrx/android/schedulers/LooperScheduler$HandlerWorker;
    }
.end annotation


# instance fields
.field private final handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/os/Handler;)V
    .registers 2
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 36
    invoke-direct {p0}, Lrx/Scheduler;-><init>()V

    .line 37
    iput-object p1, p0, Lrx/android/schedulers/LooperScheduler;->handler:Landroid/os/Handler;

    .line 38
    return-void
.end method

.method constructor <init>(Landroid/os/Looper;)V
    .registers 3
    .param p1, "looper"    # Landroid/os/Looper;

    .prologue
    .line 32
    invoke-direct {p0}, Lrx/Scheduler;-><init>()V

    .line 33
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lrx/android/schedulers/LooperScheduler;->handler:Landroid/os/Handler;

    .line 34
    return-void
.end method


# virtual methods
.method public createWorker()Lrx/Scheduler$Worker;
    .registers 3

    .prologue
    .line 42
    new-instance v0, Lrx/android/schedulers/LooperScheduler$HandlerWorker;

    iget-object v1, p0, Lrx/android/schedulers/LooperScheduler;->handler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Lrx/android/schedulers/LooperScheduler$HandlerWorker;-><init>(Landroid/os/Handler;)V

    return-object v0
.end method
