.class public abstract Lcom/ssjj/fnsdk/core/util/SdkDialogTemplate;
.super Ljava/lang/Object;


# instance fields
.field protected a:Landroid/app/Dialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/util/SdkDialogTemplate;->a:Landroid/app/Dialog;

    new-instance v0, Lcom/ssjj/fnsdk/core/util/b;

    invoke-direct {v0, p0}, Lcom/ssjj/fnsdk/core/util/b;-><init>(Lcom/ssjj/fnsdk/core/util/SdkDialogTemplate;)V

    invoke-static {p1, v0}, Lcom/ssjj/fnsdk/core/util/SdkDialog;->getDialog(Landroid/content/Context;Lcom/ssjj/fnsdk/core/util/SdkDialog$a;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/util/SdkDialogTemplate;->a:Landroid/app/Dialog;

    new-instance v1, Lcom/ssjj/fnsdk/core/util/c;

    invoke-direct {v1, p0}, Lcom/ssjj/fnsdk/core/util/c;-><init>(Lcom/ssjj/fnsdk/core/util/SdkDialogTemplate;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    new-instance v0, Lcom/ssjj/fnsdk/core/util/d;

    invoke-direct {v0, p0, p1}, Lcom/ssjj/fnsdk/core/util/d;-><init>(Lcom/ssjj/fnsdk/core/util/SdkDialogTemplate;Landroid/content/Context;)V

    invoke-virtual {p0, p1}, Lcom/ssjj/fnsdk/core/util/SdkDialogTemplate;->a(Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2b

    invoke-virtual {p0, p1}, Lcom/ssjj/fnsdk/core/util/SdkDialogTemplate;->b(Landroid/content/Context;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2b
    iget-object p1, p0, Lcom/ssjj/fnsdk/core/util/SdkDialogTemplate;->a:Landroid/app/Dialog;

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method protected abstract a(Landroid/content/Context;)Landroid/view/View;
.end method

.method protected a()V
    .registers 1

    return-void
.end method

.method protected abstract b(Landroid/content/Context;)Landroid/widget/FrameLayout$LayoutParams;
.end method

.method protected b()V
    .registers 2

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/util/SdkDialogTemplate;->a:Landroid/app/Dialog;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/util/SdkDialogTemplate;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_f
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/util/SdkDialogTemplate;->a:Landroid/app/Dialog;

    :cond_12
    return-void
.end method

.method public dismiss()V
    .registers 2

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/util/SdkDialogTemplate;->a:Landroid/app/Dialog;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/util/SdkDialogTemplate;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_f
    return-void
.end method

.method public hide()V
    .registers 2

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/util/SdkDialogTemplate;->a:Landroid/app/Dialog;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/util/SdkDialogTemplate;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    :cond_f
    return-void
.end method

.method public isShowing()Z
    .registers 2

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/util/SdkDialogTemplate;->a:Landroid/app/Dialog;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public show()V
    .registers 2

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/util/SdkDialogTemplate;->a:Landroid/app/Dialog;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_7
    return-void
.end method
