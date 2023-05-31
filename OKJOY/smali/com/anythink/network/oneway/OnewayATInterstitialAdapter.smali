.class public Lcom/anythink/network/oneway/OnewayATInterstitialAdapter;
.super Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;


# static fields
.field public static TAG:Ljava/lang/String;


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Lmobi/oneway/export/AdListener/OWInterstitialAdListener;

.field e:Lmobi/oneway/export/AdListener/OWInterstitialImageAdListener;

.field private f:Lmobi/oneway/export/Ad/OWInterstitialAd;

.field private g:Lmobi/oneway/export/Ad/OWInterstitialImageAd;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 32
    const-string v0, "oneway"

    sput-object v0, Lcom/anythink/network/oneway/OnewayATInterstitialAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;-><init>()V

    .line 41
    new-instance v0, Lcom/anythink/network/oneway/OnewayATInterstitialAdapter$1;

    invoke-direct {v0, p0}, Lcom/anythink/network/oneway/OnewayATInterstitialAdapter$1;-><init>(Lcom/anythink/network/oneway/OnewayATInterstitialAdapter;)V

    iput-object v0, p0, Lcom/anythink/network/oneway/OnewayATInterstitialAdapter;->d:Lmobi/oneway/export/AdListener/OWInterstitialAdListener;

    .line 92
    new-instance v0, Lcom/anythink/network/oneway/OnewayATInterstitialAdapter$2;

    invoke-direct {v0, p0}, Lcom/anythink/network/oneway/OnewayATInterstitialAdapter$2;-><init>(Lcom/anythink/network/oneway/OnewayATInterstitialAdapter;)V

    iput-object v0, p0, Lcom/anythink/network/oneway/OnewayATInterstitialAdapter;->e:Lmobi/oneway/export/AdListener/OWInterstitialImageAdListener;

    return-void
.end method

