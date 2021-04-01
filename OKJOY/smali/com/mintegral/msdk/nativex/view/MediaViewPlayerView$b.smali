.class final Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView$b;
.super Ljava/lang/Object;
.source "MediaViewPlayerView.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;


# direct methods
.method private constructor <init>(Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;)V
    .registers 2

    .prologue
    .line 1019
    iput-object p1, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView$b;->a:Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;B)V
    .registers 3

    .prologue
    .line 1019
    invoke-direct {p0, p1}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView$b;-><init>(Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;)V

    return-void
.end method


# virtual methods
.method public final onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .registers 7

    .prologue
    .line 1024
    :try_start_0
    const-string v1, "MediaViewPlayerView"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "onSurfaceTextureAvailable \u8fdb\u6765:"

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView$b;->a:Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;

    invoke-static {v0}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->l(Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;)Lcom/mintegral/msdk/base/entity/CampaignEx;

    move-result-object v0

    if-nez v0, :cond_89

    const-string v0, "appname"

    :goto_13
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " url:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView$b;->a:Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;

    invoke-static {v2}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->p(Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1025
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView$b;->a:Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;

    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-static {v0, v1}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->a(Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;Landroid/view/Surface;)Landroid/view/Surface;

    .line 1026
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView$b;->a:Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->a(Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;Z)Z

    .line 1027
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView$b;->a:Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;

    invoke-static {v0}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->q(Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;)Z

    .line 1028
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView$b;->a:Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;

    invoke-static {v0}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->r(Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;)Z

    move-result v0

    if-eqz v0, :cond_a6

    .line 1029
    const-string v0, "MediaViewPlayerView"

    const-string v1, "onSurfaceTextureAvailable \u5728\u5168\u5c4f"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1030
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView$b;->a:Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;

    invoke-static {v0}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->s(Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;)Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 1031
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView$b;->a:Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->b(Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;Z)Z

    .line 1032
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView$b;->a:Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;

    invoke-static {v0}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->t(Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;)Z

    .line 1033
    const-string v0, "MediaViewPlayerView"

    const-string v1, "onSurfaceTextureAvailable \u5728\u5168\u5c4f mIsNeedToRepeatPrepare\u7f6e\u4e3afalse"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1035
    :cond_6c
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView$b;->a:Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;

    invoke-virtual {v0}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->isComplete()Z

    move-result v0

    if-nez v0, :cond_7c

    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView$b;->a:Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;

    invoke-static {v0}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->u(Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;)Z

    move-result v0

    if-eqz v0, :cond_94

    .line 1036
    :cond_7c
    const-string v0, "MediaViewPlayerView"

    const-string v1, "onSurfaceTextureAvailable \u5728\u5168\u5c4f showPlayEndView"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1037
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView$b;->a:Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;

    invoke-static {v0}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->o(Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;)V

    .line 1065
    :goto_88
    return-void

    .line 1024
    :cond_89
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView$b;->a:Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;

    invoke-static {v0}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->l(Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;)Lcom/mintegral/msdk/base/entity/CampaignEx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getAppName()Ljava/lang/String;

    move-result-object v0

    goto :goto_13

    .line 1039
    :cond_94
    const-string v0, "MediaViewPlayerView"

    const-string v1, "onSurfaceTextureAvailable \u5728\u5168\u5c4f startOrPlayVideo"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1040
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView$b;->a:Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;

    invoke-virtual {v0}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->startOrPlayVideo()V
    :try_end_a0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a0} :catch_a1

    goto :goto_88

    .line 1063
    :catch_a1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_88

    .line 1043
    :cond_a6
    :try_start_a6
    const-string v0, "MediaViewPlayerView"

    const-string v1, "onSurfaceTextureAvailable \u5728\u534a\u5c4f"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1044
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView$b;->a:Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;

    invoke-static {v0}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->v(Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;)Z

    move-result v0

    if-eqz v0, :cond_126

    .line 1045
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView$b;->a:Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;

    invoke-virtual {v0}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->hasPrepare()Z

    move-result v0

    if-eqz v0, :cond_c5

    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView$b;->a:Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;

    invoke-virtual {v0}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->isComplete()Z

    move-result v0

    if-nez v0, :cond_f5

    .line 1046
    :cond_c5
    const-string v0, "MediaViewPlayerView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onSurfaceTextureAvailable \u5728\u534a\u5c4f \u81ea\u52a8\u64ad\u653estartOrPlayVideo hasPrepare():"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView$b;->a:Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;

    invoke-virtual {v2}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->hasPrepare()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isComplete:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView$b;->a:Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;

    invoke-virtual {v2}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->isComplete()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1047
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView$b;->a:Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;

    invoke-virtual {v0}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->startOrPlayVideo()V

    goto :goto_88

    .line 1049
    :cond_f5
    const-string v0, "MediaViewPlayerView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onSurfaceTextureAvailable \u5728\u534a\u5c4f \u81ea\u52a8\u64ad\u653eshowPlayEndView hasPrepare():"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView$b;->a:Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;

    invoke-virtual {v2}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->hasPrepare()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isComplete:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView$b;->a:Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;

    invoke-virtual {v2}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->isComplete()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1050
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView$b;->a:Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;

    invoke-static {v0}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->o(Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;)V

    goto/16 :goto_88

    .line 1053
    :cond_126
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView$b;->a:Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;

    invoke-virtual {v0}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->hasPrepare()Z

    move-result v0

    if-eqz v0, :cond_136

    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView$b;->a:Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;

    invoke-virtual {v0}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->isComplete()Z

    move-result v0

    if-eqz v0, :cond_167

    .line 1054
    :cond_136
    const-string v0, "MediaViewPlayerView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onSurfaceTextureAvailable \u5728\u534a\u5c4f \u70b9\u51fb\u64ad\u653eshowPlayEndView hasPrepare():"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView$b;->a:Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;

    invoke-virtual {v2}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->hasPrepare()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isComplete:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView$b;->a:Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;

    invoke-virtual {v2}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->isComplete()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1055
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView$b;->a:Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;

    invoke-static {v0}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->o(Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;)V

    goto/16 :goto_88

    .line 1057
    :cond_167
    const-string v0, "MediaViewPlayerView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onSurfaceTextureAvailable \u5728\u534a\u5c4f startOrPlayVideo hasPrepare():"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView$b;->a:Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;

    invoke-virtual {v2}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->hasPrepare()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isComplete:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView$b;->a:Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;

    invoke-virtual {v2}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->isComplete()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1058
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView$b;->a:Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;

    invoke-virtual {v0}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->startOrPlayVideo()V
    :try_end_196
    .catch Ljava/lang/Exception; {:try_start_a6 .. :try_end_196} :catch_a1

    goto/16 :goto_88
