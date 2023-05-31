.class public Lcom/anythink/network/toutiao/TTATInterstitialAdapter;
.super Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;


# instance fields
.field a:Ljava/lang/String;

.field b:Z

.field c:Lcom/bytedance/sdk/openadsdk/TTAdNative$InteractionAdListener;

.field d:Lcom/bytedance/sdk/openadsdk/TTInteractionAd$AdInteractionListener;

.field e:Lcom/bytedance/sdk/openadsdk/TTAdNative$FullScreenVideoAdListener;

.field f:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd$FullScreenVideoAdInteractionListener;

.field g:Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeExpressAdListener;

.field h:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$AdInteractionListener;

.field private final i:Ljava/lang/String;

.field private j:Lcom/bytedance/sdk/openadsdk/TTInteractionAd;

.field private k:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;

.field private l:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;-><init>()V

    .line 24
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->i:Ljava/lang/String;

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->a:Ljava/lang/String;

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->b:Z

    .line 35
    new-instance v0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter$1;

    invoke-direct {v0, p0}, Lcom/anythink/network/toutiao/TTATInterstitialAdapter$1;-><init>(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;)V

    iput-object v0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->c:Lcom/bytedance/sdk/openadsdk/TTAdNative$InteractionAdListener;

    .line 54
    new-instance v0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter$2;

    invoke-direct {v0, p0}, Lcom/anythink/network/toutiao/TTATInterstitialAdapter$2;-><init>(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;)V

    iput-object v0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->d:Lcom/bytedance/sdk/openadsdk/TTInteractionAd$AdInteractionListener;

    .line 80
    new-instance v0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter$3;

    invoke-direct {v0, p0}, Lcom/anythink/network/toutiao/TTATInterstitialAdapter$3;-><init>(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;)V

    iput-object v0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->e:Lcom/bytedance/sdk/openadsdk/TTAdNative$FullScreenVideoAdListener;

    .line 111
    new-instance v0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter$4;

    invoke-direct {v0, p0}, Lcom/anythink/network/toutiao/TTATInterstitialAdapter$4;-><init>(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;)V

    iput-object v0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->f:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd$FullScreenVideoAdInteractionListener;

    .line 154
    new-instance v0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter$5;

    invoke-direct {v0, p0}, Lcom/anythink/network/toutiao/TTATInterstitialAdapter$5;-><init>(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;)V

    iput-object v0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->g:Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeExpressAdListener;

    .line 178
    new-instance v0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter$6;

    invoke-direct {v0, p0}, Lcom/anythink/network/toutiao/TTATInterstitialAdapter$6;-><init>(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;)V

    iput-object v0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->h:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$AdInteractionListener;

    return-void
.end method

