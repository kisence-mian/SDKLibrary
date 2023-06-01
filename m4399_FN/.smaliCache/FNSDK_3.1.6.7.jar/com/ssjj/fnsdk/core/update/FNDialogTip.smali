.class public Lcom/ssjj/fnsdk/core/update/FNDialogTip;
.super Lcom/ssjj/fnsdk/core/update/FNDialog;


# static fields
.field public static final mode_single_button:I = 0x0

.field public static final mode_two_button:I = 0x1


# instance fields
.field private a:Lcom/ssjj/fnsdk/core/update/ViewTip;

.field private b:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/ssjj/fnsdk/core/update/FNDialog;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/ssjj/fnsdk/core/update/d;

    invoke-direct {p1, p0}, Lcom/ssjj/fnsdk/core/update/d;-><init>(Lcom/ssjj/fnsdk/core/update/FNDialogTip;)V

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/update/FNDialogTip;->b:Landroid/view/View$OnClickListener;

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/update/FNDialogTip;->a:Lcom/ssjj/fnsdk/core/update/ViewTip;

    if-eqz p1, :cond_2c

    invoke-virtual {p1, p2}, Lcom/ssjj/fnsdk/core/update/ViewTip;->setMode(I)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/update/FNDialogTip;->a:Lcom/ssjj/fnsdk/core/update/ViewTip;

    iget-object p1, p1, Lcom/ssjj/fnsdk/core/update/ViewTip;->leftButton:Landroid/widget/Button;

    iget-object p2, p0, Lcom/ssjj/fnsdk/core/update/FNDialogTip;->b:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/update/FNDialogTip;->a:Lcom/ssjj/fnsdk/core/update/ViewTip;

    iget-object p1, p1, Lcom/ssjj/fnsdk/core/update/ViewTip;->rightButton:Landroid/widget/Button;

    iget-object p2, p0, Lcom/ssjj/fnsdk/core/update/FNDialogTip;->b:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/update/FNDialogTip;->a:Lcom/ssjj/fnsdk/core/update/ViewTip;

    iget-object p1, p1, Lcom/ssjj/fnsdk/core/update/ViewTip;->singleButton:Landroid/widget/Button;

    iget-object p2, p0, Lcom/ssjj/fnsdk/core/update/FNDialogTip;->b:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2c
    return-void
.end method

.method static synthetic a(Lcom/ssjj/fnsdk/core/update/FNDialogTip;)Lcom/ssjj/fnsdk/core/update/ViewTip;
    .registers 1

    iget-object p0, p0, Lcom/ssjj/fnsdk/core/update/FNDialogTip;->a:Lcom/ssjj/fnsdk/core/update/ViewTip;

    return-object p0
.end method


# virtual methods
.method protected getResId()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected inflate()V
    .registers 6

    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/update/FNDialogTip;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/ssjj/fnsdk/core/update/ViewTip;

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/update/FNDialogTip;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/ssjj/fnsdk/core/update/ViewTip;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xe

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v3, 0xf

    invoke-virtual {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-static {}, Lcom/ssjj/fnsdk/core/update/util/ScreenUtil;->isLandscape()Z

    move-result v3

    if-eqz v3, :cond_28

    const/16 v3, 0x17c

    goto :goto_2a

    :cond_28
    const/16 v3, 0x154

    :goto_2a
    int-to-float v3, v3

    invoke-static {v3}, Lcom/ssjj/fnsdk/core/update/util/ScreenUtil;->dpiToPx(F)I

    move-result v3

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    invoke-virtual {v1}, Lcom/ssjj/fnsdk/core/update/ViewTip;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v1, p0, Lcom/ssjj/fnsdk/core/update/FNDialogTip;->a:Lcom/ssjj/fnsdk/core/update/ViewTip;

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNDialogTip;->view:Landroid/view/View;

    return-void
.end method

.method protected onBackPressed()V
    .registers 1

    invoke-virtual {p0}, Lcom/ssjj/fnsdk/core/update/FNDialogTip;->dismiss()V

    return-void
.end method

.method protected onLeftButtonClick()V
    .registers 1

    return-void
.end method

.method protected onRightButtonClick()V
    .registers 1

    return-void
.end method

.method protected onSingleButtonClick()V
    .registers 1

    return-void
.end method

.method protected release()V
    .registers 2

    invoke-super {p0}, Lcom/ssjj/fnsdk/core/update/FNDialog;->release()V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNDialogTip;->a:Lcom/ssjj/fnsdk/core/update/ViewTip;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/ssjj/fnsdk/core/update/ViewTip;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNDialogTip;->a:Lcom/ssjj/fnsdk/core/update/ViewTip;

    :cond_d
    return-void
.end method

.method public setLeftButtonText(Ljava/lang/String;)Lcom/ssjj/fnsdk/core/update/FNDialogTip;
    .registers 3

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNDialogTip;->a:Lcom/ssjj/fnsdk/core/update/ViewTip;

    if-eqz v0, :cond_9

    iget-object v0, v0, Lcom/ssjj/fnsdk/core/update/ViewTip;->leftButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_9
    return-object p0
.end method

.method public setMsg(Ljava/lang/String;)Lcom/ssjj/fnsdk/core/update/FNDialogTip;
    .registers 3

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNDialogTip;->a:Lcom/ssjj/fnsdk/core/update/ViewTip;

    if-eqz v0, :cond_9

    iget-object v0, v0, Lcom/ssjj/fnsdk/core/update/ViewTip;->msgView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_9
    return-object p0
.end method

.method public setMsgSpan(Landroid/text/SpannableString;)Lcom/ssjj/fnsdk/core/update/FNDialogTip;
    .registers 3

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNDialogTip;->a:Lcom/ssjj/fnsdk/core/update/ViewTip;

    if-eqz v0, :cond_9

    iget-object v0, v0, Lcom/ssjj/fnsdk/core/update/ViewTip;->msgView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_9
    return-object p0
.end method

.method public setRightButtonText(Ljava/lang/String;)Lcom/ssjj/fnsdk/core/update/FNDialogTip;
    .registers 3

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNDialogTip;->a:Lcom/ssjj/fnsdk/core/update/ViewTip;

    if-eqz v0, :cond_9

    iget-object v0, v0, Lcom/ssjj/fnsdk/core/update/ViewTip;->rightButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_9
    return-object p0
.end method

.method public setSingleButtonText(Ljava/lang/String;)Lcom/ssjj/fnsdk/core/update/FNDialogTip;
    .registers 3

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNDialogTip;->a:Lcom/ssjj/fnsdk/core/update/ViewTip;

    if-eqz v0, :cond_9

    iget-object v0, v0, Lcom/ssjj/fnsdk/core/update/ViewTip;->singleButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_9
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/ssjj/fnsdk/core/update/FNDialogTip;
    .registers 3

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNDialogTip;->a:Lcom/ssjj/fnsdk/core/update/ViewTip;

    if-eqz v0, :cond_9

    iget-object v0, v0, Lcom/ssjj/fnsdk/core/update/ViewTip;->titleView:Lcom/ssjj/fnsdk/core/update/ViewTitle;

    invoke-virtual {v0, p1}, Lcom/ssjj/fnsdk/core/update/ViewTitle;->setTitleText(Ljava/lang/String;)V

    :cond_9
    return-object p0
.end method
