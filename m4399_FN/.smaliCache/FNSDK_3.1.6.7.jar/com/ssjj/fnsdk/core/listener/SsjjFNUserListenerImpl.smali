.class public Lcom/ssjj/fnsdk/core/listener/SsjjFNUserListenerImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ssjj/fnsdk/core/listener/SsjjFNUserListener;


# instance fields
.field private a:Lcom/ssjj/fnsdk/core/listener/SsjjFNUserListener;


# direct methods
.method public constructor <init>(Lcom/ssjj/fnsdk/core/listener/SsjjFNUserListener;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/listener/SsjjFNUserListenerImpl;->a:Lcom/ssjj/fnsdk/core/listener/SsjjFNUserListener;

    return-void
.end method

.method static synthetic a(Lcom/ssjj/fnsdk/core/listener/SsjjFNUserListenerImpl;)Lcom/ssjj/fnsdk/core/listener/SsjjFNUserListener;
    .registers 1

    iget-object p0, p0, Lcom/ssjj/fnsdk/core/listener/SsjjFNUserListenerImpl;->a:Lcom/ssjj/fnsdk/core/listener/SsjjFNUserListener;

    return-object p0
.end method


# virtual methods
.method public onLoginCancel()V
    .registers 5

    const/16 v0, 0x7a

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/ssjj/fnsdk/core/TLog;->log(ILjava/lang/String;)V

    invoke-static {}, Lcom/ssjj/fnsdk/core/listener/FNEventManager;->getInstance()Lcom/ssjj/fnsdk/core/listener/FNEventManager;

    move-result-object v0

    const-string v1, "-2"

    const/4 v2, 0x0

    const-string v3, "login"

    invoke-virtual {v0, v3, v1, v2}, Lcom/ssjj/fnsdk/core/listener/FNEventManager;->a(Ljava/lang/String;Ljava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/listener/SsjjFNUserListenerImpl;->a:Lcom/ssjj/fnsdk/core/listener/SsjjFNUserListener;

    if-nez v0, :cond_1d

    const-string v0, "SsjjFNUserListener is null"

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    return-void

    :cond_1d
    invoke-static {}, Lcom/ssjj/fnsdk/core/listener/b;->a()Z

    move-result v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/listener/SsjjFNUserListenerImpl;->a:Lcom/ssjj/fnsdk/core/listener/SsjjFNUserListener;

    invoke-interface {v0}, Lcom/ssjj/fnsdk/core/listener/SsjjFNUserListener;->onLoginCancel()V

    return-void

    :cond_29
    new-instance v0, Lcom/ssjj/fnsdk/core/listener/q;

    invoke-direct {v0, p0}, Lcom/ssjj/fnsdk/core/listener/q;-><init>(Lcom/ssjj/fnsdk/core/listener/SsjjFNUserListenerImpl;)V

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/listener/b;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onLoginFailed(Ljava/lang/String;)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x79

    invoke-static {v1, v0}, Lcom/ssjj/fnsdk/core/TLog;->log(ILjava/lang/String;)V

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/LogUtil;->e(Ljava/lang/String;)V

    invoke-static {}, Lcom/ssjj/fnsdk/core/listener/FNEventManager;->getInstance()Lcom/ssjj/fnsdk/core/listener/FNEventManager;

    move-result-object v0

    const-string v1, "-1"

    const/4 v2, 0x0

    const-string v3, "login"

    invoke-virtual {v0, v3, v1, v2}, Lcom/ssjj/fnsdk/core/listener/FNEventManager;->a(Ljava/lang/String;Ljava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/listener/SsjjFNUserListenerImpl;->a:Lcom/ssjj/fnsdk/core/listener/SsjjFNUserListener;

    if-nez v0, :cond_2b

    const-string p1, "SsjjFNUserListener is null"

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    return-void

    :cond_2b
    invoke-static {}, Lcom/ssjj/fnsdk/core/listener/b;->a()Z

    move-result v0

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/listener/SsjjFNUserListenerImpl;->a:Lcom/ssjj/fnsdk/core/listener/SsjjFNUserListener;

    invoke-interface {v0, p1}, Lcom/ssjj/fnsdk/core/listener/SsjjFNUserListener;->onLoginFailed(Ljava/lang/String;)V

    return-void

    :cond_37
    new-instance v0, Lcom/ssjj/fnsdk/core/listener/p;

    invoke-direct {v0, p0, p1}, Lcom/ssjj/fnsdk/core/listener/p;-><init>(Lcom/ssjj/fnsdk/core/listener/SsjjFNUserListenerImpl;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/listener/b;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onLoginSucceed(Lcom/ssjj/fnsdk/core/entity/SsjjFNUser;)V
    .registers 6

    const-string v0, ""

    if-nez p1, :cond_6

    move-object v1, v0

    goto :goto_8

    :cond_6
    iget-object v1, p1, Lcom/ssjj/fnsdk/core/entity/SsjjFNUser;->uid:Ljava/lang/String;

    :goto_8
    if-nez p1, :cond_c

    move-object v2, v0

    goto :goto_e

    :cond_c
    iget-object v2, p1, Lcom/ssjj/fnsdk/core/entity/SsjjFNUser;->name:Ljava/lang/String;

    :goto_e
    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->setLoginSuccUid(Ljava/lang/String;)V

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->setUsername(Ljava/lang/String;)V

    const/16 v3, 0x78

    invoke-static {v3, v0}, Lcom/ssjj/fnsdk/core/TLog;->log(ILjava/lang/String;)V

    if-eqz p1, :cond_34

    iget-object v0, p1, Lcom/ssjj/fnsdk/core/entity/SsjjFNUser;->uid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_34

    invoke-static {}, Lcom/ssjj/fnsdk/core/StatManager;->getInstance()Lcom/ssjj/fnsdk/core/StatManager;

    move-result-object v0

    iget-object v3, p1, Lcom/ssjj/fnsdk/core/entity/SsjjFNUser;->uid:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/ssjj/fnsdk/core/StatManager;->saveSPUid(Ljava/lang/String;)V

    :cond_34
    new-instance v0, Lcom/ssjj/fnsdk/core/SsjjFNParams;

    invoke-direct {v0}, Lcom/ssjj/fnsdk/core/SsjjFNParams;-><init>()V

    const-string v3, "uid"

    invoke-virtual {v0, v3, v1}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "username"

    invoke-virtual {v0, v1, v2}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/ssjj/fnsdk/core/listener/FNEventManager;->getInstance()Lcom/ssjj/fnsdk/core/listener/FNEventManager;

    move-result-object v1

    const-string v2, "login"

    const-string v3, "1"

    invoke-virtual {v1, v2, v3, v0}, Lcom/ssjj/fnsdk/core/listener/FNEventManager;->a(Ljava/lang/String;Ljava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/listener/SsjjFNUserListenerImpl;->a:Lcom/ssjj/fnsdk/core/listener/SsjjFNUserListener;

    if-nez v0, :cond_58

    const-string p1, "SsjjFNUserListener is null"

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    return-void

    :cond_58
    invoke-static {}, Lcom/ssjj/fnsdk/core/listener/b;->a()Z

    move-result v0

    if-eqz v0, :cond_64

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/listener/SsjjFNUserListenerImpl;->a:Lcom/ssjj/fnsdk/core/listener/SsjjFNUserListener;

    invoke-interface {v0, p1}, Lcom/ssjj/fnsdk/core/listener/SsjjFNUserListener;->onLoginSucceed(Lcom/ssjj/fnsdk/core/entity/SsjjFNUser;)V

    return-void

    :cond_64
    new-instance v0, Lcom/ssjj/fnsdk/core/listener/n;

    invoke-direct {v0, p0, p1}, Lcom/ssjj/fnsdk/core/listener/n;-><init>(Lcom/ssjj/fnsdk/core/listener/SsjjFNUserListenerImpl;Lcom/ssjj/fnsdk/core/entity/SsjjFNUser;)V

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/listener/b;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onLogout()V
    .registers 5

    const/16 v0, 0x7b

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/ssjj/fnsdk/core/TLog;->log(ILjava/lang/String;)V

    invoke-static {}, Lcom/ssjj/fnsdk/core/listener/FNEventManager;->getInstance()Lcom/ssjj/fnsdk/core/listener/FNEventManager;

    move-result-object v0

    const-string v1, "1"

    const/4 v2, 0x0

    const-string v3, "logout"

    invoke-virtual {v0, v3, v1, v2}, Lcom/ssjj/fnsdk/core/listener/FNEventManager;->a(Ljava/lang/String;Ljava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/listener/SsjjFNUserListenerImpl;->a:Lcom/ssjj/fnsdk/core/listener/SsjjFNUserListener;

    if-nez v0, :cond_1d

    const-string v0, "SsjjFNUserListener is null"

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    return-void

    :cond_1d
    invoke-static {}, Lcom/ssjj/fnsdk/core/listener/b;->a()Z

    move-result v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/listener/SsjjFNUserListenerImpl;->a:Lcom/ssjj/fnsdk/core/listener/SsjjFNUserListener;

    invoke-interface {v0}, Lcom/ssjj/fnsdk/core/listener/SsjjFNUserListener;->onLogout()V

    return-void

    :cond_29
    new-instance v0, Lcom/ssjj/fnsdk/core/listener/r;

    invoke-direct {v0, p0}, Lcom/ssjj/fnsdk/core/listener/r;-><init>(Lcom/ssjj/fnsdk/core/listener/SsjjFNUserListenerImpl;)V

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/listener/b;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onLogoutException(Ljava/lang/String;)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x7c

    invoke-static {v1, v0}, Lcom/ssjj/fnsdk/core/TLog;->log(ILjava/lang/String;)V

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/LogUtil;->e(Ljava/lang/String;)V

    invoke-static {}, Lcom/ssjj/fnsdk/core/listener/FNEventManager;->getInstance()Lcom/ssjj/fnsdk/core/listener/FNEventManager;

    move-result-object v0

    const-string v1, "-1"

    const/4 v2, 0x0

    const-string v3, "logout"

    invoke-virtual {v0, v3, v1, v2}, Lcom/ssjj/fnsdk/core/listener/FNEventManager;->a(Ljava/lang/String;Ljava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/listener/SsjjFNUserListenerImpl;->a:Lcom/ssjj/fnsdk/core/listener/SsjjFNUserListener;

    if-nez v0, :cond_2b

    const-string p1, "SsjjFNUserListener is null"

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    return-void

    :cond_2b
    invoke-static {}, Lcom/ssjj/fnsdk/core/listener/b;->a()Z

    move-result v0

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/listener/SsjjFNUserListenerImpl;->a:Lcom/ssjj/fnsdk/core/listener/SsjjFNUserListener;

    invoke-interface {v0, p1}, Lcom/ssjj/fnsdk/core/listener/SsjjFNUserListener;->onLogoutException(Ljava/lang/String;)V

    return-void

    :cond_37
    new-instance v0, Lcom/ssjj/fnsdk/core/listener/s;

    invoke-direct {v0, p0, p1}, Lcom/ssjj/fnsdk/core/listener/s;-><init>(Lcom/ssjj/fnsdk/core/listener/SsjjFNUserListenerImpl;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/listener/b;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSwitchUser(Lcom/ssjj/fnsdk/core/entity/SsjjFNUser;)V
    .registers 7

    const-string v0, ""

    if-nez p1, :cond_6

    move-object v1, v0

    goto :goto_8

    :cond_6
    iget-object v1, p1, Lcom/ssjj/fnsdk/core/entity/SsjjFNUser;->uid:Ljava/lang/String;

    :goto_8
    if-nez p1, :cond_c

    move-object v2, v0

    goto :goto_e

    :cond_c
    iget-object v2, p1, Lcom/ssjj/fnsdk/core/entity/SsjjFNUser;->name:Ljava/lang/String;

    :goto_e
    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->setLoginSuccUid(Ljava/lang/String;)V

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->setUsername(Ljava/lang/String;)V

    const/16 v3, 0x7e

    invoke-static {v3, v0}, Lcom/ssjj/fnsdk/core/TLog;->log(ILjava/lang/String;)V

    if-eqz p1, :cond_34

    iget-object v3, p1, Lcom/ssjj/fnsdk/core/entity/SsjjFNUser;->uid:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_34

    invoke-static {}, Lcom/ssjj/fnsdk/core/StatManager;->getInstance()Lcom/ssjj/fnsdk/core/StatManager;

    move-result-object v3

    iget-object v4, p1, Lcom/ssjj/fnsdk/core/entity/SsjjFNUser;->uid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/ssjj/fnsdk/core/StatManager;->saveSPUid(Ljava/lang/String;)V

    :cond_34
    new-instance v3, Lcom/ssjj/fnsdk/core/SsjjFNParams;

    invoke-direct {v3}, Lcom/ssjj/fnsdk/core/SsjjFNParams;-><init>()V

    const-string v4, "uid"

    invoke-virtual {v3, v4, v1}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "username"

    invoke-virtual {v3, v1, v2}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_46

    goto :goto_48

    :cond_46
    iget-object v0, p1, Lcom/ssjj/fnsdk/core/entity/SsjjFNUser;->ext:Ljava/lang/String;

    :goto_48
    const-string v1, "eventData"

    invoke-virtual {v3, v1, v0}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/ssjj/fnsdk/core/listener/FNEventManager;->getInstance()Lcom/ssjj/fnsdk/core/listener/FNEventManager;

    move-result-object v0

    const-string v1, "login"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2, v3}, Lcom/ssjj/fnsdk/core/listener/FNEventManager;->a(Ljava/lang/String;Ljava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/listener/SsjjFNUserListenerImpl;->a:Lcom/ssjj/fnsdk/core/listener/SsjjFNUserListener;

    if-nez v0, :cond_62

    const-string p1, "SsjjFNUserListener is null"

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    return-void

    :cond_62
    invoke-static {}, Lcom/ssjj/fnsdk/core/listener/b;->a()Z

    move-result v0

    if-eqz v0, :cond_6e

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/listener/SsjjFNUserListenerImpl;->a:Lcom/ssjj/fnsdk/core/listener/SsjjFNUserListener;

    invoke-interface {v0, p1}, Lcom/ssjj/fnsdk/core/listener/SsjjFNUserListener;->onSwitchUser(Lcom/ssjj/fnsdk/core/entity/SsjjFNUser;)V

    return-void

    :cond_6e
    new-instance v0, Lcom/ssjj/fnsdk/core/listener/o;

    invoke-direct {v0, p0, p1}, Lcom/ssjj/fnsdk/core/listener/o;-><init>(Lcom/ssjj/fnsdk/core/listener/SsjjFNUserListenerImpl;Lcom/ssjj/fnsdk/core/entity/SsjjFNUser;)V

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/listener/b;->a(Ljava/lang/Runnable;)V

    return-void
.end method
