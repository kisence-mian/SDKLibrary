.class Ltds/androidx/recyclerview/widget/MessageThreadUtil$1;
.super Ljava/lang/Object;
.source "MessageThreadUtil.java"

# interfaces
.implements Ltds/androidx/recyclerview/widget/ThreadUtil$MainThreadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltds/androidx/recyclerview/widget/MessageThreadUtil;->getMainThreadProxy(Ltds/androidx/recyclerview/widget/ThreadUtil$MainThreadCallback;)Ltds/androidx/recyclerview/widget/ThreadUtil$MainThreadCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ltds/androidx/recyclerview/widget/ThreadUtil$MainThreadCallback<",
        "TT;>;"
    }
.end annotation


# static fields
.field static final ADD_TILE:I = 0x2

.field static final REMOVE_TILE:I = 0x3

.field static final UPDATE_ITEM_COUNT:I = 0x1


# instance fields
.field private final mMainThreadHandler:Landroid/os/Handler;

.field private mMainThreadRunnable:Ljava/lang/Runnable;

.field final mQueue:Ltds/androidx/recyclerview/widget/MessageThreadUtil$MessageQueue;

.field final synthetic this$0:Ltds/androidx/recyclerview/widget/MessageThreadUtil;

.field final synthetic val$callback:Ltds/androidx/recyclerview/widget/ThreadUtil$MainThreadCallback;


# direct methods
.method constructor <init>(Ltds/androidx/recyclerview/widget/MessageThreadUtil;Ltds/androidx/recyclerview/widget/ThreadUtil$MainThreadCallback;)V
    .registers 4
    .param p1, "this$0"    # Ltds/androidx/recyclerview/widget/MessageThreadUtil;

    .line 30
    .local p0, "this":Ltds/androidx/recyclerview/widget/MessageThreadUtil$1;, "Ltds/androidx/recyclerview/widget/MessageThreadUtil$1;"
    iput-object p1, p0, Ltds/androidx/recyclerview/widget/MessageThreadUtil$1;->this$0:Ltds/androidx/recyclerview/widget/MessageThreadUtil;

    iput-object p2, p0, Ltds/androidx/recyclerview/widget/MessageThreadUtil$1;->val$callback:Ltds/androidx/recyclerview/widget/ThreadUtil$MainThreadCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance p2, Ltds/androidx/recyclerview/widget/MessageThreadUtil$MessageQueue;

    invoke-direct {p2}, Ltds/androidx/recyclerview/widget/MessageThreadUtil$MessageQueue;-><init>()V

    iput-object p2, p0, Ltds/androidx/recyclerview/widget/MessageThreadUtil$1;->mQueue:Ltds/androidx/recyclerview/widget/MessageThreadUtil$MessageQueue;

    .line 32
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Ltds/androidx/recyclerview/widget/MessageThreadUtil$1;->mMainThreadHandler:Landroid/os/Handler;

    .line 58
    new-instance p2, Ltds/androidx/recyclerview/widget/MessageThreadUtil$1$1;

    invoke-direct {p2, p0}, Ltds/androidx/recyclerview/widget/MessageThreadUtil$1$1;-><init>(Ltds/androidx/recyclerview/widget/MessageThreadUtil$1;)V

    iput-object p2, p0, Ltds/androidx/recyclerview/widget/MessageThreadUtil$1;->mMainThreadRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private sendMessage(Ltds/androidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;)V
    .registers 4
    .param p1, "msg"    # Ltds/androidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

    .line 54
    .local p0, "this":Ltds/androidx/recyclerview/widget/MessageThreadUtil$1;, "Ltds/androidx/recyclerview/widget/MessageThreadUtil$1;"
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/MessageThreadUtil$1;->mQueue:Ltds/androidx/recyclerview/widget/MessageThreadUtil$MessageQueue;

    invoke-virtual {v0, p1}, Ltds/androidx/recyclerview/widget/MessageThreadUtil$MessageQueue;->sendMessage(Ltds/androidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;)V

    .line 55
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/MessageThreadUtil$1;->mMainThreadHandler:Landroid/os/Handler;

    iget-object v1, p0, Ltds/androidx/recyclerview/widget/MessageThreadUtil$1;->mMainThreadRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 56
    return-void
.end method


# virtual methods
.method public addTile(ILtds/androidx/recyclerview/widget/TileList$Tile;)V
    .registers 4
    .param p1, "generation"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ltds/androidx/recyclerview/widget/TileList$Tile<",
            "TT;>;)V"
        }
    .end annotation

    .line 45
    .local p0, "this":Ltds/androidx/recyclerview/widget/MessageThreadUtil$1;, "Ltds/androidx/recyclerview/widget/MessageThreadUtil$1;"
    .local p2, "tile":Ltds/androidx/recyclerview/widget/TileList$Tile;, "Ltds/androidx/recyclerview/widget/TileList$Tile<TT;>;"
    const/4 v0, 0x2

    invoke-static {v0, p1, p2}, Ltds/androidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->obtainMessage(IILjava/lang/Object;)Ltds/androidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

    move-result-object v0

    invoke-direct {p0, v0}, Ltds/androidx/recyclerview/widget/MessageThreadUtil$1;->sendMessage(Ltds/androidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;)V

    .line 46
    return-void
.end method

.method public removeTile(II)V
    .registers 4
    .param p1, "generation"    # I
    .param p2, "position"    # I

    .line 50
    .local p0, "this":Ltds/androidx/recyclerview/widget/MessageThreadUtil$1;, "Ltds/androidx/recyclerview/widget/MessageThreadUtil$1;"
    const/4 v0, 0x3

    invoke-static {v0, p1, p2}, Ltds/androidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->obtainMessage(III)Ltds/androidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

    move-result-object v0

    invoke-direct {p0, v0}, Ltds/androidx/recyclerview/widget/MessageThreadUtil$1;->sendMessage(Ltds/androidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;)V

    .line 51
    return-void
.end method

.method public updateItemCount(II)V
    .registers 4
    .param p1, "generation"    # I
    .param p2, "itemCount"    # I

    .line 40
    .local p0, "this":Ltds/androidx/recyclerview/widget/MessageThreadUtil$1;, "Ltds/androidx/recyclerview/widget/MessageThreadUtil$1;"
    const/4 v0, 0x1

    invoke-static {v0, p1, p2}, Ltds/androidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->obtainMessage(III)Ltds/androidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

    move-result-object v0

    invoke-direct {p0, v0}, Ltds/androidx/recyclerview/widget/MessageThreadUtil$1;->sendMessage(Ltds/androidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;)V

    .line 41
    return-void
.end method
