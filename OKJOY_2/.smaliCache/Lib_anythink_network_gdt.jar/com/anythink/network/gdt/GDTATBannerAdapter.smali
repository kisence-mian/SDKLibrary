.class public Lcom/anythink/network/gdt/GDTATBannerAdapter;
.super Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Landroid/view/View;

.field d:I

.field e:I

.field private final f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 21
    invoke-direct {p0}, Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;-><init>()V

    .line 22
    const-class v0, Lcom/anythink/network/gdt/GDTATBannerAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/network/gdt/GDTATBannerAdapter;->f:Ljava/lang/String;

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lcom/anythink/network/gdt/GDTATBannerAdapter;->d:I

    return-void
.end method

.method static synthetic a(Lcom/anythink/network/gdt/GDTATBannerAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 21
    iget-object p0, p0, Lcom/anythink/network/gdt/GDTATBannerAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method private a(Landroid/app/Activity;)V
    .registers 5

    .line 33
    new-instance v0, Lcom/qq/e/ads/banner2/UnifiedBannerView;

    iget-object v1, p0, Lcom/anythink/network/gdt/GDTATBannerAdapter;->b:Ljava/lang/String;

    new-instance v2, Lcom/anythink/network/gdt/GDTATBannerAdapter$1;

    invoke-direct {v2, p0}, Lcom/anythink/network/gdt/GDTATBannerAdapter$1;-><init>(Lcom/anythink/network/gdt/GDTATBannerAdapter;)V

    invoke-direct {v0, p1, v1, v2}, Lcom/qq/e/ads/banner2/UnifiedBannerView;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/qq/e/ads/banner2/UnifiedBannerADListener;)V

    .line 85
    iget p1, p0, Lcom/anythink/network/gdt/GDTATBannerAdapter;->e:I

    if-lez p1, :cond_14

    .line 86
    invoke-virtual {v0, p1}, Lcom/qq/e/ads/banner2/UnifiedBannerView;->setRefresh(I)V

    goto :goto_18

    .line 88
    :cond_14
    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lcom/qq/e/ads/banner2/UnifiedBannerView;->setRefresh(I)V

    .line 90
    :goto_18
    iput-object v0, p0, Lcom/anythink/network/gdt/GDTATBannerAdapter;->c:Landroid/view/View;

    .line 91
    invoke-virtual {v0}, Lcom/qq/e/ads/banner2/UnifiedBannerView;->loadAD()V

    .line 93
    return-void
.end method

.method static synthetic a(Lcom/anythink/network/gdt/GDTATBannerAdapter;Landroid/app/Activity;)V
    .registers 5

    .line 1033
    new-instance v0, Lcom/qq/e/ads/banner2/UnifiedBannerView;

    iget-object v1, p0, Lcom/anythink/network/gdt/GDTATBannerAdapter;->b:Ljava/lang/String;

    new-instance v2, Lcom/anythink/network/gdt/GDTATBannerAdapter$1;

    invoke-direct {v2, p0}, Lcom/anythink/network/gdt/GDTATBannerAdapter$1;-><init>(Lcom/anythink/network/gdt/GDTATBannerAdapter;)V

    invoke-direct {v0, p1, v1, v2}, Lcom/qq/e/ads/banner2/UnifiedBannerView;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/qq/e/ads/banner2/UnifiedBannerADListener;)V

    .line 1085
    iget p1, p0, Lcom/anythink/network/gdt/GDTATBannerAdapter;->e:I

    if-lez p1, :cond_14

    .line 1086
    invoke-virtual {v0, p1}, Lcom/qq/e/ads/banner2/UnifiedBannerView;->setRefresh(I)V

    goto :goto_18

    .line 1088
    :cond_14
    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lcom/qq/e/ads/banner2/UnifiedBannerView;->setRefresh(I)V

    .line 1090
    :goto_18
    iput-object v0, p0, Lcom/anythink/network/gdt/GDTATBannerAdapter;->c:Landroid/view/View;

    .line 1091
    invoke-virtual {v0}, Lcom/qq/e/ads/banner2/UnifiedBannerView;->loadAD()V

    .line 21
    return-void
