.class final Lcom/anythink/network/onlineapi/OnlineApiATRewardedVideoAdapter$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/basead/f/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/onlineapi/OnlineApiATRewardedVideoAdapter;->show(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/network/onlineapi/OnlineApiATRewardedVideoAdapter;


# direct methods
.method constructor <init>(Lcom/anythink/network/onlineapi/OnlineApiATRewardedVideoAdapter;)V
    .registers 2

    .line 44
    iput-object p1, p0, Lcom/anythink/network/onlineapi/OnlineApiATRewardedVideoAdapter$1;->a:Lcom/anythink/network/onlineapi/OnlineApiATRewardedVideoAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdClick()V
    .registers 2

    .line 88
    iget-object v0, p0, Lcom/anythink/network/onlineapi/OnlineApiATRewardedVideoAdapter$1;->a:Lcom/anythink/network/onlineapi/OnlineApiATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/onlineapi/OnlineApiATRewardedVideoAdapter;->k(Lcom/anythink/network/onlineapi/OnlineApiATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 89
    iget-object v0, p0, Lcom/anythink/network/onlineapi/OnlineApiATRewardedVideoAdapter$1;->a:Lcom/anythink/network/onlineapi/OnlineApiATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/onlineapi/OnlineApiATRewardedVideoAdapter;->l(Lcom/anythink/network/onlineapi/OnlineApiATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;->onRewardedVideoAdPlayClicked()V

    .line 91
    :cond_11
    return-void
.end method

.method public final onAdClosed()V
    .registers 2

    .line 81
    iget-object v0, p0, Lcom/anythink/network/onlineapi/OnlineApiATRewardedVideoAdapter$1;->a:Lcom/anythink/network/onlineapi/OnlineApiATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/onlineapi/OnlineApiATRewardedVideoAdapter;->i(Lcom/anythink/network/onlineapi/OnlineApiATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 82
    iget-object v0, p0, Lcom/anythink/network/onlineapi/OnlineApiATRewardedVideoAdapter$1;->a:Lcom/anythink/network/onlineapi/OnlineApiATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/onlineapi/OnlineApiATRewardedVideoAdapter;->j(Lcom/anythink/network/onlineapi/OnlineApiATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;->onRewardedVideoAdClosed()V

    .line 84
    :cond_11
    return-void
.end method

.method public final onAdShow()V
    .registers 1

    .line 77
    return-void
.end method

.method public final onDeeplinkCallback(Z)V
    .registers 3

    .line 95
    iget-object v0, p0, Lcom/anythink/network/onlineapi/OnlineApiATRewardedVideoAdapter$1;->a:Lcom/anythink/network/onlineapi/OnlineApiATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/onlineapi/OnlineApiATRewardedVideoAdapter;->m(Lcom/anythink/network/onlineapi/OnlineApiATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 96
    iget-object v0, p0, Lcom/anythink/network/onlineapi/OnlineApiATRewardedVideoAdapter$1;->a:Lcom/anythink/network/onlineapi/OnlineApiATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/onlineapi/OnlineApiATRewardedVideoAdapter;->n(Lcom/anythink/network/onlineapi/OnlineApiATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;->onDeeplinkCallback(Z)V

    .line 98
    :cond_11
    return-void
.end method

.method public final onRewarded()V
    .registers 2

    .line 68
    iget-object v0, p0, Lcom/anythink/network/onlineapi/OnlineApiATRewardedVideoAdapter$1;->a:Lcom/anythink/network/onlineapi/OnlineApiATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/onlineapi/OnlineApiATRewardedVideoAdapter;->g(Lcom/anythink/network/onlineapi/OnlineApiATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 69
    iget-object v0, p0, Lcom/anythink/network/onlineapi/OnlineApiATRewardedVideoAdapter$1;->a:Lcom/anythink/network/onlineapi/OnlineApiATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/onlineapi/OnlineApiATRewardedVideoAdapter;->h(Lcom/anythink/network/onlineapi/OnlineApiATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;->onReward()V

    .line 71
    :cond_11
    return-void
.end method

.method public final onVideoAdPlayEnd()V
    .registers 2

    .line 54
    iget-object v0, p0, Lcom/anythink/network/onlineapi/OnlineApiATRewardedVideoAdapter$1;->a:Lcom/anythink/network/onlineapi/OnlineApiATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/onlineapi/OnlineApiATRewardedVideoAdapter;->c(Lcom/anythink/network/onlineapi/OnlineApiATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 55
    iget-object v0, p0, Lcom/anythink/network/onlineapi/OnlineApiATRewardedVideoAdapter$1;->a:Lcom/anythink/network/onlineapi/OnlineApiATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/onlineapi/OnlineApiATRewardedVideoAdapter;->d(Lcom/anythink/network/onlineapi/OnlineApiATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;->onRewardedVideoAdPlayEnd()V

    .line 57
    :cond_11
    return-void
.end method

.method public final onVideoAdPlayStart()V
    .registers 2

    .line 47
    iget-object v0, p0, Lcom/anythink/network/onlineapi/OnlineApiATRewardedVideoAdapter$1;->a:Lcom/anythink/network/onlineapi/OnlineApiATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/onlineapi/OnlineApiATRewardedVideoAdapter;->a(Lcom/anythink/network/onlineapi/OnlineApiATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 48
    iget-object v0, p0, Lcom/anythink/network/onlineapi/OnlineApiATRewardedVideoAdapter$1;->a:Lcom/anythink/network/onlineapi/OnlineApiATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/onlineapi/OnlineApiATRewardedVideoAdapter;->b(Lcom/anythink/network/onlineapi/OnlineApiATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;->onRewardedVideoAdPlayStart()V

    .line 50
    :cond_11
    return-void
.end method

.method public final onVideoShowFailed(Lcom/anythink/basead/c/f;)V
    .registers 4

    .line 61
    iget-object v0, p0, Lcom/anythink/network/onlineapi/OnlineApiATRewardedVideoAdapter$1;->a:Lcom/anythink/network/onlineapi/OnlineApiATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/onlineapi/OnlineApiATRewardedVideoAdapter;->e(Lcom/anythink/network/onlineapi/OnlineApiATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 62
    iget-object v0, p0, Lcom/anythink/network/onlineapi/OnlineApiATRewardedVideoAdapter$1;->a:Lcom/anythink/network/onlineapi/OnlineApiATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/onlineapi/OnlineApiATRewardedVideoAdapter;->f(Lcom/anythink/network/onlineapi/OnlineApiATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object v0

    invoke-virtual {p1}, Lcom/anythink/basead/c/f;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/anythink/basead/c/f;->b()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;->onRewardedVideoAdPlayFailed(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    :cond_19
    return-void
.end method
