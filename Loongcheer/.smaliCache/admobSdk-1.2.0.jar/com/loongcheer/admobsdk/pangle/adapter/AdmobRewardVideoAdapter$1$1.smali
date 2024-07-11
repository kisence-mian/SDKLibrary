.class Lcom/loongcheer/admobsdk/pangle/adapter/AdmobRewardVideoAdapter$1$1;
.super Ljava/lang/Object;
.source "AdmobRewardVideoAdapter.java"

# interfaces
.implements Lcom/google/android/gms/ads/rewarded/RewardItem;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/loongcheer/admobsdk/pangle/adapter/AdmobRewardVideoAdapter$1;->onRewardVerify(ZILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/loongcheer/admobsdk/pangle/adapter/AdmobRewardVideoAdapter$1;

.field final synthetic val$amount:I

.field final synthetic val$rewardType:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/loongcheer/admobsdk/pangle/adapter/AdmobRewardVideoAdapter$1;Ljava/lang/String;I)V
    .registers 4
    .param p1, "this$1"    # Lcom/loongcheer/admobsdk/pangle/adapter/AdmobRewardVideoAdapter$1;

    .line 86
    iput-object p1, p0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobRewardVideoAdapter$1$1;->this$1:Lcom/loongcheer/admobsdk/pangle/adapter/AdmobRewardVideoAdapter$1;

    iput-object p2, p0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobRewardVideoAdapter$1$1;->val$rewardType:Ljava/lang/String;

    iput p3, p0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobRewardVideoAdapter$1$1;->val$amount:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAmount()I
    .registers 2

    .line 94
    iget v0, p0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobRewardVideoAdapter$1$1;->val$amount:I

    return v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    .line 89
    iget-object v0, p0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobRewardVideoAdapter$1$1;->val$rewardType:Ljava/lang/String;

    return-object v0
.end method
