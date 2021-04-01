.class public final Lcom/qq/e/ads/splash/SplashAD;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qq/e/ads/splash/SplashAD$ADListenerAdapter;
    }
.end annotation


# instance fields
.field private volatile a:Lcom/qq/e/comm/pi/NSPVI;

.field private volatile b:Landroid/view/ViewGroup;

.field private volatile c:Lcom/qq/e/ads/splash/SplashADListener;

.field private volatile d:Lcom/qq/e/comm/constants/LoadAdParams;

.field private volatile e:Z

.field private volatile f:Z

.field private g:I

.field private h:I

.field private volatile i:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Lcom/qq/e/ads/splash/SplashADListener;I)V
    .registers 15
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "skipView"    # Landroid/view/View;
    .param p3, "appId"    # Ljava/lang/String;
    .param p4, "posId"    # Ljava/lang/String;
    .param p5, "adListener"    # Lcom/qq/e/ads/splash/SplashADListener;
    .param p6, "fetchDelay"    # I

    .prologue
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/qq/e/ads/splash/SplashAD;-><init>(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Lcom/qq/e/ads/splash/SplashADListener;ILandroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Lcom/qq/e/ads/splash/SplashADListener;ILandroid/view/View;)V
    .registers 17
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "skipView"    # Landroid/view/View;
    .param p3, "appId"    # Ljava/lang/String;
    .param p4, "posId"    # Ljava/lang/String;
    .param p5, "adListener"    # Lcom/qq/e/ads/splash/SplashADListener;
    .param p6, "fetchDelay"    # I
    .param p7, "floatView"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/qq/e/ads/splash/SplashAD;-><init>(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Lcom/qq/e/ads/splash/SplashADListener;ILjava/util/Map;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Lcom/qq/e/ads/splash/SplashADListener;ILjava/util/Map;Landroid/view/View;)V
    .registers 21
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "skipView"    # Landroid/view/View;
    .param p3, "appId"    # Ljava/lang/String;
    .param p4, "posId"    # Ljava/lang/String;
    .param p5, "adListener"    # Lcom/qq/e/ads/splash/SplashADListener;
    .param p6, "fetchDelay"    # I
    .param p7, "tags"    # Ljava/util/Map;
    .param p8, "floatView"    # Landroid/view/View;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/qq/e/ads/splash/SplashAD;->e:Z

    move-object/from16 v0, p5

    iput-object v0, p0, Lcom/qq/e/ads/splash/SplashAD;->c:Lcom/qq/e/ads/splash/SplashADListener;

    invoke-static {p3}, Lcom/qq/e/comm/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_18

    invoke-static/range {p4 .. p4}, Lcom/qq/e/comm/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_18

    if-nez p1, :cond_35

    :cond_18
    const-string v1, "SplashAD Constructor params error, appid=%s,posId=%s,context=%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p3, v2, v3

    const/4 v3, 0x1

    aput-object p4, v2, v3

    const/4 v3, 0x2

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    const/16 v1, 0x7d1

    move-object/from16 v0, p5

    invoke-static {v0, v1}, Lcom/qq/e/ads/splash/SplashAD;->a(Lcom/qq/e/ads/splash/SplashADListener;I)V

    :goto_34
    return-void

    :cond_35
    invoke-static {p1}, Lcom/qq/e/comm/a;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_48

    const-string v1, "Required Activity/Service/Permission Not Declared in AndroidManifest.xml"

    invoke-static {v1}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    const/16 v1, 0xfa2

    move-object/from16 v0, p5

    invoke-static {v0, v1}, Lcom/qq/e/ads/splash/SplashAD;->a(Lcom/qq/e/ads/splash/SplashADListener;I)V

    goto :goto_34

    :cond_48
    sget-object v11, Lcom/qq/e/comm/managers/GDTADManager;->INIT_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/qq/e/ads/splash/SplashAD$1;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p7

    move/from16 v7, p6

    move-object v8, p2

    move-object/from16 v9, p8

    move-object/from16 v10, p5

    invoke-direct/range {v1 .. v10}, Lcom/qq/e/ads/splash/SplashAD$1;-><init>(Lcom/qq/e/ads/splash/SplashAD;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ILandroid/view/View;Landroid/view/View;Lcom/qq/e/ads/splash/SplashADListener;)V

    invoke-interface {v11, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_34
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/qq/e/ads/splash/SplashADListener;)V
    .registers 11
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "appId"    # Ljava/lang/String;
    .param p3, "posId"    # Ljava/lang/String;
    .param p4, "adListener"    # Lcom/qq/e/ads/splash/SplashADListener;

    .prologue
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/qq/e/ads/splash/SplashAD;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/qq/e/ads/splash/SplashADListener;I)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/qq/e/ads/splash/SplashADListener;I)V
    .registers 13
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "appId"    # Ljava/lang/String;
    .param p3, "posId"    # Ljava/lang/String;
    .param p4, "adListener"    # Lcom/qq/e/ads/splash/SplashADListener;
    .param p5, "fetchDelay"    # I

    .prologue
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/qq/e/ads/splash/SplashAD;-><init>(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Lcom/qq/e/ads/splash/SplashADListener;I)V

    return-void
