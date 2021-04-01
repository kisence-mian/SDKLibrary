.class final Lcom/mintegral/msdk/playercommon/d$6;
.super Ljava/lang/Object;
.source "VideoNativePlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mintegral/msdk/playercommon/d;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mintegral/msdk/playercommon/d;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/playercommon/d;)V
    .registers 2

    .prologue
    .line 884
    iput-object p1, p0, Lcom/mintegral/msdk/playercommon/d$6;->a:Lcom/mintegral/msdk/playercommon/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .prologue
    .line 888
    :try_start_0
    const-string v0, "VideoFeedsPlayer"

    const-string v1, "releasePlayer"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 889
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/d$6;->a:Lcom/mintegral/msdk/playercommon/d;

    invoke-static {v0}, Lcom/mintegral/msdk/playercommon/d;->o(Lcom/mintegral/msdk/playercommon/d;)V

    .line 890
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/d$6;->a:Lcom/mintegral/msdk/playercommon/d;

    invoke-static {v0}, Lcom/mintegral/msdk/playercommon/d;->p(Lcom/mintegral/msdk/playercommon/d;)V

    .line 891
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/d$6;->a:Lcom/mintegral/msdk/playercommon/d;

    invoke-static {v0}, Lcom/mintegral/msdk/playercommon/d;->a(Lcom/mintegral/msdk/playercommon/d;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_32

    .line 892
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/d$6;->a:Lcom/mintegral/msdk/playercommon/d;

    invoke-virtual {v0}, Lcom/mintegral/msdk/playercommon/d;->b()V

    .line 893
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/d$6;->a:Lcom/mintegral/msdk/playercommon/d;

    invoke-static {v0}, Lcom/mintegral/msdk/playercommon/d;->a(Lcom/mintegral/msdk/playercommon/d;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 894
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/d$6;->a:Lcom/mintegral/msdk/playercommon/d;

    invoke-static {v0}, Lcom/mintegral/msdk/playercommon/d;->q(Lcom/mintegral/msdk/playercommon/d;)Landroid/media/MediaPlayer;

    .line 895
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/d$6;->a:Lcom/mintegral/msdk/playercommon/d;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mintegral/msdk/playercommon/d;->a(Lcom/mintegral/msdk/playercommon/d;Z)Z
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_32} :catch_33

    .line 900
    :cond_32
    :goto_32
    return-void

    .line 897
    :catch_33
    move-exception v0

    .line 898
    const-string v1, "VideoFeedsPlayer"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_32
.end method
