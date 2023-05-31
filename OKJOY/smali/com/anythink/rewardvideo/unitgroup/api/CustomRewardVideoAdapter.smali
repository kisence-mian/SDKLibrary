.class public abstract Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;
.super Lcom/anythink/core/b/a/b;


# instance fields
.field protected mImpressionListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

.field protected mLoadResultListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoListener;

.field protected mUserData:Ljava/lang/String;

.field protected mUserId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/anythink/core/b/a/b;-><init>()V

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;->mUserId:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;->mUserData:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public clearImpressionListener()V
    .registers 2

    .prologue
    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;->mImpressionListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    .line 46
    return-void
.end method

.method public clearLoadListener()V
    .registers 2

    .prologue
    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;->mLoadResultListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoListener;

    .line 42
    return-void
.end method

.method public abstract loadRewardVideoAd(Landroid/app/Activity;Ljava/util/Map;Lcom/anythink/core/api/ATMediationSetting;Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/anythink/core/api/ATMediationSetting;",
            "Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoListener;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onPause(Landroid/app/Activity;)V
.end method

.method public abstract onResume(Landroid/app/Activity;)V
.end method

.method public setAdImpressionListener(Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;)V
    .registers 2

    .prologue
    .line 37
    iput-object p1, p0, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;->mImpressionListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    .line 38
    return-void
.end method

.method public setUserData(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 33
    iput-object p1, p0, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;->mUserData:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 29
    iput-object p1, p0, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;->mUserId:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public abstract show(Landroid/app/Activity;)V
.end method
