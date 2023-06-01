.class Lcom/ssjj/fnsdk/core/update/y;
.super Lcom/ssjj/fnsdk/core/update/FNDialogTip;


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/core/update/FNUpdateManager;

.field private final synthetic b:Lcom/ssjj/fnsdk/core/update/FNDialogTip;

.field private final synthetic c:Landroid/app/Activity;

.field private final synthetic d:Z


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/core/update/FNUpdateManager;Landroid/content/Context;ILcom/ssjj/fnsdk/core/update/FNDialogTip;Landroid/app/Activity;Z)V
    .registers 7

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/update/y;->a:Lcom/ssjj/fnsdk/core/update/FNUpdateManager;

    iput-object p4, p0, Lcom/ssjj/fnsdk/core/update/y;->b:Lcom/ssjj/fnsdk/core/update/FNDialogTip;

    iput-object p5, p0, Lcom/ssjj/fnsdk/core/update/y;->c:Landroid/app/Activity;

    iput-boolean p6, p0, Lcom/ssjj/fnsdk/core/update/y;->d:Z

    invoke-direct {p0, p2, p3}, Lcom/ssjj/fnsdk/core/update/FNDialogTip;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method protected onBackPressed()V
    .registers 1

    return-void
.end method

.method protected onLeftButtonClick()V
    .registers 2

    invoke-virtual {p0}, Lcom/ssjj/fnsdk/core/update/y;->dismiss()V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/y;->b:Lcom/ssjj/fnsdk/core/update/FNDialogTip;

    invoke-virtual {v0}, Lcom/ssjj/fnsdk/core/update/FNDialogTip;->show()V

    return-void
.end method

.method protected onRightButtonClick()V
    .registers 5

    invoke-virtual {p0}, Lcom/ssjj/fnsdk/core/update/y;->dismiss()V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/y;->b:Lcom/ssjj/fnsdk/core/update/FNDialogTip;

    invoke-virtual {v0}, Lcom/ssjj/fnsdk/core/update/FNDialogTip;->dismiss()V

    invoke-static {}, Lcom/ssjj/fnsdk/core/StatManager;->getInstance()Lcom/ssjj/fnsdk/core/StatManager;

    move-result-object v0

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/update/y;->c:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/ssjj/fnsdk/core/StatManager;->sendAllEvent(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/y;->a:Lcom/ssjj/fnsdk/core/update/FNUpdateManager;

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/update/FNUpdateManager;->b(Lcom/ssjj/fnsdk/core/update/FNUpdateManager;)Lcom/ssjj/fnsdk/core/SsjjFNListener;

    move-result-object v0

    if-eqz v0, :cond_3c

    iget-boolean v0, p0, Lcom/ssjj/fnsdk/core/update/y;->d:Z

    const-string v1, ""

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/y;->a:Lcom/ssjj/fnsdk/core/update/FNUpdateManager;

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/update/FNUpdateManager;->b(Lcom/ssjj/fnsdk/core/update/FNUpdateManager;)Lcom/ssjj/fnsdk/core/SsjjFNListener;

    move-result-object v0

    new-instance v2, Lcom/ssjj/fnsdk/core/SsjjFNParams;

    invoke-direct {v2}, Lcom/ssjj/fnsdk/core/SsjjFNParams;-><init>()V

    const/16 v3, 0x8

    goto :goto_39

    :cond_2d
    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/y;->a:Lcom/ssjj/fnsdk/core/update/FNUpdateManager;

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/update/FNUpdateManager;->b(Lcom/ssjj/fnsdk/core/update/FNUpdateManager;)Lcom/ssjj/fnsdk/core/SsjjFNListener;

    move-result-object v0

    new-instance v2, Lcom/ssjj/fnsdk/core/SsjjFNParams;

    invoke-direct {v2}, Lcom/ssjj/fnsdk/core/SsjjFNParams;-><init>()V

    const/4 v3, 0x7

    :goto_39
    invoke-interface {v0, v3, v1, v2}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    :cond_3c
    return-void
.end method
