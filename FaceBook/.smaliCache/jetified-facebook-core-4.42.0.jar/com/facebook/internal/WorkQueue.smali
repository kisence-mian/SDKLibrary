.class public Lcom/facebook/internal/WorkQueue;
.super Ljava/lang/Object;
.source "WorkQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/internal/WorkQueue$WorkItem;,
        Lcom/facebook/internal/WorkQueue$WorkNode;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final DEFAULT_MAX_CONCURRENT:I = 0x8


# instance fields
.field private final executor:Ljava/util/concurrent/Executor;

.field private final maxConcurrent:I

.field private pendingJobs:Lcom/facebook/internal/WorkQueue$WorkNode;

.field private runningCount:I

.field private runningJobs:Lcom/facebook/internal/WorkQueue$WorkNode;

.field private final workLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 32
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 45
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/facebook/internal/WorkQueue;-><init>(I)V

    .line 46
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .param p1, "maxConcurrent"    # I

    .line 49
    invoke-static {}, Lcom/facebook/FacebookSdk;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/facebook/internal/WorkQueue;-><init>(ILjava/util/concurrent/Executor;)V

    .line 50
    return-void
.end method

.method public constructor <init>(ILjava/util/concurrent/Executor;)V
    .registers 4
    .param p1, "maxConcurrent"    # I
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/facebook/internal/WorkQueue;->workLock:Ljava/lang/Object;

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/internal/WorkQueue;->runningJobs:Lcom/facebook/internal/WorkQueue$WorkNode;

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/internal/WorkQueue;->runningCount:I

    .line 53
    iput p1, p0, Lcom/facebook/internal/WorkQueue;->maxConcurrent:I

    .line 54
    iput-object p2, p0, Lcom/facebook/internal/WorkQueue;->executor:Ljava/util/concurrent/Executor;

    .line 55
    return-void
.end method

.method static synthetic access$000(Lcom/facebook/internal/WorkQueue;Lcom/facebook/internal/WorkQueue$WorkNode;)V
    .registers 2
    .param p0, "x0"    # Lcom/facebook/internal/WorkQueue;
    .param p1, "x1"    # Lcom/facebook/internal/WorkQueue$WorkNode;

    .line 32
    invoke-direct {p0, p1}, Lcom/facebook/internal/WorkQueue;->finishItemAndStartNew(Lcom/facebook/internal/WorkQueue$WorkNode;)V

    return-void
.end method

.method static synthetic access$100(Lcom/facebook/internal/WorkQueue;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/facebook/internal/WorkQueue;

    .line 32
    iget-object v0, p0, Lcom/facebook/internal/WorkQueue;->workLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lcom/facebook/internal/WorkQueue;)Lcom/facebook/internal/WorkQueue$WorkNode;
    .registers 2
    .param p0, "x0"    # Lcom/facebook/internal/WorkQueue;

    .line 32
    iget-object v0, p0, Lcom/facebook/internal/WorkQueue;->pendingJobs:Lcom/facebook/internal/WorkQueue$WorkNode;

    return-object v0
.end method

.method static synthetic access$202(Lcom/facebook/internal/WorkQueue;Lcom/facebook/internal/WorkQueue$WorkNode;)Lcom/facebook/internal/WorkQueue$WorkNode;
    .registers 2
    .param p0, "x0"    # Lcom/facebook/internal/WorkQueue;
    .param p1, "x1"    # Lcom/facebook/internal/WorkQueue$WorkNode;

    .line 32
    iput-object p1, p0, Lcom/facebook/internal/WorkQueue;->pendingJobs:Lcom/facebook/internal/WorkQueue$WorkNode;

    return-object p1
.end method

