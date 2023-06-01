.class Lcom/ssjj/fnsdk/core/cm;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ssjj/fnsdk/core/listener/SsjjFNUserListener;


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/core/SsjjFNTempManager;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/core/SsjjFNTempManager;)V
    .registers 2

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/cm;->a:Lcom/ssjj/fnsdk/core/SsjjFNTempManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoginCancel()V
    .registers 2

    const-string v0, "empty onLoginCancel"

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    return-void
.end method

.method public onLoginFailed(Ljava/lang/String;)V
    .registers 2

    const-string p1, "empty onLoginFailed"

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    return-void
.end method

.method public onLoginSucceed(Lcom/ssjj/fnsdk/core/entity/SsjjFNUser;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "empty onLoginSucceed "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/ssjj/fnsdk/core/entity/SsjjFNUser;->uid:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    return-void
.end method

.method public onLogout()V
    .registers 2

    const-string v0, "empty onLogout"

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    return-void
.end method

.method public onLogoutException(Ljava/lang/String;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "empty onLogoutException"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    return-void
.end method

.method public onSwitchUser(Lcom/ssjj/fnsdk/core/entity/SsjjFNUser;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "empty onSwitchUser "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/ssjj/fnsdk/core/entity/SsjjFNUser;->uid:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    return-void
.end method
