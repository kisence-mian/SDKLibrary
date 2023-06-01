.class Lcom/ssjj/fnsdk/lib/impl/w;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ssjj/fnsdk/core/listener/SsjjFNUserListener;


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/lib/impl/v;

.field private final synthetic b:Lcom/ssjj/fnsdk/lib/sdk/FNBack;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/lib/impl/v;Lcom/ssjj/fnsdk/lib/sdk/FNBack;)V
    .registers 3

    iput-object p1, p0, Lcom/ssjj/fnsdk/lib/impl/w;->a:Lcom/ssjj/fnsdk/lib/impl/v;

    iput-object p2, p0, Lcom/ssjj/fnsdk/lib/impl/w;->b:Lcom/ssjj/fnsdk/lib/sdk/FNBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoginCancel()V
    .registers 5

    iget-object v0, p0, Lcom/ssjj/fnsdk/lib/impl/w;->b:Lcom/ssjj/fnsdk/lib/sdk/FNBack;

    const-string v1, "login cancel"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-interface {v0, v3, v1, v2}, Lcom/ssjj/fnsdk/lib/sdk/FNBack;->onBack(ILjava/lang/String;Lcom/ssjj/fnsdk/lib/sdk/FNParam;)V

    return-void
.end method

.method public onLoginFailed(Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/ssjj/fnsdk/lib/impl/w;->b:Lcom/ssjj/fnsdk/lib/sdk/FNBack;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, v2}, Lcom/ssjj/fnsdk/lib/sdk/FNBack;->onBack(ILjava/lang/String;Lcom/ssjj/fnsdk/lib/sdk/FNParam;)V

    return-void
.end method

.method public onLoginSucceed(Lcom/ssjj/fnsdk/core/entity/SsjjFNUser;)V
    .registers 5

    new-instance v0, Lcom/ssjj/fnsdk/lib/sdk/FNParam;

    invoke-direct {v0}, Lcom/ssjj/fnsdk/lib/sdk/FNParam;-><init>()V

    if-eqz p1, :cond_1c

    const-string v1, "uid"

    iget-object v2, p1, Lcom/ssjj/fnsdk/core/entity/SsjjFNUser;->uid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/ssjj/fnsdk/lib/sdk/FNParam;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "name"

    iget-object v2, p1, Lcom/ssjj/fnsdk/core/entity/SsjjFNUser;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/ssjj/fnsdk/lib/sdk/FNParam;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ext"

    iget-object p1, p1, Lcom/ssjj/fnsdk/core/entity/SsjjFNUser;->ext:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/ssjj/fnsdk/lib/sdk/FNParam;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1c
    iget-object p1, p0, Lcom/ssjj/fnsdk/lib/impl/w;->b:Lcom/ssjj/fnsdk/lib/sdk/FNBack;

    const/4 v1, 0x1

    const-string v2, "login succ"

    invoke-interface {p1, v1, v2, v0}, Lcom/ssjj/fnsdk/lib/sdk/FNBack;->onBack(ILjava/lang/String;Lcom/ssjj/fnsdk/lib/sdk/FNParam;)V

    return-void
.end method

.method public onLogout()V
    .registers 5

    iget-object v0, p0, Lcom/ssjj/fnsdk/lib/impl/w;->b:Lcom/ssjj/fnsdk/lib/sdk/FNBack;

    const-string v1, "logout succ"

    const/4 v2, 0x0

    const/4 v3, 0x5

    invoke-interface {v0, v3, v1, v2}, Lcom/ssjj/fnsdk/lib/sdk/FNBack;->onBack(ILjava/lang/String;Lcom/ssjj/fnsdk/lib/sdk/FNParam;)V

    return-void
.end method

.method public onLogoutException(Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/ssjj/fnsdk/lib/impl/w;->b:Lcom/ssjj/fnsdk/lib/sdk/FNBack;

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, v2}, Lcom/ssjj/fnsdk/lib/sdk/FNBack;->onBack(ILjava/lang/String;Lcom/ssjj/fnsdk/lib/sdk/FNParam;)V

    return-void
.end method

.method public onSwitchUser(Lcom/ssjj/fnsdk/core/entity/SsjjFNUser;)V
    .registers 5

    new-instance v0, Lcom/ssjj/fnsdk/lib/sdk/FNParam;

    invoke-direct {v0}, Lcom/ssjj/fnsdk/lib/sdk/FNParam;-><init>()V

    if-eqz p1, :cond_1c

    const-string v1, "uid"

    iget-object v2, p1, Lcom/ssjj/fnsdk/core/entity/SsjjFNUser;->uid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/ssjj/fnsdk/lib/sdk/FNParam;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "name"

    iget-object v2, p1, Lcom/ssjj/fnsdk/core/entity/SsjjFNUser;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/ssjj/fnsdk/lib/sdk/FNParam;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ext"

    iget-object p1, p1, Lcom/ssjj/fnsdk/core/entity/SsjjFNUser;->ext:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/ssjj/fnsdk/lib/sdk/FNParam;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1c
    iget-object p1, p0, Lcom/ssjj/fnsdk/lib/impl/w;->b:Lcom/ssjj/fnsdk/lib/sdk/FNBack;

    const/4 v1, 0x3

    const-string v2, "switch succ"

    invoke-interface {p1, v1, v2, v0}, Lcom/ssjj/fnsdk/lib/sdk/FNBack;->onBack(ILjava/lang/String;Lcom/ssjj/fnsdk/lib/sdk/FNParam;)V

    return-void
.end method
