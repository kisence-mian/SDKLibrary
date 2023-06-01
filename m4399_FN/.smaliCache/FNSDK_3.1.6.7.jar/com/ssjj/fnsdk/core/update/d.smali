.class Lcom/ssjj/fnsdk/core/update/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/core/update/FNDialogTip;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/core/update/FNDialogTip;)V
    .registers 2

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/update/d;->a:Lcom/ssjj/fnsdk/core/update/FNDialogTip;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/d;->a:Lcom/ssjj/fnsdk/core/update/FNDialogTip;

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/update/FNDialogTip;->a(Lcom/ssjj/fnsdk/core/update/FNDialogTip;)Lcom/ssjj/fnsdk/core/update/ViewTip;

    move-result-object v0

    iget-object v0, v0, Lcom/ssjj/fnsdk/core/update/ViewTip;->leftButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_10

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/update/d;->a:Lcom/ssjj/fnsdk/core/update/FNDialogTip;

    invoke-virtual {p1}, Lcom/ssjj/fnsdk/core/update/FNDialogTip;->onLeftButtonClick()V

    goto :goto_2f

    :cond_10
    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/d;->a:Lcom/ssjj/fnsdk/core/update/FNDialogTip;

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/update/FNDialogTip;->a(Lcom/ssjj/fnsdk/core/update/FNDialogTip;)Lcom/ssjj/fnsdk/core/update/ViewTip;

    move-result-object v0

    iget-object v0, v0, Lcom/ssjj/fnsdk/core/update/ViewTip;->rightButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_20

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/update/d;->a:Lcom/ssjj/fnsdk/core/update/FNDialogTip;

    invoke-virtual {p1}, Lcom/ssjj/fnsdk/core/update/FNDialogTip;->onRightButtonClick()V

    goto :goto_2f

    :cond_20
    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/d;->a:Lcom/ssjj/fnsdk/core/update/FNDialogTip;

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/update/FNDialogTip;->a(Lcom/ssjj/fnsdk/core/update/FNDialogTip;)Lcom/ssjj/fnsdk/core/update/ViewTip;

    move-result-object v0

    iget-object v0, v0, Lcom/ssjj/fnsdk/core/update/ViewTip;->singleButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_2f

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/update/d;->a:Lcom/ssjj/fnsdk/core/update/FNDialogTip;

    invoke-virtual {p1}, Lcom/ssjj/fnsdk/core/update/FNDialogTip;->onSingleButtonClick()V

    :cond_2f
    :goto_2f
    return-void
.end method
