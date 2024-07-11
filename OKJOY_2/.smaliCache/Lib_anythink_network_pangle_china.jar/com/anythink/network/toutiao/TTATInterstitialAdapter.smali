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

    .line 28
    invoke-direct {p0}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;-><init>()V

    .line 29
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->i:Ljava/lang/String;

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->a:Ljava/lang/String;

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->b:Z

    .line 40
    new-instance v0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter$1;

    invoke-direct {v0, p0}, Lcom/anythink/network/toutiao/TTATInterstitialAdapter$1;-><init>(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;)V

    iput-object v0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->c:Lcom/bytedance/sdk/openadsdk/TTAdNative$InteractionAdListener;

    .line 59
    new-instance v0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter$2;

    invoke-direct {v0, p0}, Lcom/anythink/network/toutiao/TTATInterstitialAdapter$2;-><init>(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;)V

    iput-object v0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->d:Lcom/bytedance/sdk/openadsdk/TTInteractionAd$AdInteractionListener;

    .line 85
    new-instance v0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter$3;

    invoke-direct {v0, p0}, Lcom/anythink/network/toutiao/TTATInterstitialAdapter$3;-><init>(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;)V

    iput-object v0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->e:Lcom/bytedance/sdk/openadsdk/TTAdNative$FullScreenVideoAdListener;

    .line 116
    new-instance v0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter$4;

    invoke-direct {v0, p0}, Lcom/anythink/network/toutiao/TTATInterstitialAdapter$4;-><init>(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;)V

    iput-object v0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->f:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd$FullScreenVideoAdInteractionListener;

    .line 159
    new-instance v0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter$5;

    invoke-direct {v0, p0}, Lcom/anythink/network/toutiao/TTATInterstitialAdapter$5;-><init>(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;)V

    iput-object v0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->g:Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeExpressAdListener;

    .line 183
    new-instance v0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter$6;

    invoke-direct {v0, p0}, Lcom/anythink/network/toutiao/TTATInterstitialAdapter$6;-><init>(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;)V

    iput-object v0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->h:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$AdInteractionListener;

    return-void
.end method

