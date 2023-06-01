.class Lcom/ssjj/fnsdk/core/update/h;
.super Lcom/ssjj/fnsdk/core/update/FNDialogUpdateDetail;


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/update/h;->a:Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;

    invoke-direct {p0, p2}, Lcom/ssjj/fnsdk/core/update/FNDialogUpdateDetail;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .registers 2

    invoke-super {p0}, Lcom/ssjj/fnsdk/core/update/FNDialogUpdateDetail;->dismiss()V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/h;->a:Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;

    invoke-virtual {v0}, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->show()V

    return-void
.end method
