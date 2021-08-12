.class public final Lcom/qq/e/ads/splash/SplashAD;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qq/e/ads/splash/SplashAD$ADListenerAdapter;
    }
.end annotation


# static fields
.field public static final EVENT_TYPE_AD_CLICKED:I = 0x4

.field public static final EVENT_TYPE_AD_DISMISSED:I = 0x1

.field public static final EVENT_TYPE_AD_EXPOSURE:I = 0x6

.field public static final EVENT_TYPE_AD_LOADED:I = 0x7

.field public static final EVENT_TYPE_AD_PRESENT:I = 0x3

.field public static final EVENT_TYPE_AD_TICK:I = 0x5

.field public static final EVENT_TYPE_AD_ZOOM_OUT:I = 0x8

.field public static final EVENT_TYPE_AD_ZOOM_OUT_PLAY_FINISH:I = 0x9

.field public static final EVENT_TYPE_NO_AD:I = 0x2


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
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;Lcom/qq/e/ads/splash/SplashADListener;I)V
    .registers 13

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/qq/e/ads/splash/SplashAD;-><init>(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;Lcom/qq/e/ads/splash/SplashADListener;ILandroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;Lcom/qq/e/ads/splash/SplashADListener;ILandroid/view/View;)V
    .registers 15

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/qq/e/ads/splash/SplashAD;-><init>(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;Lcom/qq/e/ads/splash/SplashADListener;ILjava/util/Map;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;Lcom/qq/e/ads/splash/SplashADListener;ILjava/util/Map;Landroid/view/View;)V
    .registers 18

    move-object v9, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, v9, Lcom/qq/e/ads/splash/SplashAD;->e:Z

    invoke-static {}, Lcom/qq/e/comm/managers/GDTADManager;->getInstance()Lcom/qq/e/comm/managers/GDTADManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qq/e/comm/managers/GDTADManager;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-static {}, Lcom/qq/e/comm/managers/GDTADManager;->getInstance()Lcom/qq/e/comm/managers/GDTADManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qq/e/comm/managers/GDTADManager;->getAppStatus()Lcom/qq/e/comm/managers/status/APPStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qq/e/comm/managers/status/APPStatus;->getAPPID()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/qq/e/ads/splash/SplashAD;->a(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Lcom/qq/e/ads/splash/SplashADListener;ILjava/util/Map;Landroid/view/View;)V

    return-void

    :cond_2b
    const-string v0, "SDK \u5c1a\u672a\u521d\u59cb\u5316\uff0c\u8bf7\u5728 Application \u4e2d\u8c03\u7528 GDTADManager.getInstance().initWith() \u521d\u59cb\u5316"

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    const/16 v0, 0x7d3

    move-object v1, p4

    invoke-direct {p0, p4, v0}, Lcom/qq/e/ads/splash/SplashAD;->a(Lcom/qq/e/ads/splash/SplashADListener;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Lcom/qq/e/ads/splash/SplashADListener;I)V
    .registers 15
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/qq/e/ads/splash/SplashAD;-><init>(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Lcom/qq/e/ads/splash/SplashADListener;ILandroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Lcom/qq/e/ads/splash/SplashADListener;ILandroid/view/View;)V
    .registers 17
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/qq/e/ads/splash/SplashAD;-><init>(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Lcom/qq/e/ads/splash/SplashADListener;ILjava/util/Map;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Lcom/qq/e/ads/splash/SplashADListener;ILjava/util/Map;Landroid/view/View;)V
    .registers 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qq/e/ads/splash/SplashAD;->e:Z

    const-string v0, "\u6b64\u6784\u9020\u65b9\u6cd5\u5373\u5c06\u5e9f\u5f03\uff0c\u8bf7\u5728 Application \u4e2d\u521d\u59cb\u5316 SDK \u540e\uff0c\u4f7f\u7528\u4e0d\u5e26 appId \u7684\u6784\u9020\u65b9\u6cd5\uff0c\u8be6\u7ec6\u8bf7\u53c2\u8003Demo"

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->w(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p8}, Lcom/qq/e/ads/splash/SplashAD;->a(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Lcom/qq/e/ads/splash/SplashADListener;ILjava/util/Map;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/qq/e/ads/splash/SplashADListener;)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/qq/e/ads/splash/SplashAD;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/qq/e/ads/splash/SplashADListener;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/qq/e/ads/splash/SplashADListener;I)V
    .registers 11

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/qq/e/ads/splash/SplashAD;-><init>(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;Lcom/qq/e/ads/splash/SplashADListener;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/qq/e/ads/splash/SplashADListener;)V
    .registers 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/qq/e/ads/splash/SplashAD;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/qq/e/ads/splash/SplashADListener;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/qq/e/ads/splash/SplashADListener;I)V
    .registers 13
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/qq/e/ads/splash/SplashAD;-><init>(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Lcom/qq/e/ads/splash/SplashADListener;I)V

    return-void
