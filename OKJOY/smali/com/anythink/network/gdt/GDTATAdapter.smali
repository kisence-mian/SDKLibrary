.class public Lcom/anythink/network/gdt/GDTATAdapter;
.super Lcom/anythink/nativead/unitgroup/api/CustomNativeAdapter;


# static fields
.field private static final h:Ljava/lang/String;


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:I

.field d:Lcom/anythink/nativead/unitgroup/api/CustomNativeListener;

.field e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/qq/e/ads/nativ/NativeExpressADView;",
            "Lcom/anythink/network/gdt/GDTATNativeAd;",
            ">;"
        }
    .end annotation
.end field

.field f:I

.field g:I

.field private i:Lcom/qq/e/ads/nativ/NativeMediaAD;

.field private j:Lcom/qq/e/ads/nativ/NativeUnifiedAD;

.field private k:Lcom/qq/e/ads/nativ/NativeExpressAD;

.field private l:I

.field private m:I

.field private n:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private o:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 32
    const-class v0, Lcom/anythink/network/gdt/GDTATAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/anythink/network/gdt/GDTATAdapter;->h:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAdapter;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anythink/network/gdt/GDTATAdapter;->e:Ljava/util/Map;

    .line 48
    const/4 v0, -0x1

    iput v0, p0, Lcom/anythink/network/gdt/GDTATAdapter;->l:I

    const/4 v0, -0x2

    iput v0, p0, Lcom/anythink/network/gdt/GDTATAdapter;->m:I

    .line 52
    const/4 v0, 0x3

    iput v0, p0, Lcom/anythink/network/gdt/GDTATAdapter;->f:I

    .line 54
    const/4 v0, 0x2

    iput v0, p0, Lcom/anythink/network/gdt/GDTATAdapter;->g:I

    return-void
.end method

.method static synthetic a(Lcom/anythink/network/gdt/GDTATAdapter;)Ljava/util/Map;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATAdapter;->o:Ljava/util/Map;

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .registers 6

    .prologue
    .line 152
    new-instance v0, Lcom/qq/e/ads/nativ/NativeUnifiedAD;

    iget-object v1, p0, Lcom/anythink/network/gdt/GDTATAdapter;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/anythink/network/gdt/GDTATAdapter;->a:Ljava/lang/String;

    new-instance v3, Lcom/anythink/network/gdt/GDTATAdapter$1;

    invoke-direct {v3, p0, p1}, Lcom/anythink/network/gdt/GDTATAdapter$1;-><init>(Lcom/anythink/network/gdt/GDTATAdapter;Landroid/content/Context;)V

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/qq/e/ads/nativ/NativeUnifiedAD;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/qq/e/ads/nativ/NativeADUnifiedListener;)V

    iput-object v0, p0, Lcom/anythink/network/gdt/GDTATAdapter;->j:Lcom/qq/e/ads/nativ/NativeUnifiedAD;

    .line 178
    return-void
.end method

.method private b(Landroid/content/Context;)V
    .registers 8

    .prologue
    .line 184
    new-instance v0, Ljava/util/HashMap;

    iget v1, p0, Lcom/anythink/network/gdt/GDTATAdapter;->c:I

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/anythink/network/gdt/GDTATAdapter;->e:Ljava/util/Map;

    .line 185
    new-instance v5, Lcom/anythink/network/gdt/GDTATAdapter$2;

    invoke-direct {v5, p0, p1}, Lcom/anythink/network/gdt/GDTATAdapter$2;-><init>(Lcom/anythink/network/gdt/GDTATAdapter;Landroid/content/Context;)V

    .line 259
    new-instance v0, Lcom/qq/e/ads/nativ/NativeExpressAD;

    new-instance v2, Lcom/qq/e/ads/nativ/ADSize;

    iget v1, p0, Lcom/anythink/network/gdt/GDTATAdapter;->l:I

    iget v3, p0, Lcom/anythink/network/gdt/GDTATAdapter;->m:I

    invoke-direct {v2, v1, v3}, Lcom/qq/e/ads/nativ/ADSize;-><init>(II)V

    iget-object v3, p0, Lcom/anythink/network/gdt/GDTATAdapter;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/anythink/network/gdt/GDTATAdapter;->a:Ljava/lang/String;

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/qq/e/ads/nativ/NativeExpressAD;-><init>(Landroid/content/Context;Lcom/qq/e/ads/nativ/ADSize;Ljava/lang/String;Ljava/lang/String;Lcom/qq/e/ads/nativ/NativeExpressAD$NativeExpressADListener;)V

    iput-object v0, p0, Lcom/anythink/network/gdt/GDTATAdapter;->k:Lcom/qq/e/ads/nativ/NativeExpressAD;

    .line 260
    return-void
