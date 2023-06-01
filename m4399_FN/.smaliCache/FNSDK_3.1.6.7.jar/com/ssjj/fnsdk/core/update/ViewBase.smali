.class public abstract Lcom/ssjj/fnsdk/core/update/ViewBase;
.super Ljava/lang/Object;


# instance fields
.field protected b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/update/ViewBase;->b:Landroid/content/Context;

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/update/ViewBase;->b:Landroid/content/Context;

    return-void
.end method

.method public static newConfirmButton(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/Button;
    .registers 7

    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 p0, -0x1

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setTextColor(I)V

    const/16 p0, 0x11

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setGravity(I)V

    int-to-float p0, p2

    invoke-static {p0}, Lcom/ssjj/fnsdk/core/update/util/ScreenUtil;->dpiToPx(F)I

    move-result p0

    int-to-float p0, p0

    const/4 p1, 0x0

    invoke-virtual {v0, p1, p0}, Landroid/widget/Button;->setTextSize(IF)V

    invoke-virtual {v0, p1, p1, p1, p1}, Landroid/widget/Button;->setPadding(IIII)V

    new-instance p0, Landroid/graphics/drawable/GradientDrawable;

    sget-object p1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    sget p2, Lcom/ssjj/fnsdk/core/update/ViewTheme;->colorPrimaryShallow:I

    sget v1, Lcom/ssjj/fnsdk/core/update/ViewTheme;->colorPrimaryShallow:I

    filled-new-array {p2, v1}, [I

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    const/high16 p1, 0x40c00000    # 6.0f

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/update/util/ScreenUtil;->dpiToPx(F)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p0, p2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    new-instance p2, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    sget v2, Lcom/ssjj/fnsdk/core/update/ViewTheme;->colorPrimary:I

    sget v3, Lcom/ssjj/fnsdk/core/update/ViewTheme;->colorPrimary:I

    filled-new-array {v2, v3}, [I

    move-result-object v2

    invoke-direct {p2, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/update/util/ScreenUtil;->dpiToPx(F)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    new-instance p1, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    const v1, 0x10100a7

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-virtual {p1, v1, p2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    const p2, -0x101009e

    filled-new-array {p2}, [I

    move-result-object p2

    invoke-virtual {p1, p2, p0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-object v0
.end method


# virtual methods
.method public abstract getView()Landroid/view/View;
.end method

.method public release()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/update/ViewBase;->b:Landroid/content/Context;

    return-void
.end method

.method public setId(I)V
    .registers 3

    invoke-virtual {p0}, Lcom/ssjj/fnsdk/core/update/ViewBase;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/ssjj/fnsdk/core/update/ViewBase;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setId(I)V

    :cond_d
    return-void
.end method

.method public setVisibility(I)V
    .registers 3

    invoke-virtual {p0}, Lcom/ssjj/fnsdk/core/update/ViewBase;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/ssjj/fnsdk/core/update/ViewBase;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_d
    return-void
.end method
