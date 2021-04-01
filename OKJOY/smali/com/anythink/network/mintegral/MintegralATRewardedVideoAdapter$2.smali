.class final Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/network/mintegral/MintegralATInitManager$InitCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter;->loadRewardVideoAd(Landroid/app/Activity;Ljava/util/Map;Lcom/anythink/core/api/ATMediationSetting;Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter;


# direct methods
.method constructor <init>(Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter;Landroid/app/Activity;)V
    .registers 3

    .prologue
    .line 173
    iput-object p1, p0, Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter$2;->b:Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter;

    iput-object p2, p0, Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter$2;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Ljava/lang/Throwable;)V
    .registers 7

    .prologue
    .line 184
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter$2;->b:Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter;->r(Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoListener;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 185
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter$2;->b:Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter;->s(Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoListener;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter$2;->b:Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter;

    const-string v2, "4001"

    const-string v3, ""

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoListener;->onRewardedVideoAdFailed(Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;Lcom/anythink/core/api/AdError;)V

    .line 187
    :cond_1f
    return-void
.end method

.method public final onSuccess()V
    .registers 3

    .prologue
    .line 177
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter$2;->b:Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter;

    iget-object v1, p0, Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter$2;->a:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter;->a(Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter;Landroid/content/Context;)V

    .line 179
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter$2;->b:Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter;

    invoke-virtual {v0}, Lcom/anythink/network/mintegral/MintegralATRewardedVideoAdapter;->startLoad()V

    .line 180
    return-void
.end method
