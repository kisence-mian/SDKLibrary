.class public Lcom/sigmob/sdk/base/views/SkipButtonWidget;
.super Landroid/widget/RelativeLayout;


# instance fields
.field a:I

.field b:Z

.field private final c:Landroid/widget/TextView;

.field private final d:Landroid/widget/TextView;

.field private e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sigmob/sdk/base/views/SkipButtonWidget;->a:I

    iput-boolean v0, p0, Lcom/sigmob/sdk/base/views/SkipButtonWidget;->b:Z

    const/high16 v0, 0x41f00000    # 30.0f

    invoke-static {v0, p1}, Lcom/sigmob/sdk/common/f/d;->c(FLandroid/content/Context;)I

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

    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v0, p0, Lcom/sigmob/sdk/base/views/SkipButtonWidget;->a:I

    invoke-direct {p1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v0, v2, :cond_40

    const/16 v0, 0x14

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :cond_40
    const/high16 v0, -0x1000000

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-static {}, Lcom/sigmob/sdk/common/a;->am()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setId(I)V

    const/4 v0, 0x1

    const/high16 v3, 0x41600000    # 14.0f

    invoke-virtual {v1, v0, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {p0, v1, p1}, Lcom/sigmob/sdk/base/views/SkipButtonWidget;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget p1, p0, Lcom/sigmob/sdk/base/views/SkipButtonWidget;->a:I

    div-int/lit8 p1, p1, 0x2

    const-string v0, "#ffffff"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    int-to-float p1, p1

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const/16 p1, 0x66

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/GradientDrawable;->setAlpha(I)V

    invoke-virtual {p0, v1}, Lcom/sigmob/sdk/base/views/SkipButtonWidget;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const-string p1, "skip"

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/base/views/SkipButtonWidget;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 5

    iput p1, p0, Lcom/sigmob/sdk/base/views/SkipButtonWidget;->e:I

    iget-boolean v0, p0, Lcom/sigmob/sdk/base/views/SkipButtonWidget;->b:Z

    if-eqz v0, :cond_29

    if-lez p1, :cond_34

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/SkipButtonWidget;->c:Landroid/widget/TextView;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v1}, Lcom/sigmob/sdk/base/b;->d([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/sigmob/sdk/base/views/SkipButtonWidget;->c:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_34

    iget-object p1, p0, Lcom/sigmob/sdk/base/views/SkipButtonWidget;->c:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_34

    :cond_29
    if-lez p1, :cond_34

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/SkipButtonWidget;->d:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_34
    :goto_34
    return-void
.end method

.method public a()Z
    .registers 2

    iget-boolean v0, p0, Lcom/sigmob/sdk/base/views/SkipButtonWidget;->b:Z

    return v0
.end method

.method public b()V
    .registers 8

    iget-boolean v0, p0, Lcom/sigmob/sdk/base/views/SkipButtonWidget;->b:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sigmob/sdk/base/views/SkipButtonWidget;->b:Z

    const-string v1, "show skip widget"

    invoke-static {v1}, Lcom/sigmob/logger/SigmobLog;->d(Ljava/lang/String;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    iget v3, p0, Lcom/sigmob/sdk/base/views/SkipButtonWidget;->a:I

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/sigmob/sdk/base/views/SkipButtonWidget;->c:Landroid/widget/TextView;

    const/high16 v3, -0x1000000

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, p0, Lcom/sigmob/sdk/base/views/SkipButtonWidget;->c:Landroid/widget/TextView;

    const/high16 v3, 0x41600000    # 14.0f

    invoke-virtual {v2, v0, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v2, p0, Lcom/sigmob/sdk/base/views/SkipButtonWidget;->c:Landroid/widget/TextView;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v2, p0, Lcom/sigmob/sdk/base/views/SkipButtonWidget;->c:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/sigmob/sdk/base/views/SkipButtonWidget;->d:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/sigmob/sdk/base/views/SkipButtonWidget;->c:Landroid/widget/TextView;

    iget v4, p0, Lcom/sigmob/sdk/base/views/SkipButtonWidget;->a:I

    int-to-float v5, v4

    const/high16 v6, 0x40400000    # 3.0f

    div-float/2addr v5, v6

    float-to-int v5, v5

    int-to-float v4, v4

    div-float/2addr v4, v6

    float-to-int v4, v4

    invoke-virtual {v2, v5, v3, v4, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    iget v2, p0, Lcom/sigmob/sdk/base/views/SkipButtonWidget;->e:I

    if-lez v2, :cond_5c

    iget-object v4, p0, Lcom/sigmob/sdk/base/views/SkipButtonWidget;->c:Landroid/widget/TextView;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v3

    invoke-static {v0}, Lcom/sigmob/sdk/base/b;->d([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_65

    :cond_5c
    iget-object v0, p0, Lcom/sigmob/sdk/base/views/SkipButtonWidget;->c:Landroid/widget/TextView;

    invoke-static {}, Lcom/sigmob/sdk/base/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_65
    iget-object v0, p0, Lcom/sigmob/sdk/base/views/SkipButtonWidget;->c:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v1}, Lcom/sigmob/sdk/base/views/SkipButtonWidget;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public getTime()I
    .registers 2

    iget v0, p0, Lcom/sigmob/sdk/base/views/SkipButtonWidget;->e:I

    return v0
.end method
