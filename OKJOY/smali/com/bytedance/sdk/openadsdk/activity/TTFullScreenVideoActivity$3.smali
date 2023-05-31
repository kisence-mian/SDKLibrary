.class Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity$3;
.super Ljava/lang/Object;
.source "TTFullScreenVideoActivity.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/component/reward/top/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity;->L()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity;)V
    .registers 2

    .prologue
    .line 260
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity$3;->a:Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .registers 6

    .prologue
    .line 263
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 264
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity$3;->a:Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity;->ac:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_18

    .line 265
    const-string v1, "rit_scene"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity$3;->a:Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity;->ac:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    :cond_18
    const-string v1, "play_type"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity$3;->a:Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity;->A:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity$3;->a:Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity;

    iget-boolean v3, v3, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity;->x:Z

    invoke-static {v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/ah;->a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;Z)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity$3;->a:Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity;

    const-string v2, "fullscreen_interstitial_ad"

    const-string v3, "feed_break"

    invoke-virtual {v1, v2, v3, v0}, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 269
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity$3;->a:Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity;

    const-string v1, "fullscreen_interstitial_ad"

    const-string v2, "skip"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 270
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 271
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity$3;->a:Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity;

    const-string v1, "onSkippedVideo"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity;->a(Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity;Ljava/lang/String;)V

    .line 278
    :cond_4d
    :goto_4d
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity$3;->a:Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity;->O()Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 279
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity$3;->a:Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity;->D()V

    .line 284
    :goto_5a
    return-void

    .line 273
    :cond_5b
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity$3;->a:Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity;->c(Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity;)Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd$FullScreenVideoAdInteractionListener;

    move-result-object v0

    if-eqz v0, :cond_4d

    .line 274
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity$3;->a:Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity;->c(Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity;)Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd$FullScreenVideoAdInteractionListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd$FullScreenVideoAdInteractionListener;->onSkippedVideo()V

    goto :goto_4d

    .line 282
    :cond_6d
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity$3;->a:Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity;->finish()V

    goto :goto_5a
.end method

.method public b(Landroid/view/View;)V
    .registers 5

    .prologue
    const/4 v1, 0x1

    .line 288
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity$3;->a:Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity$3;->a:Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity;

    iget-boolean v0, v0, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity;->M:Z

    if-nez v0, :cond_2e

    move v0, v1

    :goto_a
    iput-boolean v0, v2, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity;->M:Z

    .line 290
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity$3;->a:Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity;->A:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity$3;->a:Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity;->q:Lcom/bytedance/sdk/openadsdk/core/d/k;

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity$3;->a:Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity;->q:Lcom/bytedance/sdk/openadsdk/core/d/k;

    .line 291
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->c()I

    move-result v0

    if-eq v0, v1, :cond_30

    .line 292
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity$3;->a:Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity;->A:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity$3;->a:Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity;

    iget-boolean v1, v1, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity;->M:Z

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;->c(Z)V

    .line 297
    :cond_2d
    :goto_2d
    return-void

    .line 288
    :cond_2e
    const/4 v0, 0x0

    goto :goto_a

    .line 293
    :cond_30
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity$3;->a:Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity;->q:Lcom/bytedance/sdk/openadsdk/core/d/k;

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity$3;->a:Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity;->q:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->q()Z

    move-result v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity$3;->a:Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity;->q:Lcom/bytedance/sdk/openadsdk/core/d/k;

    .line 294
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->c()I

    move-result v0

    if-ne v0, v1, :cond_2d

    .line 295
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity$3;->a:Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity$3;->a:Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity;

    iget-boolean v1, v1, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity;->M:Z

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity;->c(Z)V

    goto :goto_2d
.end method

.method public c(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 301
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity$3;->a:Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity;->H()V

    .line 302
    return-void
.end method