.method private execute(Lcom/facebook/internal/WorkQueue$WorkNode;)V
    .registers 4
    .param p1, "node"    # Lcom/facebook/internal/WorkQueue$WorkNode;

    .line 123
    iget-object v0, p0, Lcom/facebook/internal/WorkQueue;->executor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/facebook/internal/WorkQueue$1;

    invoke-direct {v1, p0, p1}, Lcom/facebook/internal/WorkQueue$1;-><init>(Lcom/facebook/internal/WorkQueue;Lcom/facebook/internal/WorkQueue$WorkNode;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 133
    return-void
.end method

.method private finishItemAndStartNew(Lcom/facebook/internal/WorkQueue$WorkNode;)V
    .registers 7
    .param p1, "finished"    # Lcom/facebook/internal/WorkQueue$WorkNode;

    .line 94
    const/4 v0, 0x0

    .line 96
    .local v0, "ready":Lcom/facebook/internal/WorkQueue$WorkNode;
    iget-object v1, p0, Lcom/facebook/internal/WorkQueue;->workLock:Ljava/lang/Object;

    monitor-enter v1

    .line 97
    const/4 v2, 0x1

    if-eqz p1, :cond_14

    .line 98
    :try_start_7
    iget-object v3, p0, Lcom/facebook/internal/WorkQueue;->runningJobs:Lcom/facebook/internal/WorkQueue$WorkNode;

    invoke-virtual {p1, v3}, Lcom/facebook/internal/WorkQueue$WorkNode;->removeFromList(Lcom/facebook/internal/WorkQueue$WorkNode;)Lcom/facebook/internal/WorkQueue$WorkNode;

    move-result-object v3

    iput-object v3, p0, Lcom/facebook/internal/WorkQueue;->runningJobs:Lcom/facebook/internal/WorkQueue$WorkNode;

    .line 99
    iget v3, p0, Lcom/facebook/internal/WorkQueue;->runningCount:I

    sub-int/2addr v3, v2

    iput v3, p0, Lcom/facebook/internal/WorkQueue;->runningCount:I

    .line 102
    :cond_14
    iget v3, p0, Lcom/facebook/internal/WorkQueue;->runningCount:I

    iget v4, p0, Lcom/facebook/internal/WorkQueue;->maxConcurrent:I

    if-ge v3, v4, :cond_36

    .line 103
    iget-object v3, p0, Lcom/facebook/internal/WorkQueue;->pendingJobs:Lcom/facebook/internal/WorkQueue$WorkNode;

    move-object v0, v3

    .line 104
    if-eqz v0, :cond_36

    .line 108
    invoke-virtual {v0, v3}, Lcom/facebook/internal/WorkQueue$WorkNode;->removeFromList(Lcom/facebook/internal/WorkQueue$WorkNode;)Lcom/facebook/internal/WorkQueue$WorkNode;

    move-result-object v3

    iput-object v3, p0, Lcom/facebook/internal/WorkQueue;->pendingJobs:Lcom/facebook/internal/WorkQueue$WorkNode;

    .line 109
    iget-object v3, p0, Lcom/facebook/internal/WorkQueue;->runningJobs:Lcom/facebook/internal/WorkQueue$WorkNode;

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lcom/facebook/internal/WorkQueue$WorkNode;->addToList(Lcom/facebook/internal/WorkQueue$WorkNode;Z)Lcom/facebook/internal/WorkQueue$WorkNode;

    move-result-object v3

    iput-object v3, p0, Lcom/facebook/internal/WorkQueue;->runningJobs:Lcom/facebook/internal/WorkQueue$WorkNode;

    .line 110
    iget v3, p0, Lcom/facebook/internal/WorkQueue;->runningCount:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/facebook/internal/WorkQueue;->runningCount:I

    .line 112
    invoke-virtual {v0, v2}, Lcom/facebook/internal/WorkQueue$WorkNode;->setIsRunning(Z)V

    .line 115
    :cond_36
    monitor-exit v1
    :try_end_37
    .catchall {:try_start_7 .. :try_end_37} :catchall_3d

    .line 117
    if-eqz v0, :cond_3c

    .line 118
    invoke-direct {p0, v0}, Lcom/facebook/internal/WorkQueue;->execute(Lcom/facebook/internal/WorkQueue$WorkNode;)V

    .line 120
    :cond_3c
    return-void

    .line 115
    :catchall_3d
    move-exception v2

    :try_start_3e
    monitor-exit v1
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3d

    throw v2
.end method

.method private startItem()V
    .registers 2

    .line 90
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/internal/WorkQueue;->finishItemAndStartNew(Lcom/facebook/internal/WorkQueue$WorkNode;)V

    .line 91
    return-void
.end method


# virtual methods
.method public addActiveWorkItem(Ljava/lang/Runnable;)Lcom/facebook/internal/WorkQueue$WorkItem;
    .registers 3
    .param p1, "callback"    # Ljava/lang/Runnable;

    .line 58
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/facebook/internal/WorkQueue;->addActiveWorkItem(Ljava/lang/Runnable;Z)Lcom/facebook/internal/WorkQueue$WorkItem;

    move-result-object v0

    return-object v0
.end method

.method public addActiveWorkItem(Ljava/lang/Runnable;Z)Lcom/facebook/internal/WorkQueue$WorkItem;
    .registers 6
    .param p1, "callback"    # Ljava/lang/Runnable;
    .param p2, "addToFront"    # Z

    .line 62
    new-instance v0, Lcom/facebook/internal/WorkQueue$WorkNode;

    invoke-direct {v0, p0, p1}, Lcom/facebook/internal/WorkQueue$WorkNode;-><init>(Lcom/facebook/internal/WorkQueue;Ljava/lang/Runnable;)V

    .line 63
    .local v0, "node":Lcom/facebook/internal/WorkQueue$WorkNode;
    iget-object v1, p0, Lcom/facebook/internal/WorkQueue;->workLock:Ljava/lang/Object;

    monitor-enter v1

    .line 64
    :try_start_8
    iget-object v2, p0, Lcom/facebook/internal/WorkQueue;->pendingJobs:Lcom/facebook/internal/WorkQueue$WorkNode;

    invoke-virtual {v0, v2, p2}, Lcom/facebook/internal/WorkQueue$WorkNode;->addToList(Lcom/facebook/internal/WorkQueue$WorkNode;Z)Lcom/facebook/internal/WorkQueue$WorkNode;

    move-result-object v2

    iput-object v2, p0, Lcom/facebook/internal/WorkQueue;->pendingJobs:Lcom/facebook/internal/WorkQueue$WorkNode;

    .line 65
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_8 .. :try_end_11} :catchall_15

    .line 67
    invoke-direct {p0}, Lcom/facebook/internal/WorkQueue;->startItem()V

    .line 68
    return-object v0

    .line 65
    :catchall_15
    move-exception v2

    :try_start_16
    monitor-exit v1
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw v2
.end method

