.class public Lcom/ssjj/fnsdk/core/update/ViewTip;
.super Lcom/ssjj/fnsdk/core/update/ViewBase;


# static fields
.field public static final mode_single_button:I = 0x0

.field public static final mode_two_button:I = 0x1


# instance fields
.field private a:Landroid/widget/RelativeLayout;

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field public leftButton:Landroid/widget/Button;

.field public msgView:Landroid/widget/TextView;

.field public rightButton:Landroid/widget/Button;

.field public singleButton:Landroid/widget/Button;

.field public titleView:Lcom/ssjj/fnsdk/core/update/ViewTitle;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/ssjj/fnsdk/core/update/ViewBase;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x2eed

    iput p1, p0, Lcom/ssjj/fnsdk/core/update/ViewTip;->c:I

    const/16 p1, 0x2eee

    iput p1, p0, Lcom/ssjj/fnsdk/core/update/ViewTip;->d:I

    const/16 p1, 0x2eef

    iput p1, p0, Lcom/ssjj/fnsdk/core/update/ViewTip;->e:I

    const/16 p1, 0x2ef0

    iput p1, p0, Lcom/ssjj/fnsdk/core/update/ViewTip;->f:I

    const/16 p1, 0x2ef1

    iput p1, p0, Lcom/ssjj/fnsdk/core/update/ViewTip;->g:I

    invoke-direct {p0}, Lcom/ssjj/fnsdk/core/update/ViewTip;->a()V

    iget p1, p0, Lcom/ssjj/fnsdk/core/update/ViewTip;->h:I

    invoke-virtual {p0, p1}, Lcom/ssjj/fnsdk/core/update/ViewTip;->setMode(I)V

    return-void
.end method