.end method

.method private c(Landroid/content/Context;)V
    .registers 6

    .prologue
    .line 267
    new-instance v0, Lcom/anythink/network/gdt/GDTATAdapter$3;

    invoke-direct {v0, p0, p1}, Lcom/anythink/network/gdt/GDTATAdapter$3;-><init>(Lcom/anythink/network/gdt/GDTATAdapter;Landroid/content/Context;)V

    .line 335
    new-instance v1, Lcom/qq/e/ads/nativ/NativeMediaAD;

    iget-object v2, p0, Lcom/anythink/network/gdt/GDTATAdapter;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/anythink/network/gdt/GDTATAdapter;->a:Ljava/lang/String;

    invoke-direct {v1, p1, v2, v3, v0}, Lcom/qq/e/ads/nativ/NativeMediaAD;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/qq/e/ads/nativ/NativeMediaAD$NativeMediaADListener;)V

    iput-object v1, p0, Lcom/anythink/network/gdt/GDTATAdapter;->i:Lcom/qq/e/ads/nativ/NativeMediaAD;

    .line 336
    return-void
.end method


# virtual methods
.method public clean()V
    .registers 1

    .prologue
    .line 389
    return-void
.end method

.method public getNetworkName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 393
    invoke-static {}, Lcom/anythink/network/gdt/GDTATInitManager;->getInstance()Lcom/anythink/network/gdt/GDTATInitManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/network/gdt/GDTATInitManager;->getNetworkName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSDKVersion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 383
    invoke-static {}, Lcom/anythink/network/gdt/GDTATConst;->getNetworkVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public loadAd()V
    .registers 6

    .prologue
    .line 341
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATAdapter;->i:Lcom/qq/e/ads/nativ/NativeMediaAD;

    if-eqz v0, :cond_b

    .line 344
    :try_start_4
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATAdapter;->i:Lcom/qq/e/ads/nativ/NativeMediaAD;

    iget v1, p0, Lcom/anythink/network/gdt/GDTATAdapter;->c:I

    invoke-virtual {v0, v1}, Lcom/qq/e/ads/nativ/NativeMediaAD;->loadAD(I)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_b} :catch_39

    .line 354
    :cond_b
    :goto_b
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATAdapter;->k:Lcom/qq/e/ads/nativ/NativeExpressAD;

    if-eqz v0, :cond_2d

    .line 356
    :try_start_f
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATAdapter;->k:Lcom/qq/e/ads/nativ/NativeExpressAD;

    new-instance v1, Lcom/qq/e/ads/cfg/VideoOption$Builder;

    invoke-direct {v1}, Lcom/qq/e/ads/cfg/VideoOption$Builder;-><init>()V

    const/4 v2, 0x1

    .line 357
    invoke-virtual {v1, v2}, Lcom/qq/e/ads/cfg/VideoOption$Builder;->setAutoPlayPolicy(I)Lcom/qq/e/ads/cfg/VideoOption$Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 358
    invoke-virtual {v1, v2}, Lcom/qq/e/ads/cfg/VideoOption$Builder;->setAutoPlayMuted(Z)Lcom/qq/e/ads/cfg/VideoOption$Builder;

    move-result-object v1

    .line 359
    invoke-virtual {v1}, Lcom/qq/e/ads/cfg/VideoOption$Builder;->build()Lcom/qq/e/ads/cfg/VideoOption;

    move-result-object v1

    .line 356
    invoke-virtual {v0, v1}, Lcom/qq/e/ads/nativ/NativeExpressAD;->setVideoOption(Lcom/qq/e/ads/cfg/VideoOption;)V

    .line 361
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATAdapter;->k:Lcom/qq/e/ads/nativ/NativeExpressAD;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/qq/e/ads/nativ/NativeExpressAD;->loadAD(I)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_2d} :catch_5e

    .line 369
    :cond_2d
    :goto_2d
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATAdapter;->j:Lcom/qq/e/ads/nativ/NativeUnifiedAD;

    if-eqz v0, :cond_38

    .line 371
    :try_start_31
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATAdapter;->j:Lcom/qq/e/ads/nativ/NativeUnifiedAD;

    iget v1, p0, Lcom/anythink/network/gdt/GDTATAdapter;->c:I

    invoke-virtual {v0, v1}, Lcom/qq/e/ads/nativ/NativeUnifiedAD;->loadData(I)V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_38} :catch_83

    .line 378
    :cond_38
    :goto_38
    return-void

    .line 345
    :catch_39
    move-exception v0

    .line 346
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 347
    const-string v1, "4001"

    const-string v2, ""

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "GDT ad load error!."

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v0

    .line 348
    iget-object v1, p0, Lcom/anythink/network/gdt/GDTATAdapter;->d:Lcom/anythink/nativead/unitgroup/api/CustomNativeListener;

    invoke-interface {v1, p0, v0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeListener;->onNativeAdFailed(Lcom/anythink/nativead/unitgroup/api/CustomNativeAdapter;Lcom/anythink/core/api/AdError;)V

    goto :goto_b

    .line 362
    :catch_5e
    move-exception v0

    .line 363
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 364
    const-string v1, "4001"

    const-string v2, ""

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "GDT ad load error!."

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v0

    .line 365
    iget-object v1, p0, Lcom/anythink/network/gdt/GDTATAdapter;->d:Lcom/anythink/nativead/unitgroup/api/CustomNativeListener;

    invoke-interface {v1, p0, v0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeListener;->onNativeAdFailed(Lcom/anythink/nativead/unitgroup/api/CustomNativeAdapter;Lcom/anythink/core/api/AdError;)V

    goto :goto_2d

    .line 372
    :catch_83
    move-exception v0

    .line 373
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 374
    const-string v1, "4001"

    const-string v2, ""

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "GDT ad load error!."

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v0

    .line 375
    iget-object v1, p0, Lcom/anythink/network/gdt/GDTATAdapter;->d:Lcom/anythink/nativead/unitgroup/api/CustomNativeListener;

    invoke-interface {v1, p0, v0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeListener;->onNativeAdFailed(Lcom/anythink/nativead/unitgroup/api/CustomNativeAdapter;Lcom/anythink/core/api/AdError;)V

    goto :goto_38
.end method

.method public loadNativeAd(Landroid/content/Context;Lcom/anythink/nativead/unitgroup/api/CustomNativeListener;Ljava/util/Map;Ljava/util/Map;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/anythink/nativead/unitgroup/api/CustomNativeListener;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x2

    const/4 v3, 0x1

    .line 58
    const-string v0, ""

    .line 59
    const-string v1, ""

    .line 60
    iput-object p3, p0, Lcom/anythink/network/gdt/GDTATAdapter;->n:Ljava/util/Map;

    .line 61
    iput-object p4, p0, Lcom/anythink/network/gdt/GDTATAdapter;->o:Ljava/util/Map;

    .line 63
    iput-object p2, p0, Lcom/anythink/network/gdt/GDTATAdapter;->d:Lcom/anythink/nativead/unitgroup/api/CustomNativeListener;

    .line 64
    const-string v2, "app_id"

    invoke-interface {p3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 65
    const-string v0, "app_id"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 67
    :cond_1e
    const-string v2, "unit_id"

    invoke-interface {p3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 68
    const-string v1, "unit_id"

    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 71
    :cond_30
    const-string v2, "unit_version"

    invoke-interface {p3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_48

    .line 72
    const-string v2, "unit_version"

    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/anythink/network/gdt/GDTATAdapter;->g:I

    .line 75
    :cond_48
    const/4 v2, 0x0

    .line 76
    const-string v4, "unit_type"

    invoke-interface {p3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_65

    .line 77
    const-string v2, "unit_type"

    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 78
    if-ne v2, v3, :cond_81

    .line 79
    const/4 v2, 0x3

    iput v2, p0, Lcom/anythink/network/gdt/GDTATAdapter;->f:I

    :cond_64
    :goto_64
    move v2, v3

    .line 86
    :cond_65
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_71

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_86

    .line 87
    :cond_71
    if-eqz p2, :cond_80

    .line 88
    const-string v0, "4001"

    const-string v1, ""

    const-string v2, "GTD appid or unitId is empty."

    invoke-static {v0, v1, v2}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v0

    .line 89
    invoke-interface {p2, p0, v0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeListener;->onNativeAdFailed(Lcom/anythink/nativead/unitgroup/api/CustomNativeAdapter;Lcom/anythink/core/api/AdError;)V

    .line 146
    :cond_80
    :goto_80
    return-void

    .line 80
    :cond_81
    if-ne v2, v5, :cond_64

    .line 81
    iput v3, p0, Lcom/anythink/network/gdt/GDTATAdapter;->f:I

    goto :goto_64

    .line 97
    :cond_86
    if-eqz p3, :cond_9e

    :try_start_88
    sget-object v4, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->AD_REQUEST_NUM:Ljava/lang/String;

    invoke-interface {p3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9e

    .line 98
    sget-object v4, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->AD_REQUEST_NUM:Ljava/lang/String;

    invoke-interface {p3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_9d
    .catch Ljava/lang/Exception; {:try_start_88 .. :try_end_9d} :catch_11b

    move-result v3

    .line 104
    :cond_9e
    :goto_9e
    iput v3, p0, Lcom/anythink/network/gdt/GDTATAdapter;->c:I

    .line 106
    iput-object v0, p0, Lcom/anythink/network/gdt/GDTATAdapter;->b:Ljava/lang/String;

    .line 107
    iput-object v1, p0, Lcom/anythink/network/gdt/GDTATAdapter;->a:Ljava/lang/String;

    .line 112
    if-nez v2, :cond_be

    .line 113
    :try_start_a6
    const-string v0, "gdtadtype"

    invoke-interface {p4, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_be

    .line 114
    const-string v0, "gdtadtype"

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/anythink/network/gdt/GDTATAdapter;->f:I

    .line 118
    :cond_be
    const-string v0, "gdtad_width"

    invoke-interface {p4, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d6

    .line 119
    const-string v0, "gdtad_width"

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/anythink/network/gdt/GDTATAdapter;->l:I

    .line 122
    :cond_d6
    const-string v0, "gdtad_height"

    invoke-interface {p4, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ee

    .line 123
    const-string v0, "gdtad_height"

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/anythink/network/gdt/GDTATAdapter;->m:I
    :try_end_ee
    .catch Ljava/lang/Exception; {:try_start_a6 .. :try_end_ee} :catch_121

    .line 130
    :cond_ee
    :goto_ee
    iget v0, p0, Lcom/anythink/network/gdt/GDTATAdapter;->f:I

    packed-switch v0, :pswitch_data_14c

    .line 2184
    new-instance v0, Ljava/util/HashMap;

    iget v1, p0, Lcom/anythink/network/gdt/GDTATAdapter;->c:I

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/anythink/network/gdt/GDTATAdapter;->e:Ljava/util/Map;

    .line 2185
    new-instance v5, Lcom/anythink/network/gdt/GDTATAdapter$2;

    invoke-direct {v5, p0, p1}, Lcom/anythink/network/gdt/GDTATAdapter$2;-><init>(Lcom/anythink/network/gdt/GDTATAdapter;Landroid/content/Context;)V

    .line 2259
    new-instance v0, Lcom/qq/e/ads/nativ/NativeExpressAD;

    new-instance v2, Lcom/qq/e/ads/nativ/ADSize;

    iget v1, p0, Lcom/anythink/network/gdt/GDTATAdapter;->l:I

    iget v3, p0, Lcom/anythink/network/gdt/GDTATAdapter;->m:I

    invoke-direct {v2, v1, v3}, Lcom/qq/e/ads/nativ/ADSize;-><init>(II)V

    iget-object v3, p0, Lcom/anythink/network/gdt/GDTATAdapter;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/anythink/network/gdt/GDTATAdapter;->a:Ljava/lang/String;

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/qq/e/ads/nativ/NativeExpressAD;-><init>(Landroid/content/Context;Lcom/qq/e/ads/nativ/ADSize;Ljava/lang/String;Ljava/lang/String;Lcom/qq/e/ads/nativ/NativeExpressAD$NativeExpressADListener;)V

    iput-object v0, p0, Lcom/anythink/network/gdt/GDTATAdapter;->k:Lcom/qq/e/ads/nativ/NativeExpressAD;

    .line 145
    :goto_116
    invoke-virtual {p0}, Lcom/anythink/network/gdt/GDTATAdapter;->loadAd()V

    goto/16 :goto_80

    .line 101
    :catch_11b
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_9e

    .line 126
    :catch_121
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_ee

    .line 133
    :pswitch_126
    iget v0, p0, Lcom/anythink/network/gdt/GDTATAdapter;->g:I

    if-eq v0, v5, :cond_13b

    .line 1267
    new-instance v0, Lcom/anythink/network/gdt/GDTATAdapter$3;

    invoke-direct {v0, p0, p1}, Lcom/anythink/network/gdt/GDTATAdapter$3;-><init>(Lcom/anythink/network/gdt/GDTATAdapter;Landroid/content/Context;)V

    .line 1335
    new-instance v1, Lcom/qq/e/ads/nativ/NativeMediaAD;

    iget-object v2, p0, Lcom/anythink/network/gdt/GDTATAdapter;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/anythink/network/gdt/GDTATAdapter;->a:Ljava/lang/String;

    invoke-direct {v1, p1, v2, v3, v0}, Lcom/qq/e/ads/nativ/NativeMediaAD;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/qq/e/ads/nativ/NativeMediaAD$NativeMediaADListener;)V

    iput-object v1, p0, Lcom/anythink/network/gdt/GDTATAdapter;->i:Lcom/qq/e/ads/nativ/NativeMediaAD;

    goto :goto_116

    .line 2152
    :cond_13b
    new-instance v0, Lcom/qq/e/ads/nativ/NativeUnifiedAD;

    iget-object v1, p0, Lcom/anythink/network/gdt/GDTATAdapter;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/anythink/network/gdt/GDTATAdapter;->a:Ljava/lang/String;

    new-instance v3, Lcom/anythink/network/gdt/GDTATAdapter$1;

    invoke-direct {v3, p0, p1}, Lcom/anythink/network/gdt/GDTATAdapter$1;-><init>(Lcom/anythink/network/gdt/GDTATAdapter;Landroid/content/Context;)V

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/qq/e/ads/nativ/NativeUnifiedAD;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/qq/e/ads/nativ/NativeADUnifiedListener;)V

    iput-object v0, p0, Lcom/anythink/network/gdt/GDTATAdapter;->j:Lcom/qq/e/ads/nativ/NativeUnifiedAD;

    goto :goto_116

    .line 130
    :pswitch_data_14c
    .packed-switch 0x1
        :pswitch_126
        :pswitch_126
    .end packed-switch
.end method
