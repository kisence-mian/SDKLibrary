.class public final Lcom/mintegral/msdk/nativex/a/a;
.super Ljava/util/TimerTask;
.source "MyTimerTask.java"


# instance fields
.field a:Landroid/os/Handler;

.field b:Z

.field c:Landroid/view/View;

.field d:Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;

.field e:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/mintegral/msdk/nativex/view/MTGMediaView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Handler;ZLandroid/view/View;Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;Lcom/mintegral/msdk/nativex/view/MTGMediaView;)V
    .registers 7

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/mintegral/msdk/nativex/a/a;->a:Landroid/os/Handler;

    .line 23
    iput-boolean p2, p0, Lcom/mintegral/msdk/nativex/a/a;->b:Z

    .line 24
    iput-object p3, p0, Lcom/mintegral/msdk/nativex/a/a;->c:Landroid/view/View;

    .line 25
    iput-object p4, p0, Lcom/mintegral/msdk/nativex/a/a;->d:Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;

    .line 26
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/mintegral/msdk/nativex/a/a;->e:Ljava/lang/ref/WeakReference;

    .line 27
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .prologue
    .line 30
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/a/a;->e:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_14

    .line 31
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/a/a;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;

    .line 32
    if-eqz v0, :cond_14

    .line 33
    invoke-virtual {v0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->ismCurIsFullScreen()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mintegral/msdk/nativex/a/a;->b:Z

    .line 36
    :cond_14
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/a/a;->a:Landroid/os/Handler;

    if-eqz v0, :cond_22

    .line 37
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/a/a;->a:Landroid/os/Handler;

    new-instance v1, Lcom/mintegral/msdk/nativex/a/a$1;

    invoke-direct {v1, p0}, Lcom/mintegral/msdk/nativex/a/a$1;-><init>(Lcom/mintegral/msdk/nativex/a/a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 62
    :cond_22
    return-void
.end method
