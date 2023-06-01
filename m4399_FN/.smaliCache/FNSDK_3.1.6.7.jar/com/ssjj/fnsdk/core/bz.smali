.class Lcom/ssjj/fnsdk/core/bz;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ssjj/fnsdk/core/listener/SsjjFNUserListener;


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/core/SsjjFNTempManager;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/core/SsjjFNTempManager;)V
    .registers 2

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/bz;->a:Lcom/ssjj/fnsdk/core/SsjjFNTempManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/ssjj/fnsdk/core/bz;)Lcom/ssjj/fnsdk/core/SsjjFNTempManager;
    .registers 1

    iget-object p0, p0, Lcom/ssjj/fnsdk/core/bz;->a:Lcom/ssjj/fnsdk/core/SsjjFNTempManager;

    return-object p0
.end method


# virtual methods
.method public onLoginCancel()V
    .registers 3

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/bz;->a:Lcom/ssjj/fnsdk/core/SsjjFNTempManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->a(Lcom/ssjj/fnsdk/core/SsjjFNTempManager;Z)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/bz;->a:Lcom/ssjj/fnsdk/core/SsjjFNTempManager;

    const-string v1, "temp_bind_login_cancel"

    invoke-virtual {v0, v1}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->a(Ljava/lang/String;)V

    const-string v0, "temp onLoginCancel"

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/bz;->a:Lcom/ssjj/fnsdk/core/SsjjFNTempManager;

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->a(Lcom/ssjj/fnsdk/core/SsjjFNTempManager;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/ssjj/fnsdk/core/cc;

    invoke-direct {v1, p0}, Lcom/ssjj/fnsdk/core/cc;-><init>(Lcom/ssjj/fnsdk/core/bz;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onLoginFailed(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/bz;->a:Lcom/ssjj/fnsdk/core/SsjjFNTempManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->a(Lcom/ssjj/fnsdk/core/SsjjFNTempManager;Z)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/bz;->a:Lcom/ssjj/fnsdk/core/SsjjFNTempManager;

    const-string v1, "temp_bind_login_fail"

    invoke-virtual {v0, v1}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->a(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "temp onLoginFailed "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/bz;->a:Lcom/ssjj/fnsdk/core/SsjjFNTempManager;

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->a(Lcom/ssjj/fnsdk/core/SsjjFNTempManager;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/ssjj/fnsdk/core/cb;

    invoke-direct {v1, p0, p1}, Lcom/ssjj/fnsdk/core/cb;-><init>(Lcom/ssjj/fnsdk/core/bz;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onLoginSucceed(Lcom/ssjj/fnsdk/core/entity/SsjjFNUser;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "temp onLoginSucceed "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p1, :cond_c

    const-string v1, "null"

    goto :goto_e

    :cond_c
    iget-object v1, p1, Lcom/ssjj/fnsdk/core/entity/SsjjFNUser;->uid:Ljava/lang/String;

    :goto_e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/bz;->a:Lcom/ssjj/fnsdk/core/SsjjFNTempManager;

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->a(Lcom/ssjj/fnsdk/core/SsjjFNTempManager;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/ssjj/fnsdk/core/ca;

    invoke-direct {v1, p0, p1}, Lcom/ssjj/fnsdk/core/ca;-><init>(Lcom/ssjj/fnsdk/core/bz;Lcom/ssjj/fnsdk/core/entity/SsjjFNUser;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onLogout()V
    .registers 3

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/bz;->a:Lcom/ssjj/fnsdk/core/SsjjFNTempManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->a(Lcom/ssjj/fnsdk/core/SsjjFNTempManager;Z)V

    const-string v0, "temp onLogout"

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNSDK;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNSDK;

    move-result-object v0

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/bz;->a:Lcom/ssjj/fnsdk/core/SsjjFNTempManager;

    invoke-static {v1}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->b(Lcom/ssjj/fnsdk/core/SsjjFNTempManager;)Lcom/ssjj/fnsdk/core/listener/SsjjFNUserListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ssjj/fnsdk/core/SsjjFNSDK;->setUserListener(Lcom/ssjj/fnsdk/core/listener/SsjjFNUserListener;)V

    return-void
.end method

.method public onLogoutException(Ljava/lang/String;)V
    .registers 3

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/bz;->a:Lcom/ssjj/fnsdk/core/SsjjFNTempManager;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->a(Lcom/ssjj/fnsdk/core/SsjjFNTempManager;Z)V

    const-string p1, "temp onLogoutException"

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNSDK;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNSDK;

    move-result-object p1

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/bz;->a:Lcom/ssjj/fnsdk/core/SsjjFNTempManager;

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->b(Lcom/ssjj/fnsdk/core/SsjjFNTempManager;)Lcom/ssjj/fnsdk/core/listener/SsjjFNUserListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ssjj/fnsdk/core/SsjjFNSDK;->setUserListener(Lcom/ssjj/fnsdk/core/listener/SsjjFNUserListener;)V

    return-void
.end method

.method public onSwitchUser(Lcom/ssjj/fnsdk/core/entity/SsjjFNUser;)V
    .registers 4

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/bz;->a:Lcom/ssjj/fnsdk/core/SsjjFNTempManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->a(Lcom/ssjj/fnsdk/core/SsjjFNTempManager;Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "temp onSwitchUser "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/ssjj/fnsdk/core/entity/SsjjFNUser;->uid:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNSDK;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNSDK;

    move-result-object p1

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/bz;->a:Lcom/ssjj/fnsdk/core/SsjjFNTempManager;

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->b(Lcom/ssjj/fnsdk/core/SsjjFNTempManager;)Lcom/ssjj/fnsdk/core/listener/SsjjFNUserListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ssjj/fnsdk/core/SsjjFNSDK;->setUserListener(Lcom/ssjj/fnsdk/core/listener/SsjjFNUserListener;)V

    return-void
.end method