.end method

.method static synthetic b(Lcom/anythink/network/gdt/GDTATBannerAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 21
    iget-object p0, p0, Lcom/anythink/network/gdt/GDTATBannerAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic c(Lcom/anythink/network/gdt/GDTATBannerAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 21
    iget-object p0, p0, Lcom/anythink/network/gdt/GDTATBannerAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic d(Lcom/anythink/network/gdt/GDTATBannerAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 21
    iget-object p0, p0, Lcom/anythink/network/gdt/GDTATBannerAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic e(Lcom/anythink/network/gdt/GDTATBannerAdapter;)Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;
    .registers 1

    .line 21
    iget-object p0, p0, Lcom/anythink/network/gdt/GDTATBannerAdapter;->mImpressionEventListener:Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;

    return-object p0
.end method

.method static synthetic f(Lcom/anythink/network/gdt/GDTATBannerAdapter;)Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;
    .registers 1

    .line 21
    iget-object p0, p0, Lcom/anythink/network/gdt/GDTATBannerAdapter;->mImpressionEventListener:Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;

    return-object p0
.end method

.method static synthetic g(Lcom/anythink/network/gdt/GDTATBannerAdapter;)Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;
    .registers 1

    .line 21
    iget-object p0, p0, Lcom/anythink/network/gdt/GDTATBannerAdapter;->mImpressionEventListener:Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;

    return-object p0
.end method

.method static synthetic h(Lcom/anythink/network/gdt/GDTATBannerAdapter;)Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;
    .registers 1

    .line 21
    iget-object p0, p0, Lcom/anythink/network/gdt/GDTATBannerAdapter;->mImpressionEventListener:Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;

    return-object p0
.end method

.method static synthetic i(Lcom/anythink/network/gdt/GDTATBannerAdapter;)Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;
    .registers 1

    .line 21
    iget-object p0, p0, Lcom/anythink/network/gdt/GDTATBannerAdapter;->mImpressionEventListener:Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;

    return-object p0
.end method

.method static synthetic j(Lcom/anythink/network/gdt/GDTATBannerAdapter;)Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;
    .registers 1

    .line 21
    iget-object p0, p0, Lcom/anythink/network/gdt/GDTATBannerAdapter;->mImpressionEventListener:Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;

    return-object p0
.end method

.method static synthetic k(Lcom/anythink/network/gdt/GDTATBannerAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 21
    iget-object p0, p0, Lcom/anythink/network/gdt/GDTATBannerAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic l(Lcom/anythink/network/gdt/GDTATBannerAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 21
    iget-object p0, p0, Lcom/anythink/network/gdt/GDTATBannerAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method


# virtual methods
.method public destory()V
    .registers 3

    .line 164
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATBannerAdapter;->c:Landroid/view/View;

    if-eqz v0, :cond_10

    .line 165
    instance-of v1, v0, Lcom/qq/e/ads/banner2/UnifiedBannerView;

    if-eqz v1, :cond_d

    .line 166
    check-cast v0, Lcom/qq/e/ads/banner2/UnifiedBannerView;

    invoke-virtual {v0}, Lcom/qq/e/ads/banner2/UnifiedBannerView;->destroy()V

    .line 168
    :cond_d
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anythink/network/gdt/GDTATBannerAdapter;->c:Landroid/view/View;

    .line 170
    :cond_10
    return-void
.end method

.method public getBannerView()Landroid/view/View;
    .registers 2

    .line 97
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATBannerAdapter;->c:Landroid/view/View;

    return-object v0
.end method

.method public getNetworkName()Ljava/lang/String;
    .registers 2

    .line 102
    invoke-static {}, Lcom/anythink/network/gdt/GDTATInitManager;->getInstance()Lcom/anythink/network/gdt/GDTATInitManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/network/gdt/GDTATInitManager;->getNetworkName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkPlacementId()Ljava/lang/String;
    .registers 2

    .line 174
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATBannerAdapter;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkSDKVersion()Ljava/lang/String;
    .registers 2

    .line 179
    invoke-static {}, Lcom/anythink/network/gdt/GDTATInitManager;->getInstance()Lcom/anythink/network/gdt/GDTATInitManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/network/gdt/GDTATInitManager;->getNetworkVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public loadCustomNetworkAd(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V
    .registers 9
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

    .line 107
    const-string p3, "nw_rft"

    .line 108
    nop

    .line 110
    const-string v0, "app_id"

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_16

    .line 111
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    .line 110
    :cond_16
    move-object v0, v2

    .line 113
    :goto_17
    const-string v1, "unit_id"

    invoke-interface {p2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 114
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_29

    .line 113
    :cond_28
    move-object v1, v2

    .line 116
    :goto_29
    const-string v3, "unit_version"

    invoke-interface {p2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 117
    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/anythink/network/gdt/GDTATBannerAdapter;->d:I

    .line 120
    :cond_3f
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_92

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4c

    goto :goto_92

    .line 127
    :cond_4c
    instance-of v3, p1, Landroid/app/Activity;

    if-nez v3, :cond_5c

    .line 128
    iget-object p1, p0, Lcom/anythink/network/gdt/GDTATBannerAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    if-eqz p1, :cond_5b

    .line 129
    iget-object p1, p0, Lcom/anythink/network/gdt/GDTATBannerAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    const-string p2, "Context must be activity."

    invoke-interface {p1, v2, p2}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdLoadError(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    :cond_5b
    return-void

    .line 134
    :cond_5c
    const/4 v2, 0x0

    iput v2, p0, Lcom/anythink/network/gdt/GDTATBannerAdapter;->e:I

    .line 136
    :try_start_5f
    invoke-interface {p2, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7c

    .line 137
    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    iput p3, p0, Lcom/anythink/network/gdt/GDTATBannerAdapter;->e:I

    .line 138
    int-to-float p3, p3

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr p3, v2

    float-to-int p3, p3

    iput p3, p0, Lcom/anythink/network/gdt/GDTATBannerAdapter;->e:I
    :try_end_7c
    .catchall {:try_start_5f .. :try_end_7c} :catchall_7d

    .line 142
    :cond_7c
    goto :goto_81

    .line 141
    :catchall_7d
    move-exception p3

    invoke-virtual {p3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 144
    :goto_81
    iput-object v0, p0, Lcom/anythink/network/gdt/GDTATBannerAdapter;->a:Ljava/lang/String;

    .line 145
    iput-object v1, p0, Lcom/anythink/network/gdt/GDTATBannerAdapter;->b:Ljava/lang/String;

    .line 147
    invoke-static {}, Lcom/anythink/network/gdt/GDTATInitManager;->getInstance()Lcom/anythink/network/gdt/GDTATInitManager;

    move-result-object p3

    new-instance v0, Lcom/anythink/network/gdt/GDTATBannerAdapter$2;

    invoke-direct {v0, p0, p1}, Lcom/anythink/network/gdt/GDTATBannerAdapter$2;-><init>(Lcom/anythink/network/gdt/GDTATBannerAdapter;Landroid/content/Context;)V

    invoke-virtual {p3, p1, p2, v0}, Lcom/anythink/network/gdt/GDTATInitManager;->initSDK(Landroid/content/Context;Ljava/util/Map;Lcom/anythink/network/gdt/GDTATInitManager$OnInitCallback;)V

    .line 160
    return-void

    .line 121
    :cond_92
    :goto_92
    iget-object p1, p0, Lcom/anythink/network/gdt/GDTATBannerAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    if-eqz p1, :cond_9d

    .line 122
    iget-object p1, p0, Lcom/anythink/network/gdt/GDTATBannerAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    const-string p2, "GTD appid or unitId is empty."

    invoke-interface {p1, v2, p2}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdLoadError(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    :cond_9d
    return-void
.end method
