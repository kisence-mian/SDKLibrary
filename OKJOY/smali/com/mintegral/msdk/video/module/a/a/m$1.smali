.class final Lcom/mintegral/msdk/video/module/a/a/m$1;
.super Ljava/util/TimerTask;
.source "VideoViewDefaultListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/video/module/a/a/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mintegral/msdk/video/module/a/a/m;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/video/module/a/a/m;)V
    .registers 2

    .prologue
    .line 180
    iput-object p1, p0, Lcom/mintegral/msdk/video/module/a/a/m$1;->a:Lcom/mintegral/msdk/video/module/a/a/m;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .prologue
    .line 184
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/a/a/m$1;->a:Lcom/mintegral/msdk/video/module/a/a/m;

    invoke-static {v0}, Lcom/mintegral/msdk/video/module/a/a/m;->c(Lcom/mintegral/msdk/video/module/a/a/m;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/mintegral/msdk/video/module/a/a/m$1$1;

    invoke-direct {v1, p0}, Lcom/mintegral/msdk/video/module/a/a/m$1$1;-><init>(Lcom/mintegral/msdk/video/module/a/a/m$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_e} :catch_f

    .line 196
    :cond_e
    :goto_e
    return-void

    .line 191
    :catch_f
    move-exception v0

    .line 192
    sget-boolean v1, Lcom/mintegral/msdk/MIntegralConstans;->DEBUG:Z

    if-eqz v1, :cond_e

    .line 193
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_e
.end method