.method static synthetic a(Lcom/anythink/network/oneway/OnewayATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/anythink/network/oneway/OnewayATInterstitialAdapter;->mLoadResultListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;

    return-object v0
.end method

.method static synthetic b(Lcom/anythink/network/oneway/OnewayATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/anythink/network/oneway/OnewayATInterstitialAdapter;->mLoadResultListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;

    return-object v0
.end method

.method static synthetic c(Lcom/anythink/network/oneway/OnewayATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/anythink/network/oneway/OnewayATInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    return-object v0
.end method

.method static synthetic d(Lcom/anythink/network/oneway/OnewayATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/anythink/network/oneway/OnewayATInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    return-object v0
.end method

.method static synthetic e(Lcom/anythink/network/oneway/OnewayATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/anythink/network/oneway/OnewayATInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    return-object v0
.end method

.method static synthetic f(Lcom/anythink/network/oneway/OnewayATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/anythink/network/oneway/OnewayATInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    return-object v0
.end method

.method static synthetic g(Lcom/anythink/network/oneway/OnewayATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/anythink/network/oneway/OnewayATInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    return-object v0
.end method

.method static synthetic h(Lcom/anythink/network/oneway/OnewayATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/anythink/network/oneway/OnewayATInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    return-object v0
.end method

.method static synthetic i(Lcom/anythink/network/oneway/OnewayATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/anythink/network/oneway/OnewayATInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    return-object v0
.end method

.method static synthetic j(Lcom/anythink/network/oneway/OnewayATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/anythink/network/oneway/OnewayATInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    return-object v0
.end method

.method static synthetic k(Lcom/anythink/network/oneway/OnewayATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/anythink/network/oneway/OnewayATInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    return-object v0
.end method

.method static synthetic l(Lcom/anythink/network/oneway/OnewayATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/anythink/network/oneway/OnewayATInterstitialAdapter;->mLoadResultListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;

    return-object v0
.end method

.method static synthetic m(Lcom/anythink/network/oneway/OnewayATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/anythink/network/oneway/OnewayATInterstitialAdapter;->mLoadResultListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;

    return-object v0
.end method

.method static synthetic n(Lcom/anythink/network/oneway/OnewayATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/anythink/network/oneway/OnewayATInterstitialAdapter;->mLoadResultListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;

    return-object v0
.end method

.method static synthetic o(Lcom/anythink/network/oneway/OnewayATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/anythink/network/oneway/OnewayATInterstitialAdapter;->mLoadResultListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;

    return-object v0
.end method

.method static synthetic p(Lcom/anythink/network/oneway/OnewayATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/anythink/network/oneway/OnewayATInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    return-object v0
.end method

.method static synthetic q(Lcom/anythink/network/oneway/OnewayATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/anythink/network/oneway/OnewayATInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    return-object v0
.end method

.method static synthetic r(Lcom/anythink/network/oneway/OnewayATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/anythink/network/oneway/OnewayATInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    return-object v0
.end method

.method static synthetic s(Lcom/anythink/network/oneway/OnewayATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/anythink/network/oneway/OnewayATInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    return-object v0
.end method

.method static synthetic t(Lcom/anythink/network/oneway/OnewayATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/anythink/network/oneway/OnewayATInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    return-object v0
.end method

.method static synthetic u(Lcom/anythink/network/oneway/OnewayATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/anythink/network/oneway/OnewayATInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    return-object v0
.end method

.method static synthetic v(Lcom/anythink/network/oneway/OnewayATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/anythink/network/oneway/OnewayATInterstitialAdapter;->mLoadResultListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;

    return-object v0
.end method

.method static synthetic w(Lcom/anythink/network/oneway/OnewayATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/anythink/network/oneway/OnewayATInterstitialAdapter;->mLoadResultListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;

    return-object v0
.end method


# virtual methods
.method public clean()V
    .registers 1

    .prologue
    .line 239
    return-void
.end method

.method public getNetworkName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 243
    invoke-static {}, Lcom/anythink/network/oneway/OnewayATInitManager;->getInstance()Lcom/anythink/network/oneway/OnewayATInitManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/network/oneway/OnewayATInitManager;->getNetworkName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSDKVersion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 220
    invoke-static {}, Lcom/anythink/network/oneway/OnewayATConst;->getNetworkVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initNetworkObjectByPlacementId(Landroid/content/Context;Ljava/util/Map;Lcom/anythink/core/api/ATMediationSetting;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/anythink/core/api/ATMediationSetting;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 200
    const-string v0, "publisher_id"

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    const-string v0, "slot_id"

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 201
    const-string v0, "publisher_id"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/network/oneway/OnewayATInterstitialAdapter;->a:Ljava/lang/String;

    .line 202
    const-string v0, "slot_id"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/network/oneway/OnewayATInterstitialAdapter;->b:Ljava/lang/String;

    .line 203
    const-string v0, "is_video"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/network/oneway/OnewayATInterstitialAdapter;->c:Ljava/lang/String;

    .line 204
    const/4 v0, 0x1

    .line 206
    :goto_35
    return v0

    :cond_36
    const/4 v0, 0x0

    goto :goto_35
.end method

.method public isAdReady()Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 211
    iget-object v2, p0, Lcom/anythink/network/oneway/OnewayATInterstitialAdapter;->c:Ljava/lang/String;

    const-string v3, "1"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 212
    iget-object v2, p0, Lcom/anythink/network/oneway/OnewayATInterstitialAdapter;->f:Lmobi/oneway/export/Ad/OWInterstitialAd;

    if-eqz v2, :cond_19

    iget-object v2, p0, Lcom/anythink/network/oneway/OnewayATInterstitialAdapter;->f:Lmobi/oneway/export/Ad/OWInterstitialAd;

    invoke-virtual {v2}, Lmobi/oneway/export/Ad/OWInterstitialAd;->isReady()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 214
    :cond_18
    :goto_18
    return v0

    :cond_19
    move v0, v1

    .line 212
    goto :goto_18

    .line 214
    :cond_1b
    iget-object v2, p0, Lcom/anythink/network/oneway/OnewayATInterstitialAdapter;->g:Lmobi/oneway/export/Ad/OWInterstitialImageAd;

    if-eqz v2, :cond_27

    iget-object v2, p0, Lcom/anythink/network/oneway/OnewayATInterstitialAdapter;->g:Lmobi/oneway/export/Ad/OWInterstitialImageAd;

    invoke-virtual {v2}, Lmobi/oneway/export/Ad/OWInterstitialImageAd;->isReady()Z

    move-result v2

    if-nez v2, :cond_18

    :cond_27
    move v0, v1

    goto :goto_18
.end method

.method public loadInterstitialAd(Landroid/content/Context;Ljava/util/Map;Lcom/anythink/core/api/ATMediationSetting;Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/anythink/core/api/ATMediationSetting;",
            "Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 137
    const-string v0, ""

    .line 138
    const-string v1, ""

    .line 139
    const-string v2, "0"

    .line 141
    const-string v3, "publisher_id"

    invoke-interface {p2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 142
    const-string v0, "publisher_id"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 144
    :cond_18
    const-string v3, "slot_id"

    invoke-interface {p2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 145
    const-string v1, "slot_id"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 147
    :cond_2a
    const-string v3, "is_video"

    invoke-interface {p2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 148
    const-string v2, "is_video"

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 151
    :cond_3c
    iput-object p4, p0, Lcom/anythink/network/oneway/OnewayATInterstitialAdapter;->mLoadResultListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;

    .line 152
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4a

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5e

    .line 153
    :cond_4a
    iget-object v0, p0, Lcom/anythink/network/oneway/OnewayATInterstitialAdapter;->mLoadResultListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;

    if-eqz v0, :cond_5d

    .line 154
    const-string v0, "4001"

    const-string v1, ""

    const-string v2, " publishId or slotId is empty."

    invoke-static {v0, v1, v2}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v0

    .line 155
    iget-object v1, p0, Lcom/anythink/network/oneway/OnewayATInterstitialAdapter;->mLoadResultListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;

    invoke-interface {v1, p0, v0}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;->onInterstitialAdLoadFail(Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;Lcom/anythink/core/api/AdError;)V

    .line 196
    :cond_5d
    :goto_5d
    return-void

    .line 161
    :cond_5e
    instance-of v3, p1, Landroid/app/Activity;

    if-nez v3, :cond_76

    .line 162
    iget-object v0, p0, Lcom/anythink/network/oneway/OnewayATInterstitialAdapter;->mLoadResultListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;

    if-eqz v0, :cond_5d

    .line 163
    const-string v0, "4001"

    const-string v1, ""

    const-string v2, "context must be activity."

    invoke-static {v0, v1, v2}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v0

    .line 164
    iget-object v1, p0, Lcom/anythink/network/oneway/OnewayATInterstitialAdapter;->mLoadResultListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;

    invoke-interface {v1, p0, v0}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;->onInterstitialAdLoadFail(Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;Lcom/anythink/core/api/AdError;)V

    goto :goto_5d

    .line 169
    :cond_76
    iput-object v0, p0, Lcom/anythink/network/oneway/OnewayATInterstitialAdapter;->a:Ljava/lang/String;

    .line 170
    iput-object v1, p0, Lcom/anythink/network/oneway/OnewayATInterstitialAdapter;->b:Ljava/lang/String;

    .line 171
    iput-object v2, p0, Lcom/anythink/network/oneway/OnewayATInterstitialAdapter;->c:Ljava/lang/String;

    .line 172
    invoke-static {}, Lcom/anythink/network/oneway/OnewayATInitManager;->getInstance()Lcom/anythink/network/oneway/OnewayATInitManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/anythink/network/oneway/OnewayATInitManager;->initSDK(Landroid/content/Context;Ljava/util/Map;)V

    .line 174
    iget-object v0, p0, Lcom/anythink/network/oneway/OnewayATInterstitialAdapter;->c:Ljava/lang/String;

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b9

    .line 175
    new-instance v0, Lmobi/oneway/export/Ad/OWInterstitialAd;

    check-cast p1, Landroid/app/Activity;

    iget-object v1, p0, Lcom/anythink/network/oneway/OnewayATInterstitialAdapter;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/anythink/network/oneway/OnewayATInterstitialAdapter;->d:Lmobi/oneway/export/AdListener/OWInterstitialAdListener;

    invoke-direct {v0, p1, v1, v2}, Lmobi/oneway/export/Ad/OWInterstitialAd;-><init>(Landroid/app/Activity;Ljava/lang/String;Lmobi/oneway/export/AdListener/OWInterstitialAdListener;)V

    iput-object v0, p0, Lcom/anythink/network/oneway/OnewayATInterstitialAdapter;->f:Lmobi/oneway/export/Ad/OWInterstitialAd;

    .line 176
    iget-object v0, p0, Lcom/anythink/network/oneway/OnewayATInterstitialAdapter;->f:Lmobi/oneway/export/Ad/OWInterstitialAd;

    invoke-virtual {v0}, Lmobi/oneway/export/Ad/OWInterstitialAd;->isReady()Z

    move-result v0

    if-eqz v0, :cond_b3

    .line 177
    sget-object v0, Lcom/anythink/network/oneway/OnewayATInterstitialAdapter;->TAG:Ljava/lang/String;

    const-string v1, "intersitital video : ready..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object v0, p0, Lcom/anythink/network/oneway/OnewayATInterstitialAdapter;->mLoadResultListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;

    if-eqz v0, :cond_5d

    .line 179
    iget-object v0, p0, Lcom/anythink/network/oneway/OnewayATInterstitialAdapter;->mLoadResultListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;

    invoke-interface {v0, p0}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;->onInterstitialAdLoaded(Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;)V

    goto :goto_5d

    .line 182
    :cond_b3
    iget-object v0, p0, Lcom/anythink/network/oneway/OnewayATInterstitialAdapter;->f:Lmobi/oneway/export/Ad/OWInterstitialAd;

    invoke-virtual {v0}, Lmobi/oneway/export/Ad/OWInterstitialAd;->loadAd()V

    goto :goto_5d

    .line 186
    :cond_b9
    new-instance v0, Lmobi/oneway/export/Ad/OWInterstitialImageAd;

    check-cast p1, Landroid/app/Activity;

    iget-object v1, p0, Lcom/anythink/network/oneway/OnewayATInterstitialAdapter;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/anythink/network/oneway/OnewayATInterstitialAdapter;->e:Lmobi/oneway/export/AdListener/OWInterstitialImageAdListener;

    invoke-direct {v0, p1, v1, v2}, Lmobi/oneway/export/Ad/OWInterstitialImageAd;-><init>(Landroid/app/Activity;Ljava/lang/String;Lmobi/oneway/export/AdListener/OWInterstitialImageAdListener;)V

    iput-object v0, p0, Lcom/anythink/network/oneway/OnewayATInterstitialAdapter;->g:Lmobi/oneway/export/Ad/OWInterstitialImageAd;

    .line 187
    iget-object v0, p0, Lcom/anythink/network/oneway/OnewayATInterstitialAdapter;->g:Lmobi/oneway/export/Ad/OWInterstitialImageAd;

    invoke-virtual {v0}, Lmobi/oneway/export/Ad/OWInterstitialImageAd;->isReady()Z

    move-result v0

    if-eqz v0, :cond_e0

    .line 188
    sget-object v0, Lcom/anythink/network/oneway/OnewayATInterstitialAdapter;->TAG:Ljava/lang/String;

    const-string v1, "intersitital image : ready..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iget-object v0, p0, Lcom/anythink/network/oneway/OnewayATInterstitialAdapter;->mLoadResultListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;

    if-eqz v0, :cond_5d

    .line 190
    iget-object v0, p0, Lcom/anythink/network/oneway/OnewayATInterstitialAdapter;->mLoadResultListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;

    invoke-interface {v0, p0}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;->onInterstitialAdLoaded(Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;)V

    goto/16 :goto_5d

    .line 193
    :cond_e0
    iget-object v0, p0, Lcom/anythink/network/oneway/OnewayATInterstitialAdapter;->g:Lmobi/oneway/export/Ad/OWInterstitialImageAd;

    invoke-virtual {v0}, Lmobi/oneway/export/Ad/OWInterstitialImageAd;->loadAd()V

    goto/16 :goto_5d
.end method

.method public onPause()V
    .registers 1

    .prologue
    .line 254
    return-void
.end method

.method public onResume()V
    .registers 1

    .prologue
    .line 249
    return-void
.end method

.method public show(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 225
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_1b

    .line 226
    invoke-virtual {p0}, Lcom/anythink/network/oneway/OnewayATInterstitialAdapter;->isAdReady()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 227
    iget-object v0, p0, Lcom/anythink/network/oneway/OnewayATInterstitialAdapter;->c:Ljava/lang/String;

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 228
    iget-object v0, p0, Lcom/anythink/network/oneway/OnewayATInterstitialAdapter;->f:Lmobi/oneway/export/Ad/OWInterstitialAd;

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {v0, p1}, Lmobi/oneway/export/Ad/OWInterstitialAd;->show(Landroid/app/Activity;)V

    .line 234
    :cond_1b
    :goto_1b
    return-void

    .line 230
    :cond_1c
    iget-object v0, p0, Lcom/anythink/network/oneway/OnewayATInterstitialAdapter;->g:Lmobi/oneway/export/Ad/OWInterstitialImageAd;

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {v0, p1}, Lmobi/oneway/export/Ad/OWInterstitialImageAd;->show(Landroid/app/Activity;)V

    goto :goto_1b
.end method
