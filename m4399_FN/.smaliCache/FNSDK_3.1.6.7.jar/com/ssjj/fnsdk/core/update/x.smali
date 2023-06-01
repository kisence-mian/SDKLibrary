.class Lcom/ssjj/fnsdk/core/update/x;
.super Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/core/update/FNUpdateManager;

.field private final synthetic b:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/core/update/FNUpdateManager;Landroid/content/Context;Lcom/ssjj/fnsdk/core/update/FNDownloadItem;Lcom/ssjj/fnsdk/core/update/AbsUpdateModel;Landroid/app/Activity;)V
    .registers 6

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/update/x;->a:Lcom/ssjj/fnsdk/core/update/FNUpdateManager;

    iput-object p5, p0, Lcom/ssjj/fnsdk/core/update/x;->b:Landroid/app/Activity;

    invoke-direct {p0, p2, p3, p4}, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;-><init>(Landroid/content/Context;Lcom/ssjj/fnsdk/core/update/FNDownloadItem;Lcom/ssjj/fnsdk/core/update/AbsUpdateModel;)V

    return-void
.end method


# virtual methods
.method protected onCancelForceUpdate()V
    .registers 5

    invoke-super {p0}, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->onCancelForceUpdate()V

    const/16 v0, 0x72

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/ssjj/fnsdk/core/TLog;->log(ILjava/lang/String;)V

    invoke-static {}, Lcom/ssjj/fnsdk/core/StatManager;->getInstance()Lcom/ssjj/fnsdk/core/StatManager;

    move-result-object v0

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/update/x;->b:Landroid/app/Activity;

    invoke-virtual {v0, v2}, Lcom/ssjj/fnsdk/core/StatManager;->sendAllEvent(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/x;->a:Lcom/ssjj/fnsdk/core/update/FNUpdateManager;

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/update/FNUpdateManager;->b(Lcom/ssjj/fnsdk/core/update/FNUpdateManager;)Lcom/ssjj/fnsdk/core/SsjjFNListener;

    move-result-object v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/x;->a:Lcom/ssjj/fnsdk/core/update/FNUpdateManager;

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/update/FNUpdateManager;->b(Lcom/ssjj/fnsdk/core/update/FNUpdateManager;)Lcom/ssjj/fnsdk/core/SsjjFNListener;

    move-result-object v0

    new-instance v2, Lcom/ssjj/fnsdk/core/SsjjFNParams;

    invoke-direct {v2}, Lcom/ssjj/fnsdk/core/SsjjFNParams;-><init>()V

    const/16 v3, 0x8

    invoke-interface {v0, v3, v1, v2}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    :cond_2b
    return-void
.end method

.method protected onCancelNormalUpdate()V
    .registers 5

    invoke-super {p0}, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->onCancelNormalUpdate()V

    const/16 v0, 0x74

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/ssjj/fnsdk/core/TLog;->log(ILjava/lang/String;)V

    invoke-static {}, Lcom/ssjj/fnsdk/core/StatManager;->getInstance()Lcom/ssjj/fnsdk/core/StatManager;

    move-result-object v0

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/update/x;->b:Landroid/app/Activity;

    invoke-virtual {v0, v2}, Lcom/ssjj/fnsdk/core/StatManager;->sendAllEvent(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/x;->a:Lcom/ssjj/fnsdk/core/update/FNUpdateManager;

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/update/FNUpdateManager;->b(Lcom/ssjj/fnsdk/core/update/FNUpdateManager;)Lcom/ssjj/fnsdk/core/SsjjFNListener;

    move-result-object v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/x;->a:Lcom/ssjj/fnsdk/core/update/FNUpdateManager;

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/update/FNUpdateManager;->b(Lcom/ssjj/fnsdk/core/update/FNUpdateManager;)Lcom/ssjj/fnsdk/core/SsjjFNListener;

    move-result-object v0

    new-instance v2, Lcom/ssjj/fnsdk/core/SsjjFNParams;

    invoke-direct {v2}, Lcom/ssjj/fnsdk/core/SsjjFNParams;-><init>()V

    const/4 v3, 0x7

    invoke-interface {v0, v3, v1, v2}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    :cond_2a
    return-void
.end method

.method protected onForceUpdateLoading()V
    .registers 5

    invoke-super {p0}, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->onForceUpdateLoading()V

    const/16 v0, 0x71

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/ssjj/fnsdk/core/TLog;->log(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/x;->a:Lcom/ssjj/fnsdk/core/update/FNUpdateManager;

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/update/FNUpdateManager;->b(Lcom/ssjj/fnsdk/core/update/FNUpdateManager;)Lcom/ssjj/fnsdk/core/SsjjFNListener;

    move-result-object v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/x;->a:Lcom/ssjj/fnsdk/core/update/FNUpdateManager;

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/update/FNUpdateManager;->b(Lcom/ssjj/fnsdk/core/update/FNUpdateManager;)Lcom/ssjj/fnsdk/core/SsjjFNListener;

    move-result-object v0

    new-instance v2, Lcom/ssjj/fnsdk/core/SsjjFNParams;

    invoke-direct {v2}, Lcom/ssjj/fnsdk/core/SsjjFNParams;-><init>()V

    const/4 v3, 0x6

    invoke-interface {v0, v3, v1, v2}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    :cond_21
    return-void
.end method

.method protected onNormalUpdateLoading()V
    .registers 5

    invoke-super {p0}, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->onNormalUpdateLoading()V

    const/16 v0, 0x73

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/ssjj/fnsdk/core/TLog;->log(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/x;->a:Lcom/ssjj/fnsdk/core/update/FNUpdateManager;

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/update/FNUpdateManager;->b(Lcom/ssjj/fnsdk/core/update/FNUpdateManager;)Lcom/ssjj/fnsdk/core/SsjjFNListener;

    move-result-object v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/x;->a:Lcom/ssjj/fnsdk/core/update/FNUpdateManager;

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/update/FNUpdateManager;->b(Lcom/ssjj/fnsdk/core/update/FNUpdateManager;)Lcom/ssjj/fnsdk/core/SsjjFNListener;

    move-result-object v0

    new-instance v2, Lcom/ssjj/fnsdk/core/SsjjFNParams;

    invoke-direct {v2}, Lcom/ssjj/fnsdk/core/SsjjFNParams;-><init>()V

    const/4 v3, 0x5

    invoke-interface {v0, v3, v1, v2}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    :cond_21
    return-void
.end method

.method protected onNotSDCard()V
    .registers 5

    invoke-super {p0}, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->onNotSDCard()V

    const/16 v0, 0x9d

    const-string v1, "onNotSDCard"

    invoke-static {v0, v1}, Lcom/ssjj/fnsdk/core/TLog;->log(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/x;->a:Lcom/ssjj/fnsdk/core/update/FNUpdateManager;

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/update/FNUpdateManager;->b(Lcom/ssjj/fnsdk/core/update/FNUpdateManager;)Lcom/ssjj/fnsdk/core/SsjjFNListener;

    move-result-object v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/x;->a:Lcom/ssjj/fnsdk/core/update/FNUpdateManager;

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/update/FNUpdateManager;->b(Lcom/ssjj/fnsdk/core/update/FNUpdateManager;)Lcom/ssjj/fnsdk/core/SsjjFNListener;

    move-result-object v0

    new-instance v1, Lcom/ssjj/fnsdk/core/SsjjFNParams;

    invoke-direct {v1}, Lcom/ssjj/fnsdk/core/SsjjFNParams;-><init>()V

    const/16 v2, 0xb

    const-string v3, "\u6ca1\u6709SD\u5361"

    invoke-interface {v0, v2, v3, v1}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    :cond_24
    return-void
.end method

.method protected onRetryUpdate()V
    .registers 5

    invoke-super {p0}, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->onRetryUpdate()V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/x;->a:Lcom/ssjj/fnsdk/core/update/FNUpdateManager;

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/update/FNUpdateManager;->b(Lcom/ssjj/fnsdk/core/update/FNUpdateManager;)Lcom/ssjj/fnsdk/core/SsjjFNListener;

    move-result-object v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/x;->a:Lcom/ssjj/fnsdk/core/update/FNUpdateManager;

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/update/FNUpdateManager;->b(Lcom/ssjj/fnsdk/core/update/FNUpdateManager;)Lcom/ssjj/fnsdk/core/SsjjFNListener;

    move-result-object v0

    new-instance v1, Lcom/ssjj/fnsdk/core/SsjjFNParams;

    invoke-direct {v1}, Lcom/ssjj/fnsdk/core/SsjjFNParams;-><init>()V

    const/16 v2, 0x9

    const-string v3, ""

    invoke-interface {v0, v2, v3, v1}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    :cond_1d
    return-void
.end method

.method protected onUpdateFinishFail(Ljava/lang/String;)V
    .registers 5

    invoke-super {p0, p1}, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->onUpdateFinishFail(Ljava/lang/String;)V

    const/16 v0, 0x97

    invoke-static {v0, p1}, Lcom/ssjj/fnsdk/core/TLog;->log(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/x;->a:Lcom/ssjj/fnsdk/core/update/FNUpdateManager;

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/update/FNUpdateManager;->b(Lcom/ssjj/fnsdk/core/update/FNUpdateManager;)Lcom/ssjj/fnsdk/core/SsjjFNListener;

    move-result-object v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/x;->a:Lcom/ssjj/fnsdk/core/update/FNUpdateManager;

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/update/FNUpdateManager;->b(Lcom/ssjj/fnsdk/core/update/FNUpdateManager;)Lcom/ssjj/fnsdk/core/SsjjFNListener;

    move-result-object v0

    new-instance v1, Lcom/ssjj/fnsdk/core/SsjjFNParams;

    invoke-direct {v1}, Lcom/ssjj/fnsdk/core/SsjjFNParams;-><init>()V

    const/4 v2, -0x7

    invoke-interface {v0, v2, p1, v1}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    :cond_1f
    return-void
.end method

.method protected onUpdateFinishSuccess()V
    .registers 5

    invoke-super {p0}, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->onUpdateFinishSuccess()V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/x;->a:Lcom/ssjj/fnsdk/core/update/FNUpdateManager;

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/update/FNUpdateManager;->b(Lcom/ssjj/fnsdk/core/update/FNUpdateManager;)Lcom/ssjj/fnsdk/core/SsjjFNListener;

    move-result-object v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/x;->a:Lcom/ssjj/fnsdk/core/update/FNUpdateManager;

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/update/FNUpdateManager;->b(Lcom/ssjj/fnsdk/core/update/FNUpdateManager;)Lcom/ssjj/fnsdk/core/SsjjFNListener;

    move-result-object v0

    new-instance v1, Lcom/ssjj/fnsdk/core/SsjjFNParams;

    invoke-direct {v1}, Lcom/ssjj/fnsdk/core/SsjjFNParams;-><init>()V

    const/16 v2, 0xa

    const-string v3, ""

    invoke-interface {v0, v2, v3, v1}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    :cond_1d
    return-void
.end method

.method protected onUpdatingFail(Ljava/lang/String;)V
    .registers 5

    invoke-super {p0, p1}, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->onUpdatingFail(Ljava/lang/String;)V

    const/16 v0, 0x92

    invoke-static {v0, p1}, Lcom/ssjj/fnsdk/core/TLog;->log(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/x;->a:Lcom/ssjj/fnsdk/core/update/FNUpdateManager;

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/update/FNUpdateManager;->b(Lcom/ssjj/fnsdk/core/update/FNUpdateManager;)Lcom/ssjj/fnsdk/core/SsjjFNListener;

    move-result-object v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/x;->a:Lcom/ssjj/fnsdk/core/update/FNUpdateManager;

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/update/FNUpdateManager;->b(Lcom/ssjj/fnsdk/core/update/FNUpdateManager;)Lcom/ssjj/fnsdk/core/SsjjFNListener;

    move-result-object v0

    new-instance v1, Lcom/ssjj/fnsdk/core/SsjjFNParams;

    invoke-direct {v1}, Lcom/ssjj/fnsdk/core/SsjjFNParams;-><init>()V

    const/4 v2, -0x6

    invoke-interface {v0, v2, p1, v1}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    :cond_1f
    return-void
.end method

.method protected release()V
    .registers 1

    invoke-super {p0}, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->release()V

    return-void
.end method
