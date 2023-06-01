.class public Lcom/ssjj/fnsdk/core/update/ViewTitle;
.super Lcom/ssjj/fnsdk/core/update/ViewBase;


# instance fields
.field a:Landroid/widget/RelativeLayout;

.field private c:I

.field private d:I

.field private e:Landroid/widget/TextView;

.field private f:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/ssjj/fnsdk/core/update/ViewBase;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x2715

    iput p1, p0, Lcom/ssjj/fnsdk/core/update/ViewTitle;->c:I

    const/16 p1, 0x271a

    iput p1, p0, Lcom/ssjj/fnsdk/core/update/ViewTitle;->d:I

    invoke-virtual {p0}, Lcom/ssjj/fnsdk/core/update/ViewTitle;->a()V

    return-void
.end method


# virtual methods
.method protected a()V
    .registers 9

    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/update/ViewTitle;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/update/ViewTitle;->a:Landroid/widget/RelativeLayout;

    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/update/ViewTitle;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/update/ViewTitle;->e:Landroid/widget/TextView;

    iget v1, p0, Lcom/ssjj/fnsdk/core/update/ViewTitle;->c:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V

    sget v0, Lcom/ssjj/fnsdk/core/update/ViewTheme;->colorTextMain:I

    sget v1, Lcom/ssjj/fnsdk/core/update/ViewTheme;->colorPrimaryDark:I

    sget v2, Lcom/ssjj/fnsdk/core/update/ViewTheme;->colorPrimaryDark:I

    invoke-static {v0, v1, v2}, Lcom/ssjj/fnsdk/core/update/util/ScreenUtil;->createColorStateList(III)Landroid/content/res/ColorStateList;

    move-result-object v0

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/update/ViewTitle;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/ViewTitle;->e:Landroid/widget/TextView;

    sget v1, Lcom/ssjj/fnsdk/core/update/ViewTheme;->sizeTextTitle:I

    int-to-float v1, v1

    invoke-static {v1}, Lcom/ssjj/fnsdk/core/update/util/ScreenUtil;->dpiToPx(F)I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/ViewTitle;->e:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/high16 v3, 0x41f00000    # 30.0f

    invoke-static {v3}, Lcom/ssjj/fnsdk/core/update/util/ScreenUtil;->dpiToPx(F)I

    move-result v3

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    const/16 v3, 0xa

    const/4 v4, -0x1

    invoke-virtual {v0, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/high16 v3, 0x40400000    # 3.0f

    invoke-static {v3}, Lcom/ssjj/fnsdk/core/update/util/ScreenUtil;->dpiToPx(F)I

    move-result v3

    invoke-virtual {v0, v3, v2, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v3, p0, Lcom/ssjj/fnsdk/core/update/ViewTitle;->a:Landroid/widget/RelativeLayout;

    iget-object v5, p0, Lcom/ssjj/fnsdk/core/update/ViewTitle;->e:Landroid/widget/TextView;

    invoke-virtual {v3, v5, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/view/View;

    iget-object v3, p0, Lcom/ssjj/fnsdk/core/update/ViewTitle;->b:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/update/ViewTitle;->f:Landroid/view/View;

    iget v3, p0, Lcom/ssjj/fnsdk/core/update/ViewTitle;->d:I

    invoke-virtual {v0, v3}, Landroid/view/View;->setId(I)V

    const/high16 v0, 0x40200000    # 2.5f

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/update/util/ScreenUtil;->dpiToPx(F)I

    move-result v0

    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    sget-object v5, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    sget v6, Lcom/ssjj/fnsdk/core/update/ViewTheme;->colorPrimary:I

    sget v7, Lcom/ssjj/fnsdk/core/update/ViewTheme;->colorPrimary:I

    filled-new-array {v6, v7}, [I

    move-result-object v6

    invoke-direct {v3, v5, v6}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    const/16 v5, 0x8

    new-array v5, v5, [F

    int-to-float v0, v0

    aput v0, v5, v2

    const/4 v6, 0x1

    aput v0, v5, v6

    const/4 v6, 0x2

    aput v0, v5, v6

    const/4 v6, 0x3

    aput v0, v5, v6

    const/4 v7, 0x4

    aput v0, v5, v7

    const/4 v7, 0x5

    aput v0, v5, v7

    const/4 v7, 0x6

    aput v0, v5, v7

    const/4 v7, 0x7

    aput v0, v5, v7

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/ViewTitle;->f:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/high16 v1, 0x40c00000    # 6.0f

    invoke-static {v1}, Lcom/ssjj/fnsdk/core/update/util/ScreenUtil;->dpiToPx(F)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget v1, p0, Lcom/ssjj/fnsdk/core/update/ViewTitle;->c:I

    invoke-virtual {v0, v6, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v1}, Lcom/ssjj/fnsdk/core/update/util/ScreenUtil;->dpiToPx(F)I

    move-result v1

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/update/ViewTitle;->a:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/update/ViewTitle;->f:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public getView()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/ViewTitle;->a:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public setTitleClickListener(Landroid/view/View$OnClickListener;)V
    .registers 3

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/ViewTitle;->e:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setTitleColor(I)V
    .registers 3

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/ViewTitle;->e:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public setTitleLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .registers 3

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/ViewTitle;->e:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public setTitleText(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/ViewTitle;->e:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
