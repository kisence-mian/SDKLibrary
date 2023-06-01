.class Lcom/ssjj/fnsdk/core/update/c;
.super Landroid/app/Dialog;


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/core/update/FNDialog;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/core/update/FNDialog;Landroid/content/Context;I)V
    .registers 4

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/update/c;->a:Lcom/ssjj/fnsdk/core/update/FNDialog;

    invoke-direct {p0, p2, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .registers 2

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/c;->a:Lcom/ssjj/fnsdk/core/update/FNDialog;

    invoke-virtual {v0}, Lcom/ssjj/fnsdk/core/update/FNDialog;->onBackPressed()V

    return-void
.end method
