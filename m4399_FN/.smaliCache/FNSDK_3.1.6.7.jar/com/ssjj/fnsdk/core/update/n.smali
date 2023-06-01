.class Lcom/ssjj/fnsdk/core/update/n;
.super Lcom/ssjj/fnsdk/core/update/ViewUpdateDetail;


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/core/update/FNDialogUpdateDetail;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/core/update/FNDialogUpdateDetail;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/update/n;->a:Lcom/ssjj/fnsdk/core/update/FNDialogUpdateDetail;

    invoke-direct {p0, p2}, Lcom/ssjj/fnsdk/core/update/ViewUpdateDetail;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected a()V
    .registers 2

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/n;->a:Lcom/ssjj/fnsdk/core/update/FNDialogUpdateDetail;

    invoke-virtual {v0}, Lcom/ssjj/fnsdk/core/update/FNDialogUpdateDetail;->dismiss()V

    return-void
.end method
