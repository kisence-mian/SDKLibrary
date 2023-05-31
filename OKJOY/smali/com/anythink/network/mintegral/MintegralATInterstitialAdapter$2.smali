.class final Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mintegral/msdk/out/InterstitialListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;


# direct methods
.method constructor <init>(Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;)V
    .registers 2

    .prologue
    .line 132
    iput-object p1, p0, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter$2;->a:Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onInterstitialAdClick()V
    .registers 3

    .prologue
    .line 172
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter$2;->a:Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;->B(Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 173
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter$2;->a:Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;->C(Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter$2;->a:Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;

    invoke-interface {v0, v1}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;->onInterstitialAdClicked(Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;)V

    .line 175
    :cond_13
    return-void
.end method

.method public final onInterstitialClosed()V
    .registers 3

    .prologue
    .line 165
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter$2;->a:Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;->z(Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 166
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter$2;->a:Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;->A(Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter$2;->a:Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;

    invoke-interface {v0, v1}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;->onInterstitialAdClose(Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;)V

    .line 168
    :cond_13
    return-void
.end method

.method public final onInterstitialLoadFail(Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 144
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter$2;->a:Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;->u(Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 145
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter$2;->a:Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;->v(Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter$2;->a:Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;

    const-string v2, "4001"

    const-string v3, ""

    .line 146
    invoke-static {v2, v3, p1}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v2

    .line 145
    invoke-interface {v0, v1, v2}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;->onInterstitialAdLoadFail(Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;Lcom/anythink/core/api/AdError;)V

    .line 148
    :cond_1b
    return-void
.end method

.method public final onInterstitialLoadSuccess()V
    .registers 3

    .prologue
    .line 136
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter$2;->a:Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;->f:Z

    .line 137
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter$2;->a:Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;->s(Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 138
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter$2;->a:Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;->t(Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter$2;->a:Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;

    invoke-interface {v0, v1}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;->onInterstitialAdLoaded(Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;)V

    .line 140
    :cond_18
    return-void
.end method

.method public final onInterstitialShowFail(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 160
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter$2;->a:Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;

    iget-object v1, p0, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter$2;->a:Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;

    invoke-static {v1}, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;->y(Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "onInterstitialShowFail"

    invoke-static {v0, v1, v2}, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;->a(Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    return-void
.end method

.method public final onInterstitialShowSuccess()V
    .registers 3

    .prologue
    .line 152
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter$2;->a:Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;->f:Z

    .line 153
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter$2;->a:Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;->w(Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 154
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter$2;->a:Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;->x(Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter$2;->a:Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;

    invoke-interface {v0, v1}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;->onInterstitialAdShow(Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;)V

    .line 156
    :cond_18
    return-void
.end method
