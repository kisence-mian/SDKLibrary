.class Lcom/ssjj/fnsdk/core/update/w;
.super Lcom/ssjj/fnsdk/core/update/FNDialogTip;


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/core/update/FNUpdateManager;

.field private final synthetic b:Landroid/app/Activity;

.field private final synthetic c:Lcom/ssjj/fnsdk/core/update/FNDownloadItem;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/core/update/FNUpdateManager;Landroid/content/Context;ILandroid/app/Activity;Lcom/ssjj/fnsdk/core/update/FNDownloadItem;)V
    .registers 6

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/update/w;->a:Lcom/ssjj/fnsdk/core/update/FNUpdateManager;

    iput-object p4, p0, Lcom/ssjj/fnsdk/core/update/w;->b:Landroid/app/Activity;

    iput-object p5, p0, Lcom/ssjj/fnsdk/core/update/w;->c:Lcom/ssjj/fnsdk/core/update/FNDownloadItem;

    invoke-direct {p0, p2, p3}, Lcom/ssjj/fnsdk/core/update/FNDialogTip;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method protected onBackPressed()V
    .registers 3

    const/16 v0, 0x99

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/ssjj/fnsdk/core/TLog;->log(ILjava/lang/String;)V

    return-void
.end method

.method protected onLeftButtonClick()V
    .registers 4

    const/16 v0, 0x99

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/ssjj/fnsdk/core/TLog;->log(ILjava/lang/String;)V

    invoke-virtual {p0}, Lcom/ssjj/fnsdk/core/update/w;->dismiss()V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/w;->a:Lcom/ssjj/fnsdk/core/update/FNUpdateManager;

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/update/w;->b:Landroid/app/Activity;

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/update/w;->c:Lcom/ssjj/fnsdk/core/update/FNDownloadItem;

    invoke-static {v0, v1, v2}, Lcom/ssjj/fnsdk/core/update/FNUpdateManager;->a(Lcom/ssjj/fnsdk/core/update/FNUpdateManager;Landroid/app/Activity;Lcom/ssjj/fnsdk/core/update/FNDownloadItem;)V

    return-void
.end method

.method protected onRightButtonClick()V
    .registers 4

    const/16 v0, 0x98

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/ssjj/fnsdk/core/TLog;->log(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/w;->c:Lcom/ssjj/fnsdk/core/update/FNDownloadItem;

    invoke-virtual {v0}, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->i()V

    invoke-virtual {p0}, Lcom/ssjj/fnsdk/core/update/w;->dismiss()V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/w;->a:Lcom/ssjj/fnsdk/core/update/FNUpdateManager;

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/update/w;->b:Landroid/app/Activity;

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/update/w;->c:Lcom/ssjj/fnsdk/core/update/FNDownloadItem;

    invoke-static {v0, v1, v2}, Lcom/ssjj/fnsdk/core/update/FNUpdateManager;->b(Lcom/ssjj/fnsdk/core/update/FNUpdateManager;Landroid/app/Activity;Lcom/ssjj/fnsdk/core/update/FNDownloadItem;)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/w;->a:Lcom/ssjj/fnsdk/core/update/FNUpdateManager;

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/update/FNUpdateManager;->a(Lcom/ssjj/fnsdk/core/update/FNUpdateManager;)Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;

    move-result-object v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/w;->a:Lcom/ssjj/fnsdk/core/update/FNUpdateManager;

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/update/FNUpdateManager;->a(Lcom/ssjj/fnsdk/core/update/FNUpdateManager;)Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;

    move-result-object v0

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/update/w;->b:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->checkNetAndDownload(Landroid/app/Activity;)V

    :cond_2b
    return-void
.end method
