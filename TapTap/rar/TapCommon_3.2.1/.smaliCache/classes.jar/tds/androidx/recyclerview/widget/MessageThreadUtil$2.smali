.class Ltds/androidx/recyclerview/widget/MessageThreadUtil$2;
.super Ljava/lang/Object;
.source "MessageThreadUtil.java"

# interfaces
.implements Ltds/androidx/recyclerview/widget/ThreadUtil$BackgroundCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltds/androidx/recyclerview/widget/MessageThreadUtil;->getBackgroundProxy(Ltds/androidx/recyclerview/widget/ThreadUtil$BackgroundCallback;)Ltds/androidx/recyclerview/widget/ThreadUtil$BackgroundCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ltds/androidx/recyclerview/widget/ThreadUtil$BackgroundCallback<",
        "TT;>;"
    }
.end annotation


# static fields
.field static final LOAD_TILE:I = 0x3

.field static final RECYCLE_TILE:I = 0x4

.field static final REFRESH:I = 0x1

.field static final UPDATE_RANGE:I = 0x2


# instance fields
.field private mBackgroundRunnable:Ljava/lang/Runnable;

.field mBackgroundRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mExecutor:Ljava/util/concurrent/Executor;

.field final mQueue:Ltds/androidx/recyclerview/widget/MessageThreadUtil$MessageQueue;

.field final synthetic this$0:Ltds/androidx/recyclerview/widget/MessageThreadUtil;

.field final synthetic val$callback:Ltds/androidx/recyclerview/widget/ThreadUtil$BackgroundCallback;


# direct methods
.method constructor <init>(Ltds/androidx/recyclerview/widget/MessageThreadUtil;Ltds/androidx/recyclerview/widget/ThreadUtil$BackgroundCallback;)V
    .registers 4
    .param p1, "this$0"    # Ltds/androidx/recyclerview/widget/MessageThreadUtil;

    .line 88
    .local p0, "this":Ltds/androidx/recyclerview/widget/MessageThreadUtil$2;, "Ltds/androidx/recyclerview/widget/MessageThreadUtil$2;"
    iput-object p1, p0, Ltds/androidx/recyclerview/widget/MessageThreadUtil$2;->this$0:Ltds/androidx/recyclerview/widget/MessageThreadUtil;

    iput-object p2, p0, Ltds/androidx/recyclerview/widget/MessageThreadUtil$2;->val$callback:Ltds/androidx/recyclerview/widget/ThreadUtil$BackgroundCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance p2, Ltds/androidx/recyclerview/widget/MessageThreadUtil$MessageQueue;

    invoke-direct {p2}, Ltds/androidx/recyclerview/widget/MessageThreadUtil$MessageQueue;-><init>()V

    iput-object p2, p0, Ltds/androidx/recyclerview/widget/MessageThreadUtil$2;->mQueue:Ltds/androidx/recyclerview/widget/MessageThreadUtil$MessageQueue;

    .line 90
    sget-object p2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Ltds/androidx/recyclerview/widget/MessageThreadUtil$2;->mExecutor:Ljava/util/concurrent/Executor;

    .line 91
    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p2, p0, Ltds/androidx/recyclerview/widget/MessageThreadUtil$2;->mBackgroundRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 136
    new-instance p2, Ltds/androidx/recyclerview/widget/MessageThreadUtil$2$1;

    invoke-direct {p2, p0}, Ltds/androidx/recyclerview/widget/MessageThreadUtil$2$1;-><init>(Ltds/androidx/recyclerview/widget/MessageThreadUtil$2;)V

    iput-object p2, p0, Ltds/androidx/recyclerview/widget/MessageThreadUtil$2;->mBackgroundRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private maybeExecuteBackgroundRunnable()V
    .registers 4

    .line 131
    .local p0, "this":Ltds/androidx/recyclerview/widget/MessageThreadUtil$2;, "Ltds/androidx/recyclerview/widget/MessageThreadUtil$2;"
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/MessageThreadUtil$2;->mBackgroundRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 132
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/MessageThreadUtil$2;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Ltds/androidx/recyclerview/widget/MessageThreadUtil$2;->mBackgroundRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 134
    :cond_11
    return-void
.end method

