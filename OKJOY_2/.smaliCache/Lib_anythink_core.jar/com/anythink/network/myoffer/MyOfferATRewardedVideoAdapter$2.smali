.class final Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/basead/f/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;->show(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;


# direct methods
.method constructor <init>(Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;)V
    .registers 2

    .line 109
    iput-object p1, p0, Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter$2;->a:Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdClick()V
    .registers 2

    .line 152
    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter$2;->a:Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;->o(Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 153
    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter$2;->a:Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;->p(Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;->onRewardedVideoAdPlayClicked()V

    .line 155
    :cond_11
    return-void
.end method

.method public final onAdClosed()V
    .registers 2

    .line 145
    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter$2;->a:Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;->m(Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 146
    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter$2;->a:Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;->n(Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;->onRewardedVideoAdClosed()V

    .line 148
    :cond_11
    return-void
.end method

.method public final onAdShow()V
    .registers 1

    .line 141
    return-void
.end method

.method public final onDeeplinkCallback(Z)V
    .registers 2

    .line 160
    return-void
.end method

.method public final onRewarded()V
    .registers 2

    .line 133
    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter$2;->a:Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;->k(Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 134
    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter$2;->a:Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;->l(Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;->onReward()V

    .line 136
    :cond_11
    return-void
.end method

.method public final onVideoAdPlayEnd()V
    .registers 2

    .line 119
    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter$2;->a:Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;->g(Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 120
    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter$2;->a:Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;->h(Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;->onRewardedVideoAdPlayEnd()V

    .line 122
    :cond_11
    return-void
.end method

.method public final onVideoAdPlayStart()V
    .registers 2

    .line 112
    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter$2;->a:Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;->e(Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 113
    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter$2;->a:Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;->f(Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;->onRewardedVideoAdPlayStart()V

    .line 115
    :cond_11
    return-void
.end method

.method public final onVideoShowFailed(Lcom/anythink/basead/c/f;)V
    .registers 4

    .line 126
    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter$2;->a:Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;->i(Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 127
    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter$2;->a:Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;->j(Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object v0

    invoke-virtual {p1}, Lcom/anythink/basead/c/f;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/anythink/basead/c/f;->b()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;->onRewardedVideoAdPlayFailed(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    :cond_19
    return-void
.end method