.method static synthetic A(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;
    .registers 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->mLoadResultListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;

    return-object v0
.end method

.method static synthetic B(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;
    .registers 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->mLoadResultListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;

    return-object v0
.end method

.method static synthetic C(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;)Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;
    .registers 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->l:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    return-object v0
.end method

.method static synthetic D(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;
    .registers 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->mLoadResultListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;

    return-object v0
.end method

.method static synthetic E(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;
    .registers 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->mLoadResultListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;

    return-object v0
.end method

.method static synthetic F(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;
    .registers 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    return-object v0
.end method

.method static synthetic G(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;
    .registers 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    return-object v0
.end method

.method static synthetic H(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;
    .registers 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    return-object v0
.end method

.method static synthetic I(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;
    .registers 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    return-object v0
.end method

.method static synthetic J(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;
    .registers 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    return-object v0
.end method

.method static synthetic K(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;
    .registers 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    return-object v0
.end method

.method static synthetic a(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;
    .registers 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->mLoadResultListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;

    return-object v0
.end method

.method static synthetic a(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;)Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;
    .registers 2

    .prologue
    .line 23
    iput-object p1, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->k:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;

    return-object p1
.end method

.method static synthetic a(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;Lcom/bytedance/sdk/openadsdk/TTInteractionAd;)Lcom/bytedance/sdk/openadsdk/TTInteractionAd;
    .registers 2

    .prologue
    .line 23
    iput-object p1, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->j:Lcom/bytedance/sdk/openadsdk/TTInteractionAd;

    return-object p1
.end method

.method static synthetic a(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;)Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;
    .registers 2

    .prologue
    .line 23
    iput-object p1, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->l:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    return-object p1
.end method

.method private a(Landroid/content/Context;Lcom/anythink/core/api/ATMediationSetting;I)V
    .registers 11

    .prologue
    const/4 v6, 0x1

    .line 269
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/TTAdSdk;->getAdManager()Lcom/bytedance/sdk/openadsdk/TTAdManager;

    move-result-object v1

    .line 273
    const/4 v0, 0x0

    .line 274
    instance-of v2, p2, Lcom/anythink/network/toutiao/TTATInterstitialSetting;

    if-eqz v2, :cond_10

    .line 275
    check-cast p2, Lcom/anythink/network/toutiao/TTATInterstitialSetting;

    .line 276
    invoke-virtual {p2}, Lcom/anythink/network/toutiao/TTATInterstitialSetting;->getInterstitialWidth()I

    move-result v0

    .line 280
    :cond_10
    invoke-interface {v1, p1}, Lcom/bytedance/sdk/openadsdk/TTAdManager;->createAdNative(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/TTAdNative;

    move-result-object v1

    .line 281
    new-instance v2, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    invoke-direct {v2}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;-><init>()V

    iget-object v3, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setCodeId(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v2

    .line 282
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 283
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 284
    invoke-virtual {v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setImageAcceptedSize(II)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    .line 285
    invoke-virtual {v2, v6}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setAdCount(I)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    .line 288
    iget-boolean v5, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->b:Z

    if-eqz v5, :cond_47

    .line 289
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->build()Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object v0

    .line 290
    iget-object v2, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->e:Lcom/bytedance/sdk/openadsdk/TTAdNative$FullScreenVideoAdListener;

    invoke-interface {v1, v0, v2}, Lcom/bytedance/sdk/openadsdk/TTAdNative;->loadFullScreenVideoAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$FullScreenVideoAdListener;)V

    .line 305
    :goto_46
    return-void

    .line 292
    :cond_47
    if-ne p3, v6, :cond_73

    .line 293
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    .line 295
    if-gtz v0, :cond_6f

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    const/high16 v3, 0x41f00000    # 30.0f

    mul-float/2addr v3, v5

    sub-float/2addr v0, v3

    div-float/2addr v0, v5

    float-to-int v0, v0

    .line 296
    :goto_60
    int-to-float v0, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setExpressViewAcceptedSize(FF)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    .line 297
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->build()Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object v0

    .line 298
    iget-object v2, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->g:Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeExpressAdListener;

    invoke-interface {v1, v0, v2}, Lcom/bytedance/sdk/openadsdk/TTAdNative;->loadInteractionExpressAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeExpressAdListener;)V

    goto :goto_46

    .line 295
    :cond_6f
    int-to-float v0, v0

    div-float/2addr v0, v5

    float-to-int v0, v0

    goto :goto_60

    .line 300
    :cond_73
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->build()Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object v0

    .line 301
    iget-object v2, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->c:Lcom/bytedance/sdk/openadsdk/TTAdNative$InteractionAdListener;

    invoke-interface {v1, v0, v2}, Lcom/bytedance/sdk/openadsdk/TTAdNative;->loadInteractionAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$InteractionAdListener;)V

    goto :goto_46
.end method

.method static synthetic a(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;Landroid/content/Context;Lcom/anythink/core/api/ATMediationSetting;I)V
    .registers 11

    .prologue
    const/4 v6, 0x1

    .line 1269
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/TTAdSdk;->getAdManager()Lcom/bytedance/sdk/openadsdk/TTAdManager;

    move-result-object v1

    .line 1273
    const/4 v0, 0x0

    .line 1274
    instance-of v2, p2, Lcom/anythink/network/toutiao/TTATInterstitialSetting;

    if-eqz v2, :cond_10

    .line 1275
    check-cast p2, Lcom/anythink/network/toutiao/TTATInterstitialSetting;

    .line 1276
    invoke-virtual {p2}, Lcom/anythink/network/toutiao/TTATInterstitialSetting;->getInterstitialWidth()I

    move-result v0

    .line 1280
    :cond_10
    invoke-interface {v1, p1}, Lcom/bytedance/sdk/openadsdk/TTAdManager;->createAdNative(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/TTAdNative;

    move-result-object v1

    .line 1281
    new-instance v2, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    invoke-direct {v2}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;-><init>()V

    iget-object v3, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setCodeId(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v2

    .line 1282
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1283
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 1284
    invoke-virtual {v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setImageAcceptedSize(II)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    .line 1285
    invoke-virtual {v2, v6}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setAdCount(I)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    .line 1288
    iget-boolean v5, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->b:Z

    if-eqz v5, :cond_47

    .line 1289
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->build()Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object v0

    .line 1290
    iget-object v2, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->e:Lcom/bytedance/sdk/openadsdk/TTAdNative$FullScreenVideoAdListener;

    invoke-interface {v1, v0, v2}, Lcom/bytedance/sdk/openadsdk/TTAdNative;->loadFullScreenVideoAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$FullScreenVideoAdListener;)V

    .line 1299
    :goto_46
    return-void

    .line 1292
    :cond_47
    if-ne p3, v6, :cond_73

    .line 1293
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    .line 1295
    if-gtz v0, :cond_6f

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    const/high16 v3, 0x41f00000    # 30.0f

    mul-float/2addr v3, v5

    sub-float/2addr v0, v3

    div-float/2addr v0, v5

    float-to-int v0, v0

    .line 1296
    :goto_60
    int-to-float v0, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setExpressViewAcceptedSize(FF)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    .line 1297
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->build()Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object v0

    .line 1298
    iget-object v2, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->g:Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeExpressAdListener;

    invoke-interface {v1, v0, v2}, Lcom/bytedance/sdk/openadsdk/TTAdNative;->loadInteractionExpressAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeExpressAdListener;)V

    goto :goto_46

    .line 1295
    :cond_6f
    int-to-float v0, v0

    div-float/2addr v0, v5

    float-to-int v0, v0

    goto :goto_60

    .line 1300
    :cond_73
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->build()Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object v0

    .line 1301
    iget-object v2, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->c:Lcom/bytedance/sdk/openadsdk/TTAdNative$InteractionAdListener;

    invoke-interface {v1, v0, v2}, Lcom/bytedance/sdk/openadsdk/TTAdNative;->loadInteractionAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$InteractionAdListener;)V

    goto :goto_46
.end method

.method static synthetic b(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;
    .registers 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->mLoadResultListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;

    return-object v0
.end method

.method static synthetic c(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;
    .registers 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->mLoadResultListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;

    return-object v0
.end method

.method static synthetic d(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;
    .registers 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->mLoadResultListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;

    return-object v0
.end method

.method static synthetic e(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;
    .registers 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    return-object v0
.end method

.method static synthetic f(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;
    .registers 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    return-object v0
.end method

.method static synthetic g(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;
    .registers 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    return-object v0
.end method

.method static synthetic h(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;
    .registers 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    return-object v0
.end method

.method static synthetic i(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;
    .registers 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    return-object v0
.end method

.method static synthetic j(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;
    .registers 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    return-object v0
.end method

.method static synthetic k(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;
    .registers 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->mLoadResultListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;

    return-object v0
.end method

.method static synthetic l(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;
    .registers 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->mLoadResultListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;

    return-object v0
.end method

.method static synthetic m(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;
    .registers 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->mLoadResultListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;

    return-object v0
.end method

.method static synthetic n(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;
    .registers 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->mLoadResultListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;

    return-object v0
.end method

.method static synthetic o(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;
    .registers 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->mLoadResultListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;

    return-object v0
.end method

.method static synthetic p(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;
    .registers 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->mLoadResultListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;

    return-object v0
.end method

.method static synthetic q(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;)Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;
    .registers 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->k:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;

    return-object v0
.end method

.method static synthetic r(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;
    .registers 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    return-object v0
.end method

.method static synthetic s(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;
    .registers 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    return-object v0
.end method

.method static synthetic t(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;
    .registers 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    return-object v0
.end method

.method static synthetic u(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;
    .registers 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    return-object v0
.end method

.method static synthetic v(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;
    .registers 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    return-object v0
.end method

.method static synthetic w(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;
    .registers 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    return-object v0
.end method

.method static synthetic x(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;
    .registers 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    return-object v0
.end method

.method static synthetic y(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;
    .registers 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    return-object v0
.end method

.method static synthetic z(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;
    .registers 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    return-object v0
.end method


# virtual methods
.method public clean()V
    .registers 1

    .prologue
    .line 338
    return-void
.end method

.method public getNetworkName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 356
    invoke-static {}, Lcom/anythink/network/toutiao/TTATInitManager;->getInstance()Lcom/anythink/network/toutiao/TTATInitManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/network/toutiao/TTATInitManager;->getNetworkName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSDKVersion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 351
    invoke-static {}, Lcom/anythink/network/toutiao/TTATConst;->getNetworkVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAdReady()Z
    .registers 2

    .prologue
    .line 309
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->j:Lcom/bytedance/sdk/openadsdk/TTInteractionAd;

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->k:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->l:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
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
    .line 221
    iput-object p4, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->mLoadResultListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;

    .line 223
    if-nez p2, :cond_18

    .line 224
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->mLoadResultListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;

    if-eqz v0, :cond_17

    .line 225
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->mLoadResultListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;

    const-string v1, "4001"

    const-string v2, ""

    const-string v3, "This placement\'s params in server is null!"

    invoke-static {v1, v2, v3}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;->onInterstitialAdLoadFail(Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;Lcom/anythink/core/api/AdError;)V

    .line 266
    :cond_17
    :goto_17
    return-void

    .line 230
    :cond_18
    const-string v0, "app_id"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 231
    const-string v1, "slot_id"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->a:Ljava/lang/String;

    .line 233
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_38

    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 234
    :cond_38
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->mLoadResultListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;

    if-eqz v0, :cond_17

    .line 235
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->mLoadResultListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;

    const-string v1, "4001"

    const-string v2, ""

    const-string v3, "app_id or slot_id is empty!"

    invoke-static {v1, v2, v3}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;->onInterstitialAdLoadFail(Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;Lcom/anythink/core/api/AdError;)V

    goto :goto_17

    .line 240
    :cond_4c
    const-string v0, "is_video"

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_69

    .line 241
    const-string v0, "is_video"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_69

    .line 242
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->b:Z

    .line 246
    :cond_69
    instance-of v0, p1, Landroid/app/Activity;

    if-nez v0, :cond_81

    .line 247
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->mLoadResultListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;

    if-eqz v0, :cond_17

    .line 248
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->mLoadResultListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;

    const-string v1, "4001"

    const-string v2, ""

    const-string v3, "context must be activity"

    invoke-static {v1, v2, v3}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;->onInterstitialAdLoadFail(Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;Lcom/anythink/core/api/AdError;)V

    goto :goto_17

    .line 253
    :cond_81
    const/4 v0, 0x0

    .line 254
    const-string v1, "layout_type"

    invoke-interface {p2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_98

    .line 255
    const-string v0, "layout_type"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 260
    :cond_98
    invoke-static {}, Lcom/anythink/network/toutiao/TTATInitManager;->getInstance()Lcom/anythink/network/toutiao/TTATInitManager;

    move-result-object v1

    new-instance v2, Lcom/anythink/network/toutiao/TTATInterstitialAdapter$7;

    invoke-direct {v2, p0, p1, p3, v0}, Lcom/anythink/network/toutiao/TTATInterstitialAdapter$7;-><init>(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;Landroid/content/Context;Lcom/anythink/core/api/ATMediationSetting;I)V

    invoke-virtual {v1, p1, p2, v2}, Lcom/anythink/network/toutiao/TTATInitManager;->initSDK(Landroid/content/Context;Ljava/util/Map;Lcom/anythink/network/toutiao/TTATInitManager$a;)V

    goto/16 :goto_17
.end method

.method public onPause()V
    .registers 1

    .prologue
    .line 347
    return-void
.end method

.method public onResume()V
    .registers 1

    .prologue
    .line 342
    return-void
.end method

.method public show(Landroid/content/Context;)V
    .registers 5

    .prologue
    .line 315
    :try_start_0
    iget-object v1, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->j:Lcom/bytedance/sdk/openadsdk/TTInteractionAd;

    if-eqz v1, :cond_18

    instance-of v1, p1, Landroid/app/Activity;

    if-eqz v1, :cond_18

    .line 316
    iget-object v1, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->j:Lcom/bytedance/sdk/openadsdk/TTInteractionAd;

    iget-object v2, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->d:Lcom/bytedance/sdk/openadsdk/TTInteractionAd$AdInteractionListener;

    invoke-interface {v1, v2}, Lcom/bytedance/sdk/openadsdk/TTInteractionAd;->setAdInteractionListener(Lcom/bytedance/sdk/openadsdk/TTInteractionAd$AdInteractionListener;)V

    .line 317
    iget-object v2, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->j:Lcom/bytedance/sdk/openadsdk/TTInteractionAd;

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    move-object v1, v0

    invoke-interface {v2, v1}, Lcom/bytedance/sdk/openadsdk/TTInteractionAd;->showInteractionAd(Landroid/app/Activity;)V

    .line 320
    :cond_18
    iget-object v1, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->k:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;

    if-eqz v1, :cond_30

    instance-of v1, p1, Landroid/app/Activity;

    if-eqz v1, :cond_30

    .line 321
    iget-object v1, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->k:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;

    iget-object v2, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->f:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd$FullScreenVideoAdInteractionListener;

    invoke-interface {v1, v2}, Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;->setFullScreenVideoAdInteractionListener(Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd$FullScreenVideoAdInteractionListener;)V

    .line 322
    iget-object v2, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->k:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    move-object v1, v0

    invoke-interface {v2, v1}, Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;->showFullScreenVideoAd(Landroid/app/Activity;)V

    .line 325
    :cond_30
    iget-object v1, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->l:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    if-eqz v1, :cond_46

    instance-of v1, p1, Landroid/app/Activity;

    if-eqz v1, :cond_46

    .line 326
    iget-object v1, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->l:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    iget-object v2, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->h:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$AdInteractionListener;

    invoke-interface {v1, v2}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->setExpressInteractionListener(Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$AdInteractionListener;)V

    .line 327
    iget-object v1, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->l:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    check-cast p1, Landroid/app/Activity;

    invoke-interface {v1, p1}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->showInteractionExpressAd(Landroid/app/Activity;)V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_46} :catch_47

    .line 334
    :cond_46
    :goto_46
    return-void

    .line 331
    :catch_47
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_46
.end method
