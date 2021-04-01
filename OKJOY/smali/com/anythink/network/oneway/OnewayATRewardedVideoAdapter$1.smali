.class final Lcom/anythink/network/oneway/OnewayATRewardedVideoAdapter$1;
.super Ljava/lang/Object;

# interfaces
.implements Lmobi/oneway/export/AdListener/OWRewardedAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/network/oneway/OnewayATRewardedVideoAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/network/oneway/OnewayATRewardedVideoAdapter;


# direct methods
.method constructor <init>(Lcom/anythink/network/oneway/OnewayATRewardedVideoAdapter;)V
    .registers 2

    .prologue
    .line 29
    iput-object p1, p0, Lcom/anythink/network/oneway/OnewayATRewardedVideoAdapter$1;->a:Lcom/anythink/network/oneway/OnewayATRewardedVideoAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdClick(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 46
    iget-object v0, p0, Lcom/anythink/network/oneway/OnewayATRewardedVideoAdapter$1;->a:Lcom/anythink/network/oneway/OnewayATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/oneway/OnewayATRewardedVideoAdapter;->e(Lcom/anythink/network/oneway/OnewayATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 47
    iget-object v0, p0, Lcom/anythink/network/oneway/OnewayATRewardedVideoAdapter$1;->a:Lcom/anythink/network/oneway/OnewayATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/oneway/OnewayATRewardedVideoAdapter;->f(Lcom/anythink/network/oneway/OnewayATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/network/oneway/OnewayATRewardedVideoAdapter$1;->a:Lcom/anythink/network/oneway/OnewayATRewardedVideoAdapter;

    invoke-interface {v0, v1}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;->onRewardedVideoAdPlayClicked(Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;)V

    .line 49
    :cond_13
    return-void
.end method

.method public final onAdClose(Ljava/lang/String;Lmobi/oneway/export/enums/OnewayAdCloseType;)V
    .registers 5

    .prologue
    .line 54
    iget-object v0, p0, Lcom/anythink/network/oneway/OnewayATRewardedVideoAdapter$1;->a:Lcom/anythink/network/oneway/OnewayATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/oneway/OnewayATRewardedVideoAdapter;->g(Lcom/anythink/network/oneway/OnewayATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 55
    sget-object v0, Lmobi/oneway/export/enums/OnewayAdCloseType;->COMPLETED:Lmobi/oneway/export/enums/OnewayAdCloseType;

    if-ne p2, v0, :cond_17

    .line 56
    iget-object v0, p0, Lcom/anythink/network/oneway/OnewayATRewardedVideoAdapter$1;->a:Lcom/anythink/network/oneway/OnewayATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/oneway/OnewayATRewardedVideoAdapter;->h(Lcom/anythink/network/oneway/OnewayATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/network/oneway/OnewayATRewardedVideoAdapter$1;->a:Lcom/anythink/network/oneway/OnewayATRewardedVideoAdapter;

    invoke-interface {v0, v1}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;->onReward(Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;)V

    .line 58
    :cond_17
    iget-object v0, p0, Lcom/anythink/network/oneway/OnewayATRewardedVideoAdapter$1;->a:Lcom/anythink/network/oneway/OnewayATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/oneway/OnewayATRewardedVideoAdapter;->i(Lcom/anythink/network/oneway/OnewayATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/network/oneway/OnewayATRewardedVideoAdapter$1;->a:Lcom/anythink/network/oneway/OnewayATRewardedVideoAdapter;

    invoke-interface {v0, v1}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;->onRewardedVideoAdClosed(Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;)V

    .line 60
    :cond_22
    return-void
.end method

.method public final onAdFinish(Ljava/lang/String;Lmobi/oneway/export/enums/OnewayAdCloseType;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 64
    iget-object v0, p0, Lcom/anythink/network/oneway/OnewayATRewardedVideoAdapter$1;->a:Lcom/anythink/network/oneway/OnewayATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/oneway/OnewayATRewardedVideoAdapter;->j(Lcom/anythink/network/oneway/OnewayATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 65
    iget-object v0, p0, Lcom/anythink/network/oneway/OnewayATRewardedVideoAdapter$1;->a:Lcom/anythink/network/oneway/OnewayATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/oneway/OnewayATRewardedVideoAdapter;->k(Lcom/anythink/network/oneway/OnewayATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/network/oneway/OnewayATRewardedVideoAdapter$1;->a:Lcom/anythink/network/oneway/OnewayATRewardedVideoAdapter;

    invoke-interface {v0, v1}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;->onRewardedVideoAdPlayEnd(Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;)V

    .line 67
    :cond_13
    return-void
.end method

.method public final onAdReady()V
    .registers 3

    .prologue
    .line 32
    iget-object v0, p0, Lcom/anythink/network/oneway/OnewayATRewardedVideoAdapter$1;->a:Lcom/anythink/network/oneway/OnewayATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/oneway/OnewayATRewardedVideoAdapter;->a(Lcom/anythink/network/oneway/OnewayATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoListener;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 33
    iget-object v0, p0, Lcom/anythink/network/oneway/OnewayATRewardedVideoAdapter$1;->a:Lcom/anythink/network/oneway/OnewayATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/oneway/OnewayATRewardedVideoAdapter;->b(Lcom/anythink/network/oneway/OnewayATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoListener;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/network/oneway/OnewayATRewardedVideoAdapter$1;->a:Lcom/anythink/network/oneway/OnewayATRewardedVideoAdapter;

    invoke-interface {v0, v1}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoListener;->onRewardedVideoAdLoaded(Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;)V

    .line 35
    :cond_13
    return-void
.end method

.method public final onAdShow(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 39
    iget-object v0, p0, Lcom/anythink/network/oneway/OnewayATRewardedVideoAdapter$1;->a:Lcom/anythink/network/oneway/OnewayATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/oneway/OnewayATRewardedVideoAdapter;->c(Lcom/anythink/network/oneway/OnewayATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 40
    iget-object v0, p0, Lcom/anythink/network/oneway/OnewayATRewardedVideoAdapter$1;->a:Lcom/anythink/network/oneway/OnewayATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/oneway/OnewayATRewardedVideoAdapter;->d(Lcom/anythink/network/oneway/OnewayATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/network/oneway/OnewayATRewardedVideoAdapter$1;->a:Lcom/anythink/network/oneway/OnewayATRewardedVideoAdapter;

    invoke-interface {v0, v1}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;->onRewardedVideoAdPlayStart(Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;)V

    .line 42
    :cond_13
    return-void
.end method

.method public final onSdkError(Lmobi/oneway/export/enums/OnewaySdkError;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 71
    iget-object v0, p0, Lcom/anythink/network/oneway/OnewayATRewardedVideoAdapter$1;->a:Lcom/anythink/network/oneway/OnewayATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/oneway/OnewayATRewardedVideoAdapter;->l(Lcom/anythink/network/oneway/OnewayATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoListener;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 72
    iget-object v0, p0, Lcom/anythink/network/oneway/OnewayATRewardedVideoAdapter$1;->a:Lcom/anythink/network/oneway/OnewayATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/oneway/OnewayATRewardedVideoAdapter;->m(Lcom/anythink/network/oneway/OnewayATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoListener;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/network/oneway/OnewayATRewardedVideoAdapter$1;->a:Lcom/anythink/network/oneway/OnewayATRewardedVideoAdapter;

    const-string v2, "4001"

    const-string v3, ""

    .line 73
    invoke-static {v2, v3, p2}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v2

    .line 72
    invoke-interface {v0, v1, v2}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoListener;->onRewardedVideoAdFailed(Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;Lcom/anythink/core/api/AdError;)V

    .line 75
    :cond_1b
    return-void
.end method
