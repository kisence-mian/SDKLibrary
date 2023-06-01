.class public Lcom/ssjj/fnsdk/core/util/SdkDialog;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ssjj/fnsdk/core/util/SdkDialog$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDialog(Landroid/content/Context;)Landroid/app/Dialog;
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/ssjj/fnsdk/core/util/SdkDialog;->getDialog(Landroid/content/Context;Lcom/ssjj/fnsdk/core/util/SdkDialog$a;)Landroid/app/Dialog;

    move-result-object p0

    return-object p0
.end method

.method public static getDialog(Landroid/content/Context;Lcom/ssjj/fnsdk/core/util/SdkDialog$a;)Landroid/app/Dialog;
    .registers 6

    new-instance v0, Lcom/ssjj/fnsdk/core/util/a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lcom/ssjj/fnsdk/core/util/a;-><init>(Landroid/content/Context;ILcom/ssjj/fnsdk/core/util/SdkDialog$a;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    const/16 v2, 0x400

    invoke-virtual {p0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    const/4 v3, -0x1

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v3, 0x11

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v3, 0x0

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->horizontalWeight:F

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->verticalWeight:F

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->alpha:F

    invoke-virtual {p0, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {p0, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    return-object v0
.end method
