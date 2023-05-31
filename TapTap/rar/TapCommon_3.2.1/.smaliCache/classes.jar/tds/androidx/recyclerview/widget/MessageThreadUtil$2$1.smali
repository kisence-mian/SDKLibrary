.class Ltds/androidx/recyclerview/widget/MessageThreadUtil$2$1;
.super Ljava/lang/Object;
.source "MessageThreadUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltds/androidx/recyclerview/widget/MessageThreadUtil$2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ltds/androidx/recyclerview/widget/MessageThreadUtil$2;


# direct methods
.method constructor <init>(Ltds/androidx/recyclerview/widget/MessageThreadUtil$2;)V
    .registers 2
    .param p1, "this$1"    # Ltds/androidx/recyclerview/widget/MessageThreadUtil$2;

    .line 136
    .local p0, "this":Ltds/androidx/recyclerview/widget/MessageThreadUtil$2$1;, "Ltds/androidx/recyclerview/widget/MessageThreadUtil$2$1;"
    iput-object p1, p0, Ltds/androidx/recyclerview/widget/MessageThreadUtil$2$1;->this$1:Ltds/androidx/recyclerview/widget/MessageThreadUtil$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .line 140
    .local p0, "this":Ltds/androidx/recyclerview/widget/MessageThreadUtil$2$1;, "Ltds/androidx/recyclerview/widget/MessageThreadUtil$2$1;"
    :goto_0
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/MessageThreadUtil$2$1;->this$1:Ltds/androidx/recyclerview/widget/MessageThreadUtil$2;

    iget-object v0, v0, Ltds/androidx/recyclerview/widget/MessageThreadUtil$2;->mQueue:Ltds/androidx/recyclerview/widget/MessageThreadUtil$MessageQueue;

    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/MessageThreadUtil$MessageQueue;->next()Ltds/androidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

    move-result-object v0

    .line 141
    .local v0, "msg":Ltds/androidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;
    if-nez v0, :cond_14

    .line 142
    nop

    .line 167
    .end local v0    # "msg":Ltds/androidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/MessageThreadUtil$2$1;->this$1:Ltds/androidx/recyclerview/widget/MessageThreadUtil$2;

    iget-object v0, v0, Ltds/androidx/recyclerview/widget/MessageThreadUtil$2;->mBackgroundRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 168
    return-void

    .line 144
    .restart local v0    # "msg":Ltds/androidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;
    :cond_14
    iget v1, v0, Ltds/androidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->what:I

    packed-switch v1, :pswitch_data_82

    .line 164
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported message, what="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Ltds/androidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ThreadUtil"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_80

    .line 160
    :pswitch_34
    iget-object v1, v0, Ltds/androidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->data:Ljava/lang/Object;

    check-cast v1, Ltds/androidx/recyclerview/widget/TileList$Tile;

    .line 161
    .local v1, "tile":Ltds/androidx/recyclerview/widget/TileList$Tile;, "Ltds/androidx/recyclerview/widget/TileList$Tile<TT;>;"
    iget-object v2, p0, Ltds/androidx/recyclerview/widget/MessageThreadUtil$2$1;->this$1:Ltds/androidx/recyclerview/widget/MessageThreadUtil$2;

    iget-object v2, v2, Ltds/androidx/recyclerview/widget/MessageThreadUtil$2;->val$callback:Ltds/androidx/recyclerview/widget/ThreadUtil$BackgroundCallback;

    invoke-interface {v2, v1}, Ltds/androidx/recyclerview/widget/ThreadUtil$BackgroundCallback;->recycleTile(Ltds/androidx/recyclerview/widget/TileList$Tile;)V

    .line 162
    goto :goto_80

    .line 156
    .end local v1    # "tile":Ltds/androidx/recyclerview/widget/TileList$Tile;, "Ltds/androidx/recyclerview/widget/TileList$Tile<TT;>;"
    :pswitch_40
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/MessageThreadUtil$2$1;->this$1:Ltds/androidx/recyclerview/widget/MessageThreadUtil$2;

    iget-object v1, v1, Ltds/androidx/recyclerview/widget/MessageThreadUtil$2;->val$callback:Ltds/androidx/recyclerview/widget/ThreadUtil$BackgroundCallback;

    iget v2, v0, Ltds/androidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->arg1:I

    iget v3, v0, Ltds/androidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->arg2:I

    invoke-interface {v1, v2, v3}, Ltds/androidx/recyclerview/widget/ThreadUtil$BackgroundCallback;->loadTile(II)V

    .line 157
    goto :goto_80

    .line 150
    :pswitch_4c
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/MessageThreadUtil$2$1;->this$1:Ltds/androidx/recyclerview/widget/MessageThreadUtil$2;

    iget-object v1, v1, Ltds/androidx/recyclerview/widget/MessageThreadUtil$2;->mQueue:Ltds/androidx/recyclerview/widget/MessageThreadUtil$MessageQueue;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ltds/androidx/recyclerview/widget/MessageThreadUtil$MessageQueue;->removeMessages(I)V

    .line 151
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/MessageThreadUtil$2$1;->this$1:Ltds/androidx/recyclerview/widget/MessageThreadUtil$2;

    iget-object v1, v1, Ltds/androidx/recyclerview/widget/MessageThreadUtil$2;->mQueue:Ltds/androidx/recyclerview/widget/MessageThreadUtil$MessageQueue;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ltds/androidx/recyclerview/widget/MessageThreadUtil$MessageQueue;->removeMessages(I)V

    .line 152
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/MessageThreadUtil$2$1;->this$1:Ltds/androidx/recyclerview/widget/MessageThreadUtil$2;

    iget-object v2, v1, Ltds/androidx/recyclerview/widget/MessageThreadUtil$2;->val$callback:Ltds/androidx/recyclerview/widget/ThreadUtil$BackgroundCallback;

    iget v3, v0, Ltds/androidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->arg1:I

    iget v4, v0, Ltds/androidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->arg2:I

    iget v5, v0, Ltds/androidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->arg3:I

    iget v6, v0, Ltds/androidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->arg4:I

    iget v7, v0, Ltds/androidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->arg5:I

    invoke-interface/range {v2 .. v7}, Ltds/androidx/recyclerview/widget/ThreadUtil$BackgroundCallback;->updateRange(IIIII)V

    .line 154
    goto :goto_80

    .line 146
    :pswitch_6e
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/MessageThreadUtil$2$1;->this$1:Ltds/androidx/recyclerview/widget/MessageThreadUtil$2;

    iget-object v1, v1, Ltds/androidx/recyclerview/widget/MessageThreadUtil$2;->mQueue:Ltds/androidx/recyclerview/widget/MessageThreadUtil$MessageQueue;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ltds/androidx/recyclerview/widget/MessageThreadUtil$MessageQueue;->removeMessages(I)V

    .line 147
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/MessageThreadUtil$2$1;->this$1:Ltds/androidx/recyclerview/widget/MessageThreadUtil$2;

    iget-object v1, v1, Ltds/androidx/recyclerview/widget/MessageThreadUtil$2;->val$callback:Ltds/androidx/recyclerview/widget/ThreadUtil$BackgroundCallback;

    iget v2, v0, Ltds/androidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->arg1:I

    invoke-interface {v1, v2}, Ltds/androidx/recyclerview/widget/ThreadUtil$BackgroundCallback;->refresh(I)V

    .line 148
    nop

    .line 166
    .end local v0    # "msg":Ltds/androidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;
    :goto_80
    goto/16 :goto_0

    :pswitch_data_82
    .packed-switch 0x1
        :pswitch_6e
        :pswitch_4c
        :pswitch_40
        :pswitch_34
    .end packed-switch
.end method
