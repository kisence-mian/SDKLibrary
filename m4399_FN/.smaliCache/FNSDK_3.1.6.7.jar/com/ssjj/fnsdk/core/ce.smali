.class Lcom/ssjj/fnsdk/core/ce;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ssjj/fnsdk/core/SsjjFNListener;


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/core/SsjjFNTempManager;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/core/SsjjFNTempManager;)V
    .registers 2

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/ce;->a:Lcom/ssjj/fnsdk/core/SsjjFNTempManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V
    .registers 11

    invoke-static {}, Lcom/ssjj/fnsdk/core/FNDialog;->getInstance()Lcom/ssjj/fnsdk/core/FNDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ssjj/fnsdk/core/FNDialog;->hideLoadingDialog()V

    const-string p1, "oauthStr"

    invoke-virtual {p3, p1}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p3, Lcom/ssjj/fnsdk/core/entity/FNOauthData;

    invoke-direct {p3, p1}, Lcom/ssjj/fnsdk/core/entity/FNOauthData;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/ssjj/fnsdk/core/entity/FNOauthData;->isUidAvail()Z

    move-result v0

    const-string v1, "\u77e5\u9053\u4e86"

    const-string v2, "\u6e29\u99a8\u63d0\u793a"

    const-string v3, "\u7ed1\u5b9a\u5931\u8d25\uff1a"

    if-eqz v0, :cond_175

    iget-object p2, p0, Lcom/ssjj/fnsdk/core/ce;->a:Lcom/ssjj/fnsdk/core/SsjjFNTempManager;

    invoke-static {p2, p1}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->a(Lcom/ssjj/fnsdk/core/SsjjFNTempManager;Ljava/lang/String;)V

    const-string p1, "\u767b\u5f55\u9a8c\u8bc1\u6210\u529f"

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/ssjj/fnsdk/core/entity/FNOauthData;->hasBind()Z

    move-result p1

    const-string p2, ""

    const/4 v0, 0x0

    const/4 v4, 0x1

    if-eqz p1, :cond_10d

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/ce;->a:Lcom/ssjj/fnsdk/core/SsjjFNTempManager;

    const-string v5, "temp_bind_oauth_succ_but_has_bind"

    invoke-virtual {p1, v5}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->a(Ljava/lang/String;)V

    const-string p1, "\u8be5\u5e10\u53f7\u6709\u7ed1\u5b9a"

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    sget-object p1, Lcom/ssjj/fnsdk/core/FNMsg;->MSG_OAUTH_HAS_BIND:Ljava/lang/String;

    iget-object v5, p0, Lcom/ssjj/fnsdk/core/ce;->a:Lcom/ssjj/fnsdk/core/SsjjFNTempManager;

    invoke-static {v5}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->c(Lcom/ssjj/fnsdk/core/SsjjFNTempManager;)Lcom/ssjj/fnsdk/core/SsjjFNTempManager$TempUser;

    move-result-object v5

    if-eqz v5, :cond_e5

    iget-object v5, p0, Lcom/ssjj/fnsdk/core/ce;->a:Lcom/ssjj/fnsdk/core/SsjjFNTempManager;

    invoke-static {v5}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->c(Lcom/ssjj/fnsdk/core/SsjjFNTempManager;)Lcom/ssjj/fnsdk/core/SsjjFNTempManager$TempUser;

    move-result-object v5

    iget-object v5, v5, Lcom/ssjj/fnsdk/core/SsjjFNTempManager$TempUser;->tempUid:Ljava/lang/String;

    if-eqz v5, :cond_e5

    iget-object v5, p0, Lcom/ssjj/fnsdk/core/ce;->a:Lcom/ssjj/fnsdk/core/SsjjFNTempManager;

    invoke-static {v5}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->c(Lcom/ssjj/fnsdk/core/SsjjFNTempManager;)Lcom/ssjj/fnsdk/core/SsjjFNTempManager$TempUser;

    move-result-object v5

    iget-object v5, v5, Lcom/ssjj/fnsdk/core/SsjjFNTempManager$TempUser;->tempUid:Ljava/lang/String;

    iget-object v6, p3, Lcom/ssjj/fnsdk/core/entity/FNOauthData;->uid:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e5

    const-string p1, "\u8be5\u5e10\u53f7\u6709\u7ed1\u5b9a\uff0c\u76f4\u63a5\u8bbe\u7f6e\u7ed1\u5b9a\u6210\u529f\uff0c\u4e0d\u7528\u91cd\u65b0\u7ed1\u5b9a"

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/ce;->a:Lcom/ssjj/fnsdk/core/SsjjFNTempManager;

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->a(Lcom/ssjj/fnsdk/core/SsjjFNTempManager;)Landroid/app/Activity;

    move-result-object p1

    const-string v1, "\u7ed1\u5b9a\u6210\u529f"

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/ce;->a:Lcom/ssjj/fnsdk/core/SsjjFNTempManager;

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->c(Lcom/ssjj/fnsdk/core/SsjjFNTempManager;)Lcom/ssjj/fnsdk/core/SsjjFNTempManager$TempUser;

    move-result-object p1

    iput-boolean v4, p1, Lcom/ssjj/fnsdk/core/SsjjFNTempManager$TempUser;->hasBind:Z

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/ce;->a:Lcom/ssjj/fnsdk/core/SsjjFNTempManager;

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->a(Lcom/ssjj/fnsdk/core/SsjjFNTempManager;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/ce;->a:Lcom/ssjj/fnsdk/core/SsjjFNTempManager;

    invoke-static {v1}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->c(Lcom/ssjj/fnsdk/core/SsjjFNTempManager;)Lcom/ssjj/fnsdk/core/SsjjFNTempManager$TempUser;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->a(Lcom/ssjj/fnsdk/core/SsjjFNTempManager;Landroid/content/Context;Lcom/ssjj/fnsdk/core/SsjjFNTempManager$TempUser;)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/ce;->a:Lcom/ssjj/fnsdk/core/SsjjFNTempManager;

    new-instance v0, Lcom/ssjj/fnsdk/core/entity/FNOauthData;

    invoke-direct {v0}, Lcom/ssjj/fnsdk/core/entity/FNOauthData;-><init>()V

    invoke-static {p1, v0}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->a(Lcom/ssjj/fnsdk/core/SsjjFNTempManager;Lcom/ssjj/fnsdk/core/entity/FNOauthData;)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/ce;->a:Lcom/ssjj/fnsdk/core/SsjjFNTempManager;

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->e(Lcom/ssjj/fnsdk/core/SsjjFNTempManager;)Lcom/ssjj/fnsdk/core/entity/FNOauthData;

    move-result-object p1

    iput v4, p1, Lcom/ssjj/fnsdk/core/entity/FNOauthData;->code:I

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/ce;->a:Lcom/ssjj/fnsdk/core/SsjjFNTempManager;

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->e(Lcom/ssjj/fnsdk/core/SsjjFNTempManager;)Lcom/ssjj/fnsdk/core/entity/FNOauthData;

    move-result-object p1

    iput-object p2, p1, Lcom/ssjj/fnsdk/core/entity/FNOauthData;->msg:Ljava/lang/String;

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/ce;->a:Lcom/ssjj/fnsdk/core/SsjjFNTempManager;

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->e(Lcom/ssjj/fnsdk/core/SsjjFNTempManager;)Lcom/ssjj/fnsdk/core/entity/FNOauthData;

    move-result-object p1

    iget-object p2, p0, Lcom/ssjj/fnsdk/core/ce;->a:Lcom/ssjj/fnsdk/core/SsjjFNTempManager;

    invoke-static {p2}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->c(Lcom/ssjj/fnsdk/core/SsjjFNTempManager;)Lcom/ssjj/fnsdk/core/SsjjFNTempManager$TempUser;

    move-result-object p2

    iget-object p2, p2, Lcom/ssjj/fnsdk/core/SsjjFNTempManager$TempUser;->tempUid:Ljava/lang/String;

    iput-object p2, p1, Lcom/ssjj/fnsdk/core/entity/FNOauthData;->uid:Ljava/lang/String;

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/ce;->a:Lcom/ssjj/fnsdk/core/SsjjFNTempManager;

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->e(Lcom/ssjj/fnsdk/core/SsjjFNTempManager;)Lcom/ssjj/fnsdk/core/entity/FNOauthData;

    move-result-object p1

    iget-object p2, p0, Lcom/ssjj/fnsdk/core/ce;->a:Lcom/ssjj/fnsdk/core/SsjjFNTempManager;

    invoke-static {p2}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->c(Lcom/ssjj/fnsdk/core/SsjjFNTempManager;)Lcom/ssjj/fnsdk/core/SsjjFNTempManager$TempUser;

    move-result-object p2

    iget-object p2, p2, Lcom/ssjj/fnsdk/core/SsjjFNTempManager$TempUser;->tempName:Ljava/lang/String;

    iput-object p2, p1, Lcom/ssjj/fnsdk/core/entity/FNOauthData;->name:Ljava/lang/String;

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/ce;->a:Lcom/ssjj/fnsdk/core/SsjjFNTempManager;

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->e(Lcom/ssjj/fnsdk/core/SsjjFNTempManager;)Lcom/ssjj/fnsdk/core/entity/FNOauthData;

    move-result-object p1

    iget-object p2, p3, Lcom/ssjj/fnsdk/core/entity/FNOauthData;->uid:Ljava/lang/String;

    iput-object p2, p1, Lcom/ssjj/fnsdk/core/entity/FNOauthData;->rawUid:Ljava/lang/String;

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/ce;->a:Lcom/ssjj/fnsdk/core/SsjjFNTempManager;

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->e(Lcom/ssjj/fnsdk/core/SsjjFNTempManager;)Lcom/ssjj/fnsdk/core/entity/FNOauthData;

    move-result-object p1

    iget-object p2, p3, Lcom/ssjj/fnsdk/core/entity/FNOauthData;->name:Ljava/lang/String;

    iput-object p2, p1, Lcom/ssjj/fnsdk/core/entity/FNOauthData;->rawName:Ljava/lang/String;

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/ce;->a:Lcom/ssjj/fnsdk/core/SsjjFNTempManager;

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->e(Lcom/ssjj/fnsdk/core/SsjjFNTempManager;)Lcom/ssjj/fnsdk/core/entity/FNOauthData;

    move-result-object p1

    iput-boolean v4, p1, Lcom/ssjj/fnsdk/core/entity/FNOauthData;->isTempUser:Z

    goto/16 :goto_1ad

    :cond_e5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/ssjj/fnsdk/core/ce;->a:Lcom/ssjj/fnsdk/core/SsjjFNTempManager;

    invoke-static {p2}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->a(Lcom/ssjj/fnsdk/core/SsjjFNTempManager;)Landroid/app/Activity;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, v2, p1, v1}, Lcom/ssjj/fnsdk/core/FNDialog;->showConfirmDialog(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto/16 :goto_1a4

    :cond_10d
    iget-object p1, p0, Lcom/ssjj/fnsdk/core/ce;->a:Lcom/ssjj/fnsdk/core/SsjjFNTempManager;

    const-string v1, "temp_bind_oauth_succ"

    invoke-virtual {p1, v1}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->a(Ljava/lang/String;)V

    iget-object p1, p3, Lcom/ssjj/fnsdk/core/entity/FNOauthData;->uid:Ljava/lang/String;

    iget-object p3, p0, Lcom/ssjj/fnsdk/core/ce;->a:Lcom/ssjj/fnsdk/core/SsjjFNTempManager;

    invoke-static {p3, p1}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->b(Lcom/ssjj/fnsdk/core/SsjjFNTempManager;Ljava/lang/String;)V

    iget-object p3, p0, Lcom/ssjj/fnsdk/core/ce;->a:Lcom/ssjj/fnsdk/core/SsjjFNTempManager;

    invoke-static {p3}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->c(Lcom/ssjj/fnsdk/core/SsjjFNTempManager;)Lcom/ssjj/fnsdk/core/SsjjFNTempManager$TempUser;

    move-result-object p3

    if-eqz p3, :cond_15c

    invoke-static {}, Lcom/ssjj/fnsdk/core/FNDialog;->getInstance()Lcom/ssjj/fnsdk/core/FNDialog;

    move-result-object p3

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/ce;->a:Lcom/ssjj/fnsdk/core/SsjjFNTempManager;

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->a(Lcom/ssjj/fnsdk/core/SsjjFNTempManager;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/ssjj/fnsdk/core/cf;

    invoke-direct {v1, p0}, Lcom/ssjj/fnsdk/core/cf;-><init>(Lcom/ssjj/fnsdk/core/ce;)V

    const-string v2, "\u7ed1\u5b9a\u4e2d..."

    invoke-virtual {p3, v0, v2, v1}, Lcom/ssjj/fnsdk/core/FNDialog;->showLoadingDialog(Landroid/app/Activity;Ljava/lang/String;Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object p3, p0, Lcom/ssjj/fnsdk/core/ce;->a:Lcom/ssjj/fnsdk/core/SsjjFNTempManager;

    invoke-static {p3}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->f(Lcom/ssjj/fnsdk/core/SsjjFNTempManager;)Lcom/ssjj/fnsdk/core/listener/SsjjFNCheckBindListener;

    move-result-object p3

    if-eqz p3, :cond_151

    iget-object p2, p0, Lcom/ssjj/fnsdk/core/ce;->a:Lcom/ssjj/fnsdk/core/SsjjFNTempManager;

    invoke-static {p2}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->f(Lcom/ssjj/fnsdk/core/SsjjFNTempManager;)Lcom/ssjj/fnsdk/core/listener/SsjjFNCheckBindListener;

    move-result-object p2

    iget-object p3, p0, Lcom/ssjj/fnsdk/core/ce;->a:Lcom/ssjj/fnsdk/core/SsjjFNTempManager;

    invoke-static {p3}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->c(Lcom/ssjj/fnsdk/core/SsjjFNTempManager;)Lcom/ssjj/fnsdk/core/SsjjFNTempManager$TempUser;

    move-result-object p3

    iget-object p3, p3, Lcom/ssjj/fnsdk/core/SsjjFNTempManager$TempUser;->tempUid:Ljava/lang/String;

    invoke-interface {p2, p3, p1}, Lcom/ssjj/fnsdk/core/listener/SsjjFNCheckBindListener;->onCheckBind(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1ad

    :cond_151
    const-string p1, "\u8702\u9e1f\u7ed1\u5b9a\u63a5\u53e3\u672a\u63a5\u597d\uff0c\u672a\u8c03\u7528 SsjjFNSDK.getInstance().setCheckBindListener(listener)"

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/LogUtil;->e(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/ce;->a:Lcom/ssjj/fnsdk/core/SsjjFNTempManager;

    invoke-virtual {p1, v4, p2}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->onSetCheckBindResult(ZLjava/lang/String;)V

    goto :goto_1ad

    :cond_15c
    iget-object p1, p0, Lcom/ssjj/fnsdk/core/ce;->a:Lcom/ssjj/fnsdk/core/SsjjFNTempManager;

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->a(Lcom/ssjj/fnsdk/core/SsjjFNTempManager;)Landroid/app/Activity;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->a(Lcom/ssjj/fnsdk/core/SsjjFNTempManager;Landroid/app/Activity;)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/ce;->a:Lcom/ssjj/fnsdk/core/SsjjFNTempManager;

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->a(Lcom/ssjj/fnsdk/core/SsjjFNTempManager;)Landroid/app/Activity;

    move-result-object p1

    const-string p2, "\u7ed1\u5b9a\u5931\u8d25\uff1a\u6e38\u5ba2\u672a\u767b\u5f55"

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_1ad

    :cond_175
    iget-object p1, p0, Lcom/ssjj/fnsdk/core/ce;->a:Lcom/ssjj/fnsdk/core/SsjjFNTempManager;

    const-string p3, "temp_bind_oauth_err"

    invoke-virtual {p1, p3, p2}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "\u767b\u5f55\u9a8c\u8bc1\u5931\u8d25\uff1a"

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/ce;->a:Lcom/ssjj/fnsdk/core/SsjjFNTempManager;

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->a(Lcom/ssjj/fnsdk/core/SsjjFNTempManager;)Landroid/app/Activity;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v2, p2, v1}, Lcom/ssjj/fnsdk/core/FNDialog;->showConfirmDialog(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    :goto_1a4
    iget-object p1, p0, Lcom/ssjj/fnsdk/core/ce;->a:Lcom/ssjj/fnsdk/core/SsjjFNTempManager;

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->a(Lcom/ssjj/fnsdk/core/SsjjFNTempManager;)Landroid/app/Activity;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->a(Lcom/ssjj/fnsdk/core/SsjjFNTempManager;Landroid/app/Activity;)V

    :goto_1ad
    return-void
.end method
