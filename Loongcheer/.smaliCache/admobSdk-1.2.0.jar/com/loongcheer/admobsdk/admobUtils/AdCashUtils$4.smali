.class final Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils$4;
.super Ljava/lang/Object;
.source "AdCashUtils.java"

# interfaces
.implements Lcom/google/android/gms/ads/OnUserEarnedRewardListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->showAdmobRewardedVideo(Ljava/lang/String;Lcom/loongcheer/admobsdk/callBack/AdRewardedCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$adRewardedCallBack:Lcom/loongcheer/admobsdk/callBack/AdRewardedCallBack;


# direct methods
.method constructor <init>(Lcom/loongcheer/admobsdk/callBack/AdRewardedCallBack;)V
    .registers 2

    .line 329
    iput-object p1, p0, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils$4;->val$adRewardedCallBack:Lcom/loongcheer/admobsdk/callBack/AdRewardedCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUserEarnedReward(Lcom/google/android/gms/ads/rewarded/RewardItem;)V
    .registers 4
    .param p1, "rewardItem"    # Lcom/google/android/gms/ads/rewarded/RewardItem;

    .line 333
    iget-object v0, p0, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils$4;->val$adRewardedCallBack:Lcom/loongcheer/admobsdk/callBack/AdRewardedCallBack;

    invoke-interface {v0}, Lcom/loongcheer/admobsdk/callBack/AdRewardedCallBack;->onReward()V

    .line 334
    const-string v0, "loongcheer_ad_log"

    const-string v1, "admob \u6fc0\u52b1\u6210\u529f"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    return-void
.end method