.method public validate()V
    .registers 5

    .line 72
    iget-object v0, p0, Lcom/facebook/internal/WorkQueue;->workLock:Ljava/lang/Object;

    monitor-enter v0

    .line 74
    const/4 v1, 0x0

    .line 76
    .local v1, "count":I
    :try_start_4
    iget-object v2, p0, Lcom/facebook/internal/WorkQueue;->runningJobs:Lcom/facebook/internal/WorkQueue$WorkNode;

    if-eqz v2, :cond_17

    .line 77
    nop

    .line 79
    .local v2, "walk":Lcom/facebook/internal/WorkQueue$WorkNode;
    :cond_9
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/facebook/internal/WorkQueue$WorkNode;->verify(Z)V

    .line 80
    add-int/2addr v1, v3

    .line 81
    invoke-virtual {v2}, Lcom/facebook/internal/WorkQueue$WorkNode;->getNext()Lcom/facebook/internal/WorkQueue$WorkNode;

    move-result-object v3

    move-object v2, v3

    .line 82
    iget-object v3, p0, Lcom/facebook/internal/WorkQueue;->runningJobs:Lcom/facebook/internal/WorkQueue$WorkNode;

    if-ne v2, v3, :cond_9

    .line 85
    .end local v2    # "walk":Lcom/facebook/internal/WorkQueue$WorkNode;
    :cond_17
    nop

    .line 86
    .end local v1    # "count":I
    monitor-exit v0

    .line 87
    return-void

    .line 86
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_4 .. :try_end_1c} :catchall_1a

    goto :goto_1e

    :goto_1d
    throw v1

    :goto_1e
    goto :goto_1d
.end method