.method private sendMessage(Ltds/androidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;)V
    .registers 3
    .param p1, "msg"    # Ltds/androidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

    .line 121
    .local p0, "this":Ltds/androidx/recyclerview/widget/MessageThreadUtil$2;, "Ltds/androidx/recyclerview/widget/MessageThreadUtil$2;"
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/MessageThreadUtil$2;->mQueue:Ltds/androidx/recyclerview/widget/MessageThreadUtil$MessageQueue;

    invoke-virtual {v0, p1}, Ltds/androidx/recyclerview/widget/MessageThreadUtil$MessageQueue;->sendMessage(Ltds/androidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;)V

    .line 122
    invoke-direct {p0}, Ltds/androidx/recyclerview/widget/MessageThreadUtil$2;->maybeExecuteBackgroundRunnable()V

    .line 123
    return-void
.end method

.method private sendMessageAtFrontOfQueue(Ltds/androidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;)V
    .registers 3
    .param p1, "msg"    # Ltds/androidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

    .line 126
    .local p0, "this":Ltds/androidx/recyclerview/widget/MessageThreadUtil$2;, "Ltds/androidx/recyclerview/widget/MessageThreadUtil$2;"
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/MessageThreadUtil$2;->mQueue:Ltds/androidx/recyclerview/widget/MessageThreadUtil$MessageQueue;

    invoke-virtual {v0, p1}, Ltds/androidx/recyclerview/widget/MessageThreadUtil$MessageQueue;->sendMessageAtFrontOfQueue(Ltds/androidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;)V

    .line 127
    invoke-direct {p0}, Ltds/androidx/recyclerview/widget/MessageThreadUtil$2;->maybeExecuteBackgroundRunnable()V

    .line 128
    return-void
.end method


# virtual methods
.method public loadTile(II)V
    .registers 4
    .param p1, "position"    # I
    .param p2, "scrollHint"    # I

    .line 112
    .local p0, "this":Ltds/androidx/recyclerview/widget/MessageThreadUtil$2;, "Ltds/androidx/recyclerview/widget/MessageThreadUtil$2;"
    const/4 v0, 0x3

    invoke-static {v0, p1, p2}, Ltds/androidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->obtainMessage(III)Ltds/androidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

    move-result-object v0

    invoke-direct {p0, v0}, Ltds/androidx/recyclerview/widget/MessageThreadUtil$2;->sendMessage(Ltds/androidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;)V

    .line 113
    return-void
.end method

.method public recycleTile(Ltds/androidx/recyclerview/widget/TileList$Tile;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltds/androidx/recyclerview/widget/TileList$Tile<",
            "TT;>;)V"
        }
    .end annotation

    .line 117
    .local p0, "this":Ltds/androidx/recyclerview/widget/MessageThreadUtil$2;, "Ltds/androidx/recyclerview/widget/MessageThreadUtil$2;"
    .local p1, "tile":Ltds/androidx/recyclerview/widget/TileList$Tile;, "Ltds/androidx/recyclerview/widget/TileList$Tile<TT;>;"
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Ltds/androidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->obtainMessage(IILjava/lang/Object;)Ltds/androidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

    move-result-object v0

    invoke-direct {p0, v0}, Ltds/androidx/recyclerview/widget/MessageThreadUtil$2;->sendMessage(Ltds/androidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;)V

    .line 118
    return-void
.end method

.method public refresh(I)V
    .registers 4
    .param p1, "generation"    # I

    .line 100
    .local p0, "this":Ltds/androidx/recyclerview/widget/MessageThreadUtil$2;, "Ltds/androidx/recyclerview/widget/MessageThreadUtil$2;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Ltds/androidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->obtainMessage(IILjava/lang/Object;)Ltds/androidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

    move-result-object v0

    invoke-direct {p0, v0}, Ltds/androidx/recyclerview/widget/MessageThreadUtil$2;->sendMessageAtFrontOfQueue(Ltds/androidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;)V

    .line 101
    return-void
.end method

.method public updateRange(IIIII)V
    .registers 13
    .param p1, "rangeStart"    # I
    .param p2, "rangeEnd"    # I
    .param p3, "extRangeStart"    # I
    .param p4, "extRangeEnd"    # I
    .param p5, "scrollHint"    # I

    .line 106
    .local p0, "this":Ltds/androidx/recyclerview/widget/MessageThreadUtil$2;, "Ltds/androidx/recyclerview/widget/MessageThreadUtil$2;"
    const/4 v0, 0x2

    const/4 v6, 0x0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v6}, Ltds/androidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->obtainMessage(IIIIIILjava/lang/Object;)Ltds/androidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

    move-result-object v0

    invoke-direct {p0, v0}, Ltds/androidx/recyclerview/widget/MessageThreadUtil$2;->sendMessageAtFrontOfQueue(Ltds/androidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;)V

    .line 108
    return-void
.end method