.method private a()V
    .registers 6

    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/update/ViewTip;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/update/ViewTip;->a:Landroid/widget/RelativeLayout;

    sget v1, Lcom/ssjj/fnsdk/core/update/ViewTheme;->colorBackground:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/ViewTip;->a:Landroid/widget/RelativeLayout;

    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {v1}, Lcom/ssjj/fnsdk/core/update/util/ScreenUtil;->dpiToPx(F)I

    move-result v2

    const/high16 v3, 0x40c00000    # 6.0f

    invoke-static {v3}, Lcom/ssjj/fnsdk/core/update/util/ScreenUtil;->dpiToPx(F)I

    move-result v3

    invoke-static {v1}, Lcom/ssjj/fnsdk/core/update/util/ScreenUtil;->dpiToPx(F)I

    move-result v1

    const/high16 v4, 0x41400000    # 12.0f

    invoke-static {v4}, Lcom/ssjj/fnsdk/core/update/util/ScreenUtil;->dpiToPx(F)I

    move-result v4

    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    new-instance v0, Lcom/ssjj/fnsdk/core/update/ViewTitle;

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/update/ViewTip;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/ssjj/fnsdk/core/update/ViewTitle;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/update/ViewTip;->titleView:Lcom/ssjj/fnsdk/core/update/ViewTitle;

    iget v1, p0, Lcom/ssjj/fnsdk/core/update/ViewTip;->c:I

    invoke-virtual {v0, v1}, Lcom/ssjj/fnsdk/core/update/ViewTitle;->setId(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v3, p0, Lcom/ssjj/fnsdk/core/update/ViewTip;->a:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/ssjj/fnsdk/core/update/ViewTip;->titleView:Lcom/ssjj/fnsdk/core/update/ViewTitle;

    invoke-virtual {v4}, Lcom/ssjj/fnsdk/core/update/ViewTitle;->getView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/ssjj/fnsdk/core/update/ViewTip;->b:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/update/ViewTip;->msgView:Landroid/widget/TextView;

    iget v3, p0, Lcom/ssjj/fnsdk/core/update/ViewTip;->d:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setId(I)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/ViewTip;->msgView:Landroid/widget/TextView;

    sget v3, Lcom/ssjj/fnsdk/core/update/ViewTheme;->sizeTextMain:I

    int-to-float v3, v3

    invoke-static {v3}, Lcom/ssjj/fnsdk/core/update/util/ScreenUtil;->dpiToPx(F)I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/ViewTip;->msgView:Landroid/widget/TextView;

    sget v3, Lcom/ssjj/fnsdk/core/update/ViewTheme;->colorTextMain:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x3

    iget v2, p0, Lcom/ssjj/fnsdk/core/update/ViewTip;->c:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/high16 v1, 0x40400000    # 3.0f

    invoke-static {v1}, Lcom/ssjj/fnsdk/core/update/util/ScreenUtil;->dpiToPx(F)I

    move-result v1

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v2}, Lcom/ssjj/fnsdk/core/update/util/ScreenUtil;->dpiToPx(F)I

    move-result v2

    invoke-virtual {v0, v1, v2, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/update/ViewTip;->a:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/update/ViewTip;->msgView:Landroid/widget/TextView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/ssjj/fnsdk/core/update/ViewTip;->b()V

    return-void
.end method

.method private b()V
    .registers 12

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/ViewTip;->b:Landroid/content/Context;

    sget v1, Lcom/ssjj/fnsdk/core/update/ViewTheme;->sizeTextBigButton:I

    const-string v2, ""

    invoke-static {v0, v2, v1}, Lcom/ssjj/fnsdk/core/update/ViewBase;->newConfirmButton(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/update/ViewTip;->leftButton:Landroid/widget/Button;

    iget v1, p0, Lcom/ssjj/fnsdk/core/update/ViewTip;->e:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setId(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-static {}, Lcom/ssjj/fnsdk/core/update/util/ScreenUtil;->isLandscape()Z

    move-result v3

    const/high16 v4, 0x43280000    # 168.0f

    const/high16 v5, 0x43160000    # 150.0f

    if-eqz v3, :cond_26

    invoke-static {v4}, Lcom/ssjj/fnsdk/core/update/util/ScreenUtil;->dpiToPx(F)I

    move-result v3

    goto :goto_2a

    :cond_26
    invoke-static {v5}, Lcom/ssjj/fnsdk/core/update/util/ScreenUtil;->dpiToPx(F)I

    move-result v3

    :goto_2a
    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    const/high16 v3, 0x42480000    # 50.0f

    invoke-static {v3}, Lcom/ssjj/fnsdk/core/update/util/ScreenUtil;->dpiToPx(F)I

    move-result v6

    iput v6, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    const/high16 v6, 0x41f00000    # 30.0f

    invoke-static {v6}, Lcom/ssjj/fnsdk/core/update/util/ScreenUtil;->dpiToPx(F)I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {v0, v8, v7, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget v7, p0, Lcom/ssjj/fnsdk/core/update/ViewTip;->d:I

    const/4 v9, 0x3

    invoke-virtual {v0, v9, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v7, p0, Lcom/ssjj/fnsdk/core/update/ViewTip;->a:Landroid/widget/RelativeLayout;

    iget-object v10, p0, Lcom/ssjj/fnsdk/core/update/ViewTip;->leftButton:Landroid/widget/Button;

    invoke-virtual {v7, v10, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/ViewTip;->b:Landroid/content/Context;

    sget v7, Lcom/ssjj/fnsdk/core/update/ViewTheme;->sizeTextBigButton:I

    invoke-static {v0, v2, v7}, Lcom/ssjj/fnsdk/core/update/ViewBase;->newConfirmButton(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/update/ViewTip;->rightButton:Landroid/widget/Button;

    iget v7, p0, Lcom/ssjj/fnsdk/core/update/ViewTip;->f:I

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setId(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-static {}, Lcom/ssjj/fnsdk/core/update/util/ScreenUtil;->isLandscape()Z

    move-result v7

    if-eqz v7, :cond_6a

    invoke-static {v4}, Lcom/ssjj/fnsdk/core/update/util/ScreenUtil;->dpiToPx(F)I

    move-result v4

    goto :goto_6e

    :cond_6a
    invoke-static {v5}, Lcom/ssjj/fnsdk/core/update/util/ScreenUtil;->dpiToPx(F)I

    move-result v4

    :goto_6e
    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    invoke-static {v3}, Lcom/ssjj/fnsdk/core/update/util/ScreenUtil;->dpiToPx(F)I

    move-result v4

    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-static {v6}, Lcom/ssjj/fnsdk/core/update/util/ScreenUtil;->dpiToPx(F)I

    move-result v4

    invoke-virtual {v0, v8, v4, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget v4, p0, Lcom/ssjj/fnsdk/core/update/ViewTip;->d:I

    invoke-virtual {v0, v9, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v4, 0xb

    const/4 v5, -0x1

    invoke-virtual {v0, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v4, p0, Lcom/ssjj/fnsdk/core/update/ViewTip;->a:Landroid/widget/RelativeLayout;

    iget-object v7, p0, Lcom/ssjj/fnsdk/core/update/ViewTip;->rightButton:Landroid/widget/Button;

    invoke-virtual {v4, v7, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/ViewTip;->b:Landroid/content/Context;

    sget v4, Lcom/ssjj/fnsdk/core/update/ViewTheme;->sizeTextBigButton:I

    invoke-static {v0, v2, v4}, Lcom/ssjj/fnsdk/core/update/ViewBase;->newConfirmButton(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/update/ViewTip;->singleButton:Landroid/widget/Button;

    iget v2, p0, Lcom/ssjj/fnsdk/core/update/ViewTip;->g:I

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setId(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v5, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-static {v3}, Lcom/ssjj/fnsdk/core/update/util/ScreenUtil;->dpiToPx(F)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-static {v6}, Lcom/ssjj/fnsdk/core/update/util/ScreenUtil;->dpiToPx(F)I

    move-result v1

    invoke-virtual {v0, v8, v1, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget v1, p0, Lcom/ssjj/fnsdk/core/update/ViewTip;->d:I

    invoke-virtual {v0, v9, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/update/ViewTip;->a:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/update/ViewTip;->singleButton:Landroid/widget/Button;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/ViewTip;->singleButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/ViewTip;->a:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public setMode(I)V
    .registers 5

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-nez p1, :cond_17

    iput p1, p0, Lcom/ssjj/fnsdk/core/update/ViewTip;->h:I

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/update/ViewTip;->leftButton:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/update/ViewTip;->rightButton:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/update/ViewTip;->singleButton:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_2b

    :cond_17
    const/4 v2, 0x1

    if-ne p1, v2, :cond_2b

    iput p1, p0, Lcom/ssjj/fnsdk/core/update/ViewTip;->h:I

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/update/ViewTip;->leftButton:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/update/ViewTip;->rightButton:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/update/ViewTip;->singleButton:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    :cond_2b
    :goto_2b
    return-void
.end method
