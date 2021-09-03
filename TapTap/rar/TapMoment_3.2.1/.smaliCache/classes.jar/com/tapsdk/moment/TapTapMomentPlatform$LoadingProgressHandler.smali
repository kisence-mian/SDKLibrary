.class Lcom/tapsdk/moment/TapTapMomentPlatform$LoadingProgressHandler;
.super Landroid/os/Handler;
.source "TapTapMomentPlatform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapsdk/moment/TapTapMomentPlatform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LoadingProgressHandler"
.end annotation


# instance fields
.field activityWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;

    .line 115
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 116
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/tapsdk/moment/TapTapMomentPlatform$LoadingProgressHandler;->activityWeakReference:Ljava/lang/ref/WeakReference;

    .line 117
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 121
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 122
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const-string v1, "msg_progress_timeout"

    if-ne v0, v1, :cond_2e

    .line 123
    iget-object v0, p0, Lcom/tapsdk/moment/TapTapMomentPlatform$LoadingProgressHandler;->activityWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2e

    # getter for: Lcom/tapsdk/moment/TapTapMomentPlatform;->loadingDialogWeakReference:Ljava/lang/ref/WeakReference;
    invoke-static {}, Lcom/tapsdk/moment/TapTapMomentPlatform;->access$000()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2e

    .line 124
    # getter for: Lcom/tapsdk/moment/TapTapMomentPlatform;->loadingDialogWeakReference:Ljava/lang/ref/WeakReference;
    invoke-static {}, Lcom/tapsdk/moment/TapTapMomentPlatform;->access$000()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapsdk/moment/view/LoadingDialog;

    invoke-virtual {v0}, Lcom/tapsdk/moment/view/LoadingDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 125
    # invokes: Lcom/tapsdk/moment/TapTapMomentPlatform;->dismissLoading()V
    invoke-static {}, Lcom/tapsdk/moment/TapTapMomentPlatform;->access$100()V

    .line 129
    :cond_2e
    return-void
.end method
