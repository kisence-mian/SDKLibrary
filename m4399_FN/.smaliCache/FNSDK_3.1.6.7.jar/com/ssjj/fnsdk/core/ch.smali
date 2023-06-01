.class Lcom/ssjj/fnsdk/core/ch;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ssjj/fnsdk/core/SsjjFNListener;


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/core/SsjjFNTempManager;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/core/SsjjFNTempManager;)V
    .registers 2

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/ch;->a:Lcom/ssjj/fnsdk/core/SsjjFNTempManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V
    .registers 6

    invoke-static {}, Lcom/ssjj/fnsdk/core/FNDialog;->getInstance()Lcom/ssjj/fnsdk/core/FNDialog;

    move-result-object p3

    invoke-virtual {p3}, Lcom/ssjj/fnsdk/core/FNDialog;->hideLoadingDialog()V

    if-nez p1, :cond_ad

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/ch;->a:Lcom/ssjj/fnsdk/core/SsjjFNTempManager;

    const-string p2, "temp_bind_do_succ"

    invoke-virtual {p1, p2}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/ch;->a:Lcom/ssjj/fnsdk/core/SsjjFNTempManager;

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->a(Lcom/ssjj/fnsdk/core/SsjjFNTempManager;)Landroid/app/Activity;

    move-result-object p1

    const-string p2, "\u7ed1\u5b9a\u6210\u529f"

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/ch;->a:Lcom/ssjj/fnsdk/core/SsjjFNTempManager;

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->c(Lcom/ssjj/fnsdk/core/SsjjFNTempManager;)Lcom/ssjj/fnsdk/core/SsjjFNTempManager$TempUser;

    move-result-object p1

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/ssjj/fnsdk/core/SsjjFNTempManager$TempUser;->hasBind:Z

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/ch;->a:Lcom/ssjj/fnsdk/core/SsjjFNTempManager;

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->a(Lcom/ssjj/fnsdk/core/SsjjFNTempManager;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/ch;->a:Lcom/ssjj/fnsdk/core/SsjjFNTempManager;

    invoke-static {v1}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->c(Lcom/ssjj/fnsdk/core/SsjjFNTempManager;)Lcom/ssjj/fnsdk/core/SsjjFNTempManager$TempUser;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->a(Lcom/ssjj/fnsdk/core/SsjjFNTempManager;Landroid/content/Context;Lcom/ssjj/fnsdk/core/SsjjFNTempManager$TempUser;)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/ch;->a:Lcom/ssjj/fnsdk/core/SsjjFNTempManager;

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->g(Lcom/ssjj/fnsdk/core/SsjjFNTempManager;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_f2

    new-instance p1, Lcom/ssjj/fnsdk/core/entity/FNOauthData;

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/ch;->a:Lcom/ssjj/fnsdk/core/SsjjFNTempManager;

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->g(Lcom/ssjj/fnsdk/core/SsjjFNTempManager;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/ssjj/fnsdk/core/entity/FNOauthData;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/ch;->a:Lcom/ssjj/fnsdk/core/SsjjFNTempManager;

    new-instance v1, Lcom/ssjj/fnsdk/core/entity/FNOauthData;

    invoke-direct {v1}, Lcom/ssjj/fnsdk/core/entity/FNOauthData;-><init>()V

    invoke-static {v0, v1}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->a(Lcom/ssjj/fnsdk/core/SsjjFNTempManager;Lcom/ssjj/fnsdk/core/entity/FNOauthData;)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/ch;->a:Lcom/ssjj/fnsdk/core/SsjjFNTempManager;

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->e(Lcom/ssjj/fnsdk/core/SsjjFNTempManager;)Lcom/ssjj/fnsdk/core/entity/FNOauthData;

    move-result-object v0

    iput p2, v0, Lcom/ssjj/fnsdk/core/entity/FNOauthData;->code:I

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/ch;->a:Lcom/ssjj/fnsdk/core/SsjjFNTempManager;

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->e(Lcom/ssjj/fnsdk/core/SsjjFNTempManager;)Lcom/ssjj/fnsdk/core/entity/FNOauthData;

    move-result-object v0

    const-string v1, ""

    iput-object v1, v0, Lcom/ssjj/fnsdk/core/entity/FNOauthData;->msg:Ljava/lang/String;

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/ch;->a:Lcom/ssjj/fnsdk/core/SsjjFNTempManager;

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->e(Lcom/ssjj/fnsdk/core/SsjjFNTempManager;)Lcom/ssjj/fnsdk/core/entity/FNOauthData;

    move-result-object v0

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/ch;->a:Lcom/ssjj/fnsdk/core/SsjjFNTempManager;

    invoke-static {v1}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->c(Lcom/ssjj/fnsdk/core/SsjjFNTempManager;)Lcom/ssjj/fnsdk/core/SsjjFNTempManager$TempUser;

    move-result-object v1

    iget-object v1, v1, Lcom/ssjj/fnsdk/core/SsjjFNTempManager$TempUser;->tempUid:Ljava/lang/String;

    iput-object v1, v0, Lcom/ssjj/fnsdk/core/entity/FNOauthData;->uid:Ljava/lang/String;

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/ch;->a:Lcom/ssjj/fnsdk/core/SsjjFNTempManager;

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->e(Lcom/ssjj/fnsdk/core/SsjjFNTempManager;)Lcom/ssjj/fnsdk/core/entity/FNOauthData;

    move-result-object v0

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/ch;->a:Lcom/ssjj/fnsdk/core/SsjjFNTempManager;

    invoke-static {v1}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->c(Lcom/ssjj/fnsdk/core/SsjjFNTempManager;)Lcom/ssjj/fnsdk/core/SsjjFNTempManager$TempUser;

    move-result-object v1

    iget-object v1, v1, Lcom/ssjj/fnsdk/core/SsjjFNTempManager$TempUser;->tempName:Ljava/lang/String;

    iput-object v1, v0, Lcom/ssjj/fnsdk/core/entity/FNOauthData;->name:Ljava/lang/String;

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/ch;->a:Lcom/ssjj/fnsdk/core/SsjjFNTempManager;

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->e(Lcom/ssjj/fnsdk/core/SsjjFNTempManager;)Lcom/ssjj/fnsdk/core/entity/FNOauthData;

    move-result-object v0

    iget-object v1, p1, Lcom/ssjj/fnsdk/core/entity/FNOauthData;->uid:Ljava/lang/String;

    iput-object v1, v0, Lcom/ssjj/fnsdk/core/entity/FNOauthData;->rawUid:Ljava/lang/String;

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/ch;->a:Lcom/ssjj/fnsdk/core/SsjjFNTempManager;

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->e(Lcom/ssjj/fnsdk/core/SsjjFNTempManager;)Lcom/ssjj/fnsdk/core/entity/FNOauthData;

    move-result-object v0

    iget-object p1, p1, Lcom/ssjj/fnsdk/core/entity/FNOauthData;->name:Ljava/lang/String;

    iput-object p1, v0, Lcom/ssjj/fnsdk/core/entity/FNOauthData;->rawName:Ljava/lang/String;

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/ch;->a:Lcom/ssjj/fnsdk/core/SsjjFNTempManager;

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->e(Lcom/ssjj/fnsdk/core/SsjjFNTempManager;)Lcom/ssjj/fnsdk/core/entity/FNOauthData;

    move-result-object p1

    iput-boolean p2, p1, Lcom/ssjj/fnsdk/core/entity/FNOauthData;->isTempUser:Z

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/ch;->a:Lcom/ssjj/fnsdk/core/SsjjFNTempManager;

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->a(Lcom/ssjj/fnsdk/core/SsjjFNTempManager;)Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p1, p2, p3}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->setTempAuto(Landroid/content/Context;Z)V

    goto :goto_f2

    :cond_ad
    iget-object p3, p0, Lcom/ssjj/fnsdk/core/ch;->a:Lcom/ssjj/fnsdk/core/SsjjFNTempManager;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "temp_bind_do_fail"

    invoke-virtual {p3, v0, p1}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/ch;->a:Lcom/ssjj/fnsdk/core/SsjjFNTempManager;

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->a(Lcom/ssjj/fnsdk/core/SsjjFNTempManager;)Landroid/app/Activity;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "\u7ed1\u5b9a\u5931\u8d25\uff1a"

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "\u77e5\u9053\u4e86"

    const-string v0, "\u6e29\u99a8\u63d0\u793a"

    invoke-static {p1, v0, p2, p3}, Lcom/ssjj/fnsdk/core/FNDialog;->showConfirmDialog(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/ch;->a:Lcom/ssjj/fnsdk/core/SsjjFNTempManager;

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->a(Lcom/ssjj/fnsdk/core/SsjjFNTempManager;)Landroid/app/Activity;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->a(Lcom/ssjj/fnsdk/core/SsjjFNTempManager;Landroid/app/Activity;)V

    :cond_f2
    :goto_f2
    return-void
.end method
