.class public Lcom/ssjj/fnsdk/core/SsjjFNSDK;
.super Lcom/ssjj/fnsdk/core/s;


# static fields
.field public static final VERSION:Ljava/lang/String; = "3.1.6.7"

.field private static c:Lcom/ssjj/fnsdk/core/SsjjFNSDK;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/ssjj/fnsdk/core/SsjjFNSDK;->c:Lcom/ssjj/fnsdk/core/SsjjFNSDK;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/ssjj/fnsdk/core/s;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string v0, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string p1, "\u7535\u8bdd"

    return-object p1

    :cond_b
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_16

    const-string p1, "\u5b58\u50a8\u7a7a\u95f4"

    return-object p1

    :cond_16
    const-string p1, ""

    return-object p1
.end method

.method private a(Landroid/app/Activity;Lcom/ssjj/fnsdk/core/listener/SsjjFNInitListener;)V
    .registers 9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "com.ssjj.fnsdk.platform.FNAdapter"

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNConfig;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ssjj/fnsdk/core/SsjjFNConfig;->a()V

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNTempManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->reset()V

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNProductIdConvertManager;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNProductIdConvertManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ssjj/fnsdk/core/SsjjFNProductIdConvertManager;->reset()V

    invoke-static {}, Lcom/ssjj/fnsdk/core/EnvConfig;->init()V

    invoke-static {}, Lcom/ssjj/fnsdk/core/log2/ChannelGetter;->getInstance()Lcom/ssjj/fnsdk/core/log2/ChannelGetter;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/ssjj/fnsdk/core/log2/ChannelGetter;->initStart(Landroid/content/Context;)V

    invoke-static {}, Lcom/ssjj/fnsdk/core/ap;->a()Lcom/ssjj/fnsdk/core/ap;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/ssjj/fnsdk/core/ap;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/ssjj/fnsdk/core/log2/FNLog2Manager;->getInstance()Lcom/ssjj/fnsdk/core/log2/FNLog2Manager;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/ssjj/fnsdk/core/log2/FNLog2Manager;->initStart(Landroid/content/Context;)V

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->a(Landroid/content/Context;)V

    :try_start_3a
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Class;

    invoke-virtual {v3, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ssjj/fnsdk/core/SsjjFNAdapter;
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_4d} :catch_4e

    goto :goto_67

    :catch_4e
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "not found "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    :goto_67
    invoke-virtual {p0, v3}, Lcom/ssjj/fnsdk/core/SsjjFNSDK;->setSsjjFNAdapter(Lcom/ssjj/fnsdk/core/SsjjFNAdapter;)V

    invoke-super {p0, p1, p2}, Lcom/ssjj/fnsdk/core/s;->init(Landroid/app/Activity;Lcom/ssjj/fnsdk/core/listener/SsjjFNInitListener;)V

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNSpecial;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNSpecial;

    move-result-object p2

    invoke-virtual {p2, p1, v3}, Lcom/ssjj/fnsdk/core/SsjjFNSpecial;->init(Landroid/app/Activity;Lcom/ssjj/fnsdk/core/SsjjFNAdapter;)V

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNTempManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->init(Landroid/app/Activity;)V

    invoke-static {}, Lcom/ssjj/fnsdk/core/log2/ChannelGetter;->getInstance()Lcom/ssjj/fnsdk/core/log2/ChannelGetter;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/ssjj/fnsdk/core/log2/ChannelGetter;->initEnd(Landroid/content/Context;)V

    invoke-static {}, Lcom/ssjj/fnsdk/core/ap;->a()Lcom/ssjj/fnsdk/core/ap;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/ssjj/fnsdk/core/ap;->b(Landroid/content/Context;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "init end, "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "ms"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/ssjj/fnsdk/core/SsjjFNSDK;Landroid/app/Activity;Lcom/ssjj/fnsdk/core/listener/SsjjFNInitListener;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/ssjj/fnsdk/core/SsjjFNSDK;->a(Landroid/app/Activity;Lcom/ssjj/fnsdk/core/listener/SsjjFNInitListener;)V

    return-void
.end method

.method public static getInstance()Lcom/ssjj/fnsdk/core/SsjjFNSDK;
    .registers 1

    sget-object v0, Lcom/ssjj/fnsdk/core/SsjjFNSDK;->c:Lcom/ssjj/fnsdk/core/SsjjFNSDK;

    if-nez v0, :cond_b

    new-instance v0, Lcom/ssjj/fnsdk/core/SsjjFNSDK;

    invoke-direct {v0}, Lcom/ssjj/fnsdk/core/SsjjFNSDK;-><init>()V

    sput-object v0, Lcom/ssjj/fnsdk/core/SsjjFNSDK;->c:Lcom/ssjj/fnsdk/core/SsjjFNSDK;

    :cond_b
    sget-object v0, Lcom/ssjj/fnsdk/core/SsjjFNSDK;->c:Lcom/ssjj/fnsdk/core/SsjjFNSDK;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic checkAndUpdateVersion(Landroid/app/Activity;Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;)V
    .registers 3

    invoke-super {p0, p1, p2}, Lcom/ssjj/fnsdk/core/s;->checkAndUpdateVersion(Landroid/app/Activity;Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;)V

    return-void
.end method

.method public bridge synthetic exit(Lcom/ssjj/fnsdk/core/listener/SsjjFNExitListener;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/ssjj/fnsdk/core/s;->exit(Lcom/ssjj/fnsdk/core/listener/SsjjFNExitListener;)V

    return-void
.end method

.method public bridge synthetic getSsjjFNAdapter()Lcom/ssjj/fnsdk/core/SsjjFNAdapter;
    .registers 2

    invoke-super {p0}, Lcom/ssjj/fnsdk/core/s;->getSsjjFNAdapter()Lcom/ssjj/fnsdk/core/SsjjFNAdapter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getUserListener()Lcom/ssjj/fnsdk/core/listener/SsjjFNUserListener;
    .registers 2

    invoke-super {p0}, Lcom/ssjj/fnsdk/core/s;->getUserListener()Lcom/ssjj/fnsdk/core/listener/SsjjFNUserListener;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic hideFloatBar(Landroid/app/Activity;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/ssjj/fnsdk/core/s;->hideFloatBar(Landroid/app/Activity;)V

    return-void
.end method

.method public init(Landroid/app/Activity;Lcom/ssjj/fnsdk/core/listener/SsjjFNInitListener;)V
    .registers 10

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/EnvConfigRes;->init(Landroid/content/Context;)V

    sget-boolean v0, Lcom/ssjj/fnsdk/core/EnvConfigRes;->needRequestPermissionForInit:Z

    if-nez v0, :cond_b

    invoke-direct {p0, p1, p2}, Lcom/ssjj/fnsdk/core/SsjjFNSDK;->a(Landroid/app/Activity;Lcom/ssjj/fnsdk/core/listener/SsjjFNInitListener;)V

    return-void

    :cond_b
    const-string v0, "android.permission.READ_PHONE_STATE"

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, ""

    const/4 v3, 0x0

    :goto_17
    const-string v4, "\u3001"

    const/4 v5, 0x2

    if-lt v3, v5, :cond_6a

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2a

    invoke-virtual {v2, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :cond_2a
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "\u4e3a\u4fdd\u8bc1\u6e38\u620f\u6b63\u5e38\u8fd0\u884c\uff0c\u8bf7\u5f00\u542f"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\u6743\u9650\uff0c\u5426\u5219\u53ef\u80fd\u4f1a\u5f71\u54cd\u6e38\u620f\u7684\u6b63\u5e38\u8fd0\u884c\u3002"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\n\u8bbe\u7f6e\u8def\u5f84\uff1a\u8bbe\u7f6e->\u5e94\u7528->"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/SsjjFNUtility;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "->\u6743\u9650->"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u3002"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/ssjj/fnsdk/core/bu;

    invoke-direct {v2, p0, p1, p2, v1}, Lcom/ssjj/fnsdk/core/bu;-><init>(Lcom/ssjj/fnsdk/core/SsjjFNSDK;Landroid/app/Activity;Lcom/ssjj/fnsdk/core/listener/SsjjFNInitListener;Ljava/lang/String;)V

    invoke-static {}, Lcom/ssjj/fnsdk/core/util/permission/PermissionMgr;->getInstance()Lcom/ssjj/fnsdk/core/util/permission/PermissionMgr;

    move-result-object p2

    invoke-virtual {p2, p1, v0, v2}, Lcom/ssjj/fnsdk/core/util/permission/PermissionMgr;->checkPermissions(Landroid/app/Activity;[Ljava/lang/String;Lcom/ssjj/fnsdk/core/util/permission/GrantHelper;)V

    return-void

    :cond_6a
    aget-object v5, v0, v3

    invoke-static {}, Lcom/ssjj/fnsdk/core/util/permission/PermissionMgr;->getInstance()Lcom/ssjj/fnsdk/core/util/permission/PermissionMgr;

    move-result-object v6

    invoke-virtual {v6, p1, v5}, Lcom/ssjj/fnsdk/core/util/permission/PermissionMgr;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_8f

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v5}, Lcom/ssjj/fnsdk/core/SsjjFNSDK;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_8f
    add-int/lit8 v3, v3, 0x1

    goto :goto_17
.end method

.method public invoke(Landroid/app/Activity;Ljava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)Z
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SsjjFNSDK.invoke -> "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    invoke-static {p1, p2, p3, p4}, Lcom/ssjj/fnsdk/core/ai;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-super {p0, p1, p2, p3, p4}, Lcom/ssjj/fnsdk/core/s;->invoke(Landroid/app/Activity;Ljava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)Z

    move-result v0

    :cond_1c
    if-nez v0, :cond_37

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "\u4e0d\u652f\u6301\u6b64\u65b9\u6cd5\uff1a"

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    if-eqz p4, :cond_37

    const/4 p2, 0x1

    const/4 p3, 0x0

    invoke-interface {p4, p2, p1, p3}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    :cond_37
    return v0
.end method

.method public isSurportFunc(Ljava/lang/String;)Z
    .registers 3

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/ai;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    invoke-super {p0, p1}, Lcom/ssjj/fnsdk/core/s;->isSurportFunc(Ljava/lang/String;)Z

    move-result v0

    :cond_a
    return v0
.end method

.method public bridge synthetic logCreateRole(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-super {p0, p1, p2, p3, p4}, Lcom/ssjj/fnsdk/core/s;->logCreateRole(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic logEnterGame(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    invoke-super/range {p0 .. p5}, Lcom/ssjj/fnsdk/core/s;->logEnterGame(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic logLoginFinish(Ljava/lang/String;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/ssjj/fnsdk/core/s;->logLoginFinish(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic logRoleLevel(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-super {p0, p1, p2}, Lcom/ssjj/fnsdk/core/s;->logRoleLevel(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic logSelectServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-super {p0, p1, p2, p3}, Lcom/ssjj/fnsdk/core/s;->logSelectServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic login(Landroid/app/Activity;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/ssjj/fnsdk/core/s;->login(Landroid/app/Activity;)V

    return-void
.end method

.method public bridge synthetic logout(Landroid/app/Activity;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/ssjj/fnsdk/core/s;->logout(Landroid/app/Activity;)V

    return-void
.end method

.method public bridge synthetic onActivityResult(IILandroid/content/Intent;)V
    .registers 4

    invoke-super {p0, p1, p2, p3}, Lcom/ssjj/fnsdk/core/s;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onDestroy()V
    .registers 1

    invoke-super {p0}, Lcom/ssjj/fnsdk/core/s;->onDestroy()V

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNSplashManager;->hideSplashDialogForce()V

    return-void
.end method

.method public bridge synthetic onNewIntent(Landroid/content/Intent;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/ssjj/fnsdk/core/s;->onNewIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public bridge synthetic onPause()V
    .registers 1

    invoke-super {p0}, Lcom/ssjj/fnsdk/core/s;->onPause()V

    return-void
.end method

.method public bridge synthetic onRestart()V
    .registers 1

    invoke-super {p0}, Lcom/ssjj/fnsdk/core/s;->onRestart()V

    return-void
.end method

.method public bridge synthetic onResume()V
    .registers 1

    invoke-super {p0}, Lcom/ssjj/fnsdk/core/s;->onResume()V

    return-void
.end method

.method public bridge synthetic onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/ssjj/fnsdk/core/s;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public bridge synthetic onStart()V
    .registers 1

    invoke-super {p0}, Lcom/ssjj/fnsdk/core/s;->onStart()V

    return-void
.end method

.method public bridge synthetic onStop()V
    .registers 1

    invoke-super {p0}, Lcom/ssjj/fnsdk/core/s;->onStop()V

    return-void
.end method

.method public bridge synthetic pay(Landroid/app/Activity;Lcom/ssjj/fnsdk/core/entity/SsjjFNProduct;Lcom/ssjj/fnsdk/core/listener/SsjjFNPayListener;)V
    .registers 4

    invoke-super {p0, p1, p2, p3}, Lcom/ssjj/fnsdk/core/s;->pay(Landroid/app/Activity;Lcom/ssjj/fnsdk/core/entity/SsjjFNProduct;Lcom/ssjj/fnsdk/core/listener/SsjjFNPayListener;)V

    return-void
.end method

.method public bridge synthetic setOauthData(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 3

    invoke-super {p0, p1, p2}, Lcom/ssjj/fnsdk/core/s;->setOauthData(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setSsjjFNAdapter(Lcom/ssjj/fnsdk/core/SsjjFNAdapter;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/ssjj/fnsdk/core/s;->setSsjjFNAdapter(Lcom/ssjj/fnsdk/core/SsjjFNAdapter;)V

    return-void
.end method

.method public bridge synthetic setUserListener(Lcom/ssjj/fnsdk/core/listener/SsjjFNUserListener;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/ssjj/fnsdk/core/s;->setUserListener(Lcom/ssjj/fnsdk/core/listener/SsjjFNUserListener;)V

    return-void
.end method

.method public bridge synthetic showBBS(Landroid/app/Activity;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/ssjj/fnsdk/core/s;->showBBS(Landroid/app/Activity;)V

    return-void
.end method

.method public bridge synthetic showFloatBar(Landroid/app/Activity;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/ssjj/fnsdk/core/s;->showFloatBar(Landroid/app/Activity;)V

    return-void
.end method

.method public bridge synthetic showGameCenter(Landroid/app/Activity;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/ssjj/fnsdk/core/s;->showGameCenter(Landroid/app/Activity;)V

    return-void
.end method

.method public bridge synthetic showPlatformExitDialog(Lcom/ssjj/fnsdk/core/listener/SsjjFNExitDialogListener;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/ssjj/fnsdk/core/s;->showPlatformExitDialog(Lcom/ssjj/fnsdk/core/listener/SsjjFNExitDialogListener;)V

    return-void
.end method

.method public bridge synthetic showUserCenter(Landroid/app/Activity;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/ssjj/fnsdk/core/s;->showUserCenter(Landroid/app/Activity;)V

    return-void
.end method

.method public bridge synthetic switchUser(Landroid/app/Activity;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/ssjj/fnsdk/core/s;->switchUser(Landroid/app/Activity;)V

    return-void
.end method