.end method

.method static synthetic a(Lcom/qq/e/ads/splash/SplashAD;)Lcom/qq/e/comm/pi/NSPVI;
    .registers 2

    iget-object v0, p0, Lcom/qq/e/ads/splash/SplashAD;->a:Lcom/qq/e/comm/pi/NSPVI;

    return-object v0
.end method

.method static synthetic a(Lcom/qq/e/ads/splash/SplashAD;Lcom/qq/e/comm/pi/NSPVI;)Lcom/qq/e/comm/pi/NSPVI;
    .registers 2

    iput-object p1, p0, Lcom/qq/e/ads/splash/SplashAD;->a:Lcom/qq/e/comm/pi/NSPVI;

    return-object p1
.end method

.method static synthetic a(Lcom/qq/e/ads/splash/SplashAD;Lcom/qq/e/ads/splash/SplashADListener;I)V
    .registers 3

    invoke-static {p1, p2}, Lcom/qq/e/ads/splash/SplashAD;->a(Lcom/qq/e/ads/splash/SplashADListener;I)V

    return-void
.end method

.method static synthetic a(Lcom/qq/e/ads/splash/SplashAD;Ljava/util/Map;Ljava/lang/String;)V
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

    const-string v1, "SplashAD#setTag Exception"

    invoke-static {v1}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1a
.end method

.method private static a(Lcom/qq/e/ads/splash/SplashADListener;I)V
    .registers 3

    if-eqz p0, :cond_9

    invoke-static {p1}, Lcom/qq/e/comm/a;->a(I)Lcom/qq/e/comm/util/AdError;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/qq/e/ads/splash/SplashADListener;->onNoAD(Lcom/qq/e/comm/util/AdError;)V

    :cond_9
    return-void
.end method

.method static synthetic a(Lcom/qq/e/ads/splash/SplashAD;Z)Z
    .registers 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qq/e/ads/splash/SplashAD;->e:Z

    return v0
.end method

.method static synthetic b(Lcom/qq/e/ads/splash/SplashAD;)Lcom/qq/e/comm/constants/LoadAdParams;
    .registers 2

    iget-object v0, p0, Lcom/qq/e/ads/splash/SplashAD;->d:Lcom/qq/e/comm/constants/LoadAdParams;

    return-object v0
.end method

.method static synthetic b(Lcom/qq/e/ads/splash/SplashAD;Z)Z
    .registers 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qq/e/ads/splash/SplashAD;->f:Z

    return v0
.end method

.method static synthetic c(Lcom/qq/e/ads/splash/SplashAD;)I
    .registers 2

    iget v0, p0, Lcom/qq/e/ads/splash/SplashAD;->g:I

    return v0
.end method

