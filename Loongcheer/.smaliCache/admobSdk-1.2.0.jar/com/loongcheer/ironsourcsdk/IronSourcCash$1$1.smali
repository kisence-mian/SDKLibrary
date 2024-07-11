.class Lcom/loongcheer/ironsourcsdk/IronSourcCash$1$1;
.super Ljava/lang/Object;
.source "IronSourcCash.java"

# interfaces
.implements Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/loongcheer/ironsourcsdk/IronSourcCash$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/loongcheer/ironsourcsdk/IronSourcCash$1;


# direct methods
.method constructor <init>(Lcom/loongcheer/ironsourcsdk/IronSourcCash$1;)V
    .registers 2
    .param p1, "this$0"    # Lcom/loongcheer/ironsourcsdk/IronSourcCash$1;

    .line 55
    iput-object p1, p0, Lcom/loongcheer/ironsourcsdk/IronSourcCash$1$1;->this$0:Lcom/loongcheer/ironsourcsdk/IronSourcCash$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRewardedVideoAdClicked(Lcom/ironsource/mediationsdk/model/Placement;)V
    .registers 2
    .param p1, "placement"    # Lcom/ironsource/mediationsdk/model/Placement;

    .line 113
    return-void
.end method

.method public onRewardedVideoAdClosed()V
    .registers 2

    .line 70
    # getter for: Lcom/loongcheer/ironsourcsdk/IronSourcCash;->adRewardedCallBacks:Lcom/loongcheer/admobsdk/callBack/AdRewardedCallBack;
    invoke-static {}, Lcom/loongcheer/ironsourcsdk/IronSourcCash;->access$000()Lcom/loongcheer/admobsdk/callBack/AdRewardedCallBack;

    move-result-object v0

    invoke-interface {v0}, Lcom/loongcheer/admobsdk/callBack/AdRewardedCallBack;->onClose()V

    .line 71
    return-void
.end method

.method public onRewardedVideoAdEnded()V
    .registers 1

    .line 133
    return-void
.end method

.method public onRewardedVideoAdOpened()V
    .registers 2

    .line 63
    # getter for: Lcom/loongcheer/ironsourcsdk/IronSourcCash;->adRewardedCallBacks:Lcom/loongcheer/admobsdk/callBack/AdRewardedCallBack;
    invoke-static {}, Lcom/loongcheer/ironsourcsdk/IronSourcCash;->access$000()Lcom/loongcheer/admobsdk/callBack/AdRewardedCallBack;

    move-result-object v0

    invoke-interface {v0}, Lcom/loongcheer/admobsdk/callBack/AdRewardedCallBack;->onShow()V

    .line 64
    return-void
.end method

.method public onRewardedVideoAdRewarded(Lcom/ironsource/mediationsdk/model/Placement;)V
    .registers 3
    .param p1, "placement"    # Lcom/ironsource/mediationsdk/model/Placement;

    .line 98
    # getter for: Lcom/loongcheer/ironsourcsdk/IronSourcCash;->adRewardedCallBacks:Lcom/loongcheer/admobsdk/callBack/AdRewardedCallBack;
    invoke-static {}, Lcom/loongcheer/ironsourcsdk/IronSourcCash;->access$000()Lcom/loongcheer/admobsdk/callBack/AdRewardedCallBack;

    move-result-object v0

    invoke-interface {v0}, Lcom/loongcheer/admobsdk/callBack/AdRewardedCallBack;->onReward()V

    .line 99
    return-void
.end method

.method public onRewardedVideoAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .registers 4
    .param p1, "error"    # Lcom/ironsource/mediationsdk/logger/IronSourceError;

    .line 106
    # getter for: Lcom/loongcheer/ironsourcsdk/IronSourcCash;->adRewardedCallBacks:Lcom/loongcheer/admobsdk/callBack/AdRewardedCallBack;
    invoke-static {}, Lcom/loongcheer/ironsourcsdk/IronSourcCash;->access$000()Lcom/loongcheer/admobsdk/callBack/AdRewardedCallBack;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/loongcheer/admobsdk/callBack/AdRewardedCallBack;->onShowError(Ljava/lang/String;)V

    .line 107
    return-void
.end method

.method public onRewardedVideoAdStarted()V
    .registers 1

    .line 128
    return-void
.end method

.method public onRewardedVideoAvailabilityChanged(Z)V
    .registers 2
    .param p1, "available"    # Z

    .line 83
    return-void
.end method
