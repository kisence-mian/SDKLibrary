.class Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity$3;
.super Ljava/lang/Object;
.source "TTFullScreenVideoActivity.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/component/reward/top/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->S()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;)V
    .registers 2

    .line 282
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity$3;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .registers 5

    .line 285
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity$3;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity$3;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->d(Lcom/bytedance/sdk/openadsdk/core/d/l;)Z

    move-result p1

    .line 286
    if-eqz p1, :cond_1e

    .line 287
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity$3;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->a(Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;)V

    .line 288
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity$3;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->b(Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;)V

    .line 289
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity$3;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->finish()V

    .line 290
    return-void

    .line 292
    :cond_1e
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 293
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity$3;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->af:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_36

    .line 294
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity$3;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->af:Ljava/lang/String;

    const-string v1, "rit_scene"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    :cond_36
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity$3;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->D:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity$3;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;

    iget-boolean v1, v1, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->z:Z

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/aj;->a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;Z)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "play_type"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity$3;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;

    const-string v1, "fullscreen_interstitial_ad"

    const-string v2, "feed_break"

    invoke-virtual {v0, v1, v2, p1}, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 298
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity$3;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;

    const/4 v0, 0x0

    const-string v2, "skip"

    invoke-virtual {p1, v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 299
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity$3;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->c:Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;->setShowSkip(Z)V

    .line 300
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result p1

    if-eqz p1, :cond_72

    .line 301
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity$3;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;

    const-string v0, "onSkippedVideo"

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->a(Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;Ljava/lang/String;)V

    goto :goto_83

    .line 303
    :cond_72
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity$3;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->c(Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;)Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd$FullScreenVideoAdInteractionListener;

    move-result-object p1

    if-eqz p1, :cond_83

    .line 304
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity$3;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->c(Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;)Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd$FullScreenVideoAdInteractionListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd$FullScreenVideoAdInteractionListener;->onSkippedVideo()V

    .line 308
    :cond_83
    :goto_83
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity$3;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->V()Z

    move-result p1

    if-eqz p1, :cond_91

    .line 309
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity$3;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->I()V

    goto :goto_96

    .line 312
    :cond_91
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity$3;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->finish()V

    .line 314
    :goto_96
    return-void
.end method

.method public b(Landroid/view/View;)V
    .registers 4

    .line 318
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity$3;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;

    iget-boolean v0, p1, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->P:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput-boolean v0, p1, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->P:Z

    .line 319
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity$3;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->D:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    if-eqz p1, :cond_19

    .line 320
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity$3;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->D:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity$3;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;

    iget-boolean v0, v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->P:Z

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;->c(Z)V

    .line 323
    :cond_19
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity$3;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->e(Lcom/bytedance/sdk/openadsdk/core/d/l;)Z

    move-result p1

    if-eqz p1, :cond_2e

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity$3;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->U:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_2e

    .line 324
    return-void

    .line 326
    :cond_2e
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity$3;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->b(Lcom/bytedance/sdk/openadsdk/core/d/l;)Z

    move-result p1

    if-eqz p1, :cond_43

    .line 327
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity$3;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->au:Lcom/bytedance/sdk/openadsdk/f/g;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity$3;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;

    iget-boolean v0, v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->P:Z

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/f/g;->a(ZZ)V

    .line 329
    :cond_43
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity$3;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;

    iget-boolean v0, p1, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->P:Z

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->c(Z)V

    .line 330
    return-void
.end method

.method public c(Landroid/view/View;)V
    .registers 2

    .line 334
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity$3;->a:Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->M()V

    .line 335
    return-void
.end method
