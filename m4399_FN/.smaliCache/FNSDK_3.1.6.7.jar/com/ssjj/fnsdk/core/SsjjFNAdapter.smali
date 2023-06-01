.class public abstract Lcom/ssjj/fnsdk/core/SsjjFNAdapter;
.super Ljava/lang/Object;


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNAdapter;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNAdapter;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public checkAndUpdateVersion(Landroid/app/Activity;Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;)V
    .registers 7

    const-string v0, "fnsdk: fn, checkAndUpdateVersion"

    const-string v1, "fnsdk"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_f

    const-string p1, "fnsdk: ### updateListener is null!"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_f
    new-instance v0, Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;

    invoke-direct {v0}, Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;-><init>()V

    sget-object v1, Lcom/ssjj/fnsdk/platform/FNConfig;->fn_gameId:Ljava/lang/String;

    sget-object v2, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->fnPlatId:Ljava/lang/String;

    new-instance v3, Lcom/ssjj/fnsdk/core/r;

    invoke-direct {v3, p0, p2}, Lcom/ssjj/fnsdk/core/r;-><init>(Lcom/ssjj/fnsdk/core/SsjjFNAdapter;Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;)V

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;->checkUpdateInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;)V

    return-void
.end method

.method public abstract exit(Lcom/ssjj/fnsdk/core/listener/SsjjFNExitListener;)V
.end method

.method public getUserListener()Lcom/ssjj/fnsdk/core/listener/SsjjFNUserListener;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public hideFloatBar(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public abstract init(Landroid/app/Activity;Lcom/ssjj/fnsdk/core/listener/SsjjFNInitListener;)V
.end method

.method public invoke(Landroid/app/Activity;Ljava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)Z
    .registers 5

    const/4 p1, 0x0

    return p1
.end method

.method public final varargs isIn(Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 7

    const/4 v0, 0x0

    if-eqz p1, :cond_24

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_24

    if-eqz p2, :cond_24

    array-length v1, p2

    if-lez v1, :cond_24

    array-length v1, p2

    const/4 v2, 0x0

    :goto_14
    if-lt v2, v1, :cond_17

    goto :goto_24

    :cond_17
    aget-object v3, p2, v2

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_21

    const/4 v0, 0x1

    goto :goto_24

    :cond_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_24
    :goto_24
    return v0
.end method

.method public abstract isSurportFunc(Ljava/lang/String;)Z
.end method

.method public abstract logCreateRole(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public logEnterGame(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    return-void
.end method

.method public abstract logLoginFinish(Ljava/lang/String;)V
.end method

.method public abstract logRoleLevel(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract logSelectServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract login(Landroid/app/Activity;)V
.end method

.method public logout(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 4

    return-void
.end method

.method public onDestroy()V
    .registers 1

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .registers 2

    return-void
.end method

.method public onPause()V
    .registers 1

    return-void
.end method

.method public onRestart()V
    .registers 1

    return-void
.end method

.method public onResume()V
    .registers 1

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 2

    return-void
.end method

.method public onStart()V
    .registers 1

    return-void
.end method

.method public onStop()V
    .registers 1

    return-void
.end method

.method public abstract pay(Landroid/app/Activity;Lcom/ssjj/fnsdk/core/entity/SsjjFNProduct;Lcom/ssjj/fnsdk/core/listener/SsjjFNPayListener;)V
.end method

.method public setOauthData(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 3

    return-void
.end method

.method public abstract setUserListener(Lcom/ssjj/fnsdk/core/listener/SsjjFNUserListener;)V
.end method

.method public share(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public showBBS(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public showFloatBar(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public showGameCenter(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public showPlatformExitDialog(Lcom/ssjj/fnsdk/core/listener/SsjjFNExitDialogListener;)V
    .registers 2

    return-void
.end method

.method public showUserCenter(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public switchUser(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method