.end method

.method static synthetic a(Lcom/qq/e/ads/splash/SplashAD;)Lcom/qq/e/comm/pi/NSPVI;
    .registers 1

    iget-object p0, p0, Lcom/qq/e/ads/splash/SplashAD;->a:Lcom/qq/e/comm/pi/NSPVI;

    return-object p0
.end method

.method static synthetic a(Lcom/qq/e/ads/splash/SplashAD;Lcom/qq/e/comm/pi/NSPVI;)Lcom/qq/e/comm/pi/NSPVI;
    .registers 2

    iput-object p1, p0, Lcom/qq/e/ads/splash/SplashAD;->a:Lcom/qq/e/comm/pi/NSPVI;

    return-object p1
.end method

.method private a(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Lcom/qq/e/ads/splash/SplashADListener;ILjava/util/Map;Landroid/view/View;)V
    .registers 22

    move-object v10, p0

    move-object/from16 v9, p5

    iput-object v9, v10, Lcom/qq/e/ads/splash/SplashAD;->c:Lcom/qq/e/ads/splash/SplashADListener;

    invoke-static/range {p3 .. p3}, Lcom/qq/e/comm/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_40

    invoke-static/range {p4 .. p4}, Lcom/qq/e/comm/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_40

    if-nez p1, :cond_14

    goto :goto_40

    :cond_14
    invoke-static {p1}, Lcom/qq/e/comm/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_25

    const-string v0, "Required Activity/Service/Permission Not Declared in AndroidManifest.xml"

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    const/16 v0, 0xfa2

    invoke-direct {p0, v9, v0}, Lcom/qq/e/ads/splash/SplashAD;->a(Lcom/qq/e/ads/splash/SplashADListener;I)V

    return-void

    :cond_25
    sget-object v11, Lcom/qq/e/comm/managers/GDTADManager;->INIT_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-instance v12, Lcom/qq/e/ads/splash/SplashAD$1;

    move-object v0, v12

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p7

    move/from16 v6, p6

    move-object v7, p2

    move-object/from16 v8, p8

    move-object/from16 v9, p5

    invoke-direct/range {v0 .. v9}, Lcom/qq/e/ads/splash/SplashAD$1;-><init>(Lcom/qq/e/ads/splash/SplashAD;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ILandroid/view/View;Landroid/view/View;Lcom/qq/e/ads/splash/SplashADListener;)V

    invoke-interface {v11, v12}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_40
    :goto_40
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 v1, 0x1

    aput-object p4, v0, v1

    const/4 v1, 0x2

    aput-object p1, v0, v1

    const-string v1, "SplashAD Constructor params error, appid=%s,posId=%s,context=%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    const/16 v0, 0x7d1

    invoke-direct {p0, v9, v0}, Lcom/qq/e/ads/splash/SplashAD;->a(Lcom/qq/e/ads/splash/SplashADListener;I)V

    return-void
.end method

