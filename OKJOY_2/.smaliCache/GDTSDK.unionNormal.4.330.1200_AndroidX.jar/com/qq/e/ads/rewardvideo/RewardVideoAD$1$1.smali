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
.field final synthetic a:Lcom/qq/e/ads/rewardvideo/RewardVideoAD$1;

.field private synthetic b:Lcom/qq/e/comm/pi/POFactory;


# direct methods
.method constructor <init>(Lcom/qq/e/ads/rewardvideo/RewardVideoAD$1;Lcom/qq/e/comm/pi/POFactory;)V
    .registers 3

    iput-object p1, p0, Lcom/qq/e/ads/rewardvideo/RewardVideoAD$1$1;->a:Lcom/qq/e/ads/rewardvideo/RewardVideoAD$1;

    iput-object p2, p0, Lcom/qq/e/ads/rewardvideo/RewardVideoAD$1$1;->b:Lcom/qq/e/comm/pi/POFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    const/16 v0, 0x7d1

    :try_start_2
    iget-object v1, p0, Lcom/qq/e/ads/rewardvideo/RewardVideoAD$1$1;->b:Lcom/qq/e/comm/pi/POFactory;

    if-eqz v1, :cond_83

    new-instance v1, Lcom/qq/e/ads/rewardvideo/RewardVideoAD$ADListenerAdapter;

    iget-object v2, p0, Lcom/qq/e/ads/rewardvideo/RewardVideoAD$1$1;->a:Lcom/qq/e/ads/rewardvideo/RewardVideoAD$1;

    iget-object v2, v2, Lcom/qq/e/ads/rewardvideo/RewardVideoAD$1;->c:Lcom/qq/e/ads/rewardvideo/RewardVideoADListener;

    new-instance v3, Lcom/qq/e/ads/rewardvideo/RewardVideoAD$1$1$1;

    invoke-direct {v3, p0}, Lcom/qq/e/ads/rewardvideo/RewardVideoAD$1$1$1;-><init>(Lcom/qq/e/ads/rewardvideo/RewardVideoAD$1$1;)V

    invoke-direct {v1, v2, v3}, Lcom/qq/e/ads/rewardvideo/RewardVideoAD$ADListenerAdapter;-><init>(Lcom/qq/e/ads/rewardvideo/RewardVideoADListener;Lcom/qq/e/ads/rewardvideo/RewardVideoAD$ADListenerAdapter$CacheCallback;)V

    iget-object v2, p0, Lcom/qq/e/ads/rewardvideo/RewardVideoAD$1$1;->a:Lcom/qq/e/ads/rewardvideo/RewardVideoAD$1;

    iget-object v2, v2, Lcom/qq/e/ads/rewardvideo/RewardVideoAD$1;->f:Lcom/qq/e/ads/rewardvideo/RewardVideoAD;

    invoke-virtual {v1, v2}, Lcom/qq/e/ads/rewardvideo/RewardVideoAD$ADListenerAdapter;->setBase(Lcom/qq/e/ads/rewardvideo/RewardVideoAD;)V

    iget-object v2, p0, Lcom/qq/e/ads/rewardvideo/RewardVideoAD$1$1;->a:Lcom/qq/e/ads/rewardvideo/RewardVideoAD$1;

    iget-object v2, v2, Lcom/qq/e/ads/rewardvideo/RewardVideoAD$1;->f:Lcom/qq/e/ads/rewardvideo/RewardVideoAD;

    iget-object v3, p0, Lcom/qq/e/ads/rewardvideo/RewardVideoAD$1$1;->b:Lcom/qq/e/comm/pi/POFactory;

    iget-object v4, p0, Lcom/qq/e/ads/rewardvideo/RewardVideoAD$1$1;->a:Lcom/qq/e/ads/rewardvideo/RewardVideoAD$1;

    iget-object v4, v4, Lcom/qq/e/ads/rewardvideo/RewardVideoAD$1;->a:Landroid/content/Context;

    iget-object v5, p0, Lcom/qq/e/ads/rewardvideo/RewardVideoAD$1$1;->a:Lcom/qq/e/ads/rewardvideo/RewardVideoAD$1;

    iget-object v5, v5, Lcom/qq/e/ads/rewardvideo/RewardVideoAD$1;->b:Ljava/lang/String;

    iget-object v6, p0, Lcom/qq/e/ads/rewardvideo/RewardVideoAD$1$1;->a:Lcom/qq/e/ads/rewardvideo/RewardVideoAD$1;

    iget-object v6, v6, Lcom/qq/e/ads/rewardvideo/RewardVideoAD$1;->d:Ljava/lang/String;

    invoke-interface {v3, v4, v5, v6, v1}, Lcom/qq/e/comm/pi/POFactory;->getRewardVideoADDelegate(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/qq/e/comm/adevent/ADListener;)Lcom/qq/e/comm/pi/RVADI;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/qq/e/ads/rewardvideo/RewardVideoAD;->a(Lcom/qq/e/ads/rewardvideo/RewardVideoAD;Lcom/qq/e/comm/pi/RVADI;)Lcom/qq/e/comm/pi/RVADI;

    iget-object v1, p0, Lcom/qq/e/ads/rewardvideo/RewardVideoAD$1$1;->a:Lcom/qq/e/ads/rewardvideo/RewardVideoAD$1;

    iget-object v1, v1, Lcom/qq/e/ads/rewardvideo/RewardVideoAD$1;->f:Lcom/qq/e/ads/rewardvideo/RewardVideoAD;

    invoke-static {v1}, Lcom/qq/e/ads/rewardvideo/RewardVideoAD;->a(Lcom/qq/e/ads/rewardvideo/RewardVideoAD;)Lcom/qq/e/comm/pi/RVADI;

    move-result-object v1

    iget-object v2, p0, Lcom/qq/e/ads/rewardvideo/RewardVideoAD$1$1;->a:Lcom/qq/e/ads/rewardvideo/RewardVideoAD$1;

    iget-boolean v2, v2, Lcom/qq/e/ads/rewardvideo/RewardVideoAD$1;->e:Z

    invoke-interface {v1, v2}, Lcom/qq/e/comm/pi/RVADI;->setVolumeOn(Z)V

    iget-object v1, p0, Lcom/qq/e/ads/rewardvideo/RewardVideoAD$1$1;->a:Lcom/qq/e/ads/rewardvideo/RewardVideoAD$1;

    iget-object v1, v1, Lcom/qq/e/ads/rewardvideo/RewardVideoAD$1;->f:Lcom/qq/e/ads/rewardvideo/RewardVideoAD;

    invoke-static {v1}, Lcom/qq/e/ads/rewardvideo/RewardVideoAD;->a(Lcom/qq/e/ads/rewardvideo/RewardVideoAD;)Lcom/qq/e/comm/pi/RVADI;

    move-result-object v1

    iget-object v2, p0, Lcom/qq/e/ads/rewardvideo/RewardVideoAD$1$1;->a:Lcom/qq/e/ads/rewardvideo/RewardVideoAD$1;

    iget-object v2, v2, Lcom/qq/e/ads/rewardvideo/RewardVideoAD$1;->f:Lcom/qq/e/ads/rewardvideo/RewardVideoAD;

    invoke-static {v2}, Lcom/qq/e/ads/rewardvideo/RewardVideoAD;->b(Lcom/qq/e/ads/rewardvideo/RewardVideoAD;)Lcom/qq/e/comm/constants/LoadAdParams;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/qq/e/comm/pi/RVADI;->setLoadAdParams(Lcom/qq/e/comm/constants/LoadAdParams;)V

    iget-object v1, p0, Lcom/qq/e/ads/rewardvideo/RewardVideoAD$1$1;->a:Lcom/qq/e/ads/rewardvideo/RewardVideoAD$1;

    iget-object v1, v1, Lcom/qq/e/ads/rewardvideo/RewardVideoAD$1;->f:Lcom/qq/e/ads/rewardvideo/RewardVideoAD;

    invoke-static {v1}, Lcom/qq/e/ads/rewardvideo/RewardVideoAD;->a(Lcom/qq/e/ads/rewardvideo/RewardVideoAD;)Lcom/qq/e/comm/pi/RVADI;

    move-result-object v1

    iget-object v2, p0, Lcom/qq/e/ads/rewardvideo/RewardVideoAD$1$1;->a:Lcom/qq/e/ads/rewardvideo/RewardVideoAD$1;

    iget-object v2, v2, Lcom/qq/e/ads/rewardvideo/RewardVideoAD$1;->f:Lcom/qq/e/ads/rewardvideo/RewardVideoAD;

    invoke-static {v2}, Lcom/qq/e/ads/rewardvideo/RewardVideoAD;->c(Lcom/qq/e/ads/rewardvideo/RewardVideoAD;)Lcom/qq/e/ads/rewardvideo/ServerSideVerificationOptions;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/qq/e/comm/pi/RVADI;->setServerSideVerificationOptions(Lcom/qq/e/ads/rewardvideo/ServerSideVerificationOptions;)V

    iget-object v1, p0, Lcom/qq/e/ads/rewardvideo/RewardVideoAD$1$1;->a:Lcom/qq/e/ads/rewardvideo/RewardVideoAD$1;

    iget-object v1, v1, Lcom/qq/e/ads/rewardvideo/RewardVideoAD$1;->f:Lcom/qq/e/ads/rewardvideo/RewardVideoAD;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/qq/e/ads/rewardvideo/RewardVideoAD;->b(Lcom/qq/e/ads/rewardvideo/RewardVideoAD;Z)Z

    iget-object v1, p0, Lcom/qq/e/ads/rewardvideo/RewardVideoAD$1$1;->a:Lcom/qq/e/ads/rewardvideo/RewardVideoAD$1;

    iget-object v1, v1, Lcom/qq/e/ads/rewardvideo/RewardVideoAD$1;->f:Lcom/qq/e/ads/rewardvideo/RewardVideoAD;

    invoke-static {v1}, Lcom/qq/e/ads/rewardvideo/RewardVideoAD;->d(Lcom/qq/e/ads/rewardvideo/RewardVideoAD;)Z

    move-result v1

    if-eqz v1, :cond_98

    iget-object v1, p0, Lcom/qq/e/ads/rewardvideo/RewardVideoAD$1$1;->a:Lcom/qq/e/ads/rewardvideo/RewardVideoAD$1;

    iget-object v1, v1, Lcom/qq/e/ads/rewardvideo/RewardVideoAD$1;->f:Lcom/qq/e/ads/rewardvideo/RewardVideoAD;

    invoke-virtual {v1}, Lcom/qq/e/ads/rewardvideo/RewardVideoAD;->loadAD()V

    goto :goto_98

    :cond_83
    iget-object v1, p0, Lcom/qq/e/ads/rewardvideo/RewardVideoAD$1$1;->a:Lcom/qq/e/ads/rewardvideo/RewardVideoAD$1;

    iget-object v1, v1, Lcom/qq/e/ads/rewardvideo/RewardVideoAD$1;->f:Lcom/qq/e/ads/rewardvideo/RewardVideoAD;

    invoke-static {v1, v0}, Lcom/qq/e/ads/rewardvideo/RewardVideoAD;->a(Lcom/qq/e/ads/rewardvideo/RewardVideoAD;I)V
    :try_end_8a
    .catchall {:try_start_2 .. :try_end_8a} :catchall_8b

    return-void

    :catchall_8b
    move-exception v1

    const-string v2, "Exception while init Core"

    invoke-static {v2, v1}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v1, p0, Lcom/qq/e/ads/rewardvideo/RewardVideoAD$1$1;->a:Lcom/qq/e/ads/rewardvideo/RewardVideoAD$1;

    iget-object v1, v1, Lcom/qq/e/ads/rewardvideo/RewardVideoAD$1;->f:Lcom/qq/e/ads/rewardvideo/RewardVideoAD;

    invoke-static {v1, v0}, Lcom/qq/e/ads/rewardvideo/RewardVideoAD;->a(Lcom/qq/e/ads/rewardvideo/RewardVideoAD;I)V

    :cond_98
    :goto_98
    return-void
.end method