.method static synthetic d(Lcom/qq/e/ads/splash/SplashAD;)I
    .registers 2

    iget v0, p0, Lcom/qq/e/ads/splash/SplashAD;->h:I

    return v0
.end method

.method static synthetic e(Lcom/qq/e/ads/splash/SplashAD;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/qq/e/ads/splash/SplashAD;->i:Landroid/view/View;

    return-object v0
.end method

.method static synthetic f(Lcom/qq/e/ads/splash/SplashAD;)Landroid/view/ViewGroup;
    .registers 2

    iget-object v0, p0, Lcom/qq/e/ads/splash/SplashAD;->b:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic g(Lcom/qq/e/ads/splash/SplashAD;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/qq/e/ads/splash/SplashAD;->e:Z

    return v0
.end method

.method static synthetic h(Lcom/qq/e/ads/splash/SplashAD;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/qq/e/ads/splash/SplashAD;->f:Z

    return v0
.end method

.method static synthetic i(Lcom/qq/e/ads/splash/SplashAD;)Lcom/qq/e/ads/splash/SplashADListener;
    .registers 2

    iget-object v0, p0, Lcom/qq/e/ads/splash/SplashAD;->c:Lcom/qq/e/ads/splash/SplashADListener;

    return-object v0
.end method


# virtual methods
.method public final fetchAdOnly()V
    .registers 2

    iget-object v0, p0, Lcom/qq/e/ads/splash/SplashAD;->a:Lcom/qq/e/comm/pi/NSPVI;

    if-eqz v0, :cond_f

    const-string v0, "splashAD fetchAdOnly"

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/qq/e/ads/splash/SplashAD;->a:Lcom/qq/e/comm/pi/NSPVI;

    invoke-interface {v0}, Lcom/qq/e/comm/pi/NSPVI;->fetchAdOnly()V

    :goto_e
    return-void

    :cond_f
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/qq/e/ads/splash/SplashAD;->f:Z

    goto :goto_e
.end method

.method public final fetchAndShowIn(Landroid/view/ViewGroup;)V
    .registers 4
    .param p1, "container"    # Landroid/view/ViewGroup;

    .prologue
    if-nez p1, :cond_f

    const-string v0, "SplashAD fetchAndShowIn params null "

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/qq/e/ads/splash/SplashAD;->c:Lcom/qq/e/ads/splash/SplashADListener;

    const/16 v1, 0x7d1

    invoke-static {v0, v1}, Lcom/qq/e/ads/splash/SplashAD;->a(Lcom/qq/e/ads/splash/SplashADListener;I)V

    :goto_e
    return-void

    :cond_f
    iget-object v0, p0, Lcom/qq/e/ads/splash/SplashAD;->a:Lcom/qq/e/comm/pi/NSPVI;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/qq/e/ads/splash/SplashAD;->a:Lcom/qq/e/comm/pi/NSPVI;

    invoke-interface {v0, p1}, Lcom/qq/e/comm/pi/NSPVI;->fetchAndShowIn(Landroid/view/ViewGroup;)V

    goto :goto_e

    :cond_19
    iput-object p1, p0, Lcom/qq/e/ads/splash/SplashAD;->b:Landroid/view/ViewGroup;

    goto :goto_e
.end method

.method public final getAdNetWorkName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/qq/e/ads/splash/SplashAD;->a:Lcom/qq/e/comm/pi/NSPVI;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/qq/e/ads/splash/SplashAD;->a:Lcom/qq/e/comm/pi/NSPVI;

    invoke-interface {v0}, Lcom/qq/e/comm/pi/NSPVI;->getAdNetWorkName()Ljava/lang/String;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const-string v0, "The ad does not support \"getAdNetWorkName\" or you should call this method after \"onAdPresent\""

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_a
.end method

.method public final getExt()Ljava/util/Map;
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/qq/e/ads/splash/SplashAD;->a:Lcom/qq/e/comm/pi/NSPVI;

    sget-object v0, Lcom/qq/e/comm/pi/NSPVI;->ext:Ljava/util/Map;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_5

    :goto_4
    return-object v0

    :catch_5
    move-exception v0

    const-string v1, "splash ad can not get extra"

    invoke-static {v1}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_4
.end method

.method public final preLoad()V
    .registers 2

    iget-object v0, p0, Lcom/qq/e/ads/splash/SplashAD;->a:Lcom/qq/e/comm/pi/NSPVI;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/qq/e/ads/splash/SplashAD;->a:Lcom/qq/e/comm/pi/NSPVI;

    invoke-interface {v0}, Lcom/qq/e/comm/pi/NSPVI;->preload()V

    :goto_9
    return-void

    :cond_a
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/qq/e/ads/splash/SplashAD;->e:Z

    goto :goto_9
.end method

.method public final setAdLogoMargin(II)V
    .registers 3
    .param p1, "topMargin"    # I
    .param p2, "leftMargin"    # I

    .prologue
    iput p1, p0, Lcom/qq/e/ads/splash/SplashAD;->g:I

    iput p2, p0, Lcom/qq/e/ads/splash/SplashAD;->h:I

    return-void
.end method

.method public final setLoadAdParams(Lcom/qq/e/comm/constants/LoadAdParams;)V
    .registers 3
    .param p1, "params"    # Lcom/qq/e/comm/constants/LoadAdParams;

    .prologue
    iget-object v0, p0, Lcom/qq/e/ads/splash/SplashAD;->a:Lcom/qq/e/comm/pi/NSPVI;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/qq/e/ads/splash/SplashAD;->a:Lcom/qq/e/comm/pi/NSPVI;

    invoke-interface {v0, p1}, Lcom/qq/e/comm/pi/NSPVI;->setLoadAdParams(Lcom/qq/e/comm/constants/LoadAdParams;)V

    :goto_9
    return-void

    :cond_a
    iput-object p1, p0, Lcom/qq/e/ads/splash/SplashAD;->d:Lcom/qq/e/comm/constants/LoadAdParams;

    goto :goto_9
.end method

.method public final setPreloadView(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    iget-object v0, p0, Lcom/qq/e/ads/splash/SplashAD;->a:Lcom/qq/e/comm/pi/NSPVI;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/qq/e/ads/splash/SplashAD;->a:Lcom/qq/e/comm/pi/NSPVI;

    invoke-interface {v0, p1}, Lcom/qq/e/comm/pi/NSPVI;->setPreloadView(Landroid/view/View;)V

    :goto_9
    return-void

    :cond_a
    iput-object p1, p0, Lcom/qq/e/ads/splash/SplashAD;->i:Landroid/view/View;

    goto :goto_9
.end method

.method public final showAd(Landroid/view/ViewGroup;)V
    .registers 4
    .param p1, "container"    # Landroid/view/ViewGroup;

    .prologue
    if-nez p1, :cond_f

    const-string v0, "SplashAD showAd params null "

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/qq/e/ads/splash/SplashAD;->c:Lcom/qq/e/ads/splash/SplashADListener;

    const/16 v1, 0x7d1

    invoke-static {v0, v1}, Lcom/qq/e/ads/splash/SplashAD;->a(Lcom/qq/e/ads/splash/SplashADListener;I)V

    :goto_e
    return-void

    :cond_f
    iget-object v0, p0, Lcom/qq/e/ads/splash/SplashAD;->a:Lcom/qq/e/comm/pi/NSPVI;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/qq/e/ads/splash/SplashAD;->a:Lcom/qq/e/comm/pi/NSPVI;

    invoke-interface {v0, p1}, Lcom/qq/e/comm/pi/NSPVI;->showAd(Landroid/view/ViewGroup;)V

    goto :goto_e

    :cond_19
    iput-object p1, p0, Lcom/qq/e/ads/splash/SplashAD;->b:Landroid/view/ViewGroup;

    goto :goto_e
.end method
