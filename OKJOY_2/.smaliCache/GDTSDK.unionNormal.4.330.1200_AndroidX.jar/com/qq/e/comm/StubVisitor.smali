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

    if-nez v0, :cond_17

    const-class v0, Lcom/qq/e/comm/StubVisitor;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/qq/e/comm/StubVisitor;->a:Lcom/qq/e/comm/StubVisitor;

    if-nez v1, :cond_12

    new-instance v1, Lcom/qq/e/comm/StubVisitor;

    invoke-direct {v1}, Lcom/qq/e/comm/StubVisitor;-><init>()V

    sput-object v1, Lcom/qq/e/comm/StubVisitor;->a:Lcom/qq/e/comm/StubVisitor;

    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    :cond_17
    :goto_17
    sget-object v0, Lcom/qq/e/comm/StubVisitor;->a:Lcom/qq/e/comm/StubVisitor;

    return-object v0
.end method


# virtual methods
.method public appendPathName(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-static {p1}, Lcom/qq/e/comm/util/SystemUtil;->buildNewPathByProcessName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public jumpToCustomLandingPage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    invoke-static {}, Lcom/qq/e/comm/managers/setting/GlobalSetting;->getCustomLandingPageListener()Lcom/qq/e/comm/pi/CustomLandingPageListener;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-interface {v0, p1, p2, p3}, Lcom/qq/e/comm/pi/CustomLandingPageListener;->jumpToCustomLandingPage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_b
    const/4 p1, 0x0

    return p1
.end method
