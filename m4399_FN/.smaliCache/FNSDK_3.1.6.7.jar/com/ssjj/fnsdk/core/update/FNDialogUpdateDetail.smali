.class public Lcom/ssjj/fnsdk/core/update/FNDialogUpdateDetail;
.super Lcom/ssjj/fnsdk/core/update/FNDialog;


# instance fields
.field private a:Lcom/ssjj/fnsdk/core/update/ViewUpdateDetail;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/ssjj/fnsdk/core/update/FNDialog;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected getResId()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected inflate()V
    .registers 5

    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/update/FNDialogUpdateDetail;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/ssjj/fnsdk/core/update/n;

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/update/FNDialogUpdateDetail;->context:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lcom/ssjj/fnsdk/core/update/n;-><init>(Lcom/ssjj/fnsdk/core/update/FNDialogUpdateDetail;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/ssjj/fnsdk/core/update/FNDialogUpdateDetail;->a:Lcom/ssjj/fnsdk/core/update/ViewUpdateDetail;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xe

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v2, 0xf

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-static {}, Lcom/ssjj/fnsdk/core/update/util/ScreenUtil;->isLandscape()Z

    move-result v2

    if-eqz v2, :cond_2a

    const/16 v2, 0x17c

    goto :goto_2c

    :cond_2a
    const/16 v2, 0x154

    :goto_2c
    int-to-float v2, v2

    invoke-static {v2}, Lcom/ssjj/fnsdk/core/update/util/ScreenUtil;->dpiToPx(F)I

    move-result v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    invoke-static {}, Lcom/ssjj/fnsdk/core/update/util/ScreenUtil;->isLandscape()Z

    const/16 v2, 0x112

    int-to-float v2, v2

    invoke-static {v2}, Lcom/ssjj/fnsdk/core/update/util/ScreenUtil;->dpiToPx(F)I

    move-result v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/update/FNDialogUpdateDetail;->a:Lcom/ssjj/fnsdk/core/update/ViewUpdateDetail;

    invoke-virtual {v2}, Lcom/ssjj/fnsdk/core/update/ViewUpdateDetail;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNDialogUpdateDetail;->view:Landroid/view/View;

    return-void
.end method

.method protected onBackPressed()V
    .registers 1

    invoke-virtual {p0}, Lcom/ssjj/fnsdk/core/update/FNDialogUpdateDetail;->dismiss()V

    return-void
.end method

.method public setDesc(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNDialogUpdateDetail;->a:Lcom/ssjj/fnsdk/core/update/ViewUpdateDetail;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Lcom/ssjj/fnsdk/core/update/ViewUpdateDetail;->setHtmlDesc(Ljava/lang/String;)V

    :cond_7
    return-void
.end method
