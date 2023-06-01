.class Lcom/ssjj/fnsdk/core/update/k;
.super Lcom/ssjj/fnsdk/core/update/FNDialogTip;


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;Landroid/content/Context;I)V
    .registers 4

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/update/k;->a:Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;

    invoke-direct {p0, p2, p3}, Lcom/ssjj/fnsdk/core/update/FNDialogTip;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method protected onBackPressed()V
    .registers 6

    invoke-static {}, Lcom/ssjj/fnsdk/core/StatManager;->getInstance()Lcom/ssjj/fnsdk/core/StatManager;

    move-result-object v0

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/update/k;->context:Landroid/content/Context;

    const-string v2, "click"

    const-string v3, "mobile_exit"

    const-string v4, "fn_update"

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/ssjj/fnsdk/core/StatManager;->recordEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ssjj/fnsdk/core/update/k;->dismiss()V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/k;->a:Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;

    invoke-virtual {v0}, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->show()V

    return-void
.end method

.method protected onLeftButtonClick()V
    .registers 6

    invoke-static {}, Lcom/ssjj/fnsdk/core/StatManager;->getInstance()Lcom/ssjj/fnsdk/core/StatManager;

    move-result-object v0

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/update/k;->context:Landroid/content/Context;

    const-string v2, "click"

    const-string v3, "mobile_exit"

    const-string v4, "fn_update"

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/ssjj/fnsdk/core/StatManager;->recordEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ssjj/fnsdk/core/update/k;->dismiss()V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/k;->a:Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;

    invoke-virtual {v0}, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->show()V

    return-void
.end method

.method protected onRightButtonClick()V
    .registers 6

    const/16 v0, 0x8f

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/ssjj/fnsdk/core/TLog;->log(ILjava/lang/String;)V

    invoke-static {}, Lcom/ssjj/fnsdk/core/StatManager;->getInstance()Lcom/ssjj/fnsdk/core/StatManager;

    move-result-object v0

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/update/k;->context:Landroid/content/Context;

    const-string v2, "click"

    const-string v3, "mobile_download"

    const-string v4, "fn_update"

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/ssjj/fnsdk/core/StatManager;->recordEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ssjj/fnsdk/core/update/k;->dismiss()V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/k;->a:Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;

    invoke-virtual {v0}, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->show()V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/k;->a:Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->e(Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;)V

    return-void
.end method
