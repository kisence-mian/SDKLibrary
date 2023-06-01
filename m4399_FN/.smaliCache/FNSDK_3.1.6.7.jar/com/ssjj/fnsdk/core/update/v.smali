.class Lcom/ssjj/fnsdk/core/update/v;
.super Lcom/ssjj/fnsdk/core/update/FNDialogTip;


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/core/update/FNUpdateManager;

.field private final synthetic b:Landroid/app/Activity;

.field private final synthetic c:Lcom/ssjj/fnsdk/core/update/FNDownloadItem;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/core/update/FNUpdateManager;Landroid/content/Context;ILandroid/app/Activity;Lcom/ssjj/fnsdk/core/update/FNDownloadItem;)V
    .registers 6

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/update/v;->a:Lcom/ssjj/fnsdk/core/update/FNUpdateManager;

    iput-object p4, p0, Lcom/ssjj/fnsdk/core/update/v;->b:Landroid/app/Activity;

    iput-object p5, p0, Lcom/ssjj/fnsdk/core/update/v;->c:Lcom/ssjj/fnsdk/core/update/FNDownloadItem;

    invoke-direct {p0, p2, p3}, Lcom/ssjj/fnsdk/core/update/FNDialogTip;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method protected onBackPressed()V
    .registers 4

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/v;->a:Lcom/ssjj/fnsdk/core/update/FNUpdateManager;

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/update/v;->b:Landroid/app/Activity;

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/update/v;->c:Lcom/ssjj/fnsdk/core/update/FNDownloadItem;

    invoke-static {v0, v1, v2, p0}, Lcom/ssjj/fnsdk/core/update/FNUpdateManager;->a(Lcom/ssjj/fnsdk/core/update/FNUpdateManager;Landroid/app/Activity;Lcom/ssjj/fnsdk/core/update/FNDownloadItem;Lcom/ssjj/fnsdk/core/update/FNDialogTip;)V

    return-void
.end method

.method protected onLeftButtonClick()V
    .registers 6

    invoke-virtual {p0}, Lcom/ssjj/fnsdk/core/update/v;->dismiss()V

    invoke-static {}, Lcom/ssjj/fnsdk/core/StatManager;->getInstance()Lcom/ssjj/fnsdk/core/StatManager;

    move-result-object v0

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/update/v;->context:Landroid/content/Context;

    const-string v2, "click"

    const-string v3, "redownload"

    const-string v4, "fn_update"

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/ssjj/fnsdk/core/StatManager;->recordEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/v;->a:Lcom/ssjj/fnsdk/core/update/FNUpdateManager;

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/update/v;->b:Landroid/app/Activity;

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/update/v;->c:Lcom/ssjj/fnsdk/core/update/FNDownloadItem;

    invoke-static {v0, v1, v2}, Lcom/ssjj/fnsdk/core/update/FNUpdateManager;->c(Lcom/ssjj/fnsdk/core/update/FNUpdateManager;Landroid/app/Activity;Lcom/ssjj/fnsdk/core/update/FNDownloadItem;)V

    return-void
.end method

.method protected onRightButtonClick()V
    .registers 6

    const/16 v0, 0x76

    const-string v1, "2"

    invoke-static {v0, v1}, Lcom/ssjj/fnsdk/core/TLog;->log(ILjava/lang/String;)V

    invoke-static {}, Lcom/ssjj/fnsdk/core/StatManager;->getInstance()Lcom/ssjj/fnsdk/core/StatManager;

    move-result-object v0

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/update/v;->context:Landroid/content/Context;

    const-string v2, "click"

    const-string v3, "install"

    const-string v4, "fn_update"

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/ssjj/fnsdk/core/StatManager;->recordEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/ssjj/fnsdk/core/StatManager;->getInstance()Lcom/ssjj/fnsdk/core/StatManager;

    move-result-object v0

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/update/v;->context:Landroid/content/Context;

    const-string v2, "show"

    const-string v3, "activity_install"

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/ssjj/fnsdk/core/StatManager;->recordEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/v;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/update/v;->c:Lcom/ssjj/fnsdk/core/update/FNDownloadItem;

    invoke-virtual {v1}, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ssjj/fnsdk/core/UpdateUtil;->installApk(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
