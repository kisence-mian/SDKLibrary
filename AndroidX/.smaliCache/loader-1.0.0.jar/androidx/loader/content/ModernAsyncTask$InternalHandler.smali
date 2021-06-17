.class Landroidx/loader/content/ModernAsyncTask$InternalHandler;
.super Landroid/os/Handler;
.source "ModernAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/loader/content/ModernAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InternalHandler"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 2

    .line 497
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 498
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 503
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroidx/loader/content/ModernAsyncTask$AsyncTaskResult;

    .line 504
    .local v0, "result":Landroidx/loader/content/ModernAsyncTask$AsyncTaskResult;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_1e

    goto :goto_1d

    .line 510
    :pswitch_a
    iget-object v1, v0, Landroidx/loader/content/ModernAsyncTask$AsyncTaskResult;->mTask:Landroidx/loader/content/ModernAsyncTask;

    iget-object v2, v0, Landroidx/loader/content/ModernAsyncTask$AsyncTaskResult;->mData:[Ljava/lang/Object;

    invoke-virtual {v1, v2}, Landroidx/loader/content/ModernAsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    goto :goto_1d

    .line 507
    :pswitch_12
    iget-object v1, v0, Landroidx/loader/content/ModernAsyncTask$AsyncTaskResult;->mTask:Landroidx/loader/content/ModernAsyncTask;

    iget-object v2, v0, Landroidx/loader/content/ModernAsyncTask$AsyncTaskResult;->mData:[Ljava/lang/Object;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroidx/loader/content/ModernAsyncTask;->finish(Ljava/lang/Object;)V

    .line 508
    nop

    .line 513
    :goto_1d
    return-void

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_12
        :pswitch_a
    .end packed-switch
.end method
