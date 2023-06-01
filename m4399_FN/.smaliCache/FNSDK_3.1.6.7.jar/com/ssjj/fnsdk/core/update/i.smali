.class Lcom/ssjj/fnsdk/core/update/i;
.super Lcom/ssjj/fnsdk/core/update/FNDialogTip;


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;

.field private final synthetic b:Z


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;Landroid/content/Context;IZ)V
    .registers 5

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/update/i;->a:Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;

    iput-boolean p4, p0, Lcom/ssjj/fnsdk/core/update/i;->b:Z

    invoke-direct {p0, p2, p3}, Lcom/ssjj/fnsdk/core/update/FNDialogTip;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method protected onBackPressed()V
    .registers 3

    const/16 v0, 0x95

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/ssjj/fnsdk/core/TLog;->log(ILjava/lang/String;)V

    invoke-virtual {p0}, Lcom/ssjj/fnsdk/core/update/i;->dismiss()V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/i;->a:Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;

    invoke-virtual {v0}, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->show()V

    iget-boolean v0, p0, Lcom/ssjj/fnsdk/core/update/i;->b:Z

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/i;->a:Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/update/i;->context:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->checkNetAndDownload(Landroid/app/Activity;)V

    :cond_1c
    return-void
.end method

.method protected onLeftButtonClick()V
    .registers 3

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/i;->a:Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->c(Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;)Lcom/ssjj/fnsdk/core/update/FNDownloadItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_24

    const/16 v0, 0x76

    const-string v1, "1"

    invoke-static {v0, v1}, Lcom/ssjj/fnsdk/core/TLog;->log(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/i;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/update/i;->a:Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;

    invoke-static {v1}, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->c(Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;)Lcom/ssjj/fnsdk/core/update/FNDownloadItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ssjj/fnsdk/core/UpdateUtil;->installApk(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_40

    :cond_24
    const/16 v0, 0x95

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/ssjj/fnsdk/core/TLog;->log(ILjava/lang/String;)V

    invoke-virtual {p0}, Lcom/ssjj/fnsdk/core/update/i;->dismiss()V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/i;->a:Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;

    invoke-virtual {v0}, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->show()V

    iget-boolean v0, p0, Lcom/ssjj/fnsdk/core/update/i;->b:Z

    if-eqz v0, :cond_40

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/i;->a:Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/update/i;->context:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->checkNetAndDownload(Landroid/app/Activity;)V

    :cond_40
    :goto_40
    return-void
.end method

.method protected onRightButtonClick()V
    .registers 2

    invoke-virtual {p0}, Lcom/ssjj/fnsdk/core/update/i;->dismiss()V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/i;->a:Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;

    invoke-virtual {v0}, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->dismiss()V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/i;->a:Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->k(Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/i;->a:Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;

    invoke-virtual {v0}, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->onCancelForceUpdate()V

    goto :goto_1b

    :cond_16
    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/i;->a:Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;

    invoke-virtual {v0}, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->onCancelNormalUpdate()V

    :goto_1b
    return-void
.end method
