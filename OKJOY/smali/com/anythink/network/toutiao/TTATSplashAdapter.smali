.class public Lcom/anythink/network/toutiao/TTATSplashAdapter;
.super Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTSplashAd$AdInteractionListener;


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Lcom/anythink/splashad/unitgroup/api/CustomSplashListener;

.field e:Landroid/app/Activity;

.field f:Landroid/view/View;

.field private final g:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;-><init>()V

    .line 22
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/network/toutiao/TTATSplashAdapter;->g:Ljava/lang/String;

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/anythink/network/toutiao/TTATSplashAdapter;->a:Ljava/lang/String;

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/anythink/network/toutiao/TTATSplashAdapter;->b:Ljava/lang/String;

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/anythink/network/toutiao/TTATSplashAdapter;->c:Ljava/lang/String;

    return-void
.end method

.method private a(Landroid/app/Activity;Landroid/view/ViewGroup;)V
    .registers 9

    .prologue
    .line 75
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/TTAdSdk;->getAdManager()Lcom/bytedance/sdk/openadsdk/TTAdManager;

    move-result-object v0

    .line 77
    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/TTAdManager;->createAdNative(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/TTAdNative;

    move-result-object v0

    .line 78
    new-instance v1, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;-><init>()V

    iget-object v2, p0, Lcom/anythink/network/toutiao/TTATSplashAdapter;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setCodeId(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v1

    .line 79
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 80
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 81
    invoke-virtual {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setImageAcceptedSize(II)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    .line 83
    const-string v4, "1"

    iget-object v5, p0, Lcom/anythink/network/toutiao/TTATSplashAdapter;->c:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_39

    .line 84
    int-to-float v2, v2

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setExpressViewAcceptedSize(FF)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    .line 87
    :cond_39
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->build()Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object v1

    .line 88
    new-instance v2, Lcom/anythink/network/toutiao/TTATSplashAdapter$2;

    invoke-direct {v2, p0, p2}, Lcom/anythink/network/toutiao/TTATSplashAdapter$2;-><init>(Lcom/anythink/network/toutiao/TTATSplashAdapter;Landroid/view/ViewGroup;)V

    invoke-interface {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/TTAdNative;->loadSplashAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$SplashAdListener;)V

    .line 132
    return-void
.end method

.method static synthetic a(Lcom/anythink/network/toutiao/TTATSplashAdapter;Landroid/app/Activity;Landroid/view/ViewGroup;)V
    .registers 9

    .prologue
    .line 1075
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/TTAdSdk;->getAdManager()Lcom/bytedance/sdk/openadsdk/TTAdManager;

    move-result-object v0

    .line 1077
    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/TTAdManager;->createAdNative(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/TTAdNative;

    move-result-object v0

    .line 1078
    new-instance v1, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;-><init>()V

    iget-object v2, p0, Lcom/anythink/network/toutiao/TTATSplashAdapter;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setCodeId(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v1

    .line 1079
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1080
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 1081
    invoke-virtual {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setImageAcceptedSize(II)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    .line 1083
    const-string v4, "1"

    iget-object v5, p0, Lcom/anythink/network/toutiao/TTATSplashAdapter;->c:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_39

    .line 1084
    int-to-float v2, v2

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setExpressViewAcceptedSize(FF)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    .line 1087
    :cond_39
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->build()Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object v1

    .line 1088
    new-instance v2, Lcom/anythink/network/toutiao/TTATSplashAdapter$2;

    invoke-direct {v2, p0, p2}, Lcom/anythink/network/toutiao/TTATSplashAdapter$2;-><init>(Lcom/anythink/network/toutiao/TTATSplashAdapter;Landroid/view/ViewGroup;)V

    invoke-interface {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/TTAdNative;->loadSplashAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$SplashAdListener;)V

    .line 21
    return-void
.end method


# virtual methods
.method public clean()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 142
    iput-object v0, p0, Lcom/anythink/network/toutiao/TTATSplashAdapter;->e:Landroid/app/Activity;

    .line 143
    iput-object v0, p0, Lcom/anythink/network/toutiao/TTATSplashAdapter;->f:Landroid/view/View;

    .line 144
    return-void
.end method

.method public getNetworkName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 136
    invoke-static {}, Lcom/anythink/network/toutiao/TTATInitManager;->getInstance()Lcom/anythink/network/toutiao/TTATInitManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/network/toutiao/TTATInitManager;->getNetworkName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSDKVersion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 179
    invoke-static {}, Lcom/anythink/network/toutiao/TTATConst;->getNetworkVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public loadSplashAd(Landroid/app/Activity;Landroid/view/ViewGroup;Landroid/view/View;Ljava/util/Map;Lcom/anythink/core/api/ATMediationSetting;Lcom/anythink/splashad/unitgroup/api/CustomSplashListener;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/view/ViewGroup;",
            "Landroid/view/View;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/anythink/core/api/ATMediationSetting;",
            "Lcom/anythink/splashad/unitgroup/api/CustomSplashListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 36
    iput-object p6, p0, Lcom/anythink/network/toutiao/TTATSplashAdapter;->d:Lcom/anythink/splashad/unitgroup/api/CustomSplashListener;

    .line 38
    iput-object p1, p0, Lcom/anythink/network/toutiao/TTATSplashAdapter;->e:Landroid/app/Activity;

    .line 39
    iput-object p3, p0, Lcom/anythink/network/toutiao/TTATSplashAdapter;->f:Landroid/view/View;

    .line 41
    if-nez p4, :cond_1c

    .line 42
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATSplashAdapter;->d:Lcom/anythink/splashad/unitgroup/api/CustomSplashListener;

    if-eqz v0, :cond_1b

    .line 43
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATSplashAdapter;->d:Lcom/anythink/splashad/unitgroup/api/CustomSplashListener;

    const-string v1, "4001"

    const-string v2, ""

    const-string v3, "This placement\'s params in server is null!"

    invoke-static {v1, v2, v3}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lcom/anythink/splashad/unitgroup/api/CustomSplashListener;->onSplashAdFailed(Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;Lcom/anythink/core/api/AdError;)V

    .line 72
    :cond_1b
    :goto_1b
    return-void

    .line 48
    :cond_1c
    const-string v0, "app_id"

    invoke-interface {p4, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_66

    const-string v0, "slot_id"

    invoke-interface {p4, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_66

    .line 49
    const-string v0, "app_id"

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/anythink/network/toutiao/TTATSplashAdapter;->a:Ljava/lang/String;

    .line 50
    const-string v0, "slot_id"

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/anythink/network/toutiao/TTATSplashAdapter;->b:Ljava/lang/String;

    .line 59
    const-string v0, "0"

    iput-object v0, p0, Lcom/anythink/network/toutiao/TTATSplashAdapter;->c:Ljava/lang/String;

    .line 60
    const-string v0, "personalized_template"

    invoke-interface {p4, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 61
    const-string v0, "personalized_template"

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/anythink/network/toutiao/TTATSplashAdapter;->c:Ljava/lang/String;

    .line 64
    :cond_56
    if-eqz p1, :cond_1b

    .line 65
    invoke-static {}, Lcom/anythink/network/toutiao/TTATInitManager;->getInstance()Lcom/anythink/network/toutiao/TTATInitManager;

    move-result-object v0

    const/4 v1, 0x1

    new-instance v2, Lcom/anythink/network/toutiao/TTATSplashAdapter$1;

    invoke-direct {v2, p0, p1, p2}, Lcom/anythink/network/toutiao/TTATSplashAdapter$1;-><init>(Lcom/anythink/network/toutiao/TTATSplashAdapter;Landroid/app/Activity;Landroid/view/ViewGroup;)V

    invoke-virtual {v0, p1, p4, v1, v2}, Lcom/anythink/network/toutiao/TTATInitManager;->initSDK(Landroid/content/Context;Ljava/util/Map;ZLcom/anythink/network/toutiao/TTATInitManager$a;)V

    goto :goto_1b

    .line 53
    :cond_66
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATSplashAdapter;->d:Lcom/anythink/splashad/unitgroup/api/CustomSplashListener;

    if-eqz v0, :cond_1b

    .line 54
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATSplashAdapter;->d:Lcom/anythink/splashad/unitgroup/api/CustomSplashListener;

    const-string v1, "4001"

    const-string v2, ""

    const-string v3, "app_id or slot_id is empty!"

    invoke-static {v1, v2, v3}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lcom/anythink/splashad/unitgroup/api/CustomSplashListener;->onSplashAdFailed(Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;Lcom/anythink/core/api/AdError;)V

    goto :goto_1b
.end method

.method public onAdClicked(Landroid/view/View;I)V
    .registers 4

    .prologue
    .line 149
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATSplashAdapter;->d:Lcom/anythink/splashad/unitgroup/api/CustomSplashListener;

    if-eqz v0, :cond_9

    .line 150
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATSplashAdapter;->d:Lcom/anythink/splashad/unitgroup/api/CustomSplashListener;

    invoke-interface {v0, p0}, Lcom/anythink/splashad/unitgroup/api/CustomSplashListener;->onSplashAdClicked(Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;)V

    .line 153
    :cond_9
    return-void
.end method

.method public onAdShow(Landroid/view/View;I)V
    .registers 4

    .prologue
    .line 157
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATSplashAdapter;->d:Lcom/anythink/splashad/unitgroup/api/CustomSplashListener;

    if-eqz v0, :cond_9

    .line 158
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATSplashAdapter;->d:Lcom/anythink/splashad/unitgroup/api/CustomSplashListener;

    invoke-interface {v0, p0}, Lcom/anythink/splashad/unitgroup/api/CustomSplashListener;->onSplashAdShow(Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;)V

    .line 161
    :cond_9
    return-void
.end method

.method public onAdSkip()V
    .registers 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATSplashAdapter;->d:Lcom/anythink/splashad/unitgroup/api/CustomSplashListener;

    if-eqz v0, :cond_9

    .line 166
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATSplashAdapter;->d:Lcom/anythink/splashad/unitgroup/api/CustomSplashListener;

    invoke-interface {v0, p0}, Lcom/anythink/splashad/unitgroup/api/CustomSplashListener;->onSplashAdDismiss(Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;)V

    .line 168
    :cond_9
    return-void
.end method

.method public onAdTimeOver()V
    .registers 2

    .prologue
    .line 172
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATSplashAdapter;->d:Lcom/anythink/splashad/unitgroup/api/CustomSplashListener;

    if-eqz v0, :cond_9

    .line 173
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATSplashAdapter;->d:Lcom/anythink/splashad/unitgroup/api/CustomSplashListener;

    invoke-interface {v0, p0}, Lcom/anythink/splashad/unitgroup/api/CustomSplashListener;->onSplashAdDismiss(Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;)V

    .line 175
    :cond_9
    return-void
.end method