.end method

.method public final onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .registers 6

    .prologue
    const/4 v3, 0x1

    .line 1075
    :try_start_1
    const-string v1, "MediaViewPlayerView"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "onSurfaceTextureDestroyed:"

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView$b;->a:Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;

    invoke-static {v0}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->l(Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;)Lcom/mintegral/msdk/base/entity/CampaignEx;

    move-result-object v0

    if-nez v0, :cond_5e

    const-string v0, "appname"

    :goto_14
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1076
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView$b;->a:Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;

    invoke-static {v0}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->w(Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;)Lcom/mintegral/msdk/playercommon/d;

    move-result-object v0

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView$b;->a:Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;

    invoke-static {v0}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->w(Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;)Lcom/mintegral/msdk/playercommon/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/playercommon/d;->f()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 1077
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView$b;->a:Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;

    invoke-virtual {v0}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->pause()V

    .line 1080
    :cond_38
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView$b;->a:Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;

    invoke-static {v0}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->r(Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;)Z

    move-result v0

    if-nez v0, :cond_51

    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView$b;->a:Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;

    invoke-static {v0}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->w(Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;)Lcom/mintegral/msdk/playercommon/d;

    move-result-object v0

    if-eqz v0, :cond_51

    .line 1081
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView$b;->a:Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;

    invoke-static {v0}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->w(Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;)Lcom/mintegral/msdk/playercommon/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/playercommon/d;->c()V

    .line 1083
    :cond_51
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView$b;->a:Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->b(Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;Z)Z

    .line 1084
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView$b;->a:Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->a(Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;Z)Z

    .line 1088
    :goto_5d
    return v3

    .line 1075
    :cond_5e
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView$b;->a:Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;

    invoke-static {v0}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->l(Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;)Lcom/mintegral/msdk/base/entity/CampaignEx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getAppName()Ljava/lang/String;
    :try_end_67
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_67} :catch_69

    move-result-object v0

    goto :goto_14

    .line 1086
    :catch_69
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5d
.end method

.method public final onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .registers 6

    .prologue
    .line 1069
    const-string v0, "MediaViewPlayerView"

    const-string v1, "onSurfaceTextureSizeChanged "

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1070
    return-void
.end method

.method public final onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .registers 2

    .prologue
    .line 1093
    return-void
.end method
