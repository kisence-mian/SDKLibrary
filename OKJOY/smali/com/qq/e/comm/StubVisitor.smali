.class public Lcom/qq/e/comm/StubVisitor;
.super Ljava/lang/Object;


# static fields
.field private static volatile a:Lcom/qq/e/comm/StubVisitor;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/qq/e/comm/StubVisitor;
    .registers 2

    sget-object v0, Lcom/qq/e/comm/StubVisitor;->a:Lcom/qq/e/comm/StubVisitor;

    if-nez v0, :cond_13

    const-class v1, Lcom/qq/e/comm/StubVisitor;

    monitor-enter v1

    :try_start_7
    sget-object v0, Lcom/qq/e/comm/StubVisitor;->a:Lcom/qq/e/comm/StubVisitor;

    if-nez v0, :cond_12

    new-instance v0, Lcom/qq/e/comm/StubVisitor;

    invoke-direct {v0}, Lcom/qq/e/comm/StubVisitor;-><init>()V

    sput-object v0, Lcom/qq/e/comm/StubVisitor;->a:Lcom/qq/e/comm/StubVisitor;

    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    :cond_13
    sget-object v0, Lcom/qq/e/comm/StubVisitor;->a:Lcom/qq/e/comm/StubVisitor;

    return-object v0

    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method


# virtual methods
.method public appendPathName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "oriPath"    # Ljava/lang/String;

    .prologue
    invoke-static {p1}, Lcom/qq/e/comm/util/SystemUtil;->buildNewPathByProcessName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public jumpToCustomLandingPage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "landingPageUrl"    # Ljava/lang/String;
    .param p3, "webReportUrl"    # Ljava/lang/String;

    .prologue
    invoke-static {}, Lcom/qq/e/comm/managers/setting/GlobalSetting;->getCustomLandingPageListener()Lcom/qq/e/comm/pi/CustomLandingPageListener;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-interface {v0, p1, p2, p3}, Lcom/qq/e/comm/pi/CustomLandingPageListener;->jumpToCustomLandingPage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method
