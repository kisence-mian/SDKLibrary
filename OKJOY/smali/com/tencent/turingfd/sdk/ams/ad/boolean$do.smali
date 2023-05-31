.class public Lcom/tencent/turingfd/sdk/ams/ad/boolean$do;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/turingfd/sdk/ams/ad/boolean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "do"
.end annotation


# instance fields
.field public mContext:Landroid/content/Context;

.field public final synthetic this$0:Lcom/tencent/turingfd/sdk/ams/ad/boolean;


# direct methods
.method public constructor <init>(Lcom/tencent/turingfd/sdk/ams/ad/boolean;Landroid/os/Looper;Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tencent/turingfd/sdk/ams/ad/boolean$do;->this$0:Lcom/tencent/turingfd/sdk/ams/ad/boolean;

    .line 2
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 3
    iput-object p3, p0, Lcom/tencent/turingfd/sdk/ams/ad/boolean$do;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    iget v0, p1, Landroid/os/Message;->what:I

    if-eq v0, v3, :cond_3d

    const/4 v1, 0x2

    if-eq v0, v1, :cond_d

    .line 9
    :goto_c
    return-void

    .line 3
    :cond_d
    iget-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/boolean$do;->this$0:Lcom/tencent/turingfd/sdk/ams/ad/boolean;

    iget-object v1, p0, Lcom/tencent/turingfd/sdk/ams/ad/boolean$do;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, v3, v2, v3}, Lcom/tencent/turingfd/sdk/ams/ad/boolean;->a(Lcom/tencent/turingfd/sdk/ams/ad/boolean;Landroid/content/Context;ZZZ)Lcom/tencent/turingfd/sdk/ams/ad/static;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/tencent/turingfd/sdk/ams/ad/boolean$do;->this$0:Lcom/tencent/turingfd/sdk/ams/ad/boolean;

    invoke-static {v1, v0, v2}, Lcom/tencent/turingfd/sdk/ams/ad/boolean;->a(Lcom/tencent/turingfd/sdk/ams/ad/boolean;Lcom/tencent/turingfd/sdk/ams/ad/static;Z)V

    .line 5
    iget-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/boolean$do;->this$0:Lcom/tencent/turingfd/sdk/ams/ad/boolean;

    invoke-static {v0}, Lcom/tencent/turingfd/sdk/ams/ad/boolean;->b(Lcom/tencent/turingfd/sdk/ams/ad/boolean;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v1

    monitor-enter v1

    .line 6
    :try_start_21
    iget-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/boolean$do;->this$0:Lcom/tencent/turingfd/sdk/ams/ad/boolean;

    invoke-static {v0}, Lcom/tencent/turingfd/sdk/ams/ad/boolean;->b(Lcom/tencent/turingfd/sdk/ams/ad/boolean;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 7
    iget-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/boolean$do;->this$0:Lcom/tencent/turingfd/sdk/ams/ad/boolean;

    invoke-static {v0}, Lcom/tencent/turingfd/sdk/ams/ad/boolean;->b(Lcom/tencent/turingfd/sdk/ams/ad/boolean;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 8
    monitor-exit v1

    goto :goto_c

    :catchall_3a
    move-exception v0

    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_21 .. :try_end_3c} :catchall_3a

    throw v0

    .line 9
    :cond_3d
    iget-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/boolean$do;->this$0:Lcom/tencent/turingfd/sdk/ams/ad/boolean;

    iget-object v1, p0, Lcom/tencent/turingfd/sdk/ams/ad/boolean$do;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/tencent/turingfd/sdk/ams/ad/boolean;->a(Lcom/tencent/turingfd/sdk/ams/ad/boolean;Landroid/content/Context;)Lcom/tencent/turingfd/sdk/ams/ad/static;

    goto :goto_c
.end method
