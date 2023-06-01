.class Lcom/ssjj/fnsdk/core/util/a;
.super Landroid/app/Dialog;


# instance fields
.field private final synthetic a:Lcom/ssjj/fnsdk/core/util/SdkDialog$a;


# direct methods
.method constructor <init>(Landroid/content/Context;ILcom/ssjj/fnsdk/core/util/SdkDialog$a;)V
    .registers 4

    iput-object p3, p0, Lcom/ssjj/fnsdk/core/util/a;->a:Lcom/ssjj/fnsdk/core/util/SdkDialog$a;

    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .registers 2

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/util/a;->a:Lcom/ssjj/fnsdk/core/util/SdkDialog$a;

    if-nez v0, :cond_8

    invoke-super {p0}, Landroid/app/Dialog;->onBackPressed()V

    goto :goto_b

    :cond_8
    invoke-interface {v0}, Lcom/ssjj/fnsdk/core/util/SdkDialog$a;->a()V

    :goto_b
    return-void
.end method
