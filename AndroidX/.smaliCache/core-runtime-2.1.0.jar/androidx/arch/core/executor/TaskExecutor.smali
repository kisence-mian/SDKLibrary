.class public abstract Landroidx/arch/core/executor/TaskExecutor;
.super Ljava/lang/Object;
.source "TaskExecutor.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract executeOnDiskIO(Ljava/lang/Runnable;)V
.end method

.method public executeOnMainThread(Ljava/lang/Runnable;)V
    .registers 3
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 54
    invoke-virtual {p0}, Landroidx/arch/core/executor/TaskExecutor;->isMainThread()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 55
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_d

    .line 57
    :cond_a
    invoke-virtual {p0, p1}, Landroidx/arch/core/executor/TaskExecutor;->postToMainThread(Ljava/lang/Runnable;)V

    .line 59
    :goto_d
    return-void
.end method

.method public abstract isMainThread()Z
.end method

.method public abstract postToMainThread(Ljava/lang/Runnable;)V
.end method
