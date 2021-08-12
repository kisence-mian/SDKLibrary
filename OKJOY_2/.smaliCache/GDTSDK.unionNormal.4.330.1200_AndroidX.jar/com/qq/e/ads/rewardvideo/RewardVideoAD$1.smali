.class Lcom/qq/e/ads/rewardvideo/RewardVideoAD$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qq/e/ads/rewardvideo/RewardVideoAD;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/qq/e/ads/rewardvideo/RewardVideoADListener;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/qq/e/ads/rewardvideo/RewardVideoADListener;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Z

.field final synthetic f:Lcom/qq/e/ads/rewardvideo/RewardVideoAD;


# direct methods
.method constructor <init>(Lcom/qq/e/ads/rewardvideo/RewardVideoAD;Landroid/content/Context;Ljava/lang/String;Lcom/qq/e/ads/rewardvideo/RewardVideoADListener;Ljava/lang/String;Z)V
    .registers 7

    iput-object p1, p0, Lcom/qq/e/ads/rewardvideo/RewardVideoAD$1;->f:Lcom/qq/e/ads/rewardvideo/RewardVideoAD;

    iput-object p2, p0, Lcom/qq/e/ads/rewardvideo/RewardVideoAD$1;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/qq/e/ads/rewardvideo/RewardVideoAD$1;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/qq/e/ads/rewardvideo/RewardVideoAD$1;->c:Lcom/qq/e/ads/rewardvideo/RewardVideoADListener;

    iput-object p5, p0, Lcom/qq/e/ads/rewardvideo/RewardVideoAD$1;->d:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/qq/e/ads/rewardvideo/RewardVideoAD$1;->e:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    invoke-static {}, Lcom/qq/e/comm/managers/GDTADManager;->getInstance()Lcom/qq/e/comm/managers/GDTADManager;

    move-result-object v0

    iget-object v1, p0, Lcom/qq/e/ads/rewardvideo/RewardVideoAD$1;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/qq/e/ads/rewardvideo/RewardVideoAD$1;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/qq/e/comm/managers/GDTADManager;->initWith(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_32

    :try_start_e
    invoke-static {}, Lcom/qq/e/comm/managers/GDTADManager;->getInstance()Lcom/qq/e/comm/managers/GDTADManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qq/e/comm/managers/GDTADManager;->getPM()Lcom/qq/e/comm/managers/plugin/PM;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qq/e/comm/managers/plugin/PM;->getPOFactory()Lcom/qq/e/comm/pi/POFactory;

    move-result-object v0

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/qq/e/ads/rewardvideo/RewardVideoAD$1$1;

    invoke-direct {v2, p0, v0}, Lcom/qq/e/ads/rewardvideo/RewardVideoAD$1$1;-><init>(Lcom/qq/e/ads/rewardvideo/RewardVideoAD$1;Lcom/qq/e/comm/pi/POFactory;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2b
    .catchall {:try_start_e .. :try_end_2b} :catchall_2c

    return-void

    :catchall_2c
    move-exception v0

    const-string v1, "Exception while init Reward Video AD Core"

    invoke-static {v1, v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_32
    iget-object v0, p0, Lcom/qq/e/ads/rewardvideo/RewardVideoAD$1;->f:Lcom/qq/e/ads/rewardvideo/RewardVideoAD;

    const/16 v1, 0x7d1

    invoke-static {v0, v1}, Lcom/qq/e/ads/rewardvideo/RewardVideoAD;->a(Lcom/qq/e/ads/rewardvideo/RewardVideoAD;I)V

    return-void
.end method
