.class public Landroidx/core/provider/SelfDestructiveThread;
.super Ljava/lang/Object;
.source "SelfDestructiveThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/provider/SelfDestructiveThread$ReplyCallback;
    }
.end annotation


# static fields
.field private static final MSG_DESTRUCTION:I = 0x0

.field private static final MSG_INVOKE_RUNNABLE:I = 0x1


# instance fields
.field private mCallback:Landroid/os/Handler$Callback;

.field private final mDestructAfterMillisec:I

.field private mGeneration:I

.field private mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private final mPriority:I

.field private mThread:Landroid/os/HandlerThread;

.field private final mThreadName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .registers 5
    .param p1, "threadName"    # Ljava/lang/String;
    .param p2, "priority"    # I
    .param p3, "destructAfterMillisec"    # I

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/core/provider/SelfDestructiveThread;->mLock:Ljava/lang/Object;

    .line 58
    new-instance v0, Landroidx/core/provider/SelfDestructiveThread$1;

    invoke-direct {v0, p0}, Landroidx/core/provider/SelfDestructiveThread$1;-><init>(Landroidx/core/provider/SelfDestructiveThread;)V

    iput-object v0, p0, Landroidx/core/provider/SelfDestructiveThread;->mCallback:Landroid/os/Handler$Callback;

    .line 80
    iput-object p1, p0, Landroidx/core/provider/SelfDestructiveThread;->mThreadName:Ljava/lang/String;

    .line 81
    iput p2, p0, Landroidx/core/provider/SelfDestructiveThread;->mPriority:I

    .line 82
    iput p3, p0, Landroidx/core/provider/SelfDestructiveThread;->mDestructAfterMillisec:I

    .line 83
    const/4 v0, 0x0

    iput v0, p0, Landroidx/core/provider/SelfDestructiveThread;->mGeneration:I

    .line 84
    return-void
.end method

