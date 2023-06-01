.class public Lcom/ssjj/fnsdk/core/util/permission/GrantDialog;
.super Lcom/ssjj/fnsdk/core/util/SdkDialogTemplate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ssjj/fnsdk/core/util/permission/GrantDialog$a;
    }
.end annotation


# instance fields
.field private b:Lcom/ssjj/fnsdk/core/util/permission/GrantDialog$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/ssjj/fnsdk/core/util/SdkDialogTemplate;-><init>(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/util/permission/GrantDialog;->a:Landroid/app/Dialog;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/util/permission/GrantDialog;->a:Landroid/app/Dialog;

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;)Landroid/view/View;
    .registers 3

    new-instance v0, Lcom/ssjj/fnsdk/core/util/permission/GrantDialog$a;

    invoke-direct {v0, p0, p1}, Lcom/ssjj/fnsdk/core/util/permission/GrantDialog$a;-><init>(Lcom/ssjj/fnsdk/core/util/permission/GrantDialog;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/util/permission/GrantDialog;->b:Lcom/ssjj/fnsdk/core/util/permission/GrantDialog$a;

    invoke-virtual {v0}, Lcom/ssjj/fnsdk/core/util/permission/GrantDialog$a;->a()Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method protected b(Landroid/content/Context;)Landroid/widget/FrameLayout$LayoutParams;
    .registers 4

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/high16 v1, 0x43be0000    # 380.0f

    invoke-static {p1, v1}, Lcom/ssjj/fnsdk/core/util/DensityUtil;->dp2px(Landroid/content/Context;F)I

    move-result p1

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/16 p1, 0x11

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    return-object v0
.end method

.method protected b()V
    .registers 1

    invoke-super {p0}, Lcom/ssjj/fnsdk/core/util/SdkDialogTemplate;->b()V

    return-void
.end method

.method public btnCancel(Ljava/lang/String;)Lcom/ssjj/fnsdk/core/util/permission/GrantDialog;
    .registers 3

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/util/permission/GrantDialog;->b:Lcom/ssjj/fnsdk/core/util/permission/GrantDialog$a;

    iget-object v0, v0, Lcom/ssjj/fnsdk/core/util/permission/GrantDialog$a;->e:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public btnOk(Ljava/lang/String;)Lcom/ssjj/fnsdk/core/util/permission/GrantDialog;
    .registers 3

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/util/permission/GrantDialog;->b:Lcom/ssjj/fnsdk/core/util/permission/GrantDialog$a;

    iget-object v0, v0, Lcom/ssjj/fnsdk/core/util/permission/GrantDialog$a;->d:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method c()V
    .registers 1

    return-void
.end method

.method d()V
    .registers 1

    return-void
.end method

.method public message(Ljava/lang/String;)Lcom/ssjj/fnsdk/core/util/permission/GrantDialog;
    .registers 3

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/util/permission/GrantDialog;->b:Lcom/ssjj/fnsdk/core/util/permission/GrantDialog$a;

    iget-object v0, v0, Lcom/ssjj/fnsdk/core/util/permission/GrantDialog$a;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public title(Ljava/lang/String;)Lcom/ssjj/fnsdk/core/util/permission/GrantDialog;
    .registers 3

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/util/permission/GrantDialog;->b:Lcom/ssjj/fnsdk/core/util/permission/GrantDialog$a;

    iget-object v0, v0, Lcom/ssjj/fnsdk/core/util/permission/GrantDialog$a;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p0
.end method
