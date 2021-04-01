.class public Lcom/sigmob/sdk/base/views/SkipButtonWidget;
.super Landroid/widget/RelativeLayout;


# instance fields
.field a:I

.field b:Z

.field private final c:Landroid/widget/TextView;

.field private final d:Landroid/widget/TextView;

.field private final e:I

.field private f:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 8

    const/16 v5, 0x11

    const/4 v0, 0x0

    const/4 v4, -0x1

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput v0, p0, Lcom/sigmob/sdk/base/views/SkipButtonWidget;->a:I

    iput-boolean v0, p0, Lcom/sigmob/sdk/base/views/SkipButtonWidget;->b:Z

    const/high16 v0, 0x41d00000    # 26.0f

    invoke-static {v0, p1}, Lcom/sigmob/sdk/base/common/utils/b;->c(FLandroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/sigmob/sdk/base/views/SkipButtonWidget;->a:I

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/sigmob/sdk/base/views/SkipButtonWidget;->a:I

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sigmob/sdk/base/views/SkipButtonWidget;->c:Landroid/widget/TextView;

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sigmob/sdk/base/views/SkipButtonWidget;->d:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/sigmob/sdk/base/views/SkipButtonWidget;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/sigmob/sdk/base/views/SkipButtonWidget;->a:I

    iget v2, p0, Lcom/sigmob/sdk/base/views/SkipButtonWidget;->a:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v5, :cond_43

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :cond_43
    iget-object v1, p0, Lcom/sigmob/sdk/base/views/SkipButtonWidget;->d:Landroid/widget/TextView;

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/SkipButtonWidget;->d:Landroid/widget/TextView;

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->as()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setId(I)V

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/SkipButtonWidget;->d:Landroid/widget/TextView;

    const/4 v2, 0x1

    const/high16 v3, 0x41600000    # 14.0f

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/SkipButtonWidget;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/SkipButtonWidget;->d:Landroid/widget/TextView;

    invoke-virtual {p0, v1, v0}, Lcom/sigmob/sdk/base/views/SkipButtonWidget;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v0, 0x40400000    # 3.0f

    invoke-static {v0, p1}, Lcom/sigmob/sdk/base/common/utils/b;->b(FLandroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/sigmob/sdk/base/views/SkipButtonWidget;->e:I

    iget v0, p0, Lcom/sigmob/sdk/base/views/SkipButtonWidget;->e:I

    iget v1, p0, Lcom/sigmob/sdk/base/views/SkipButtonWidget;->a:I

    div-int/lit8 v1, v1, 0x2

    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    int-to-float v1, v1

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    invoke-virtual {v2, v0, v4}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    const/16 v0, 0xe5

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/GradientDrawable;->setAlpha(I)V

    invoke-virtual {p0, v2}, Lcom/sigmob/sdk/base/views/SkipButtonWidget;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const-string v0, "skip"

    invoke-virtual {p0, v0}, Lcom/sigmob/sdk/base/views/SkipButtonWidget;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 6

    const/4 v3, 0x0

    iput p1, p0, Lcom/sigmob/sdk/base/views/SkipButtonWidget;->f:I

    iget-boolean v0, p0, Lcom/sigmob/sdk/base/views/SkipButtonWidget;->b:Z

    if-eqz v0, :cond_45

    if-lez p1, :cond_44

    const/16 v0, 0x9

    if-ne p1, v0, :cond_23

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/views/SkipButtonWidget;->getMeasuredWidthAndState()I

    move-result v0

    if-lez v0, :cond_23

    const/16 v1, 0x3e8

    if-ge v0, v1, :cond_23

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/SkipButtonWidget;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/views/SkipButtonWidget;->getMeasuredWidth()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_23
    iget-object v0, p0, Lcom/sigmob/sdk/base/views/SkipButtonWidget;->c:Landroid/widget/TextView;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/sigmob/sdk/base/views/SkipButtonWidget;->f:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v1}, Lcom/sigmob/sdk/base/b;->d([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/SkipButtonWidget;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/SkipButtonWidget;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_44
    :goto_44
    return-void

    :cond_45
    if-lez p1, :cond_44

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/SkipButtonWidget;->d:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_44
.end method

.method public a()Z
    .registers 2

    iget-boolean v0, p0, Lcom/sigmob/sdk/base/views/SkipButtonWidget;->b:Z

    return v0
.end method

.method public b()V
    .registers 8

    const/high16 v6, 0x40200000    # 2.5f

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-boolean v0, p0, Lcom/sigmob/sdk/base/views/SkipButtonWidget;->b:Z

    if-eqz v0, :cond_9

    :goto_8
    return-void

    :cond_9
    iput-boolean v5, p0, Lcom/sigmob/sdk/base/views/SkipButtonWidget;->b:Z

    iget-boolean v0, p0, Lcom/sigmob/sdk/base/views/SkipButtonWidget;->b:Z

    if-eqz v0, :cond_14

    const-string v0, "show skip widget"

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->d(Ljava/lang/String;)V

    :cond_14
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    iget v2, p0, Lcom/sigmob/sdk/base/views/SkipButtonWidget;->a:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/SkipButtonWidget;->c:Landroid/widget/TextView;

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/SkipButtonWidget;->c:Landroid/widget/TextView;

    const/high16 v2, 0x41600000    # 14.0f

    invoke-virtual {v1, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/SkipButtonWidget;->c:Landroid/widget/TextView;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/SkipButtonWidget;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/SkipButtonWidget;->d:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/SkipButtonWidget;->c:Landroid/widget/TextView;

    iget v2, p0, Lcom/sigmob/sdk/base/views/SkipButtonWidget;->a:I

    int-to-float v2, v2

    div-float/2addr v2, v6

    float-to-int v2, v2

    iget v3, p0, Lcom/sigmob/sdk/base/views/SkipButtonWidget;->a:I

    int-to-float v3, v3

    div-float/2addr v3, v6

    float-to-int v3, v3

    invoke-virtual {v1, v2, v4, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    iget v1, p0, Lcom/sigmob/sdk/base/views/SkipButtonWidget;->f:I

    if-lez v1, :cond_69

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/SkipButtonWidget;->c:Landroid/widget/TextView;

    new-array v2, v5, [Ljava/lang/Object;

    iget v3, p0, Lcom/sigmob/sdk/base/views/SkipButtonWidget;->f:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v2}, Lcom/sigmob/sdk/base/b;->d([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_63
    iget-object v1, p0, Lcom/sigmob/sdk/base/views/SkipButtonWidget;->c:Landroid/widget/TextView;

    invoke-virtual {p0, v1, v0}, Lcom/sigmob/sdk/base/views/SkipButtonWidget;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_8

    :cond_69
    iget-object v1, p0, Lcom/sigmob/sdk/base/views/SkipButtonWidget;->c:Landroid/widget/TextView;

    invoke-static {}, Lcom/sigmob/sdk/base/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_63
.end method

.method public getTime()I
    .registers 2

    iget v0, p0, Lcom/sigmob/sdk/base/views/SkipButtonWidget;->f:I

    return v0
.end method
