.class public Lcom/qq/e/ads/WebReporter;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/qq/e/comm/pi/WRI;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appId"    # Ljava/lang/String;
    .param p3, "reportUrl"    # Ljava/lang/String;
    .param p4, "startTime"    # J

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Lcom/qq/e/comm/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, "init web reporter fail with error params"

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    :goto_e
    return-void

    :cond_f
    :try_start_f
    invoke-static {}, Lcom/qq/e/comm/managers/GDTADManager;->getInstance()Lcom/qq/e/comm/managers/GDTADManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/qq/e/comm/managers/GDTADManager;->initWith(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_26

    const-string v0, "SDK is not ready!"

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V
    :try_end_1e
    .catch Lcom/qq/e/comm/managers/plugin/c; {:try_start_f .. :try_end_1e} :catch_1f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_1e} :catch_39

    goto :goto_e

    :catch_1f
    move-exception v0

    const-string v0, "Web reporter created by factory return null"

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    goto :goto_e

    :cond_26
    :try_start_26
    invoke-static {}, Lcom/qq/e/comm/managers/GDTADManager;->getInstance()Lcom/qq/e/comm/managers/GDTADManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qq/e/comm/managers/GDTADManager;->getPM()Lcom/qq/e/comm/managers/plugin/PM;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qq/e/comm/managers/plugin/PM;->getPOFactory()Lcom/qq/e/comm/pi/POFactory;

    move-result-object v0

    invoke-interface {v0, p3, p4, p5}, Lcom/qq/e/comm/pi/POFactory;->getWebReporterDelegate(Ljava/lang/String;J)Lcom/qq/e/comm/pi/WRI;

    move-result-object v0

    iput-object v0, p0, Lcom/qq/e/ads/WebReporter;->a:Lcom/qq/e/comm/pi/WRI;
    :try_end_38
    .catch Lcom/qq/e/comm/managers/plugin/c; {:try_start_26 .. :try_end_38} :catch_1f
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_38} :catch_39

    goto :goto_e

    :catch_39
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_e
.end method


# virtual methods
.method public report(Ljava/lang/String;I)V
    .registers 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "event"    # I

    .prologue
    iget-object v0, p0, Lcom/qq/e/ads/WebReporter;->a:Lcom/qq/e/comm/pi/WRI;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/qq/e/ads/WebReporter;->a:Lcom/qq/e/comm/pi/WRI;

    invoke-interface {v0, p1, p2}, Lcom/qq/e/comm/pi/WRI;->report(Ljava/lang/String;I)V

    :cond_9
    return-void
.end method
