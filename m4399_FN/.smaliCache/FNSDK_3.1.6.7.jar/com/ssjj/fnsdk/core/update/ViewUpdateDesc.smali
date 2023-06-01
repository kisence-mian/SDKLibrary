.class public Lcom/ssjj/fnsdk/core/update/ViewUpdateDesc;
.super Lcom/ssjj/fnsdk/core/update/ViewBase;


# instance fields
.field private a:Landroid/widget/LinearLayout;

.field private c:Landroid/widget/ScrollView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/ssjj/fnsdk/core/update/ViewBase;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/ssjj/fnsdk/core/update/ViewUpdateDesc;->a()V

    return-void
.end method

.method private a()V
    .registers 7

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdateDesc;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdateDesc;->a:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdateDesc;->b:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdateDesc;->d:Landroid/widget/TextView;

    sget v2, Lcom/ssjj/fnsdk/core/update/ViewTheme;->sizeTextMain:I

    int-to-float v2, v2

    invoke-static {v2}, Lcom/ssjj/fnsdk/core/update/util/ScreenUtil;->dpiToPx(F)I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdateDesc;->d:Landroid/widget/TextView;

    sget v2, Lcom/ssjj/fnsdk/core/update/ViewTheme;->colorTextMain:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdateDesc;->d:Landroid/widget/TextView;

    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v4, 0x41c00000    # 24.0f

    invoke-static {v4}, Lcom/ssjj/fnsdk/core/update/util/ScreenUtil;->dpiToPx(F)I

    move-result v4

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget-object v4, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdateDesc;->a:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdateDesc;->d:Landroid/widget/TextView;

    invoke-virtual {v4, v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/ScrollView;

    iget-object v4, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdateDesc;->b:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdateDesc;->c:Landroid/widget/ScrollView;

    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->setScrollbarFadingEnabled(Z)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdateDesc;->c:Landroid/widget/ScrollView;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setVerticalScrollBarEnabled(Z)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdateDesc;->c:Landroid/widget/ScrollView;

    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->setHorizontalScrollBarEnabled(Z)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdateDesc;->c:Landroid/widget/ScrollView;

    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->setFadingEdgeLength(I)V

    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdateDesc;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdateDesc;->e:Landroid/widget/TextView;

    sget v1, Lcom/ssjj/fnsdk/core/update/ViewTheme;->sizeTextMain:I

    int-to-float v1, v1

    invoke-static {v1}, Lcom/ssjj/fnsdk/core/update/util/ScreenUtil;->dpiToPx(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdateDesc;->e:Landroid/widget/TextView;

    sget v1, Lcom/ssjj/fnsdk/core/update/ViewTheme;->colorTextMain:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdateDesc;->e:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v4, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdateDesc;->c:Landroid/widget/ScrollView;

    iget-object v5, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdateDesc;->e:Landroid/widget/TextView;

    invoke-virtual {v4, v5, v0}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v1, 0x40400000    # 3.0f

    invoke-static {v1}, Lcom/ssjj/fnsdk/core/update/util/ScreenUtil;->dpiToPx(F)I

    move-result v1

    invoke-virtual {v0, v3, v1, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdateDesc;->a:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdateDesc;->c:Landroid/widget/ScrollView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdateDesc;->a:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public setDescTitle(Ljava/lang/String;I)V
    .registers 4

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdateDesc;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdateDesc;->d:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public setHtmlDesc(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdateDesc;->e:Landroid/widget/TextView;

    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTextDesc(Ljava/lang/CharSequence;)V
    .registers 3

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdateDesc;->e:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdateDesc;->e:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    return-void
.end method

.method public setTitleDescInterval(I)V
    .registers 6

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdateDesc;->c:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x40400000    # 3.0f

    invoke-static {v1}, Lcom/ssjj/fnsdk/core/update/util/ScreenUtil;->dpiToPx(F)I

    move-result v2

    int-to-float p1, p1

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/update/util/ScreenUtil;->dpiToPx(F)I

    move-result p1

    invoke-static {v1}, Lcom/ssjj/fnsdk/core/update/util/ScreenUtil;->dpiToPx(F)I

    move-result v1

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p1, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdateDesc;->c:Landroid/widget/ScrollView;

    invoke-virtual {p1, v0}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
