.class public Lcom/ssjj/fnsdk/core/update/ViewUpdateDetail;
.super Lcom/ssjj/fnsdk/core/update/ViewBase;


# instance fields
.field private a:Landroid/widget/RelativeLayout;

.field private c:I

.field private d:I

.field private e:Lcom/ssjj/fnsdk/core/update/ViewTitle;

.field private f:Lcom/ssjj/fnsdk/core/update/ViewUpdateDesc;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/ssjj/fnsdk/core/update/ViewBase;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x2ee3

    iput p1, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdateDetail;->c:I

    const/16 p1, 0x2ee4

    iput p1, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdateDetail;->d:I

    invoke-direct {p0}, Lcom/ssjj/fnsdk/core/update/ViewUpdateDetail;->b()V

    return-void
.end method

.method private b()V
    .registers 6

    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdateDetail;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdateDetail;->a:Landroid/widget/RelativeLayout;

    sget v1, Lcom/ssjj/fnsdk/core/update/ViewTheme;->colorBackground:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdateDetail;->a:Landroid/widget/RelativeLayout;

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-static {v1}, Lcom/ssjj/fnsdk/core/update/util/ScreenUtil;->dpiToPx(F)I

    move-result v2

    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {v3}, Lcom/ssjj/fnsdk/core/update/util/ScreenUtil;->dpiToPx(F)I

    move-result v4

    invoke-static {v1}, Lcom/ssjj/fnsdk/core/update/util/ScreenUtil;->dpiToPx(F)I

    move-result v1

    invoke-static {v3}, Lcom/ssjj/fnsdk/core/update/util/ScreenUtil;->dpiToPx(F)I

    move-result v3

    invoke-virtual {v0, v2, v4, v1, v3}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    new-instance v0, Lcom/ssjj/fnsdk/core/update/ViewTitle;

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdateDetail;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/ssjj/fnsdk/core/update/ViewTitle;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdateDetail;->e:Lcom/ssjj/fnsdk/core/update/ViewTitle;

    const-string v1, "< \u8fd4\u56de"

    invoke-virtual {v0, v1}, Lcom/ssjj/fnsdk/core/update/ViewTitle;->setTitleText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdateDetail;->e:Lcom/ssjj/fnsdk/core/update/ViewTitle;

    iget v1, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdateDetail;->c:I

    invoke-virtual {v0, v1}, Lcom/ssjj/fnsdk/core/update/ViewTitle;->setId(I)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdateDetail;->e:Lcom/ssjj/fnsdk/core/update/ViewTitle;

    new-instance v1, Lcom/ssjj/fnsdk/core/update/ad;

    invoke-direct {v1, p0}, Lcom/ssjj/fnsdk/core/update/ad;-><init>(Lcom/ssjj/fnsdk/core/update/ViewUpdateDetail;)V

    invoke-virtual {v0, v1}, Lcom/ssjj/fnsdk/core/update/ViewTitle;->setTitleClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v3, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdateDetail;->a:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdateDetail;->e:Lcom/ssjj/fnsdk/core/update/ViewTitle;

    invoke-virtual {v4}, Lcom/ssjj/fnsdk/core/update/ViewTitle;->getView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lcom/ssjj/fnsdk/core/update/ViewUpdateDesc;

    iget-object v3, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdateDetail;->b:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/ssjj/fnsdk/core/update/ViewUpdateDesc;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdateDetail;->f:Lcom/ssjj/fnsdk/core/update/ViewUpdateDesc;

    iget v3, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdateDetail;->d:I

    invoke-virtual {v0, v3}, Lcom/ssjj/fnsdk/core/update/ViewUpdateDesc;->setId(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/high16 v1, 0x434e0000    # 206.0f

    invoke-static {v1}, Lcom/ssjj/fnsdk/core/update/util/ScreenUtil;->dpiToPx(F)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    const/4 v1, 0x3

    iget v2, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdateDetail;->c:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/high16 v1, 0x40400000    # 3.0f

    invoke-static {v1}, Lcom/ssjj/fnsdk/core/update/util/ScreenUtil;->dpiToPx(F)I

    move-result v2

    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {v3}, Lcom/ssjj/fnsdk/core/update/util/ScreenUtil;->dpiToPx(F)I

    move-result v3

    invoke-static {v1}, Lcom/ssjj/fnsdk/core/update/util/ScreenUtil;->dpiToPx(F)I

    move-result v1

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdateDetail;->a:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdateDetail;->f:Lcom/ssjj/fnsdk/core/update/ViewUpdateDesc;

    invoke-virtual {v2}, Lcom/ssjj/fnsdk/core/update/ViewUpdateDesc;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdateDetail;->f:Lcom/ssjj/fnsdk/core/update/ViewUpdateDesc;

    const-string v1, "\u66f4\u65b0\u5185\u5bb9\uff1a"

    sget v2, Lcom/ssjj/fnsdk/core/update/ViewTheme;->colorTextMain:I

    invoke-virtual {v0, v1, v2}, Lcom/ssjj/fnsdk/core/update/ViewUpdateDesc;->setDescTitle(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method protected a()V
    .registers 1

    return-void
.end method

.method public getView()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdateDetail;->a:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public setHtmlDesc(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/ViewUpdateDetail;->f:Lcom/ssjj/fnsdk/core/update/ViewUpdateDesc;

    invoke-virtual {v0, p1}, Lcom/ssjj/fnsdk/core/update/ViewUpdateDesc;->setHtmlDesc(Ljava/lang/String;)V

    return-void
.end method
