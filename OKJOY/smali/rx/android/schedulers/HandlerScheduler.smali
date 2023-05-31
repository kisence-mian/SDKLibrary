.class public final Lrx/android/schedulers/HandlerScheduler;
.super Lrx/android/schedulers/LooperScheduler;
.source "HandlerScheduler.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method private constructor <init>(Landroid/os/Handler;)V
    .registers 2
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lrx/android/schedulers/LooperScheduler;-><init>(Landroid/os/Handler;)V

    .line 40
    return-void
.end method

.method public static from(Landroid/os/Handler;)Lrx/android/schedulers/HandlerScheduler;
    .registers 3
    .param p0, "handler"    # Landroid/os/Handler;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 34
    if-nez p0, :cond_a

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "handler == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 35
    :cond_a
    new-instance v0, Lrx/android/schedulers/HandlerScheduler;

    invoke-direct {v0, p0}, Lrx/android/schedulers/HandlerScheduler;-><init>(Landroid/os/Handler;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic createWorker()Lrx/Scheduler$Worker;
    .registers 2

    .prologue
    .line 25
    invoke-super {p0}, Lrx/android/schedulers/LooperScheduler;->createWorker()Lrx/Scheduler$Worker;

    move-result-object v0

    return-object v0
.end method
