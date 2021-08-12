.class public Lcom/anythink/network/toutiao/TTATSplashAdapter;
.super Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTSplashAd$AdInteractionListener;


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Lcom/bytedance/sdk/openadsdk/TTSplashAd;

.field private final e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 26
    invoke-direct {p0}, Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;-><init>()V

    .line 27
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/network/toutiao/TTATSplashAdapter;->e:Ljava/lang/String;

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcom/anythink/network/toutiao/TTATSplashAdapter;->a:Ljava/lang/String;

    .line 30
    iput-object v0, p0, Lcom/anythink/network/toutiao/TTATSplashAdapter;->b:Ljava/lang/String;

    .line 31
    iput-object v0, p0, Lcom/anythink/network/toutiao/TTATSplashAdapter;->c:Ljava/lang/String;

    return-void
.end method

.method private static a(Landroid/content/Context;F)I
    .registers 3

    .line 143
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    .line 144
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

.method static synthetic a(Lcom/anythink/network/toutiao/TTATSplashAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/anythink/network/toutiao/TTATSplashAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method private a(Landroid/content/Context;Ljava/util/Map;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 68
    const-string v0, "key_height"

    const-string v1, "key_width"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/TTAdSdk;->getAdManager()Lcom/bytedance/sdk/openadsdk/TTAdManager;

    move-result-object v2

    .line 70
    invoke-interface {v2, p1}, Lcom/bytedance/sdk/openadsdk/TTAdManager;->createAdNative(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/TTAdNative;

    move-result-object v2

    .line 71
    new-instance v3, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    invoke-direct {v3}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;-><init>()V

    iget-object v4, p0, Lcom/anythink/network/toutiao/TTATSplashAdapter;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setCodeId(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v3

    .line 73
    nop

    .line 74
    nop

    .line 76
    const/4 v4, 0x0

    :try_start_1a
    invoke-interface {p2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2d

    .line 77
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_2c
    .catchall {:try_start_1a .. :try_end_2c} :catchall_2f

    goto :goto_2e

    .line 76
    :cond_2d
    move v1, v4

    .line 81
    :goto_2e
    goto :goto_34

    .line 80
    :catchall_2f
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    move v1, v4

    .line 84
    :goto_34
    :try_start_34
    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_47

    .line 85
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2
    :try_end_46
    .catchall {:try_start_34 .. :try_end_46} :catchall_48

    move v4, p2

    .line 89
    :cond_47
    goto :goto_4c

    .line 88
    :catchall_48
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 91
    :goto_4c
    if-gtz v1, :cond_58

    .line 92
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget v1, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 94
    :cond_58
    if-gtz v4, :cond_64

    .line 95
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget v4, p2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 98
    :cond_64
    invoke-virtual {v3, v1, v4}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setImageAcceptedSize(II)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    .line 100
    iget-object p2, p0, Lcom/anythink/network/toutiao/TTATSplashAdapter;->c:Ljava/lang/String;

    const-string v0, "1"

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_80

    .line 101
    int-to-float p2, v1

    invoke-static {p1, p2}, Lcom/anythink/network/toutiao/TTATSplashAdapter;->a(Landroid/content/Context;F)I

    move-result p2

    int-to-float p2, p2

    int-to-float v0, v4

    invoke-static {p1, v0}, Lcom/anythink/network/toutiao/TTATSplashAdapter;->a(Landroid/content/Context;F)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v3, p2, p1}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setExpressViewAcceptedSize(FF)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    .line 104
    :cond_80
    new-instance p1, Lcom/anythink/network/toutiao/TTATSplashAdapter$2;

    invoke-direct {p1, p0, v3, v2}, Lcom/anythink/network/toutiao/TTATSplashAdapter$2;-><init>(Lcom/anythink/network/toutiao/TTATSplashAdapter;Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;Lcom/bytedance/sdk/openadsdk/TTAdNative;)V

    invoke-virtual {p0, p1}, Lcom/anythink/network/toutiao/TTATSplashAdapter;->postOnMainThread(Ljava/lang/Runnable;)V

    .line 140
    return-void
.end method

.method static synthetic a(Lcom/anythink/network/toutiao/TTATSplashAdapter;Landroid/content/Context;Ljava/util/Map;)V
    .registers 9

    .line 1068
    const-string v0, "key_height"

    const-string v1, "key_width"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/TTAdSdk;->getAdManager()Lcom/bytedance/sdk/openadsdk/TTAdManager;

    move-result-object v2

    .line 1070
    invoke-interface {v2, p1}, Lcom/bytedance/sdk/openadsdk/TTAdManager;->createAdNative(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/TTAdNative;

    move-result-object v2

    .line 1071
    new-instance v3, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    invoke-direct {v3}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;-><init>()V

    iget-object v4, p0, Lcom/anythink/network/toutiao/TTATSplashAdapter;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setCodeId(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v3

    .line 1073
    nop

    .line 1074
    nop

    .line 1076
    const/4 v4, 0x0

    :try_start_1a
    invoke-interface {p2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2d

    .line 1077
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_2c
    .catchall {:try_start_1a .. :try_end_2c} :catchall_2f

    goto :goto_2e

    .line 1076
    :cond_2d
    move v1, v4

    .line 1081
    :goto_2e
    goto :goto_34

    .line 1080
    :catchall_2f
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    move v1, v4

    .line 1084
    :goto_34
    :try_start_34
    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_47

    .line 1085
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2
    :try_end_46
    .catchall {:try_start_34 .. :try_end_46} :catchall_48

    move v4, p2

    .line 1089
    :cond_47
    goto :goto_4c

    .line 1088
    :catchall_48
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1091
    :goto_4c
    if-gtz v1, :cond_58

    .line 1092
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget v1, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1094
    :cond_58
    if-gtz v4, :cond_64

    .line 1095
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget v4, p2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 1098
    :cond_64
    invoke-virtual {v3, v1, v4}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setImageAcceptedSize(II)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    .line 1100
    iget-object p2, p0, Lcom/anythink/network/toutiao/TTATSplashAdapter;->c:Ljava/lang/String;

    const-string v0, "1"

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_80

    .line 1101
    int-to-float p2, v1

    invoke-static {p1, p2}, Lcom/anythink/network/toutiao/TTATSplashAdapter;->a(Landroid/content/Context;F)I

    move-result p2

    int-to-float p2, p2

    int-to-float v0, v4

    invoke-static {p1, v0}, Lcom/anythink/network/toutiao/TTATSplashAdapter;->a(Landroid/content/Context;F)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v3, p2, p1}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setExpressViewAcceptedSize(FF)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    .line 1104
    :cond_80
    new-instance p1, Lcom/anythink/network/toutiao/TTATSplashAdapter$2;

    invoke-direct {p1, p0, v3, v2}, Lcom/anythink/network/toutiao/TTATSplashAdapter$2;-><init>(Lcom/anythink/network/toutiao/TTATSplashAdapter;Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;Lcom/bytedance/sdk/openadsdk/TTAdNative;)V

    invoke-virtual {p0, p1}, Lcom/anythink/network/toutiao/TTATSplashAdapter;->postOnMainThread(Ljava/lang/Runnable;)V

    .line 26
    return-void
.end method

.method static synthetic b(Lcom/anythink/network/toutiao/TTATSplashAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/anythink/network/toutiao/TTATSplashAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic c(Lcom/anythink/network/toutiao/TTATSplashAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/anythink/network/toutiao/TTATSplashAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic d(Lcom/anythink/network/toutiao/TTATSplashAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/anythink/network/toutiao/TTATSplashAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic e(Lcom/anythink/network/toutiao/TTATSplashAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/anythink/network/toutiao/TTATSplashAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic f(Lcom/anythink/network/toutiao/TTATSplashAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/anythink/network/toutiao/TTATSplashAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic g(Lcom/anythink/network/toutiao/TTATSplashAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/anythink/network/toutiao/TTATSplashAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic h(Lcom/anythink/network/toutiao/TTATSplashAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/anythink/network/toutiao/TTATSplashAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic i(Lcom/anythink/network/toutiao/TTATSplashAdapter;)I
    .registers 1

    .line 26
    iget p0, p0, Lcom/anythink/network/toutiao/TTATSplashAdapter;->mFetchAdTimeout:I

    return p0
.end method

.method static synthetic j(Lcom/anythink/network/toutiao/TTATSplashAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/anythink/network/toutiao/TTATSplashAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic k(Lcom/anythink/network/toutiao/TTATSplashAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/anythink/network/toutiao/TTATSplashAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method


# virtual methods
.method public destory()V
    .registers 1

    .line 171
    return-void
.end method

.method public getNetworkName()Ljava/lang/String;
    .registers 2

    .line 165
    invoke-static {}, Lcom/anythink/network/toutiao/TTATInitManager;->getInstance()Lcom/anythink/network/toutiao/TTATInitManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/network/toutiao/TTATInitManager;->getNetworkName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkPlacementId()Ljava/lang/String;
    .registers 2

    .line 175
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATSplashAdapter;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkSDKVersion()Ljava/lang/String;
    .registers 2

    .line 180
    invoke-static {}, Lcom/anythink/network/toutiao/TTATInitManager;->getInstance()Lcom/anythink/network/toutiao/TTATInitManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/network/toutiao/TTATInitManager;->getNetworkVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAdReady()Z
    .registers 2

    .line 149
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATSplashAdapter;->d:Lcom/bytedance/sdk/openadsdk/TTSplashAd;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public loadCustomNetworkAd(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V
    .registers 7
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

    .line 37
    const-string v0, "app_id"

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_42

    const-string v1, "slot_id"

    invoke-interface {p2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_42

    .line 38
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/anythink/network/toutiao/TTATSplashAdapter;->a:Ljava/lang/String;

    .line 39
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/anythink/network/toutiao/TTATSplashAdapter;->b:Ljava/lang/String;

    .line 48
    const-string v0, "0"

    iput-object v0, p0, Lcom/anythink/network/toutiao/TTATSplashAdapter;->c:Ljava/lang/String;

    .line 49
    const-string v0, "personalized_template"

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 50
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/anythink/network/toutiao/TTATSplashAdapter;->c:Ljava/lang/String;

    .line 53
    :cond_34
    invoke-static {}, Lcom/anythink/network/toutiao/TTATInitManager;->getInstance()Lcom/anythink/network/toutiao/TTATInitManager;

    move-result-object v0

    const/4 v1, 0x1

    new-instance v2, Lcom/anythink/network/toutiao/TTATSplashAdapter$1;

    invoke-direct {v2, p0, p1, p3}, Lcom/anythink/network/toutiao/TTATSplashAdapter$1;-><init>(Lcom/anythink/network/toutiao/TTATSplashAdapter;Landroid/content/Context;Ljava/util/Map;)V

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/anythink/network/toutiao/TTATInitManager;->initSDK(Landroid/content/Context;Ljava/util/Map;ZLcom/anythink/network/toutiao/TTATInitManager$a;)V

    .line 65
    return-void

    .line 42
    :cond_42
    iget-object p1, p0, Lcom/anythink/network/toutiao/TTATSplashAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    if-eqz p1, :cond_4f

    .line 43
    iget-object p1, p0, Lcom/anythink/network/toutiao/TTATSplashAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    const-string p2, ""

    const-string p3, "app_id or slot_id is empty!"

    invoke-interface {p1, p2, p3}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdLoadError(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    :cond_4f
    return-void
.end method

.method public onAdClicked(Landroid/view/View;I)V
    .registers 3

    .line 185
    iget-object p1, p0, Lcom/anythink/network/toutiao/TTATSplashAdapter;->mImpressionListener:Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    if-eqz p1, :cond_9

    .line 186
    iget-object p1, p0, Lcom/anythink/network/toutiao/TTATSplashAdapter;->mImpressionListener:Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    invoke-interface {p1}, Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;->onSplashAdClicked()V

    .line 189
    :cond_9
    return-void
.end method

.method public onAdShow(Landroid/view/View;I)V
    .registers 3

    .line 193
    iget-object p1, p0, Lcom/anythink/network/toutiao/TTATSplashAdapter;->mImpressionListener:Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    if-eqz p1, :cond_9

    .line 194
    iget-object p1, p0, Lcom/anythink/network/toutiao/TTATSplashAdapter;->mImpressionListener:Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    invoke-interface {p1}, Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;->onSplashAdShow()V

    .line 197
    :cond_9
    return-void
.end method

.method public onAdSkip()V
    .registers 2

    .line 201
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATSplashAdapter;->mImpressionListener:Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    if-eqz v0, :cond_9

    .line 202
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATSplashAdapter;->mImpressionListener:Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    invoke-interface {v0}, Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;->onSplashAdDismiss()V

    .line 204
    :cond_9
    return-void
.end method

.method public onAdTimeOver()V
    .registers 2

    .line 208
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATSplashAdapter;->mImpressionListener:Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    if-eqz v0, :cond_9

    .line 209
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATSplashAdapter;->mImpressionListener:Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    invoke-interface {v0}, Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;->onSplashAdDismiss()V

    .line 211
    :cond_9
    return-void
.end method

.method public show(Landroid/app/Activity;Landroid/view/ViewGroup;)V
    .registers 5

    .line 154
    iget-object p1, p0, Lcom/anythink/network/toutiao/TTATSplashAdapter;->d:Lcom/bytedance/sdk/openadsdk/TTSplashAd;

    if-eqz p1, :cond_18

    .line 155
    invoke-interface {p1, p0}, Lcom/bytedance/sdk/openadsdk/TTSplashAd;->setSplashInteractionListener(Lcom/bytedance/sdk/openadsdk/TTSplashAd$AdInteractionListener;)V

    .line 156
    iget-object p1, p0, Lcom/anythink/network/toutiao/TTATSplashAdapter;->d:Lcom/bytedance/sdk/openadsdk/TTSplashAd;

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/TTSplashAd;->getSplashView()Landroid/view/View;

    move-result-object p1

    .line 157
    if-eqz p1, :cond_18

    .line 158
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 161
    :cond_18
    return-void
.end method
