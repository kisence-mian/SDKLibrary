.class final Lcom/mintegral/msdk/nativex/a/a$1;
.super Ljava/lang/Object;
.source "MyTimerTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mintegral/msdk/nativex/a/a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mintegral/msdk/nativex/a/a;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/nativex/a/a;)V
    .registers 2

    .prologue
    .line 37
    iput-object p1, p0, Lcom/mintegral/msdk/nativex/a/a$1;->a:Lcom/mintegral/msdk/nativex/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .prologue
    .line 41
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/a/a$1;->a:Lcom/mintegral/msdk/nativex/a/a;

    iget-object v0, v0, Lcom/mintegral/msdk/nativex/a/a;->c:Landroid/view/View;

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/mintegral/msdk/nativex/a/a$1;->a:Lcom/mintegral/msdk/nativex/a/a;

    iget-object v0, v0, Lcom/mintegral/msdk/nativex/a/a;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_33

    .line 42
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/a/a$1;->a:Lcom/mintegral/msdk/nativex/a/a;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/mintegral/msdk/nativex/a/a;->b:Z

    .line 43
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/a/a$1;->a:Lcom/mintegral/msdk/nativex/a/a;

    iget-object v0, v0, Lcom/mintegral/msdk/nativex/a/a;->d:Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/mintegral/msdk/nativex/a/a$1;->a:Lcom/mintegral/msdk/nativex/a/a;

    iget-object v0, v0, Lcom/mintegral/msdk/nativex/a/a;->d:Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;

    invoke-virtual {v0}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->curIsFullScreen()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 45
    const-string v0, "MyTimerTask"

    const-string v1, "handler mPlayerView.setExitFullScreen();"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/a/a$1;->a:Lcom/mintegral/msdk/nativex/a/a;

    iget-object v0, v0, Lcom/mintegral/msdk/nativex/a/a;->d:Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;

    invoke-virtual {v0}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->setExitFullScreen()V

    .line 49
    :cond_33
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 50
    iget-object v1, p0, Lcom/mintegral/msdk/nativex/a/a$1;->a:Lcom/mintegral/msdk/nativex/a/a;

    iget-boolean v1, v1, Lcom/mintegral/msdk/nativex/a/a;->b:Z

    if-eqz v1, :cond_48

    .line 51
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 55
    :goto_40
    iget-object v1, p0, Lcom/mintegral/msdk/nativex/a/a$1;->a:Lcom/mintegral/msdk/nativex/a/a;

    iget-object v1, v1, Lcom/mintegral/msdk/nativex/a/a;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 59
    :goto_47
    return-void

    .line 53
    :cond_48
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I
    :try_end_4b
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_4b} :catch_4c

    goto :goto_40

    .line 57
    :catch_4c
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_47
.end method
