.class Lcom/ssjj/fnsdk/core/update/l;
.super Lcom/ssjj/fnsdk/core/update/FNDialogTip;


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;

.field private final synthetic b:Z


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;Landroid/content/Context;IZ)V
    .registers 5

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/update/l;->a:Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;

    iput-boolean p4, p0, Lcom/ssjj/fnsdk/core/update/l;->b:Z

    invoke-direct {p0, p2, p3}, Lcom/ssjj/fnsdk/core/update/FNDialogTip;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method protected onBackPressed()V
    .registers 3

    const/16 v0, 0x99

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/ssjj/fnsdk/core/TLog;->log(ILjava/lang/String;)V

    invoke-virtual {p0}, Lcom/ssjj/fnsdk/core/update/l;->dismiss()V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/l;->a:Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;

    invoke-virtual {v0}, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->show()V

    iget-boolean v0, p0, Lcom/ssjj/fnsdk/core/update/l;->b:Z

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/l;->a:Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->e(Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;)V

    :cond_18
    return-void
.end method

.method protected onLeftButtonClick()V
    .registers 3

    const/16 v0, 0x99

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/ssjj/fnsdk/core/TLog;->log(ILjava/lang/String;)V

    invoke-virtual {p0}, Lcom/ssjj/fnsdk/core/update/l;->dismiss()V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/l;->a:Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;

    invoke-virtual {v0}, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->show()V

    iget-boolean v0, p0, Lcom/ssjj/fnsdk/core/update/l;->b:Z

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/l;->a:Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->e(Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;)V

    :cond_18
    return-void
.end method

.method protected onRightButtonClick()V
    .registers 3

    const/16 v0, 0x98

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/ssjj/fnsdk/core/TLog;->log(ILjava/lang/String;)V

    invoke-virtual {p0}, Lcom/ssjj/fnsdk/core/update/l;->dismiss()V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/l;->a:Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;

    invoke-virtual {v0}, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->show()V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/l;->a:Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->c(Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;)Lcom/ssjj/fnsdk/core/update/FNDownloadItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->i()V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/l;->a:Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->g(Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;)Lcom/ssjj/fnsdk/core/update/ViewUpdate;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->setMode(I)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/l;->a:Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->g(Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;)Lcom/ssjj/fnsdk/core/update/ViewUpdate;

    move-result-object v0

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/update/l;->a:Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;

    invoke-static {v1}, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->c(Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;)Lcom/ssjj/fnsdk/core/update/FNDownloadItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->setHtmlDesc(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/l;->a:Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->g(Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;)Lcom/ssjj/fnsdk/core/update/ViewUpdate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ssjj/fnsdk/core/update/ViewUpdate;->setDescNormalTitle()V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/l;->a:Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->l(Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;)V

    return-void
.end method
