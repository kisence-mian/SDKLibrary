.class public final Landroidx/core/os/CancellationSignal;
.super Ljava/lang/Object;
.source "CancellationSignal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/os/CancellationSignal$OnCancelListener;
    }
.end annotation


# instance fields
.field private mCancelInProgress:Z

.field private mCancellationSignalObj:Ljava/lang/Object;

.field private mIsCanceled:Z

.field private mOnCancelListener:Landroidx/core/os/CancellationSignal$OnCancelListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method private waitForCancelFinishedLocked()V
    .registers 2

    .line 153
    :goto_0
    iget-boolean v0, p0, Landroidx/core/os/CancellationSignal;->mCancelInProgress:Z

    if-eqz v0, :cond_a

    .line 155
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_7} :catch_8

    .line 157
    :goto_7
    goto :goto_0

    .line 156
    :catch_8
    move-exception v0

    goto :goto_7

    .line 159
    :cond_a
    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 6

    .line 69
    monitor-enter p0

    .line 70
    :try_start_1
    iget-boolean v0, p0, Landroidx/core/os/CancellationSignal;->mIsCanceled:Z

    if-eqz v0, :cond_7

    .line 71
    monitor-exit p0

    return-void

    .line 73
    :cond_7
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/core/os/CancellationSignal;->mIsCanceled:Z

    .line 74
    iput-boolean v0, p0, Landroidx/core/os/CancellationSignal;->mCancelInProgress:Z

    .line 75
    iget-object v0, p0, Landroidx/core/os/CancellationSignal;->mOnCancelListener:Landroidx/core/os/CancellationSignal$OnCancelListener;

    .line 76
    .local v0, "listener":Landroidx/core/os/CancellationSignal$OnCancelListener;
    iget-object v1, p0, Landroidx/core/os/CancellationSignal;->mCancellationSignalObj:Ljava/lang/Object;

    .line 77
    .local v1, "obj":Ljava/lang/Object;
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_40

    .line 80
    const/4 v2, 0x0

    if-eqz v0, :cond_1a

    .line 81
    :try_start_14
    invoke-interface {v0}, Landroidx/core/os/CancellationSignal$OnCancelListener;->onCancel()V

    goto :goto_1a

    .line 87
    :catchall_18
    move-exception v3

    goto :goto_29

    .line 83
    :cond_1a
    :goto_1a
    if-eqz v1, :cond_34

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v3, v4, :cond_34

    .line 84
    move-object v3, v1

    check-cast v3, Landroid/os/CancellationSignal;

    invoke-virtual {v3}, Landroid/os/CancellationSignal;->cancel()V
    :try_end_28
    .catchall {:try_start_14 .. :try_end_28} :catchall_18

    goto :goto_34

    .line 87
    :goto_29
    monitor-enter p0

    .line 88
    :try_start_2a
    iput-boolean v2, p0, Landroidx/core/os/CancellationSignal;->mCancelInProgress:Z

    .line 89
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 90
    monitor-exit p0
    :try_end_30
    .catchall {:try_start_2a .. :try_end_30} :catchall_31

    throw v3

    :catchall_31
    move-exception v2

    :try_start_32
    monitor-exit p0
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    throw v2

    .line 87
    :cond_34
    :goto_34
    monitor-enter p0

    .line 88
    :try_start_35
    iput-boolean v2, p0, Landroidx/core/os/CancellationSignal;->mCancelInProgress:Z

    .line 89
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 90
    monitor-exit p0

    .line 91
    nop

    .line 92
    return-void

    .line 90
    :catchall_3d
    move-exception v2

    monitor-exit p0
    :try_end_3f
    .catchall {:try_start_35 .. :try_end_3f} :catchall_3d

    throw v2

    .line 77
    .end local v0    # "listener":Landroidx/core/os/CancellationSignal$OnCancelListener;
    .end local v1    # "obj":Ljava/lang/Object;
    :catchall_40
    move-exception v0

    :try_start_41
    monitor-exit p0
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_40

    throw v0
.end method

.method public getCancellationSignalObject()Ljava/lang/Object;
    .registers 3

    .line 138
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_8

    .line 139
    const/4 v0, 0x0

    return-object v0

    .line 141
    :cond_8
    monitor-enter p0

    .line 142
    :try_start_9
    iget-object v0, p0, Landroidx/core/os/CancellationSignal;->mCancellationSignalObj:Ljava/lang/Object;

    if-nez v0, :cond_1d

    .line 143
    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v0, p0, Landroidx/core/os/CancellationSignal;->mCancellationSignalObj:Ljava/lang/Object;

    .line 144
    iget-boolean v1, p0, Landroidx/core/os/CancellationSignal;->mIsCanceled:Z

    if-eqz v1, :cond_1d

    .line 145
    check-cast v0, Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    .line 148
    :cond_1d
    iget-object v0, p0, Landroidx/core/os/CancellationSignal;->mCancellationSignalObj:Ljava/lang/Object;

    monitor-exit p0

    return-object v0

    .line 149
    :catchall_21
    move-exception v0

    monitor-exit p0
    :try_end_23
    .catchall {:try_start_9 .. :try_end_23} :catchall_21

    throw v0
.end method

.method public isCanceled()Z
    .registers 2

    .line 46
    monitor-enter p0

    .line 47
    :try_start_1
    iget-boolean v0, p0, Landroidx/core/os/CancellationSignal;->mIsCanceled:Z

    monitor-exit p0

    return v0

    .line 48
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public setOnCancelListener(Landroidx/core/os/CancellationSignal$OnCancelListener;)V
    .registers 3
    .param p1, "listener"    # Landroidx/core/os/CancellationSignal$OnCancelListener;

    .line 111
    monitor-enter p0

    .line 112
    :try_start_1
    invoke-direct {p0}, Landroidx/core/os/CancellationSignal;->waitForCancelFinishedLocked()V

    .line 114
    iget-object v0, p0, Landroidx/core/os/CancellationSignal;->mOnCancelListener:Landroidx/core/os/CancellationSignal$OnCancelListener;

    if-ne v0, p1, :cond_a

    .line 115
    monitor-exit p0

    return-void

    .line 117
    :cond_a
    iput-object p1, p0, Landroidx/core/os/CancellationSignal;->mOnCancelListener:Landroidx/core/os/CancellationSignal$OnCancelListener;

    .line 118
    iget-boolean v0, p0, Landroidx/core/os/CancellationSignal;->mIsCanceled:Z

    if-eqz v0, :cond_18

    if-nez p1, :cond_13

    goto :goto_18

    .line 121
    :cond_13
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_1a

    .line 122
    invoke-interface {p1}, Landroidx/core/os/CancellationSignal$OnCancelListener;->onCancel()V

    .line 123
    return-void

    .line 119
    :cond_18
    :goto_18
    :try_start_18
    monitor-exit p0

    return-void

    .line 121
    :catchall_1a
    move-exception v0

    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_18 .. :try_end_1c} :catchall_1a

    throw v0
.end method

.method public throwIfCanceled()V
    .registers 2

    .line 57
    invoke-virtual {p0}, Landroidx/core/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_7

    .line 60
    return-void

    .line 58
    :cond_7
    new-instance v0, Landroidx/core/os/OperationCanceledException;

    invoke-direct {v0}, Landroidx/core/os/OperationCanceledException;-><init>()V

    throw v0
.end method
