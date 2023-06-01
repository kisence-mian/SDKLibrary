.class Lcom/ssjj/fnsdk/core/update/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ssjj/fnsdk/core/SsjjFNListener;


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;)V
    .registers 2

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/update/e;->a:Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V
    .registers 7

    const/4 v0, 0x4

    if-ne p1, v0, :cond_a

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/update/e;->a:Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;

    invoke-static {p1, p3}, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->a(Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    goto/16 :goto_d2

    :cond_a
    const/4 v0, 0x6

    if-ne p1, v0, :cond_19

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/update/e;->a:Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;

    invoke-static {p1, p3}, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->b(Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    :goto_12
    iget-object p1, p0, Lcom/ssjj/fnsdk/core/update/e;->a:Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->a(Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;)V

    goto/16 :goto_d2

    :cond_19
    const/4 p3, 0x7

    if-ne p1, p3, :cond_c8

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "Update failed, type="

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/ssjj/fnsdk/core/update/e;->a:Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;

    invoke-static {p3}, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->b(Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;)Lcom/ssjj/fnsdk/core/update/AbsUpdateModel;

    move-result-object p3

    iget p3, p3, Lcom/ssjj/fnsdk/core/update/AbsUpdateModel;->a:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/ssjj/fnsdk/core/LogUtil;->e(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/update/e;->a:Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->b(Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;)Lcom/ssjj/fnsdk/core/update/AbsUpdateModel;

    move-result-object p1

    iget p1, p1, Lcom/ssjj/fnsdk/core/update/AbsUpdateModel;->a:I

    const/4 p3, 0x1

    const/4 v0, 0x0

    if-ne p1, p3, :cond_c1

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/update/e;->a:Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->c(Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;)Lcom/ssjj/fnsdk/core/update/FNDownloadItem;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->a(I)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/update/e;->a:Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->c(Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;)Lcom/ssjj/fnsdk/core/update/FNDownloadItem;

    move-result-object p3

    invoke-virtual {p3}, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->getTotalSize()J

    move-result-wide v1

    long-to-int p3, v1

    invoke-static {p1, p3}, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->a(Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;I)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/update/e;->a:Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->d(Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/update/e;->a:Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->b(Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;)Lcom/ssjj/fnsdk/core/update/AbsUpdateModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ssjj/fnsdk/core/update/AbsUpdateModel;->clearDownload()V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/update/e;->a:Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;

    new-instance p3, Lcom/ssjj/fnsdk/core/update/FNUpdateModel;

    invoke-direct {p3}, Lcom/ssjj/fnsdk/core/update/FNUpdateModel;-><init>()V

    invoke-static {p1, p3}, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->a(Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;Lcom/ssjj/fnsdk/core/update/AbsUpdateModel;)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/update/e;->a:Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;

    iget-object p1, p1, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/SsjjFNUtility;->isConnectedToWifi(Landroid/content/Context;)Z

    move-result p1

    const-string p3, "\u5dee\u5206\u66f4\u65b0\u5931\u8d25\uff1a"

    if-eqz p1, :cond_a9

    const-string p1, "Smart update failed, start normal update..."

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "\n\u81ea\u52a8\u5207\u6362\u5230\u6574\u5305\u66f4\u65b0"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/ssjj/fnsdk/core/update/e;->a:Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;

    iget-object p2, p2, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->context:Landroid/content/Context;

    invoke-static {p2, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/update/e;->a:Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->e(Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;)V

    return-void

    :cond_a9
    const-string p1, "Smart update failed, But is not connected to wifi, show err msg"

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "\n\u8bf7\u70b9\u51fb\u91cd\u65b0\u4e0b\u8f7d\u4f7f\u7528\u6574\u5305\u66f4\u65b0"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_c1
    iget-object p1, p0, Lcom/ssjj/fnsdk/core/update/e;->a:Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;

    invoke-static {p1, p2, v0}, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->a(Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;Ljava/lang/String;Z)V

    goto/16 :goto_12

    :cond_c8
    const/4 p2, 0x5

    if-ne p1, p2, :cond_d2

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/update/e;->a:Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->f(Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;)V

    goto/16 :goto_12

    :cond_d2
    :goto_d2
    return-void
.end method
