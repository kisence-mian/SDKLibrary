.class public Lcom/anythink/network/ks/KSATAdapter;
.super Lcom/anythink/nativead/unitgroup/api/CustomNativeAdapter;


# instance fields
.field a:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAdapter;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/anythink/network/ks/KSATAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 28
    iget-object p0, p0, Lcom/anythink/network/ks/KSATAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;I)V
    .registers 9

    .line 86
    new-instance v0, Lcom/kwad/sdk/api/KsScene$Builder;

    iget-wide v1, p0, Lcom/anythink/network/ks/KSATAdapter;->a:J

    invoke-direct {v0, v1, v2}, Lcom/kwad/sdk/api/KsScene$Builder;-><init>(J)V

    .line 87
    invoke-virtual {v0, p5}, Lcom/kwad/sdk/api/KsScene$Builder;->adNum(I)Lcom/kwad/sdk/api/KsScene$Builder;

    move-result-object p5

    .line 88
    invoke-virtual {p5}, Lcom/kwad/sdk/api/KsScene$Builder;->build()Lcom/kwad/sdk/api/KsScene;

    move-result-object p5

    .line 90
    const-string v0, "1"

    invoke-static {v0, p4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_24

    .line 91
    invoke-static {}, Lcom/kwad/sdk/api/KsAdSDK;->getLoadManager()Lcom/kwad/sdk/api/KsLoadManager;

    move-result-object p2

    new-instance p3, Lcom/anythink/network/ks/KSATAdapter$2;

    invoke-direct {p3, p0, p1}, Lcom/anythink/network/ks/KSATAdapter$2;-><init>(Lcom/anythink/network/ks/KSATAdapter;Landroid/content/Context;)V

    invoke-interface {p2, p5, p3}, Lcom/kwad/sdk/api/KsLoadManager;->loadDrawAd(Lcom/kwad/sdk/api/KsScene;Lcom/kwad/sdk/api/KsLoadManager$DrawAdListener;)V

    .line 120
    return-void

    .line 124
    :cond_24
    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_37

    .line 125
    invoke-static {}, Lcom/kwad/sdk/api/KsAdSDK;->getLoadManager()Lcom/kwad/sdk/api/KsLoadManager;

    move-result-object p2

    new-instance p4, Lcom/anythink/network/ks/KSATAdapter$3;

    invoke-direct {p4, p0, p1, p3}, Lcom/anythink/network/ks/KSATAdapter$3;-><init>(Lcom/anythink/network/ks/KSATAdapter;Landroid/content/Context;Z)V

    invoke-interface {p2, p5, p4}, Lcom/kwad/sdk/api/KsLoadManager;->loadConfigFeedAd(Lcom/kwad/sdk/api/KsScene;Lcom/kwad/sdk/api/KsLoadManager$FeedAdListener;)V

    return-void

    .line 155
    :cond_37
    invoke-static {}, Lcom/kwad/sdk/api/KsAdSDK;->getLoadManager()Lcom/kwad/sdk/api/KsLoadManager;

    move-result-object p2

    new-instance p4, Lcom/anythink/network/ks/KSATAdapter$4;

    invoke-direct {p4, p0, p1, p3}, Lcom/anythink/network/ks/KSATAdapter$4;-><init>(Lcom/anythink/network/ks/KSATAdapter;Landroid/content/Context;Z)V

    invoke-interface {p2, p5, p4}, Lcom/kwad/sdk/api/KsLoadManager;->loadNativeAd(Lcom/kwad/sdk/api/KsScene;Lcom/kwad/sdk/api/KsLoadManager$NativeAdListener;)V

    .line 185
    return-void
.end method

.method static synthetic a(Lcom/anythink/network/ks/KSATAdapter;Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;I)V
    .registers 9

    .line 28
    nop

    .line 1086
    new-instance v0, Lcom/kwad/sdk/api/KsScene$Builder;

    iget-wide v1, p0, Lcom/anythink/network/ks/KSATAdapter;->a:J

    invoke-direct {v0, v1, v2}, Lcom/kwad/sdk/api/KsScene$Builder;-><init>(J)V

    .line 1087
    invoke-virtual {v0, p5}, Lcom/kwad/sdk/api/KsScene$Builder;->adNum(I)Lcom/kwad/sdk/api/KsScene$Builder;

    move-result-object p5

    .line 1088
    invoke-virtual {p5}, Lcom/kwad/sdk/api/KsScene$Builder;->build()Lcom/kwad/sdk/api/KsScene;

    move-result-object p5

    .line 1090
    const-string v0, "1"

    invoke-static {v0, p4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_25

    .line 1091
    invoke-static {}, Lcom/kwad/sdk/api/KsAdSDK;->getLoadManager()Lcom/kwad/sdk/api/KsLoadManager;

    move-result-object p2

    new-instance p3, Lcom/anythink/network/ks/KSATAdapter$2;

    invoke-direct {p3, p0, p1}, Lcom/anythink/network/ks/KSATAdapter$2;-><init>(Lcom/anythink/network/ks/KSATAdapter;Landroid/content/Context;)V

    invoke-interface {p2, p5, p3}, Lcom/kwad/sdk/api/KsLoadManager;->loadDrawAd(Lcom/kwad/sdk/api/KsScene;Lcom/kwad/sdk/api/KsLoadManager$DrawAdListener;)V

    .line 1120
    return-void

    .line 1124
    :cond_25
    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_38

    .line 1125
    invoke-static {}, Lcom/kwad/sdk/api/KsAdSDK;->getLoadManager()Lcom/kwad/sdk/api/KsLoadManager;

    move-result-object p2

    new-instance p4, Lcom/anythink/network/ks/KSATAdapter$3;

    invoke-direct {p4, p0, p1, p3}, Lcom/anythink/network/ks/KSATAdapter$3;-><init>(Lcom/anythink/network/ks/KSATAdapter;Landroid/content/Context;Z)V

    invoke-interface {p2, p5, p4}, Lcom/kwad/sdk/api/KsLoadManager;->loadConfigFeedAd(Lcom/kwad/sdk/api/KsScene;Lcom/kwad/sdk/api/KsLoadManager$FeedAdListener;)V

    return-void

    .line 1155
    :cond_38
    invoke-static {}, Lcom/kwad/sdk/api/KsAdSDK;->getLoadManager()Lcom/kwad/sdk/api/KsLoadManager;

    move-result-object p2

    new-instance p4, Lcom/anythink/network/ks/KSATAdapter$4;

    invoke-direct {p4, p0, p1, p3}, Lcom/anythink/network/ks/KSATAdapter$4;-><init>(Lcom/anythink/network/ks/KSATAdapter;Landroid/content/Context;Z)V

    invoke-interface {p2, p5, p4}, Lcom/kwad/sdk/api/KsLoadManager;->loadNativeAd(Lcom/kwad/sdk/api/KsScene;Lcom/kwad/sdk/api/KsLoadManager$NativeAdListener;)V

    .line 28
    return-void
.end method

.method static synthetic b(Lcom/anythink/network/ks/KSATAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 28
    iget-object p0, p0, Lcom/anythink/network/ks/KSATAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic c(Lcom/anythink/network/ks/KSATAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 28
    iget-object p0, p0, Lcom/anythink/network/ks/KSATAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic d(Lcom/anythink/network/ks/KSATAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 28
    iget-object p0, p0, Lcom/anythink/network/ks/KSATAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic e(Lcom/anythink/network/ks/KSATAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 28
    iget-object p0, p0, Lcom/anythink/network/ks/KSATAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic f(Lcom/anythink/network/ks/KSATAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 28
    iget-object p0, p0, Lcom/anythink/network/ks/KSATAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic g(Lcom/anythink/network/ks/KSATAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 28
    iget-object p0, p0, Lcom/anythink/network/ks/KSATAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic h(Lcom/anythink/network/ks/KSATAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 28
    iget-object p0, p0, Lcom/anythink/network/ks/KSATAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic i(Lcom/anythink/network/ks/KSATAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 28
    iget-object p0, p0, Lcom/anythink/network/ks/KSATAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic j(Lcom/anythink/network/ks/KSATAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 28
    iget-object p0, p0, Lcom/anythink/network/ks/KSATAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic k(Lcom/anythink/network/ks/KSATAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 28
    iget-object p0, p0, Lcom/anythink/network/ks/KSATAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic l(Lcom/anythink/network/ks/KSATAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 28
    iget-object p0, p0, Lcom/anythink/network/ks/KSATAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic m(Lcom/anythink/network/ks/KSATAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 28
    iget-object p0, p0, Lcom/anythink/network/ks/KSATAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic n(Lcom/anythink/network/ks/KSATAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 28
    iget-object p0, p0, Lcom/anythink/network/ks/KSATAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic o(Lcom/anythink/network/ks/KSATAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 28
    iget-object p0, p0, Lcom/anythink/network/ks/KSATAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic p(Lcom/anythink/network/ks/KSATAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 28
    iget-object p0, p0, Lcom/anythink/network/ks/KSATAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic q(Lcom/anythink/network/ks/KSATAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 28
    iget-object p0, p0, Lcom/anythink/network/ks/KSATAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic r(Lcom/anythink/network/ks/KSATAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 28
    iget-object p0, p0, Lcom/anythink/network/ks/KSATAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method


# virtual methods
.method public destory()V
    .registers 1

    .line 190
    return-void
.end method

.method public getNetworkName()Ljava/lang/String;
    .registers 2

    .line 34
    invoke-static {}, Lcom/anythink/network/ks/KSATInitManager;->getInstance()Lcom/anythink/network/ks/KSATInitManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/network/ks/KSATInitManager;->getNetworkName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkPlacementId()Ljava/lang/String;
    .registers 3

    .line 195
    :try_start_0
    iget-wide v0, p0, Lcom/anythink/network/ks/KSATAdapter;->a:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 197
    :catch_7
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 198
    const-string v0, ""

    return-object v0
.end method

.method public getNetworkSDKVersion()Ljava/lang/String;
    .registers 2

    .line 204
    invoke-static {}, Lcom/anythink/network/ks/KSATInitManager;->getInstance()Lcom/anythink/network/ks/KSATInitManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/network/ks/KSATInitManager;->getNetworkVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
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

    .line 40
    const-string p3, "app_id"

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 41
    const-string v0, "position_id"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 43
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_86

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_1e

    goto/16 :goto_86

    .line 49
    :cond_1e
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/anythink/network/ks/KSATAdapter;->a:J

    .line 52
    nop

    .line 53
    const-string p3, "layout_type"

    invoke-interface {p2, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "0"

    if-eqz v0, :cond_37

    .line 54
    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    move-object v5, p3

    goto :goto_38

    .line 53
    :cond_37
    move-object v5, v1

    .line 57
    :goto_38
    const/4 p3, 0x0

    .line 58
    const-string v0, "video_sound"

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4f

    .line 59
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    const-string v0, "1"

    invoke-static {v0, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    move v6, p3

    goto :goto_50

    .line 58
    :cond_4f
    move v6, p3

    .line 62
    :goto_50
    nop

    .line 63
    const-string p3, "unit_type"

    invoke-interface {p2, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_62

    .line 64
    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    move-object v1, p3

    check-cast v1, Ljava/lang/String;

    move-object v7, v1

    goto :goto_63

    .line 63
    :cond_62
    move-object v7, v1

    .line 67
    :goto_63
    const/4 p3, 0x1

    .line 69
    :try_start_64
    const-string v0, "request_ad_num"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_72} :catch_74

    .line 71
    move v8, p3

    goto :goto_76

    .line 70
    :catch_74
    move-exception v0

    move v8, p3

    .line 77
    :goto_76
    invoke-static {}, Lcom/anythink/network/ks/KSATInitManager;->getInstance()Lcom/anythink/network/ks/KSATInitManager;

    move-result-object p3

    new-instance v0, Lcom/anythink/network/ks/KSATAdapter$1;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v2 .. v8}, Lcom/anythink/network/ks/KSATAdapter$1;-><init>(Lcom/anythink/network/ks/KSATAdapter;Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;I)V

    invoke-virtual {p3, p1, p2, v0}, Lcom/anythink/network/ks/KSATInitManager;->initSDK(Landroid/content/Context;Ljava/util/Map;Lcom/anythink/network/ks/KSATInitManager$a;)V

    .line 83
    return-void

    .line 44
    :cond_86
    :goto_86
    iget-object p1, p0, Lcom/anythink/network/ks/KSATAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    if-eqz p1, :cond_93

    .line 45
    iget-object p1, p0, Lcom/anythink/network/ks/KSATAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    const-string p2, ""

    const-string p3, "kuaishou app_id or position_id is empty."

    invoke-interface {p1, p2, p3}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdLoadError(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    :cond_93
    return-void
.end method
