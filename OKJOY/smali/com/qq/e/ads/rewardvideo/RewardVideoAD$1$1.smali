.class Lcom/qq/e/ads/rewardvideo/RewardVideoAD$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qq/e/ads/rewardvideo/RewardVideoAD$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/qq/e/comm/pi/POFactory;

.field private synthetic b:Lcom/qq/e/ads/rewardvideo/RewardVideoAD$1;


# direct methods
.method constructor <init>(Lcom/qq/e/ads/rewardvideo/RewardVideoAD$1;Lcom/qq/e/comm/pi/POFactory;)V
    .registers 3
    .param p1, "this$1"    # Lcom/qq/e/ads/rewardvideo/RewardVideoAD$1;

    .prologue
    iput-object p1, p0, Lcom/qq/e/ads/rewardvideo/RewardVideoAD$1$1;->b:Lcom/qq/e/ads/rewardvideo/RewardVideoAD$1;

    iput-object p2, p0, Lcom/qq/e/ads/rewardvideo/RewardVideoAD$1$1;->a:Lcom/qq/e/comm/pi/POFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    const/16 v6, 0x7d1

    :try_start_2
    iget-object v0, p0, Lcom/qq/e/ads/rewardvideo/RewardVideoAD$1$1;->a:Lcom/qq/e/comm/pi/POFactory;

    if-eqz v0, :cond_58

    new-instance v0, Lcom/qq/e/ads/rewardvideo/RewardVideoAD$ADListenerAdapter;

    iget-object v1, p0, Lcom/qq/e/ads/rewardvideo/RewardVideoAD$1$1;->b:Lcom/qq/e/ads/rewardvideo/RewardVideoAD$1;

    iget-object v1, v1, Lcom/qq/e/ads/rewardvideo/RewardVideoAD$1;->c:Lcom/qq/e/ads/rewardvideo/RewardVideoADListener;

    invoke-direct {v0, v1}, Lcom/qq/e/ads/rewardvideo/RewardVideoAD$ADListenerAdapter;-><init>(Lcom/qq/e/ads/rewardvideo/RewardVideoADListener;)V

    iget-object v1, p0, Lcom/qq/e/ads/rewardvideo/RewardVideoAD$1$1;->b:Lcom/qq/e/ads/rewardvideo/RewardVideoAD$1;

    iget-object v1, v1, Lcom/qq/e/ads/rewardvideo/RewardVideoAD$1;->f:Lcom/qq/e/ads/rewardvideo/RewardVideoAD;

    invoke-virtual {v0, v1}, Lcom/qq/e/ads/rewardvideo/RewardVideoAD$ADListenerAdapter;->setBase(Lcom/qq/e/ads/rewardvideo/RewardVideoAD;)V

    iget-object v1, p0, Lcom/qq/e/ads/rewardvideo/RewardVideoAD$1$1;->b:Lcom/qq/e/ads/rewardvideo/RewardVideoAD$1;

    iget-object v1, v1, Lcom/qq/e/ads/rewardvideo/RewardVideoAD$1;->f:Lcom/qq/e/ads/rewardvideo/RewardVideoAD;

    iget-object v2, p0, Lcom/qq/e/ads/rewardvideo/RewardVideoAD$1$1;->a:Lcom/qq/e/comm/pi/POFactory;

    iget-object v3, p0, Lcom/qq/e/ads/rewardvideo/RewardVideoAD$1$1;->b:Lcom/qq/e/ads/rewardvideo/RewardVideoAD$1;

    iget-object v3, v3, Lcom/qq/e/ads/rewardvideo/RewardVideoAD$1;->a:Landroid/content/Context;

    iget-object v4, p0, Lcom/qq/e/ads/rewardvideo/RewardVideoAD$1$1;->b:Lcom/qq/e/ads/rewardvideo/RewardVideoAD$1;

    iget-object v4, v4, Lcom/qq/e/ads/rewardvideo/RewardVideoAD$1;->b:Ljava/lang/String;

    iget-object v5, p0, Lcom/qq/e/ads/rewardvideo/RewardVideoAD$1$1;->b:Lcom/qq/e/ads/rewardvideo/RewardVideoAD$1;

    iget-object v5, v5, Lcom/qq/e/ads/rewardvideo/RewardVideoAD$1;->d:Ljava/lang/String;

    invoke-interface {v2, v3, v4, v5, v0}, Lcom/qq/e/comm/pi/POFactory;->getRewardVideoADDelegate(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/qq/e/comm/adevent/ADListener;)Lcom/qq/e/comm/pi/RVADI;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/qq/e/ads/rewardvideo/RewardVideoAD;->a(Lcom/qq/e/ads/rewardvideo/RewardVideoAD;Lcom/qq/e/comm/pi/RVADI;)Lcom/qq/e/comm/pi/RVADI;

    iget-object v0, p0, Lcom/qq/e/ads/rewardvideo/RewardVideoAD$1$1;->b:Lcom/qq/e/ads/rewardvideo/RewardVideoAD$1;

    iget-object v0, v0, Lcom/qq/e/ads/rewardvideo/RewardVideoAD$1;->f:Lcom/qq/e/ads/rewardvideo/RewardVideoAD;

    invoke-static {v0}, Lcom/qq/e/ads/rewardvideo/RewardVideoAD;->a(Lcom/qq/e/ads/rewardvideo/RewardVideoAD;)Lcom/qq/e/comm/pi/RVADI;

    move-result-object v0

    iget-object v1, p0, Lcom/qq/e/ads/rewardvideo/RewardVideoAD$1$1;->b:Lcom/qq/e/ads/rewardvideo/RewardVideoAD$1;

    iget-boolean v1, v1, Lcom/qq/e/ads/rewardvideo/RewardVideoAD$1;->e:Z

    invoke-interface {v0, v1}, Lcom/qq/e/comm/pi/RVADI;->setVolumeOn(Z)V

    iget-object v0, p0, Lcom/qq/e/ads/rewardvideo/RewardVideoAD$1$1;->b:Lcom/qq/e/ads/rewardvideo/RewardVideoAD$1;

    iget-object v0, v0, Lcom/qq/e/ads/rewardvideo/RewardVideoAD$1;->f:Lcom/qq/e/ads/rewardvideo/RewardVideoAD;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/qq/e/ads/rewardvideo/RewardVideoAD;->a(Lcom/qq/e/ads/rewardvideo/RewardVideoAD;Z)Z

    iget-object v0, p0, Lcom/qq/e/ads/rewardvideo/RewardVideoAD$1$1;->b:Lcom/qq/e/ads/rewardvideo/RewardVideoAD$1;

    iget-object v0, v0, Lcom/qq/e/ads/rewardvideo/RewardVideoAD$1;->f:Lcom/qq/e/ads/rewardvideo/RewardVideoAD;

    invoke-static {v0}, Lcom/qq/e/ads/rewardvideo/RewardVideoAD;->b(Lcom/qq/e/ads/rewardvideo/RewardVideoAD;)Z

    move-result v0

    if-eqz v0, :cond_57

    iget-object v0, p0, Lcom/qq/e/ads/rewardvideo/RewardVideoAD$1$1;->b:Lcom/qq/e/ads/rewardvideo/RewardVideoAD$1;

    iget-object v0, v0, Lcom/qq/e/ads/rewardvideo/RewardVideoAD$1;->f:Lcom/qq/e/ads/rewardvideo/RewardVideoAD;

    invoke-virtual {v0}, Lcom/qq/e/ads/rewardvideo/RewardVideoAD;->loadAD()V

    :cond_57
    :goto_57
    return-void

    :cond_58
    iget-object v0, p0, Lcom/qq/e/ads/rewardvideo/RewardVideoAD$1$1;->b:Lcom/qq/e/ads/rewardvideo/RewardVideoAD$1;

    iget-object v0, v0, Lcom/qq/e/ads/rewardvideo/RewardVideoAD$1;->f:Lcom/qq/e/ads/rewardvideo/RewardVideoAD;

    const/16 v1, 0x7d1

    invoke-static {v0, v1}, Lcom/qq/e/ads/rewardvideo/RewardVideoAD;->a(Lcom/qq/e/ads/rewardvideo/RewardVideoAD;I)V
    :try_end_61
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_61} :catch_62

    goto :goto_57

    :catch_62
    move-exception v0

    const-string v1, "Exception while init Core"

    invoke-static {v1, v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/qq/e/comm/managers/GDTADManager;->getInstance()Lcom/qq/e/comm/managers/GDTADManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qq/e/comm/managers/GDTADManager;->getPM()Lcom/qq/e/comm/managers/plugin/PM;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/qq/e/comm/managers/plugin/PM;->autoRollbackPlugin(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/qq/e/ads/rewardvideo/RewardVideoAD$1$1;->b:Lcom/qq/e/ads/rewardvideo/RewardVideoAD$1;

    iget-object v0, v0, Lcom/qq/e/ads/rewardvideo/RewardVideoAD$1;->f:Lcom/qq/e/ads/rewardvideo/RewardVideoAD;

    invoke-static {v0, v6}, Lcom/qq/e/ads/rewardvideo/RewardVideoAD;->a(Lcom/qq/e/ads/rewardvideo/RewardVideoAD;I)V

    goto :goto_57
.end method
