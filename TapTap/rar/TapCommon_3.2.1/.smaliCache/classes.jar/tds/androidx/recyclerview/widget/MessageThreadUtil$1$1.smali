.class Ltds/androidx/recyclerview/widget/MessageThreadUtil$1$1;
.super Ljava/lang/Object;
.source "MessageThreadUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltds/androidx/recyclerview/widget/MessageThreadUtil$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ltds/androidx/recyclerview/widget/MessageThreadUtil$1;


# direct methods
.method constructor <init>(Ltds/androidx/recyclerview/widget/MessageThreadUtil$1;)V
    .registers 2
    .param p1, "this$1"    # Ltds/androidx/recyclerview/widget/MessageThreadUtil$1;

    .line 58
    .local p0, "this":Ltds/androidx/recyclerview/widget/MessageThreadUtil$1$1;, "Ltds/androidx/recyclerview/widget/MessageThreadUtil$1$1;"
    iput-object p1, p0, Ltds/androidx/recyclerview/widget/MessageThreadUtil$1$1;->this$1:Ltds/androidx/recyclerview/widget/MessageThreadUtil$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 61
    .local p0, "this":Ltds/androidx/recyclerview/widget/MessageThreadUtil$1$1;, "Ltds/androidx/recyclerview/widget/MessageThreadUtil$1$1;"
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/MessageThreadUtil$1$1;->this$1:Ltds/androidx/recyclerview/widget/MessageThreadUtil$1;

    iget-object v0, v0, Ltds/androidx/recyclerview/widget/MessageThreadUtil$1;->mQueue:Ltds/androidx/recyclerview/widget/MessageThreadUtil$MessageQueue;

    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/MessageThreadUtil$MessageQueue;->next()Ltds/androidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

    move-result-object v0

    .line 62
    .local v0, "msg":Ltds/androidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;
    :goto_8
    if-eqz v0, :cond_59

    .line 63
    iget v1, v0, Ltds/androidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->what:I

    packed-switch v1, :pswitch_data_5a

    .line 76
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

    goto :goto_50

    .line 73
    :pswitch_2a
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/MessageThreadUtil$1$1;->this$1:Ltds/androidx/recyclerview/widget/MessageThreadUtil$1;

    iget-object v1, v1, Ltds/androidx/recyclerview/widget/MessageThreadUtil$1;->val$callback:Ltds/androidx/recyclerview/widget/ThreadUtil$MainThreadCallback;

    iget v2, v0, Ltds/androidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->arg1:I

    iget v3, v0, Ltds/androidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->arg2:I

    invoke-interface {v1, v2, v3}, Ltds/androidx/recyclerview/widget/ThreadUtil$MainThreadCallback;->removeTile(II)V

    .line 74
    goto :goto_50

    .line 69
    :pswitch_36
    iget-object v1, v0, Ltds/androidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->data:Ljava/lang/Object;

    check-cast v1, Ltds/androidx/recyclerview/widget/TileList$Tile;

    .line 70
    .local v1, "tile":Ltds/androidx/recyclerview/widget/TileList$Tile;, "Ltds/androidx/recyclerview/widget/TileList$Tile<TT;>;"
    iget-object v2, p0, Ltds/androidx/recyclerview/widget/MessageThreadUtil$1$1;->this$1:Ltds/androidx/recyclerview/widget/MessageThreadUtil$1;

    iget-object v2, v2, Ltds/androidx/recyclerview/widget/MessageThreadUtil$1;->val$callback:Ltds/androidx/recyclerview/widget/ThreadUtil$MainThreadCallback;

    iget v3, v0, Ltds/androidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->arg1:I

    invoke-interface {v2, v3, v1}, Ltds/androidx/recyclerview/widget/ThreadUtil$MainThreadCallback;->addTile(ILtds/androidx/recyclerview/widget/TileList$Tile;)V

    .line 71
    goto :goto_50

    .line 65
    .end local v1    # "tile":Ltds/androidx/recyclerview/widget/TileList$Tile;, "Ltds/androidx/recyclerview/widget/TileList$Tile<TT;>;"
    :pswitch_44
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/MessageThreadUtil$1$1;->this$1:Ltds/androidx/recyclerview/widget/MessageThreadUtil$1;

    iget-object v1, v1, Ltds/androidx/recyclerview/widget/MessageThreadUtil$1;->val$callback:Ltds/androidx/recyclerview/widget/ThreadUtil$MainThreadCallback;

    iget v2, v0, Ltds/androidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->arg1:I

    iget v3, v0, Ltds/androidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->arg2:I

    invoke-interface {v1, v2, v3}, Ltds/androidx/recyclerview/widget/ThreadUtil$MainThreadCallback;->updateItemCount(II)V

    .line 66
    nop

    .line 78
    :goto_50
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/MessageThreadUtil$1$1;->this$1:Ltds/androidx/recyclerview/widget/MessageThreadUtil$1;

    iget-object v1, v1, Ltds/androidx/recyclerview/widget/MessageThreadUtil$1;->mQueue:Ltds/androidx/recyclerview/widget/MessageThreadUtil$MessageQueue;

    invoke-virtual {v1}, Ltds/androidx/recyclerview/widget/MessageThreadUtil$MessageQueue;->next()Ltds/androidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

    move-result-object v0

    goto :goto_8

    .line 80
    :cond_59
    return-void

    :pswitch_data_5a
    .packed-switch 0x1
        :pswitch_44
        :pswitch_36
        :pswitch_2a
    .end packed-switch
.end method
