.class final Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity$2;
.super Ljava/lang/Object;
.source "MTGRewardVideoActivity.java"

# interfaces
.implements Lcom/mintegral/msdk/mtgjscommon/mraid/d$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;)V
    .registers 2

    .prologue
    .line 329
    iput-object p1, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity$2;->a:Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(D)V
    .registers 6

    .prologue
    .line 332
    const-string v0, "AbstractJSActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "volume is : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    :try_start_14
    iget-object v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity$2;->a:Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;

    invoke-static {v0}, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->b(Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;)Lcom/mintegral/msdk/base/entity/CampaignEx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->isMraid()Z

    move-result v0

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity$2;->a:Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;

    invoke-static {v0}, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->c(Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;)Lcom/mintegral/msdk/video/module/MintegralContainerView;

    move-result-object v0

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity$2;->a:Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;

    invoke-static {v0}, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->d(Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;)Lcom/mintegral/msdk/video/module/MintegralContainerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/video/module/MintegralContainerView;->getH5EndCardView()Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;

    move-result-object v0

    if-eqz v0, :cond_41

    .line 335
    iget-object v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity$2;->a:Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;

    invoke-static {v0}, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->e(Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;)Lcom/mintegral/msdk/video/module/MintegralContainerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/video/module/MintegralContainerView;->getH5EndCardView()Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->volumeChange(D)V

    .line 337
    :cond_41
    iget-object v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity$2;->a:Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;

    invoke-static {v0}, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->b(Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;)Lcom/mintegral/msdk/base/entity/CampaignEx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->isActiveOm()Z

    move-result v0

    if-eqz v0, :cond_7c

    iget-object v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity$2;->a:Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;

    invoke-static {v0}, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->f(Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;)Lcom/iab/omid/library/mintegral/adsession/video/VideoEvents;

    move-result-object v0

    if-eqz v0, :cond_7c

    iget-object v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity$2;->a:Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;

    invoke-static {v0}, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->g(Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;)Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 338
    iget-object v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity$2;->a:Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;

    invoke-static {v0}, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->h(Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;)Lcom/mintegral/msdk/video/module/MintegralVideoView;

    move-result-object v0

    if-eqz v0, :cond_7c

    iget-object v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity$2;->a:Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;

    invoke-static {v0}, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->i(Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;)Lcom/mintegral/msdk/video/module/MintegralVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/video/module/MintegralVideoView;->getMute()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7c

    .line 339
    iget-object v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity$2;->a:Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;

    invoke-static {v0}, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->f(Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;)Lcom/iab/omid/library/mintegral/adsession/video/VideoEvents;

    move-result-object v0

    double-to-float v1, p1

    invoke-virtual {v0, v1}, Lcom/iab/omid/library/mintegral/adsession/video/VideoEvents;->volumeChange(F)V
    :try_end_7c
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_7c} :catch_7d

    .line 345
    :cond_7c
    :goto_7c
    return-void

    .line 342
    :catch_7d
    move-exception v0

    .line 343
    const-string v1, "AbstractJSActivity"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7c
.end method
