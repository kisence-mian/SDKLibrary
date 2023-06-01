.class Lcom/ssjj/fnsdk/core/update/m;
.super Lcom/ssjj/fnsdk/core/update/FNDialogTip;


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;Landroid/content/Context;I)V
    .registers 4

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/update/m;->a:Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;

    invoke-direct {p0, p2, p3}, Lcom/ssjj/fnsdk/core/update/FNDialogTip;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method protected onBackPressed()V
    .registers 2

    invoke-virtual {p0}, Lcom/ssjj/fnsdk/core/update/m;->dismiss()V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/m;->a:Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;

    invoke-virtual {v0}, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->show()V

    return-void
.end method

.method protected onLeftButtonClick()V
    .registers 2

    invoke-virtual {p0}, Lcom/ssjj/fnsdk/core/update/m;->dismiss()V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/m;->a:Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;

    invoke-virtual {v0}, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->show()V

    return-void
.end method

.method protected onRightButtonClick()V
    .registers 2

    invoke-virtual {p0}, Lcom/ssjj/fnsdk/core/update/m;->dismiss()V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/m;->a:Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;

    invoke-virtual {v0}, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->show()V

    return-void
.end method