.method static synthetic A(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 28
    iget-object p0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic B(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 28
    iget-object p0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic C(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;)Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;
    .registers 1

    .line 28
    iget-object p0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->l:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    return-object p0
.end method

.method static synthetic D(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 28
    iget-object p0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic E(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 28
    iget-object p0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic F(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;
    .registers 1

    .line 28
    iget-object p0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    return-object p0
.end method

.method static synthetic G(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;
    .registers 1

    .line 28
    iget-object p0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    return-object p0
.end method

.method static synthetic H(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;
    .registers 1

    .line 28
    iget-object p0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    return-object p0
.end method

.method static synthetic I(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;
    .registers 1

    .line 28
    iget-object p0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    return-object p0
.end method

.method static synthetic J(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;
    .registers 1

    .line 28
    iget-object p0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    return-object p0
.end method

.method static synthetic K(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;
    .registers 1

    .line 28
    iget-object p0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    return-object p0
.end method

.method static synthetic L(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 28
    iget-object p0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic M(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 28
    iget-object p0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method private static a(Landroid/content/Context;F)I
    .registers 3

    .line 398
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    .line 399
    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-gtz v0, :cond_11

    const/high16 p0, 0x3f800000    # 1.0f

    :cond_11
    div-float/2addr p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method static synthetic a(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 28
    iget-object p0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic a(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;)Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;
    .registers 2

    .line 28
    iput-object p1, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->k:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;

    return-object p1
.end method

.method static synthetic a(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;Lcom/bytedance/sdk/openadsdk/TTInteractionAd;)Lcom/bytedance/sdk/openadsdk/TTInteractionAd;
    .registers 2

    .line 28
    iput-object p1, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->j:Lcom/bytedance/sdk/openadsdk/TTInteractionAd;

    return-object p1
.end method

.method static synthetic a(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;)Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;
    .registers 2

    .line 28
    iput-object p1, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->l:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    return-object p1
.end method

.method private a(Landroid/content/Context;Ljava/util/Map;ILjava/lang/String;Ljava/lang/String;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 224
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/TTAdSdk;->getAdManager()Lcom/bytedance/sdk/openadsdk/TTAdManager;

    move-result-object v0

    .line 227
    nop

    .line 229
    const/4 v1, 0x0

    if-eqz p2, :cond_1a

    .line 230
    :try_start_8
    const-string v2, "key_width"

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_16} :catch_17

    goto :goto_1b

    .line 232
    :catch_17
    move-exception p2

    move p2, v1

    goto :goto_1c

    .line 229
    :cond_1a
    move p2, v1

    .line 233
    :goto_1b
    nop

    .line 235
    :goto_1c
    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/TTAdManager;->createAdNative(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/TTAdNative;

    move-result-object v0

    .line 236
    new-instance v2, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    invoke-direct {v2}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;-><init>()V

    iget-object v3, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setCodeId(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v2

    .line 237
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 238
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 239
    invoke-virtual {v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setImageAcceptedSize(II)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    .line 240
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setAdCount(I)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    .line 242
    iget-boolean v6, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->b:Z

    if-eqz v6, :cond_76

    .line 245
    :try_start_4a
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_67

    const-string p2, "1"

    invoke-static {p2, p4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_67

    .line 246
    int-to-float p2, v3

    invoke-static {p1, p2}, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->a(Landroid/content/Context;F)I

    move-result p2

    int-to-float p2, p2

    int-to-float p3, v4

    invoke-static {p1, p3}, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->a(Landroid/content/Context;F)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v2, p2, p1}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setExpressViewAcceptedSize(FF)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;
    :try_end_67
    .catchall {:try_start_4a .. :try_end_67} :catchall_68

    .line 250
    :cond_67
    goto :goto_6c

    .line 249
    :catchall_68
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 252
    :goto_6c
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->build()Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object p1

    .line 253
    iget-object p2, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->e:Lcom/bytedance/sdk/openadsdk/TTAdNative$FullScreenVideoAdListener;

    invoke-interface {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/TTAdNative;->loadFullScreenVideoAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$FullScreenVideoAdListener;)V

    .line 254
    return-void

    .line 255
    :cond_76
    if-ne p3, v5, :cond_c2

    .line 256
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 258
    if-gtz p2, :cond_8e

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result p2

    int-to-float p2, p2

    const/high16 p3, 0x41f00000    # 30.0f

    mul-float/2addr p3, p1

    sub-float/2addr p2, p3

    goto :goto_8f

    :cond_8e
    int-to-float p2, p2

    :goto_8f
    div-float/2addr p2, p1

    float-to-int p1, p2

    .line 259
    nop

    .line 261
    :try_start_92
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_ae

    .line 262
    const-string p2, ":"

    invoke-virtual {p5, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 263
    aget-object p3, p2, v1

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    div-int p3, p1, p3

    aget-object p2, p2, v5

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2
    :try_end_ac
    .catchall {:try_start_92 .. :try_end_ac} :catchall_af

    mul-int/2addr p3, p2

    move v1, p3

    .line 267
    :cond_ae
    goto :goto_b3

    .line 266
    :catchall_af
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 269
    :goto_b3
    int-to-float p1, p1

    int-to-float p2, v1

    invoke-virtual {v2, p1, p2}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setExpressViewAcceptedSize(FF)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    .line 270
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->build()Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object p1

    .line 271
    iget-object p2, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->g:Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeExpressAdListener;

    invoke-interface {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/TTAdNative;->loadInteractionExpressAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeExpressAdListener;)V

    .line 272
    return-void

    .line 273
    :cond_c2
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->build()Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object p1

    .line 274
    iget-object p2, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->c:Lcom/bytedance/sdk/openadsdk/TTAdNative$InteractionAdListener;

    invoke-interface {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/TTAdNative;->loadInteractionAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$InteractionAdListener;)V

    .line 278
    return-void
.end method

.method static synthetic a(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;Landroid/content/Context;Ljava/util/Map;ILjava/lang/String;Ljava/lang/String;)V
    .registers 13

    .line 28
    nop

    .line 1224
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/TTAdSdk;->getAdManager()Lcom/bytedance/sdk/openadsdk/TTAdManager;

    move-result-object v0

    .line 1227
    nop

    .line 1229
    const/4 v1, 0x0

    if-eqz p2, :cond_1b

    .line 1230
    :try_start_9
    const-string v2, "key_width"

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_17} :catch_18

    goto :goto_1c

    .line 1232
    :catch_18
    move-exception p2

    move p2, v1

    goto :goto_1d

    .line 1229
    :cond_1b
    move p2, v1

    .line 1233
    :goto_1c
    nop

    .line 1235
    :goto_1d
    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/TTAdManager;->createAdNative(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/TTAdNative;

    move-result-object v0

    .line 1236
    new-instance v2, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    invoke-direct {v2}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;-><init>()V

    iget-object v3, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setCodeId(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v2

    .line 1237
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1238
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 1239
    invoke-virtual {v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setImageAcceptedSize(II)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    .line 1240
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setAdCount(I)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    .line 1242
    iget-boolean v6, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->b:Z

    if-eqz v6, :cond_77

    .line 1245
    :try_start_4b
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_68

    const-string p2, "1"

    invoke-static {p2, p4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_68

    .line 1246
    int-to-float p2, v3

    invoke-static {p1, p2}, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->a(Landroid/content/Context;F)I

    move-result p2

    int-to-float p2, p2

    int-to-float p3, v4

    invoke-static {p1, p3}, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->a(Landroid/content/Context;F)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v2, p2, p1}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setExpressViewAcceptedSize(FF)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;
    :try_end_68
    .catchall {:try_start_4b .. :try_end_68} :catchall_69

    .line 1250
    :cond_68
    goto :goto_6d

    .line 1249
    :catchall_69
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1252
    :goto_6d
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->build()Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object p1

    .line 1253
    iget-object p0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->e:Lcom/bytedance/sdk/openadsdk/TTAdNative$FullScreenVideoAdListener;

    invoke-interface {v0, p1, p0}, Lcom/bytedance/sdk/openadsdk/TTAdNative;->loadFullScreenVideoAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$FullScreenVideoAdListener;)V

    .line 1254
    return-void

    .line 1255
    :cond_77
    if-ne p3, v5, :cond_c3

    .line 1256
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 1258
    if-gtz p2, :cond_8f

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result p2

    int-to-float p2, p2

    const/high16 p3, 0x41f00000    # 30.0f

    mul-float/2addr p3, p1

    sub-float/2addr p2, p3

    goto :goto_90

    :cond_8f
    int-to-float p2, p2

    :goto_90
    div-float/2addr p2, p1

    float-to-int p1, p2

    .line 1259
    nop

    .line 1261
    :try_start_93
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_af

    .line 1262
    const-string p2, ":"

    invoke-virtual {p5, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 1263
    aget-object p3, p2, v1

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    div-int p3, p1, p3

    aget-object p2, p2, v5

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2
    :try_end_ad
    .catchall {:try_start_93 .. :try_end_ad} :catchall_b0

    mul-int/2addr p3, p2

    move v1, p3

    .line 1267
    :cond_af
    goto :goto_b4

    .line 1266
    :catchall_b0
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1269
    :goto_b4
    int-to-float p1, p1

    int-to-float p2, v1

    invoke-virtual {v2, p1, p2}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setExpressViewAcceptedSize(FF)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    .line 1270
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->build()Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object p1

    .line 1271
    iget-object p0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->g:Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeExpressAdListener;

    invoke-interface {v0, p1, p0}, Lcom/bytedance/sdk/openadsdk/TTAdNative;->loadInteractionExpressAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeExpressAdListener;)V

    .line 1272
    return-void

    .line 1273
    :cond_c3
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->build()Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object p1

    .line 1274
    iget-object p0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->c:Lcom/bytedance/sdk/openadsdk/TTAdNative$InteractionAdListener;

    invoke-interface {v0, p1, p0}, Lcom/bytedance/sdk/openadsdk/TTAdNative;->loadInteractionAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$InteractionAdListener;)V

    .line 28
    return-void
.end method

.method static synthetic b(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 28
    iget-object p0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic c(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 28
    iget-object p0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic d(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 28
    iget-object p0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic e(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;
    .registers 1

    .line 28
    iget-object p0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    return-object p0
.end method

.method static synthetic f(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;
    .registers 1

    .line 28
    iget-object p0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    return-object p0
.end method

.method static synthetic g(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;
    .registers 1

    .line 28
    iget-object p0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    return-object p0
.end method

.method static synthetic h(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;
    .registers 1

    .line 28
    iget-object p0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    return-object p0
.end method

.method static synthetic i(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;
    .registers 1

    .line 28
    iget-object p0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    return-object p0
.end method

.method static synthetic j(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;
    .registers 1

    .line 28
    iget-object p0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    return-object p0
.end method

.method static synthetic k(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 28
    iget-object p0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic l(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 28
    iget-object p0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic m(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 28
    iget-object p0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic n(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 28
    iget-object p0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic o(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 28
    iget-object p0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic p(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 28
    iget-object p0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic q(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;)Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;
    .registers 1

    .line 28
    iget-object p0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->k:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;

    return-object p0
.end method

.method static synthetic r(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;
    .registers 1

    .line 28
    iget-object p0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    return-object p0
.end method

.method static synthetic s(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;
    .registers 1

    .line 28
    iget-object p0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    return-object p0
.end method

.method static synthetic t(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;
    .registers 1

    .line 28
    iget-object p0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    return-object p0
.end method

.method static synthetic u(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;
    .registers 1

    .line 28
    iget-object p0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    return-object p0
.end method

.method static synthetic v(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;
    .registers 1

    .line 28
    iget-object p0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    return-object p0
.end method

.method static synthetic w(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;
    .registers 1

    .line 28
    iget-object p0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    return-object p0
.end method

.method static synthetic x(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;
    .registers 1

    .line 28
    iget-object p0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    return-object p0
.end method

.method static synthetic y(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;
    .registers 1

    .line 28
    iget-object p0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    return-object p0
.end method

.method static synthetic z(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;
    .registers 1

    .line 28
    iget-object p0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    return-object p0
.end method


# virtual methods
.method public destory()V
    .registers 3

    .line 362
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->k:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 363
    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;->setFullScreenVideoAdInteractionListener(Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd$FullScreenVideoAdInteractionListener;)V

    .line 364
    iput-object v1, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->k:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;

    .line 367
    :cond_a
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->j:Lcom/bytedance/sdk/openadsdk/TTInteractionAd;

    if-eqz v0, :cond_18

    .line 368
    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/TTInteractionAd;->setAdInteractionListener(Lcom/bytedance/sdk/openadsdk/TTInteractionAd$AdInteractionListener;)V

    .line 369
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->j:Lcom/bytedance/sdk/openadsdk/TTInteractionAd;

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/TTInteractionAd;->setDownloadListener(Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;)V

    .line 370
    iput-object v1, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->j:Lcom/bytedance/sdk/openadsdk/TTInteractionAd;

    .line 373
    :cond_18
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->l:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    if-eqz v0, :cond_26

    .line 374
    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->setExpressInteractionListener(Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$AdInteractionListener;)V

    .line 375
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->l:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->destroy()V

    .line 376
    iput-object v1, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->l:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    .line 379
    :cond_26
    iput-object v1, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->d:Lcom/bytedance/sdk/openadsdk/TTInteractionAd$AdInteractionListener;

    .line 380
    iput-object v1, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->c:Lcom/bytedance/sdk/openadsdk/TTAdNative$InteractionAdListener;

    .line 381
    iput-object v1, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->f:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd$FullScreenVideoAdInteractionListener;

    .line 382
    iput-object v1, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->e:Lcom/bytedance/sdk/openadsdk/TTAdNative$FullScreenVideoAdListener;

    .line 383
    iput-object v1, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->g:Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeExpressAdListener;

    .line 384
    iput-object v1, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->h:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$AdInteractionListener;

    .line 385
    return-void
.end method

.method public getNetworkName()Ljava/lang/String;
    .registers 2

    .line 311
    invoke-static {}, Lcom/anythink/network/toutiao/TTATInitManager;->getInstance()Lcom/anythink/network/toutiao/TTATInitManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/network/toutiao/TTATInitManager;->getNetworkName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkPlacementId()Ljava/lang/String;
    .registers 2

    .line 389
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkSDKVersion()Ljava/lang/String;
    .registers 2

    .line 394
    invoke-static {}, Lcom/anythink/network/toutiao/TTATInitManager;->getInstance()Lcom/anythink/network/toutiao/TTATInitManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/network/toutiao/TTATInitManager;->getNetworkVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAdReady()Z
    .registers 2

    .line 282
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->j:Lcom/bytedance/sdk/openadsdk/TTInteractionAd;

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->k:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->l:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    return v0

    :cond_f
    :goto_f
    const/4 v0, 0x1

    return v0
.end method

.method public loadCustomNetworkAd(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 316
    const-string v0, "app_id"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 317
    const-string v1, "slot_id"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->a:Ljava/lang/String;

    .line 319
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_84

    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_21

    goto :goto_84

    .line 326
    :cond_21
    const-string v0, "is_video"

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 327
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 328
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->b:Z

    .line 332
    :cond_3c
    const/4 v0, 0x0

    .line 333
    const-string v1, "layout_type"

    invoke-interface {p2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_53

    .line 334
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move v5, v0

    goto :goto_54

    .line 333
    :cond_53
    move v5, v0

    .line 337
    :goto_54
    nop

    .line 338
    const-string v0, "size"

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_67

    .line 339
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    goto :goto_6a

    .line 338
    :cond_67
    const-string v0, "1:1"

    move-object v7, v0

    .line 342
    :goto_6a
    const-string v0, "personalized_template"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/lang/String;

    .line 346
    invoke-static {}, Lcom/anythink/network/toutiao/TTATInitManager;->getInstance()Lcom/anythink/network/toutiao/TTATInitManager;

    move-result-object v0

    new-instance v8, Lcom/anythink/network/toutiao/TTATInterstitialAdapter$7;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p3

    invoke-direct/range {v1 .. v7}, Lcom/anythink/network/toutiao/TTATInterstitialAdapter$7;-><init>(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;Landroid/content/Context;Ljava/util/Map;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2, v8}, Lcom/anythink/network/toutiao/TTATInitManager;->initSDK(Landroid/content/Context;Ljava/util/Map;Lcom/anythink/network/toutiao/TTATInitManager$a;)V

    .line 358
    return-void

    .line 320
    :cond_84
    :goto_84
    iget-object p1, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    if-eqz p1, :cond_91

    .line 321
    iget-object p1, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    const-string p2, ""

    const-string p3, "app_id or slot_id is empty!"

    invoke-interface {p1, p2, p3}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdLoadError(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    :cond_91
    return-void
.end method

.method public show(Landroid/app/Activity;)V
    .registers 4

    .line 288
    :try_start_0
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->j:Lcom/bytedance/sdk/openadsdk/TTInteractionAd;

    if-eqz v0, :cond_10

    if-eqz p1, :cond_10

    .line 289
    iget-object v1, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->d:Lcom/bytedance/sdk/openadsdk/TTInteractionAd$AdInteractionListener;

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/TTInteractionAd;->setAdInteractionListener(Lcom/bytedance/sdk/openadsdk/TTInteractionAd$AdInteractionListener;)V

    .line 290
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->j:Lcom/bytedance/sdk/openadsdk/TTInteractionAd;

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/TTInteractionAd;->showInteractionAd(Landroid/app/Activity;)V

    .line 293
    :cond_10
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->k:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;

    if-eqz v0, :cond_20

    if-eqz p1, :cond_20

    .line 294
    iget-object v1, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->f:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd$FullScreenVideoAdInteractionListener;

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;->setFullScreenVideoAdInteractionListener(Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd$FullScreenVideoAdInteractionListener;)V

    .line 295
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->k:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;->showFullScreenVideoAd(Landroid/app/Activity;)V

    .line 298
    :cond_20
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->l:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    if-eqz v0, :cond_30

    if-eqz p1, :cond_30

    .line 299
    iget-object v1, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->h:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$AdInteractionListener;

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->setExpressInteractionListener(Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$AdInteractionListener;)V

    .line 300
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->l:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->showInteractionExpressAd(Landroid/app/Activity;)V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_30} :catch_31

    .line 305
    :cond_30
    return-void

    .line 304
    :catch_31
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 307
    return-void
.end method
