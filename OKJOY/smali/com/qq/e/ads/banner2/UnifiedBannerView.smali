.class public Lcom/qq/e/ads/banner2/UnifiedBannerView;
.super Landroid/widget/FrameLayout;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# instance fields
.field private a:Lcom/qq/e/comm/pi/UBVI;

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Lcom/qq/e/ads/cfg/DownAPPConfirmPolicy;

.field private volatile f:I

.field private g:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/qq/e/ads/banner2/UnifiedBannerADListener;)V
    .registers 11
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "appID"    # Ljava/lang/String;
    .param p3, "posID"    # Ljava/lang/String;
    .param p4, "listener"    # Lcom/qq/e/ads/banner2/UnifiedBannerADListener;

    .prologue
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/qq/e/ads/banner2/UnifiedBannerView;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/qq/e/ads/banner2/UnifiedBannerADListener;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/qq/e/ads/banner2/UnifiedBannerADListener;Ljava/util/Map;)V
    .registers 14
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "appID"    # Ljava/lang/String;
    .param p3, "posID"    # Ljava/lang/String;
    .param p4, "listener"    # Lcom/qq/e/ads/banner2/UnifiedBannerADListener;
    .param p5, "tags"    # Ljava/util/Map;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-boolean v2, p0, Lcom/qq/e/ads/banner2/UnifiedBannerView;->b:Z

    iput-boolean v2, p0, Lcom/qq/e/ads/banner2/UnifiedBannerView;->c:Z

    iput-boolean v2, p0, Lcom/qq/e/ads/banner2/UnifiedBannerView;->d:Z

    iput v2, p0, Lcom/qq/e/ads/banner2/UnifiedBannerView;->f:I

    const/16 v0, 0x1e

    iput v0, p0, Lcom/qq/e/ads/banner2/UnifiedBannerView;->g:I

    invoke-static {p2}, Lcom/qq/e/comm/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_21

    invoke-static {p3}, Lcom/qq/e/comm/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_21

    if-eqz p1, :cond_21

    if-nez p4, :cond_38

    :cond_21
    const-string v0, "UnifiedBannerView Constructor params error, appid=%s,posId=%s,context=%s,listener=%s"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v2

    aput-object p3, v1, v3

    const/4 v2, 0x2

    aput-object p1, v1, v2

    const/4 v2, 0x3

    aput-object p4, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    :goto_37
    return-void

    :cond_38
    iput-boolean v3, p0, Lcom/qq/e/ads/banner2/UnifiedBannerView;->b:Z

    invoke-static {p1}, Lcom/qq/e/comm/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_46

    const-string v0, "Required Activity/Service/Permission Not Declared in AndroidManifest.xml"

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    goto :goto_37

    :cond_46
    iput-boolean v3, p0, Lcom/qq/e/ads/banner2/UnifiedBannerView;->c:Z

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/qq/e/ads/banner2/UnifiedBannerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v7, Lcom/qq/e/comm/managers/GDTADManager;->INIT_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/qq/e/ads/banner2/UnifiedBannerView$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/qq/e/ads/banner2/UnifiedBannerView$1;-><init>(Lcom/qq/e/ads/banner2/UnifiedBannerView;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/qq/e/ads/banner2/UnifiedBannerADListener;Ljava/util/Map;)V

    invoke-interface {v7, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_37
.end method

.method static synthetic a(Lcom/qq/e/ads/banner2/UnifiedBannerView;)Lcom/qq/e/ads/cfg/DownAPPConfirmPolicy;
    .registers 2

    iget-object v0, p0, Lcom/qq/e/ads/banner2/UnifiedBannerView;->e:Lcom/qq/e/ads/cfg/DownAPPConfirmPolicy;

    return-object v0
.end method

.method static synthetic a(Lcom/qq/e/ads/banner2/UnifiedBannerView;Lcom/qq/e/comm/pi/UBVI;)Lcom/qq/e/comm/pi/UBVI;
    .registers 2

    iput-object p1, p0, Lcom/qq/e/ads/banner2/UnifiedBannerView;->a:Lcom/qq/e/comm/pi/UBVI;

    return-object p1
.end method

.method static synthetic a(Lcom/qq/e/ads/banner2/UnifiedBannerView;Ljava/util/Map;Ljava/lang/String;)V
    .registers 6

    if-eqz p1, :cond_1a

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_1a

    :try_start_8
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-static {}, Lcom/qq/e/comm/managers/GDTADManager;->getInstance()Lcom/qq/e/comm/managers/GDTADManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qq/e/comm/managers/GDTADManager;->getSM()Lcom/qq/e/comm/managers/setting/SM;

    move-result-object v1

    const-string v2, "ad_tags"

    invoke-virtual {v1, v2, v0, p2}, Lcom/qq/e/comm/managers/setting/SM;->setDEVCodeSetting(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_1a} :catch_1b

    :cond_1a
    :goto_1a
    return-void

    :catch_1b
    move-exception v0

    const-string v1, "UnifiedBanner#setTag Exception"

    invoke-static {v1}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1a
.end method

.method static synthetic a(Lcom/qq/e/ads/banner2/UnifiedBannerView;Z)Z
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/qq/e/ads/banner2/UnifiedBannerView;->d:Z

    return v0
.end method

.method static synthetic b(Lcom/qq/e/ads/banner2/UnifiedBannerView;)I
    .registers 2

    iget v0, p0, Lcom/qq/e/ads/banner2/UnifiedBannerView;->g:I

    return v0
.end method

.method static synthetic c(Lcom/qq/e/ads/banner2/UnifiedBannerView;)I
    .registers 3

    iget v0, p0, Lcom/qq/e/ads/banner2/UnifiedBannerView;->f:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/qq/e/ads/banner2/UnifiedBannerView;->f:I

    return v0
.end method


# virtual methods
.method public destroy()V
    .registers 2

    iget-object v0, p0, Lcom/qq/e/ads/banner2/UnifiedBannerView;->a:Lcom/qq/e/comm/pi/UBVI;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/qq/e/ads/banner2/UnifiedBannerView;->a:Lcom/qq/e/comm/pi/UBVI;

    invoke-interface {v0}, Lcom/qq/e/comm/pi/UBVI;->destroy()V

    :cond_9
    return-void
.end method

.method public getExt()Ljava/util/Map;
    .registers 2

    :try_start_0
    iget-object v0, p0, Lcom/qq/e/ads/banner2/UnifiedBannerView;->a:Lcom/qq/e/comm/pi/UBVI;

    if-eqz v0, :cond_d

    sget-object v0, Lcom/qq/e/comm/pi/UBVI;->ext:Ljava/util/Map;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    :goto_6
    return-object v0

    :catch_7
    move-exception v0

    const-string v0, "banner2 can not get ext"

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    :cond_d
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public loadAD()V
    .registers 2

    iget-boolean v0, p0, Lcom/qq/e/ads/banner2/UnifiedBannerView;->b:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/qq/e/ads/banner2/UnifiedBannerView;->c:Z

    if-nez v0, :cond_e

    :cond_8
    const-string v0, "UnifiedBannerView init Paras OR Context error,See More logs while new BannerView"

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    :goto_d
    return-void

    :cond_e
    iget-boolean v0, p0, Lcom/qq/e/ads/banner2/UnifiedBannerView;->d:Z

    if-nez v0, :cond_19

    iget v0, p0, Lcom/qq/e/ads/banner2/UnifiedBannerView;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/qq/e/ads/banner2/UnifiedBannerView;->f:I

    goto :goto_d

    :cond_19
    iget-object v0, p0, Lcom/qq/e/ads/banner2/UnifiedBannerView;->a:Lcom/qq/e/comm/pi/UBVI;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/qq/e/ads/banner2/UnifiedBannerView;->a:Lcom/qq/e/comm/pi/UBVI;

    invoke-interface {v0}, Lcom/qq/e/comm/pi/UBVI;->fetchAd()V

    goto :goto_d

    :cond_23
    const-string v0, "UnifiedBannerView Init error,See More Logs"

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    goto :goto_d
.end method

.method public onWindowFocusChanged(Z)V
    .registers 3
    .param p1, "hasWindowFocus"    # Z

    .prologue
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    iget-object v0, p0, Lcom/qq/e/ads/banner2/UnifiedBannerView;->a:Lcom/qq/e/comm/pi/UBVI;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/qq/e/ads/banner2/UnifiedBannerView;->a:Lcom/qq/e/comm/pi/UBVI;

    invoke-interface {v0, p1}, Lcom/qq/e/comm/pi/UBVI;->onWindowFocusChanged(Z)V

    :cond_c
    return-void
.end method

.method public setDownConfirmPolicy(Lcom/qq/e/ads/cfg/DownAPPConfirmPolicy;)V
    .registers 3
    .param p1, "policy"    # Lcom/qq/e/ads/cfg/DownAPPConfirmPolicy;

    .prologue
    iput-object p1, p0, Lcom/qq/e/ads/banner2/UnifiedBannerView;->e:Lcom/qq/e/ads/cfg/DownAPPConfirmPolicy;

    if-eqz p1, :cond_d

    iget-object v0, p0, Lcom/qq/e/ads/banner2/UnifiedBannerView;->a:Lcom/qq/e/comm/pi/UBVI;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/qq/e/ads/banner2/UnifiedBannerView;->a:Lcom/qq/e/comm/pi/UBVI;

    invoke-interface {v0, p1}, Lcom/qq/e/comm/pi/UBVI;->setDownAPPConfirmPolicy(Lcom/qq/e/ads/cfg/DownAPPConfirmPolicy;)V

    :cond_d
    return-void
.end method

.method public setRefresh(I)V
    .registers 3
    .param p1, "refresh"    # I

    .prologue
    iput p1, p0, Lcom/qq/e/ads/banner2/UnifiedBannerView;->g:I

    iget-object v0, p0, Lcom/qq/e/ads/banner2/UnifiedBannerView;->a:Lcom/qq/e/comm/pi/UBVI;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/qq/e/ads/banner2/UnifiedBannerView;->a:Lcom/qq/e/comm/pi/UBVI;

    invoke-interface {v0, p1}, Lcom/qq/e/comm/pi/UBVI;->setRefresh(I)V

    :cond_b
    return-void
.end method
