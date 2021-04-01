.class public Lcom/anythink/network/gdt/GDTATBannerAdapter;
.super Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Lcom/anythink/banner/unitgroup/api/CustomBannerListener;

.field d:Landroid/view/View;

.field e:I

.field f:I

.field private final g:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;-><init>()V

    .line 23
    const-class v0, Lcom/anythink/network/gdt/GDTATBannerAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/network/gdt/GDTATBannerAdapter;->g:Ljava/lang/String;

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/anythink/network/gdt/GDTATBannerAdapter;->e:I

    return-void
.end method

.method static synthetic a(Lcom/anythink/network/gdt/GDTATBannerAdapter;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 22
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATBannerAdapter;->g:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/anythink/network/gdt/GDTATBannerAdapter;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 22
    invoke-virtual {p0, p1, p2}, Lcom/anythink/network/gdt/GDTATBannerAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/anythink/network/gdt/GDTATBannerAdapter;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 22
    invoke-virtual {p0, p1, p2}, Lcom/anythink/network/gdt/GDTATBannerAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lcom/anythink/network/gdt/GDTATBannerAdapter;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 22
    invoke-virtual {p0, p1, p2}, Lcom/anythink/network/gdt/GDTATBannerAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public clean()V
    .registers 2

    .prologue
    .line 213
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anythink/network/gdt/GDTATBannerAdapter;->d:Landroid/view/View;

    .line 214
    return-void
.end method

.method public getBannerView()Landroid/view/View;
    .registers 2

    .prologue
    .line 208
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATBannerAdapter;->d:Landroid/view/View;

    return-object v0
.end method

.method public getNetworkName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 223
    invoke-static {}, Lcom/anythink/network/gdt/GDTATInitManager;->getInstance()Lcom/anythink/network/gdt/GDTATInitManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/network/gdt/GDTATInitManager;->getNetworkName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSDKVersion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 218
    invoke-static {}, Lcom/anythink/network/gdt/GDTATConst;->getNetworkVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public loadBannerAd(Lcom/anythink/banner/api/ATBannerView;Landroid/content/Context;Ljava/util/Map;Lcom/anythink/core/api/ATMediationSetting;Lcom/anythink/banner/unitgroup/api/CustomBannerListener;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/anythink/banner/api/ATBannerView;",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/anythink/core/api/ATMediationSetting;",
            "Lcom/anythink/banner/unitgroup/api/CustomBannerListener;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 37
    const-string v0, ""

    .line 38
    const-string v2, ""

    .line 40
    iput-object p5, p0, Lcom/anythink/network/gdt/GDTATBannerAdapter;->c:Lcom/anythink/banner/unitgroup/api/CustomBannerListener;

    .line 41
    const-string v1, "app_id"

    invoke-interface {p3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_fa

    .line 42
    const-string v0, "app_id"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 44
    :goto_1a
    const-string v0, "unit_id"

    invoke-interface {p3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 45
    const-string v0, "unit_id"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 47
    :cond_2d
    const-string v0, "unit_version"

    invoke-interface {p3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 48
    const-string v0, "unit_version"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/anythink/network/gdt/GDTATBannerAdapter;->e:I

    .line 51
    :cond_45
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_51

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_65

    .line 52
    :cond_51
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATBannerAdapter;->c:Lcom/anythink/banner/unitgroup/api/CustomBannerListener;

    if-eqz v0, :cond_64

    .line 53
    const-string v0, "4001"

    const-string v1, ""

    const-string v2, "GTD appid or unitId is empty."

    invoke-static {v0, v1, v2}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v0

    .line 54
    iget-object v1, p0, Lcom/anythink/network/gdt/GDTATBannerAdapter;->c:Lcom/anythink/banner/unitgroup/api/CustomBannerListener;

    invoke-interface {v1, p0, v0}, Lcom/anythink/banner/unitgroup/api/CustomBannerListener;->onBannerAdLoadFail(Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;Lcom/anythink/core/api/AdError;)V

    .line 204
    :cond_64
    :goto_64
    return-void

    .line 59
    :cond_65
    instance-of v0, p2, Landroid/app/Activity;

    if-nez v0, :cond_7d

    .line 60
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATBannerAdapter;->c:Lcom/anythink/banner/unitgroup/api/CustomBannerListener;

    if-eqz v0, :cond_64

    .line 61
    const-string v0, "4001"

    const-string v1, ""

    const-string v2, "Context must be activity."

    invoke-static {v0, v1, v2}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v0

    .line 62
    iget-object v1, p0, Lcom/anythink/network/gdt/GDTATBannerAdapter;->c:Lcom/anythink/banner/unitgroup/api/CustomBannerListener;

    invoke-interface {v1, p0, v0}, Lcom/anythink/banner/unitgroup/api/CustomBannerListener;->onBannerAdLoadFail(Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;Lcom/anythink/core/api/AdError;)V

    goto :goto_64

    .line 67
    :cond_7d
    iput v4, p0, Lcom/anythink/network/gdt/GDTATBannerAdapter;->f:I

    .line 69
    :try_start_7f
    const-string v0, "nw_rft"

    invoke-interface {p3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a2

    .line 70
    const-string v0, "nw_rft"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/anythink/network/gdt/GDTATBannerAdapter;->f:I

    .line 71
    iget v0, p0, Lcom/anythink/network/gdt/GDTATBannerAdapter;->f:I

    int-to-float v0, v0

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, p0, Lcom/anythink/network/gdt/GDTATBannerAdapter;->f:I
    :try_end_a2
    .catch Ljava/lang/Throwable; {:try_start_7f .. :try_end_a2} :catch_cd

    .line 78
    :cond_a2
    :goto_a2
    iput-object v1, p0, Lcom/anythink/network/gdt/GDTATBannerAdapter;->a:Ljava/lang/String;

    .line 79
    iput-object v2, p0, Lcom/anythink/network/gdt/GDTATBannerAdapter;->b:Ljava/lang/String;

    .line 82
    iget v0, p0, Lcom/anythink/network/gdt/GDTATBannerAdapter;->e:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_d6

    .line 83
    new-instance v0, Lcom/qq/e/ads/banner/BannerView;

    check-cast p2, Landroid/app/Activity;

    sget-object v1, Lcom/qq/e/ads/banner/ADSize;->BANNER:Lcom/qq/e/ads/banner/ADSize;

    iget-object v2, p0, Lcom/anythink/network/gdt/GDTATBannerAdapter;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/anythink/network/gdt/GDTATBannerAdapter;->b:Ljava/lang/String;

    invoke-direct {v0, p2, v1, v2, v3}, Lcom/qq/e/ads/banner/BannerView;-><init>(Landroid/app/Activity;Lcom/qq/e/ads/banner/ADSize;Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    iget v1, p0, Lcom/anythink/network/gdt/GDTATBannerAdapter;->f:I

    if-lez v1, :cond_d2

    .line 85
    iget v1, p0, Lcom/anythink/network/gdt/GDTATBannerAdapter;->f:I

    invoke-virtual {v0, v1}, Lcom/qq/e/ads/banner/BannerView;->setRefresh(I)V

    .line 89
    :goto_c1
    new-instance v1, Lcom/anythink/network/gdt/GDTATBannerAdapter$1;

    invoke-direct {v1, p0, v0}, Lcom/anythink/network/gdt/GDTATBannerAdapter$1;-><init>(Lcom/anythink/network/gdt/GDTATBannerAdapter;Lcom/qq/e/ads/banner/BannerView;)V

    invoke-virtual {v0, v1}, Lcom/qq/e/ads/banner/BannerView;->setADListener(Lcom/qq/e/ads/banner/BannerADListener;)V

    .line 141
    invoke-virtual {v0}, Lcom/qq/e/ads/banner/BannerView;->loadAD()V

    goto :goto_64

    .line 74
    :catch_cd
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_a2

    .line 87
    :cond_d2
    invoke-virtual {v0, v4}, Lcom/qq/e/ads/banner/BannerView;->setRefresh(I)V

    goto :goto_c1

    .line 143
    :cond_d6
    new-instance v0, Lcom/qq/e/ads/banner2/UnifiedBannerView;

    check-cast p2, Landroid/app/Activity;

    iget-object v1, p0, Lcom/anythink/network/gdt/GDTATBannerAdapter;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/anythink/network/gdt/GDTATBannerAdapter;->b:Ljava/lang/String;

    new-instance v3, Lcom/anythink/network/gdt/GDTATBannerAdapter$2;

    invoke-direct {v3, p0}, Lcom/anythink/network/gdt/GDTATBannerAdapter$2;-><init>(Lcom/anythink/network/gdt/GDTATBannerAdapter;)V

    invoke-direct {v0, p2, v1, v2, v3}, Lcom/qq/e/ads/banner2/UnifiedBannerView;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/qq/e/ads/banner2/UnifiedBannerADListener;)V

    .line 195
    iget v1, p0, Lcom/anythink/network/gdt/GDTATBannerAdapter;->f:I

    if-lez v1, :cond_f6

    .line 196
    iget v1, p0, Lcom/anythink/network/gdt/GDTATBannerAdapter;->f:I

    invoke-virtual {v0, v1}, Lcom/qq/e/ads/banner2/UnifiedBannerView;->setRefresh(I)V

    .line 200
    :goto_ef
    iput-object v0, p0, Lcom/anythink/network/gdt/GDTATBannerAdapter;->d:Landroid/view/View;

    .line 201
    invoke-virtual {v0}, Lcom/qq/e/ads/banner2/UnifiedBannerView;->loadAD()V

    goto/16 :goto_64

    .line 198
    :cond_f6
    invoke-virtual {v0, v4}, Lcom/qq/e/ads/banner2/UnifiedBannerView;->setRefresh(I)V

    goto :goto_ef

    :cond_fa
    move-object v1, v0

    goto/16 :goto_1a
.end method
