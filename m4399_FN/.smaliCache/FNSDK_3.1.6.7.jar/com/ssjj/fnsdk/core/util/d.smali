.class Lcom/ssjj/fnsdk/core/util/d;
.super Landroid/widget/FrameLayout;


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/core/util/SdkDialogTemplate;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/core/util/SdkDialogTemplate;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/util/d;->a:Lcom/ssjj/fnsdk/core/util/SdkDialogTemplate;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onWindowFocusChanged(Z)V
    .registers 3

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_31

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/util/d;->a:Lcom/ssjj/fnsdk/core/util/SdkDialogTemplate;

    iget-object p1, p1, Lcom/ssjj/fnsdk/core/util/SdkDialogTemplate;->a:Landroid/app/Dialog;

    if-eqz p1, :cond_31

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/util/d;->a:Lcom/ssjj/fnsdk/core/util/SdkDialogTemplate;

    iget-object p1, p1, Lcom/ssjj/fnsdk/core/util/SdkDialogTemplate;->a:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_31

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/util/d;->a:Lcom/ssjj/fnsdk/core/util/SdkDialogTemplate;

    iget-object p1, p1, Lcom/ssjj/fnsdk/core/util/SdkDialogTemplate;->a:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    const/4 v0, -0x1

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/util/d;->a:Lcom/ssjj/fnsdk/core/util/SdkDialogTemplate;

    iget-object v0, v0, Lcom/ssjj/fnsdk/core/util/SdkDialogTemplate;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_31
    return-void
.end method
