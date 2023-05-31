.class Ltds/androidx/recyclerview/widget/MessageThreadUtil$MessageQueue;
.super Ljava/lang/Object;
.source "MessageThreadUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltds/androidx/recyclerview/widget/MessageThreadUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MessageQueue"
.end annotation


# instance fields
.field private mRoot:Ltds/androidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method declared-synchronized next()Ltds/androidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;
    .registers 3

    monitor-enter p0

    .line 238
    :try_start_1
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/MessageThreadUtil$MessageQueue;->mRoot:Ltds/androidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_f

    if-nez v0, :cond_8

    .line 239
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 241
    :cond_8
    move-object v1, v0

    .line 242
    .local v1, "next":Ltds/androidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;
    :try_start_9
    iget-object v0, v0, Ltds/androidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->next:Ltds/androidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

    iput-object v0, p0, Ltds/androidx/recyclerview/widget/MessageThreadUtil$MessageQueue;->mRoot:Ltds/androidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;
    :try_end_d
    .catchall {:try_start_9 .. :try_end_d} :catchall_f

    .line 243
    monitor-exit p0

    return-object v1

    .line 237
    .end local v1    # "next":Ltds/androidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;
    .end local p0    # "this":Ltds/androidx/recyclerview/widget/MessageThreadUtil$MessageQueue;
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized removeMessages(I)V
    .registers 6
    .param p1, "what"    # I

    monitor-enter p0

    .line 264
    :goto_1
    :try_start_1
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/MessageThreadUtil$MessageQueue;->mRoot:Ltds/androidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

    if-eqz v0, :cond_14

    iget v0, v0, Ltds/androidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->what:I

    if-ne v0, p1, :cond_14

    .line 265
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/MessageThreadUtil$MessageQueue;->mRoot:Ltds/androidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

    move-object v1, v0

    .line 266
    .local v1, "item":Ltds/androidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;
    iget-object v0, v0, Ltds/androidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->next:Ltds/androidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

    iput-object v0, p0, Ltds/androidx/recyclerview/widget/MessageThreadUtil$MessageQueue;->mRoot:Ltds/androidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

    .line 267
    invoke-virtual {v1}, Ltds/androidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->recycle()V

    .line 268
    .end local v1    # "item":Ltds/androidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;
    goto :goto_1

    .line 269
    .end local p0    # "this":Ltds/androidx/recyclerview/widget/MessageThreadUtil$MessageQueue;
    :cond_14
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/MessageThreadUtil$MessageQueue;->mRoot:Ltds/androidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

    if-eqz v0, :cond_2c

    .line 270
    nop

    .line 271
    .local v0, "prev":Ltds/androidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;
    iget-object v1, v0, Ltds/androidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->next:Ltds/androidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

    .line 272
    .restart local v1    # "item":Ltds/androidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;
    :goto_1b
    if-eqz v1, :cond_2c

    .line 273
    iget-object v2, v1, Ltds/androidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->next:Ltds/androidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

    .line 274
    .local v2, "next":Ltds/androidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;
    iget v3, v1, Ltds/androidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->what:I

    if-ne v3, p1, :cond_29

    .line 275
    iput-object v2, v0, Ltds/androidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->next:Ltds/androidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

    .line 276
    invoke-virtual {v1}, Ltds/androidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->recycle()V
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_2e

    goto :goto_2a

    .line 278
    :cond_29
    move-object v0, v1

    .line 280
    :goto_2a
    move-object v1, v2

    .line 281
    .end local v2    # "next":Ltds/androidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;
    goto :goto_1b

    .line 283
    .end local v0    # "prev":Ltds/androidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;
    .end local v1    # "item":Ltds/androidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;
    :cond_2c
    monitor-exit p0

    return-void

    .line 263
    .end local p1    # "what":I
    :catchall_2e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized sendMessage(Ltds/androidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;)V
    .registers 4
    .param p1, "item"    # Ltds/androidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

    monitor-enter p0

    .line 252
    :try_start_1
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/MessageThreadUtil$MessageQueue;->mRoot:Ltds/androidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

    if-nez v0, :cond_9

    .line 253
    iput-object p1, p0, Ltds/androidx/recyclerview/widget/MessageThreadUtil$MessageQueue;->mRoot:Ltds/androidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_16

    .line 254
    monitor-exit p0

    return-void

    .line 256
    .end local p0    # "this":Ltds/androidx/recyclerview/widget/MessageThreadUtil$MessageQueue;
    :cond_9
    nop

    .line 257
    .local v0, "last":Ltds/androidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;
    :goto_a
    :try_start_a
    iget-object v1, v0, Ltds/androidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->next:Ltds/androidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

    if-eqz v1, :cond_12

    .line 258
    iget-object v1, v0, Ltds/androidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->next:Ltds/androidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

    move-object v0, v1

    goto :goto_a

    .line 260
    :cond_12
    iput-object p1, v0, Ltds/androidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->next:Ltds/androidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;
    :try_end_14
    .catchall {:try_start_a .. :try_end_14} :catchall_16

    .line 261
    monitor-exit p0

    return-void

    .line 251
    .end local v0    # "last":Ltds/androidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;
    .end local p1    # "item":Ltds/androidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;
    :catchall_16
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized sendMessageAtFrontOfQueue(Ltds/androidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;)V
    .registers 3
    .param p1, "item"    # Ltds/androidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

    monitor-enter p0

    .line 247
    :try_start_1
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/MessageThreadUtil$MessageQueue;->mRoot:Ltds/androidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

    iput-object v0, p1, Ltds/androidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->next:Ltds/androidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

    .line 248
    iput-object p1, p0, Ltds/androidx/recyclerview/widget/MessageThreadUtil$MessageQueue;->mRoot:Ltds/androidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 249
    monitor-exit p0

    return-void

    .line 246
    .end local p0    # "this":Ltds/androidx/recyclerview/widget/MessageThreadUtil$MessageQueue;
    .end local p1    # "item":Ltds/androidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;
    :catchall_9
    move-exception p1

    monitor-exit p0

    throw p1
.end method
