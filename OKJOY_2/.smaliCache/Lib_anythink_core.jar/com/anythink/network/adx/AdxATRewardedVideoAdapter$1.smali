.class final Lcom/anythink/network/adx/AdxATRewardedVideoAdapter$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/basead/f/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;->show(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;


# direct methods
.method constructor <init>(Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;)V
    .registers 2

    .line 42
    iput-object p1, p0, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter$1;->a:Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdClick()V
    .registers 2

    .line 86
    iget-object v0, p0, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter$1;->a:Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;->k(Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 87
    iget-object v0, p0, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter$1;->a:Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;->l(Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;->onRewardedVideoAdPlayClicked()V

    .line 89
    :cond_11
    return-void
.end method

.method public final onAdClosed()V
    .registers 2

    .line 79
    iget-object v0, p0, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter$1;->a:Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;->i(Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 80
    iget-object v0, p0, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter$1;->a:Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;->j(Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;->onRewardedVideoAdClosed()V

    .line 82
    :cond_11
    return-void
.end method

.method public final onAdShow()V
    .registers 1

    .line 75
    return-void
.end method

.method public final onDeeplinkCallback(Z)V
    .registers 3

    .line 93
    iget-object v0, p0, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter$1;->a:Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;->m(Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 94
    iget-object v0, p0, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter$1;->a:Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;->n(Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;->onDeeplinkCallback(Z)V

    .line 96
    :cond_11
    return-void
.end method

.method public final onRewarded()V
    .registers 2

    .line 66
    iget-object v0, p0, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter$1;->a:Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;->g(Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 67
    iget-object v0, p0, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter$1;->a:Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;->h(Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;->onReward()V

    .line 69
    :cond_11
    return-void
.end method

.method public final onVideoAdPlayEnd()V
    .registers 2

    .line 52
    iget-object v0, p0, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter$1;->a:Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;->c(Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 53
    iget-object v0, p0, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter$1;->a:Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;->d(Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;->onRewardedVideoAdPlayEnd()V

    .line 55
    :cond_11
    return-void
.end method

.method public final onVideoAdPlayStart()V
    .registers 2

    .line 45
    iget-object v0, p0, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter$1;->a:Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;->a(Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 46
    iget-object v0, p0, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter$1;->a:Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;->b(Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;->onRewardedVideoAdPlayStart()V

    .line 48
    :cond_11
    return-void
.end method

.method public final onVideoShowFailed(Lcom/anythink/basead/c/f;)V
    .registers 4

    .line 59
    iget-object v0, p0, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter$1;->a:Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;->e(Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 60
    iget-object v0, p0, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter$1;->a:Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;->f(Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object v0

    invoke-virtual {p1}, Lcom/anythink/basead/c/f;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/anythink/basead/c/f;->b()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;->onRewardedVideoAdPlayFailed(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    :cond_19
    return-void
.end method