.method static synthetic a(Lcom/qq/e/ads/splash/SplashAD;Lcom/qq/e/ads/splash/SplashADListener;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/qq/e/ads/splash/SplashAD;->a(Lcom/qq/e/ads/splash/SplashADListener;I)V

    return-void
.end method

.method static synthetic a(Lcom/qq/e/ads/splash/SplashAD;Ljava/util/Map;Ljava/lang/String;)V
    .registers 4

    if-eqz p1, :cond_24

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p0

    if-lez p0, :cond_24

    :try_start_8
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-static {}, Lcom/qq/e/comm/managers/GDTADManager;->getInstance()Lcom/qq/e/comm/managers/GDTADManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/qq/e/comm/managers/GDTADManager;->getSM()Lcom/qq/e/comm/managers/setting/SM;

    move-result-object p1

    const-string v0, "ad_tags"

    invoke-virtual {p1, v0, p0, p2}, Lcom/qq/e/comm/managers/setting/SM;->setDEVCodeSetting(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_1a} :catch_1b

    return-void

    :catch_1b
    move-exception p0

    const-string p1, "SplashAD#setTag Exception"

    invoke-static {p1}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_24
    return-void
.end method

.method private a(Lcom/qq/e/ads/splash/SplashADListener;I)V
    .registers 5

    if-eqz p1, :cond_13

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/qq/e/ads/splash/SplashAD$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/qq/e/ads/splash/SplashAD$2;-><init>(Lcom/qq/e/ads/splash/SplashAD;Lcom/qq/e/ads/splash/SplashADListener;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_13
    return-void
.end method

.method static synthetic a(Lcom/qq/e/ads/splash/SplashAD;Z)Z
    .registers 2

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/qq/e/ads/splash/SplashAD;->e:Z

    return p1
.end method

.method static synthetic b(Lcom/qq/e/ads/splash/SplashAD;)Lcom/qq/e/comm/constants/LoadAdParams;
    .registers 1

    iget-object p0, p0, Lcom/qq/e/ads/splash/SplashAD;->d:Lcom/qq/e/comm/constants/LoadAdParams;

    return-object p0
.end method

.method static synthetic b(Lcom/qq/e/ads/splash/SplashAD;Z)Z
    .registers 2

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/qq/e/ads/splash/SplashAD;->f:Z

    return p1
.end method

.method static synthetic c(Lcom/qq/e/ads/splash/SplashAD;)I
    .registers 1

    iget p0, p0, Lcom/qq/e/ads/splash/SplashAD;->g:I

    return p0
.end method

.method static synthetic d(Lcom/qq/e/ads/splash/SplashAD;)I
    .registers 1

    iget p0, p0, Lcom/qq/e/ads/splash/SplashAD;->h:I

    return p0
.end method

.method static synthetic e(Lcom/qq/e/ads/splash/SplashAD;)Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/qq/e/ads/splash/SplashAD;->i:Landroid/view/View;

    return-object p0
.end method

.method static synthetic f(Lcom/qq/e/ads/splash/SplashAD;)Landroid/view/ViewGroup;
    .registers 1

    iget-object p0, p0, Lcom/qq/e/ads/splash/SplashAD;->b:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic g(Lcom/qq/e/ads/splash/SplashAD;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/qq/e/ads/splash/SplashAD;->e:Z

    return p0
.end method

.method static synthetic h(Lcom/qq/e/ads/splash/SplashAD;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/qq/e/ads/splash/SplashAD;->f:Z

    return p0
.end method

.method static synthetic i(Lcom/qq/e/ads/splash/SplashAD;)Lcom/qq/e/ads/splash/SplashADListener;
    .registers 1

    iget-object p0, p0, Lcom/qq/e/ads/splash/SplashAD;->c:Lcom/qq/e/ads/splash/SplashADListener;

    return-object p0
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

    return-void

    :cond_f
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/qq/e/ads/splash/SplashAD;->f:Z

    return-void
.end method

.method public final fetchAndShowIn(Landroid/view/ViewGroup;)V
    .registers 4

    if-nez p1, :cond_f

    const-string v0, "SplashAD fetchAndShowIn params null "

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/qq/e/ads/splash/SplashAD;->c:Lcom/qq/e/ads/splash/SplashADListener;

    const/16 v1, 0x7d1

    invoke-direct {p0, v0, v1}, Lcom/qq/e/ads/splash/SplashAD;->a(Lcom/qq/e/ads/splash/SplashADListener;I)V

    return-void

    :cond_f
    iget-object v0, p0, Lcom/qq/e/ads/splash/SplashAD;->a:Lcom/qq/e/comm/pi/NSPVI;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/qq/e/ads/splash/SplashAD;->a:Lcom/qq/e/comm/pi/NSPVI;

    invoke-interface {v0, p1}, Lcom/qq/e/comm/pi/NSPVI;->fetchAndShowIn(Landroid/view/ViewGroup;)V

    return-void

    :cond_19
    iput-object p1, p0, Lcom/qq/e/ads/splash/SplashAD;->b:Landroid/view/ViewGroup;

    return-void
.end method

.method public final getAdNetWorkName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/qq/e/ads/splash/SplashAD;->a:Lcom/qq/e/comm/pi/NSPVI;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/qq/e/ads/splash/SplashAD;->a:Lcom/qq/e/comm/pi/NSPVI;

    invoke-interface {v0}, Lcom/qq/e/comm/pi/NSPVI;->getAdNetWorkName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_b
    const-string v0, "The ad does not support \"getAdNetWorkName\" or you should call this method after \"onAdPresent\""

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getECPMLevel()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/qq/e/ads/splash/SplashAD;->a:Lcom/qq/e/comm/pi/NSPVI;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/qq/e/ads/splash/SplashAD;->a:Lcom/qq/e/comm/pi/NSPVI;

    invoke-interface {v0}, Lcom/qq/e/comm/pi/NSPVI;->getECPMLevel()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_b
    const-string v0, "The ad does not support \"getECPMLevel\" or you should call this method after \"onAdPresent\""

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getExt()Ljava/util/Map;
    .registers 3

    :try_start_0
    sget-object v0, Lcom/qq/e/comm/pi/NSPVI;->ext:Ljava/util/Map;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2} :catch_3

    return-object v0

    :catch_3
    move-exception v0

    const-string v1, "splash ad can not get extra"

    invoke-static {v1}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getZoomOutBitmap()Landroid/graphics/Bitmap;
    .registers 2

    iget-object v0, p0, Lcom/qq/e/ads/splash/SplashAD;->a:Lcom/qq/e/comm/pi/NSPVI;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/qq/e/ads/splash/SplashAD;->a:Lcom/qq/e/comm/pi/NSPVI;

    invoke-interface {v0}, Lcom/qq/e/comm/pi/NSPVI;->getZoomOutBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method public final preLoad()V
    .registers 2

    iget-object v0, p0, Lcom/qq/e/ads/splash/SplashAD;->a:Lcom/qq/e/comm/pi/NSPVI;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/qq/e/ads/splash/SplashAD;->a:Lcom/qq/e/comm/pi/NSPVI;

    invoke-interface {v0}, Lcom/qq/e/comm/pi/NSPVI;->preload()V

    return-void

    :cond_a
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/qq/e/ads/splash/SplashAD;->e:Z

    return-void
.end method

.method public final setAdLogoMargin(II)V
    .registers 3

    iput p1, p0, Lcom/qq/e/ads/splash/SplashAD;->g:I

    iput p2, p0, Lcom/qq/e/ads/splash/SplashAD;->h:I

    return-void
.end method

.method public final setLoadAdParams(Lcom/qq/e/comm/constants/LoadAdParams;)V
    .registers 3

    iget-object v0, p0, Lcom/qq/e/ads/splash/SplashAD;->a:Lcom/qq/e/comm/pi/NSPVI;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/qq/e/ads/splash/SplashAD;->a:Lcom/qq/e/comm/pi/NSPVI;

    invoke-interface {v0, p1}, Lcom/qq/e/comm/pi/NSPVI;->setLoadAdParams(Lcom/qq/e/comm/constants/LoadAdParams;)V

    return-void

    :cond_a
    iput-object p1, p0, Lcom/qq/e/ads/splash/SplashAD;->d:Lcom/qq/e/comm/constants/LoadAdParams;

    return-void
.end method

.method public final setPreloadView(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/qq/e/ads/splash/SplashAD;->a:Lcom/qq/e/comm/pi/NSPVI;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/qq/e/ads/splash/SplashAD;->a:Lcom/qq/e/comm/pi/NSPVI;

    invoke-interface {v0, p1}, Lcom/qq/e/comm/pi/NSPVI;->setPreloadView(Landroid/view/View;)V

    return-void

    :cond_a
    iput-object p1, p0, Lcom/qq/e/ads/splash/SplashAD;->i:Landroid/view/View;

    return-void
.end method

.method public final showAd(Landroid/view/ViewGroup;)V
    .registers 4

    if-nez p1, :cond_f

    const-string v0, "SplashAD showAd params null "

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/qq/e/ads/splash/SplashAD;->c:Lcom/qq/e/ads/splash/SplashADListener;

    const/16 v1, 0x7d1

    invoke-direct {p0, v0, v1}, Lcom/qq/e/ads/splash/SplashAD;->a(Lcom/qq/e/ads/splash/SplashADListener;I)V

    return-void

    :cond_f
    iget-object v0, p0, Lcom/qq/e/ads/splash/SplashAD;->a:Lcom/qq/e/comm/pi/NSPVI;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/qq/e/ads/splash/SplashAD;->a:Lcom/qq/e/comm/pi/NSPVI;

    invoke-interface {v0, p1}, Lcom/qq/e/comm/pi/NSPVI;->showAd(Landroid/view/ViewGroup;)V

    return-void

    :cond_19
    iput-object p1, p0, Lcom/qq/e/ads/splash/SplashAD;->b:Landroid/view/ViewGroup;

    return-void
.end method

.method public final zoomOutAnimationFinish()V
    .registers 2

    iget-object v0, p0, Lcom/qq/e/ads/splash/SplashAD;->a:Lcom/qq/e/comm/pi/NSPVI;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/qq/e/ads/splash/SplashAD;->a:Lcom/qq/e/comm/pi/NSPVI;

    invoke-interface {v0}, Lcom/qq/e/comm/pi/NSPVI;->zoomOutAnimationFinish()V

    :cond_9
    return-void
.end method