.method private post(Ljava/lang/Runnable;)V
    .registers 7
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 107
    iget-object v0, p0, Landroidx/core/provider/SelfDestructiveThread;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 108
    :try_start_3
    iget-object v1, p0, Landroidx/core/provider/SelfDestructiveThread;->mThread:Landroid/os/HandlerThread;

    const/4 v2, 0x1

    if-nez v1, :cond_2a

    .line 109
    new-instance v1, Landroid/os/HandlerThread;

    iget-object v3, p0, Landroidx/core/provider/SelfDestructiveThread;->mThreadName:Ljava/lang/String;

    iget v4, p0, Landroidx/core/provider/SelfDestructiveThread;->mPriority:I

    invoke-direct {v1, v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Landroidx/core/provider/SelfDestructiveThread;->mThread:Landroid/os/HandlerThread;

    .line 110
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 111
    new-instance v1, Landroid/os/Handler;

    iget-object v3, p0, Landroidx/core/provider/SelfDestructiveThread;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    iget-object v4, p0, Landroidx/core/provider/SelfDestructiveThread;->mCallback:Landroid/os/Handler$Callback;

    invoke-direct {v1, v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Landroidx/core/provider/SelfDestructiveThread;->mHandler:Landroid/os/Handler;

    .line 112
    iget v1, p0, Landroidx/core/provider/SelfDestructiveThread;->mGeneration:I

    add-int/2addr v1, v2

    iput v1, p0, Landroidx/core/provider/SelfDestructiveThread;->mGeneration:I

    .line 114
    :cond_2a
    iget-object v1, p0, Landroidx/core/provider/SelfDestructiveThread;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 115
    iget-object v1, p0, Landroidx/core/provider/SelfDestructiveThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 116
    monitor-exit v0

    .line 117
    return-void

    .line 116
    :catchall_3b
    move-exception v1

    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_3 .. :try_end_3d} :catchall_3b

    throw v1
.end method


# virtual methods
.method public getGeneration()I
    .registers 3

    .line 101
    iget-object v0, p0, Landroidx/core/provider/SelfDestructiveThread;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 102
    :try_start_3
    iget v1, p0, Landroidx/core/provider/SelfDestructiveThread;->mGeneration:I

    monitor-exit v0

    return v1

    .line 103
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public isRunning()Z
    .registers 3

    .line 91
    iget-object v0, p0, Landroidx/core/provider/SelfDestructiveThread;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 92
    :try_start_3
    iget-object v1, p0, Landroidx/core/provider/SelfDestructiveThread;->mThread:Landroid/os/HandlerThread;

    if-eqz v1, :cond_9

    const/4 v1, 0x1

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    monitor-exit v0

    return v1

    .line 93
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method onDestruction()V
    .registers 4

    .line 223
    iget-object v0, p0, Landroidx/core/provider/SelfDestructiveThread;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 224
    :try_start_3
    iget-object v1, p0, Landroidx/core/provider/SelfDestructiveThread;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 227
    monitor-exit v0

    return-void

    .line 229
    :cond_e
    iget-object v1, p0, Landroidx/core/provider/SelfDestructiveThread;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    .line 230
    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/core/provider/SelfDestructiveThread;->mThread:Landroid/os/HandlerThread;

    .line 231
    iput-object v1, p0, Landroidx/core/provider/SelfDestructiveThread;->mHandler:Landroid/os/Handler;

    .line 232
    monitor-exit v0

    .line 233
    return-void

    .line 232
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method onInvokeRunnable(Ljava/lang/Runnable;)V
    .registers 7
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 214
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 215
    iget-object v0, p0, Landroidx/core/provider/SelfDestructiveThread;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 216
    :try_start_6
    iget-object v1, p0, Landroidx/core/provider/SelfDestructiveThread;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 217
    iget-object v1, p0, Landroidx/core/provider/SelfDestructiveThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    iget v3, p0, Landroidx/core/provider/SelfDestructiveThread;->mDestructAfterMillisec:I

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 219
    monitor-exit v0

    .line 220
    return-void

    .line 219
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_6 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method public postAndReply(Ljava/util/concurrent/Callable;Landroidx/core/provider/SelfDestructiveThread$ReplyCallback;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;",
            "Landroidx/core/provider/SelfDestructiveThread$ReplyCallback<",
            "TT;>;)V"
        }
    .end annotation

    .line 136
    .local p1, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    .local p2, "reply":Landroidx/core/provider/SelfDestructiveThread$ReplyCallback;, "Landroidx/core/provider/SelfDestructiveThread$ReplyCallback<TT;>;"
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 137
    .local v0, "callingHandler":Landroid/os/Handler;
    new-instance v1, Landroidx/core/provider/SelfDestructiveThread$2;

    invoke-direct {v1, p0, p1, v0, p2}, Landroidx/core/provider/SelfDestructiveThread$2;-><init>(Landroidx/core/provider/SelfDestructiveThread;Ljava/util/concurrent/Callable;Landroid/os/Handler;Landroidx/core/provider/SelfDestructiveThread$ReplyCallback;)V

    invoke-direct {p0, v1}, Landroidx/core/provider/SelfDestructiveThread;->post(Ljava/lang/Runnable;)V

    .line 155
    return-void
.end method

.method public postAndWait(Ljava/util/concurrent/Callable;I)Ljava/lang/Object;
    .registers 13
    .param p2, "timeoutMillis"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;I)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 166
    .local p1, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    new-instance v4, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v4}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 167
    .local v4, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v7

    .line 169
    .local v7, "cond":Ljava/util/concurrent/locks/Condition;
    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 170
    .local v2, "holder":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<TT;>;"
    new-instance v5, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-direct {v5, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 171
    .local v5, "running":Ljava/util/concurrent/atomic/AtomicBoolean;
    new-instance v8, Landroidx/core/provider/SelfDestructiveThread$3;

    move-object v0, v8

    move-object v1, p0

    move-object v3, p1

    move-object v6, v7

    invoke-direct/range {v0 .. v6}, Landroidx/core/provider/SelfDestructiveThread$3;-><init>(Landroidx/core/provider/SelfDestructiveThread;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/Callable;Ljava/util/concurrent/locks/ReentrantLock;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/locks/Condition;)V

    invoke-direct {p0, v8}, Landroidx/core/provider/SelfDestructiveThread;->post(Ljava/lang/Runnable;)V

    .line 189
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 191
    :try_start_23
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_31

    .line 192
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0
    :try_end_2d
    .catchall {:try_start_23 .. :try_end_2d} :catchall_5c

    .line 209
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 192
    return-object v0

    .line 194
    :cond_31
    :try_start_31
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v8, p2

    invoke-virtual {v0, v8, v9}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0
    :try_end_38
    .catchall {:try_start_31 .. :try_end_38} :catchall_5c

    .line 197
    .local v0, "remaining":J
    :goto_38
    :try_start_38
    invoke-interface {v7, v0, v1}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J

    move-result-wide v8
    :try_end_3c
    .catch Ljava/lang/InterruptedException; {:try_start_38 .. :try_end_3c} :catch_3e
    .catchall {:try_start_38 .. :try_end_3c} :catchall_5c

    move-wide v0, v8

    .line 200
    goto :goto_3f

    .line 198
    :catch_3e
    move-exception v3

    .line 201
    :goto_3f
    :try_start_3f
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-nez v3, :cond_4d

    .line 202
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3
    :try_end_49
    .catchall {:try_start_3f .. :try_end_49} :catchall_5c

    .line 209
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 202
    return-object v3

    .line 204
    :cond_4d
    const-wide/16 v8, 0x0

    cmp-long v3, v0, v8

    if-lez v3, :cond_54

    goto :goto_38

    .line 205
    :cond_54
    :try_start_54
    new-instance v3, Ljava/lang/InterruptedException;

    const-string v6, "timeout"

    invoke-direct {v3, v6}, Ljava/lang/InterruptedException;-><init>(Ljava/lang/String;)V

    .end local v2    # "holder":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<TT;>;"
    .end local v4    # "lock":Ljava/util/concurrent/locks/ReentrantLock;
    .end local v5    # "running":Ljava/util/concurrent/atomic/AtomicBoolean;
    .end local v7    # "cond":Ljava/util/concurrent/locks/Condition;
    .end local p1    # "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    .end local p2    # "timeoutMillis":I
    throw v3
    :try_end_5c
    .catchall {:try_start_54 .. :try_end_5c} :catchall_5c

    .line 209
    .end local v0    # "remaining":J
    .restart local v2    # "holder":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<TT;>;"
    .restart local v4    # "lock":Ljava/util/concurrent/locks/ReentrantLock;
    .restart local v5    # "running":Ljava/util/concurrent/atomic/AtomicBoolean;
    .restart local v7    # "cond":Ljava/util/concurrent/locks/Condition;
    .restart local p1    # "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    .restart local p2    # "timeoutMillis":I
    :catchall_5c
    move-exception v0

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_62

    :goto_61
    throw v0

    :goto_62
    goto :goto_61
.end method
