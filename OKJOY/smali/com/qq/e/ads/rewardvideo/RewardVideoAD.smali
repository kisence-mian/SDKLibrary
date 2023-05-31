.class public Lcom/qq/e/ads/rewardvideo/RewardVideoAD;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qq/e/ads/rewardvideo/RewardVideoAD$ADListenerAdapter;
    }
.end annotation


# instance fields
.field private a:Lcom/qq/e/ads/rewardvideo/RewardVideoADListener;

.field private volatile b:Z

.field private c:Lcom/qq/e/comm/pi/RVADI;

.field private volatile d:Z

.field private volatile e:Z

.field private volatile f:Z

.field private g:Ljava/lang/String;

.field private h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/qq/e/ads/rewardvideo/RewardVideoADListener;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appID"    # Ljava/lang/String;
    .param p3, "posID"    # Ljava/lang/String;
    .param p4, "rewardVideoADListener"    # Lcom/qq/e/ads/rewardvideo/RewardVideoADListener;

    .prologue
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/qq/e/ads/rewardvideo/RewardVideoAD;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/qq/e/ads/rewardvideo/RewardVideoADListener;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/qq/e/ads/rewardvideo/RewardVideoADListener;Z)V
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appID"    # Ljava/lang/String;
    .param p3, "posID"    # Ljava/lang/String;
    .param p4, "rewardVideoADListener"    # Lcom/qq/e/ads/rewardvideo/RewardVideoADListener;
    .param p5, "volumeOn"    # Z

    .prologue
    const/4 v3, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/qq/e/ads/rewardvideo/RewardVideoAD;->h:Ljava/util/Map;

    if-eqz p1, :cond_1b

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1b

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1b

    if-nez p4, :cond_33

    :cond_1b
    const-string v0, "RewardVideoAD Constructor params error, context=%s, appID=%s, posID=%s, rewardVideoADListener=%s"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    aput-object p2, v1, v3

    const/4 v2, 0x2

    aput-object p3, v1, v2

    const/4 v2, 0x3

    aput-object p4, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    :goto_32
    return-void

    :cond_33
    iput-object p4, p0, Lcom/qq/e/ads/rewardvideo/RewardVideoAD;->a:Lcom/qq/e/ads/rewardvideo/RewardVideoADListener;

    iput-boolean v3, p0, Lcom/qq/e/ads/rewardvideo/RewardVideoAD;->d:Z

    invoke-static {p1}, Lcom/qq/e/comm/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_48

    const-string v0, "Required Activity/Service/Permission Not Declared in AndroidManifest.xml"

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    const/16 v0, 0xfa2

    invoke-direct {p0, v0}, Lcom/qq/e/ads/rewardvideo/RewardVideoAD;->a(I)V

    goto :goto_32

    :cond_48
    iput-boolean v3, p0, Lcom/qq/e/ads/rewardvideo/RewardVideoAD;->e:Z

    iput-object p3, p0, Lcom/qq/e/ads/rewardvideo/RewardVideoAD;->g:Ljava/lang/String;

    sget-object v7, Lcom/qq/e/comm/managers/GDTADManager;->INIT_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/qq/e/ads/rewardvideo/RewardVideoAD$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p4

    move-object v5, p3

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/qq/e/ads/rewardvideo/RewardVideoAD$1;-><init>(Lcom/qq/e/ads/rewardvideo/RewardVideoAD;Landroid/content/Context;Ljava/lang/String;Lcom/qq/e/ads/rewardvideo/RewardVideoADListener;Ljava/lang/String;Z)V

    invoke-interface {v7, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_32
.end method

.method static synthetic a(Lcom/qq/e/ads/rewardvideo/RewardVideoAD;)Lcom/qq/e/comm/pi/RVADI;
    .registers 2

    iget-object v0, p0, Lcom/qq/e/ads/rewardvideo/RewardVideoAD;->c:Lcom/qq/e/comm/pi/RVADI;

    return-object v0
.end method

.method static synthetic a(Lcom/qq/e/ads/rewardvideo/RewardVideoAD;Lcom/qq/e/comm/pi/RVADI;)Lcom/qq/e/comm/pi/RVADI;
    .registers 2

    iput-object p1, p0, Lcom/qq/e/ads/rewardvideo/RewardVideoAD;->c:Lcom/qq/e/comm/pi/RVADI;

    return-object p1
.end method

.method private a(I)V
    .registers 4

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/qq/e/ads/rewardvideo/RewardVideoAD$2;

    invoke-direct {v1, p0, p1}, Lcom/qq/e/ads/rewardvideo/RewardVideoAD$2;-><init>(Lcom/qq/e/ads/rewardvideo/RewardVideoAD;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic a(Lcom/qq/e/ads/rewardvideo/RewardVideoAD;I)V
    .registers 3

    const/16 v0, 0x7d1

    invoke-direct {p0, v0}, Lcom/qq/e/ads/rewardvideo/RewardVideoAD;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/qq/e/ads/rewardvideo/RewardVideoAD;Z)Z
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/qq/e/ads/rewardvideo/RewardVideoAD;->b:Z

    return v0
.end method

.method static synthetic b(Lcom/qq/e/ads/rewardvideo/RewardVideoAD;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/qq/e/ads/rewardvideo/RewardVideoAD;->f:Z

    return v0
.end method

.method static synthetic c(Lcom/qq/e/ads/rewardvideo/RewardVideoAD;)Lcom/qq/e/ads/rewardvideo/RewardVideoADListener;
    .registers 2

    iget-object v0, p0, Lcom/qq/e/ads/rewardvideo/RewardVideoAD;->a:Lcom/qq/e/ads/rewardvideo/RewardVideoADListener;

    return-object v0
.end method


# virtual methods
.method public getAdNetWorkName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/qq/e/ads/rewardvideo/RewardVideoAD;->c:Lcom/qq/e/comm/pi/RVADI;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/qq/e/ads/rewardvideo/RewardVideoAD;->c:Lcom/qq/e/comm/pi/RVADI;

    invoke-interface {v0}, Lcom/qq/e/comm/pi/RVADI;->getAdNetWorkName()Ljava/lang/String;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const-string v0, "please invoke getAdNetWorkName method after callback \"onADLoad\" or the ad does not support \"getAdNetWorkName\" "

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getECPM()I
    .registers 2

    iget-object v0, p0, Lcom/qq/e/ads/rewardvideo/RewardVideoAD;->c:Lcom/qq/e/comm/pi/RVADI;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/qq/e/ads/rewardvideo/RewardVideoAD;->c:Lcom/qq/e/comm/pi/RVADI;

    invoke-interface {v0}, Lcom/qq/e/comm/pi/RVADI;->getECPM()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const-string v0, "please invoke getECPM method after callback \"onADLoad\" "

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    const/4 v0, -0x1

    goto :goto_a
.end method

.method public getECPMLevel()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/qq/e/ads/rewardvideo/RewardVideoAD;->c:Lcom/qq/e/comm/pi/RVADI;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/qq/e/ads/rewardvideo/RewardVideoAD;->c:Lcom/qq/e/comm/pi/RVADI;

    invoke-interface {v0}, Lcom/qq/e/comm/pi/RVADI;->getECPMLevel()Ljava/lang/String;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const-string v0, "please invoke getECPMLevel method after callback \"onADLoad\" "

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getExpireTimestamp()J
    .registers 3

    iget-object v0, p0, Lcom/qq/e/ads/rewardvideo/RewardVideoAD;->c:Lcom/qq/e/comm/pi/RVADI;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/qq/e/ads/rewardvideo/RewardVideoAD;->c:Lcom/qq/e/comm/pi/RVADI;

    invoke-interface {v0}, Lcom/qq/e/comm/pi/RVADI;->getExpireTimestamp()J

    move-result-wide v0

    :goto_a
    return-wide v0

    :cond_b
    const-string v0, "please invoke getExpireTimestamp method after callback \"onADLoad\" "

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    goto :goto_a
.end method

.method public getExts()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/qq/e/ads/rewardvideo/RewardVideoAD;->h:Ljava/util/Map;

    return-object v0
.end method

.method public hasShown()Z
    .registers 2

    iget-object v0, p0, Lcom/qq/e/ads/rewardvideo/RewardVideoAD;->c:Lcom/qq/e/comm/pi/RVADI;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/qq/e/ads/rewardvideo/RewardVideoAD;->c:Lcom/qq/e/comm/pi/RVADI;

    invoke-interface {v0}, Lcom/qq/e/comm/pi/RVADI;->hasShown()Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const-string v0, "please invoke hasShown method after callback \"onADLoad\" "

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_a
.end method

.method public loadAD()V
    .registers 2

    iget-boolean v0, p0, Lcom/qq/e/ads/rewardvideo/RewardVideoAD;->d:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/qq/e/ads/rewardvideo/RewardVideoAD;->e:Z

    if-nez v0, :cond_e

    :cond_8
    const-string v0, "AD init Params OR Context error, details in logs produced while init RewardVideoAD"

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    :goto_d
    return-void

    :cond_e
    iget-boolean v0, p0, Lcom/qq/e/ads/rewardvideo/RewardVideoAD;->b:Z

    if-nez v0, :cond_16

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/qq/e/ads/rewardvideo/RewardVideoAD;->f:Z

    goto :goto_d

    :cond_16
    iget-object v0, p0, Lcom/qq/e/ads/rewardvideo/RewardVideoAD;->c:Lcom/qq/e/comm/pi/RVADI;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/qq/e/ads/rewardvideo/RewardVideoAD;->c:Lcom/qq/e/comm/pi/RVADI;

    invoke-interface {v0}, Lcom/qq/e/comm/pi/RVADI;->loadAD()V

    goto :goto_d

    :cond_20
    const-string v0, "RewardVideo AD Init error, see more logs"

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    goto :goto_d
.end method

.method public setExt(Ljava/lang/String;)V
    .registers 4
    .param p1, "ext"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/qq/e/ads/rewardvideo/RewardVideoAD;->h:Ljava/util/Map;

    const-string v1, "clickUrl"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setTag(Ljava/util/Map;)V
    .registers 6
    .param p1, "tags"    # Ljava/util/Map;

    .prologue
    if-eqz p1, :cond_1c

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_1c

    :try_start_8
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-static {}, Lcom/qq/e/comm/managers/GDTADManager;->getInstance()Lcom/qq/e/comm/managers/GDTADManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qq/e/comm/managers/GDTADManager;->getSM()Lcom/qq/e/comm/managers/setting/SM;

    move-result-object v1

    const-string v2, "ad_tags"

    iget-object v3, p0, Lcom/qq/e/ads/rewardvideo/RewardVideoAD;->g:Ljava/lang/String;

    invoke-virtual {v1, v2, v0, v3}, Lcom/qq/e/comm/managers/setting/SM;->setDEVCodeSetting(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_1c} :catch_1d

    :cond_1c
    :goto_1c
    return-void

    :catch_1d
    move-exception v0

    const-string v1, "NativeUnifiedAD#setTag Exception"

    invoke-static {v1}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1c
.end method

.method public showAD()V
    .registers 2

    iget-object v0, p0, Lcom/qq/e/ads/rewardvideo/RewardVideoAD;->c:Lcom/qq/e/comm/pi/RVADI;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/qq/e/ads/rewardvideo/RewardVideoAD;->c:Lcom/qq/e/comm/pi/RVADI;

    invoke-interface {v0}, Lcom/qq/e/comm/pi/RVADI;->showAD()V

    :goto_9
    return-void

    :cond_a
    const-string v0, "please invoke showAD method after callback \"onADLoad\" "

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    goto :goto_9
.end method

.method public showAD(Landroid/app/Activity;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    iget-object v0, p0, Lcom/qq/e/ads/rewardvideo/RewardVideoAD;->c:Lcom/qq/e/comm/pi/RVADI;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/qq/e/ads/rewardvideo/RewardVideoAD;->c:Lcom/qq/e/comm/pi/RVADI;

    invoke-interface {v0, p1}, Lcom/qq/e/comm/pi/RVADI;->showAD(Landroid/app/Activity;)V

    :goto_9
    return-void

    :cond_a
    const-string v0, "please invoke showAD method after callback \"onADLoad\" "

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    goto :goto_9
.end method
