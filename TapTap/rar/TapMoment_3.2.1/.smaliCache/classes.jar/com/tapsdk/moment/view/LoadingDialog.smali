.class public Lcom/tapsdk/moment/view/LoadingDialog;
.super Landroid/app/Dialog;
.source "LoadingDialog.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 18
    const v0, 0x1030010

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 19
    invoke-direct {p0}, Lcom/tapsdk/moment/view/LoadingDialog;->initView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tapsdk/moment/view/LoadingDialog;->setContentView(Landroid/view/View;)V

    .line 20
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tapsdk/moment/view/LoadingDialog;->setCanceledOnTouchOutside(Z)V

    .line 21
    return-void
.end method

.method private initView()Landroid/view/View;
    .registers 9

    .line 24
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/tapsdk/moment/view/LoadingDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 25
    .local v0, "container":Landroid/widget/LinearLayout;
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p0}, Lcom/tapsdk/moment/view/LoadingDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x41c00000    # 24.0f

    invoke-static {v2, v3}, Lcom/tds/common/utils/UIUtils;->dp2px(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {p0}, Lcom/tapsdk/moment/view/LoadingDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/tds/common/utils/UIUtils;->dp2px(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v1, v2, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 26
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 27
    .local v1, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v2, 0x11

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 28
    new-instance v4, Lcom/tapsdk/moment/view/TTMGifView;

    invoke-virtual {p0}, Lcom/tapsdk/moment/view/LoadingDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/tapsdk/moment/view/TTMGifView;-><init>(Landroid/content/Context;)V

    .line 29
    .local v4, "gifView":Lcom/tapsdk/moment/view/TTMGifView;
    invoke-virtual {p0}, Lcom/tapsdk/moment/view/LoadingDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "ttos_moment_loading"

    invoke-static {v5, v6}, Lcom/tapsdk/moment/Utils;->getDrawable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/tapsdk/moment/view/TTMGifView;->setMovieResource(I)V

    .line 30
    invoke-virtual {v0, v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 31
    invoke-virtual {p0}, Lcom/tapsdk/moment/view/LoadingDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    .line 32
    .local v5, "window":Landroid/view/Window;
    if-eqz v5, :cond_7f

    .line 33
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcom/tapsdk/moment/view/LoadingDialog;->requestWindowFeature(I)Z

    .line 34
    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v6}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 35
    .local v6, "lp":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {p0}, Lcom/tapsdk/moment/view/LoadingDialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 36
    invoke-virtual {p0}, Lcom/tapsdk/moment/view/LoadingDialog;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v3}, Lcom/tds/common/utils/UIUtils;->dp2px(Landroid/content/Context;F)I

    move-result v7

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 37
    invoke-virtual {p0}, Lcom/tapsdk/moment/view/LoadingDialog;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v3}, Lcom/tds/common/utils/UIUtils;->dp2px(Landroid/content/Context;F)I

    move-result v3

    iput v3, v6, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 38
    iput v2, v6, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 39
    const v2, 0x106000d

    invoke-virtual {v5, v2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 40
    invoke-virtual {v5, v6}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 42
    .end local v6    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_7f
    return-object v0
.end method
