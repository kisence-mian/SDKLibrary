.class public Lcom/tapsdk/moment/view/NetworkErrorDialog;
.super Landroid/app/Dialog;
.source "NetworkErrorDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapsdk/moment/view/NetworkErrorDialog$RefreshCallback;
    }
.end annotation


# instance fields
.field private isNotch:Z

.field private refreshCallback:Lcom/tapsdk/moment/view/NetworkErrorDialog$RefreshCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;ZLcom/tapsdk/moment/view/NetworkErrorDialog$RefreshCallback;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isNotch"    # Z
    .param p3, "refreshCallback"    # Lcom/tapsdk/moment/view/NetworkErrorDialog$RefreshCallback;

    .line 27
    const-string v0, "dialog"

    invoke-static {p1, v0}, Lcom/tapsdk/moment/Utils;->getStyle(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tapsdk/moment/view/NetworkErrorDialog;->isNotch:Z

    .line 28
    iput-object p3, p0, Lcom/tapsdk/moment/view/NetworkErrorDialog;->refreshCallback:Lcom/tapsdk/moment/view/NetworkErrorDialog$RefreshCallback;

    .line 29
    iput-boolean p2, p0, Lcom/tapsdk/moment/view/NetworkErrorDialog;->isNotch:Z

    .line 30
    return-void
.end method

.method static synthetic access$000(Lcom/tapsdk/moment/view/NetworkErrorDialog;)Lcom/tapsdk/moment/view/NetworkErrorDialog$RefreshCallback;
    .registers 2
    .param p0, "x0"    # Lcom/tapsdk/moment/view/NetworkErrorDialog;

    .line 22
    iget-object v0, p0, Lcom/tapsdk/moment/view/NetworkErrorDialog;->refreshCallback:Lcom/tapsdk/moment/view/NetworkErrorDialog$RefreshCallback;

    return-object v0
.end method

.method private initView()Landroid/view/View;
    .registers 16

    .line 59
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/tapsdk/moment/view/NetworkErrorDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 60
    .local v0, "root":Landroid/widget/RelativeLayout;
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 61
    invoke-virtual {p0}, Lcom/tapsdk/moment/view/NetworkErrorDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_30

    .line 62
    invoke-virtual {p0}, Lcom/tapsdk/moment/view/NetworkErrorDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v4, "error_background"

    invoke-static {v1, v4}, Lcom/tapsdk/moment/Utils;->getDrawable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 64
    :cond_30
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/tapsdk/moment/view/NetworkErrorDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 65
    .local v1, "close":Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/tapsdk/moment/view/NetworkErrorDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "ttos_moment_close"

    invoke-static {v4, v5}, Lcom/tapsdk/moment/Utils;->getDrawable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 66
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/tapsdk/moment/view/NetworkErrorDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    const/high16 v6, 0x42700000    # 60.0f

    invoke-static {v5, v6}, Lcom/tapsdk/moment/Utils;->dip2px(Landroid/content/Context;F)I

    move-result v5

    invoke-virtual {p0}, Lcom/tapsdk/moment/view/NetworkErrorDialog;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v6}, Lcom/tapsdk/moment/Utils;->dip2px(Landroid/content/Context;F)I

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 67
    .local v4, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v5, 0xb

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 68
    invoke-virtual {p0}, Lcom/tapsdk/moment/view/NetworkErrorDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    const/high16 v6, 0x41f00000    # 30.0f

    const/4 v7, 0x0

    if-ne v5, v3, :cond_81

    .line 69
    invoke-virtual {p0}, Lcom/tapsdk/moment/view/NetworkErrorDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v6}, Lcom/tapsdk/moment/Utils;->dip2px(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v4, v7, v7, v3, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_90

    .line 71
    :cond_81
    iget-boolean v3, p0, Lcom/tapsdk/moment/view/NetworkErrorDialog;->isNotch:Z

    if-eqz v3, :cond_90

    .line 72
    invoke-virtual {p0}, Lcom/tapsdk/moment/view/NetworkErrorDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v6}, Lcom/tapsdk/moment/Utils;->dip2px(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v4, v7, v3, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 75
    :cond_90
    :goto_90
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 76
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 77
    new-instance v3, Lcom/tapsdk/moment/view/NetworkErrorDialog$1;

    invoke-direct {v3, p0}, Lcom/tapsdk/moment/view/NetworkErrorDialog$1;-><init>(Lcom/tapsdk/moment/view/NetworkErrorDialog;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/tapsdk/moment/view/NetworkErrorDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 87
    .local v3, "container":Landroid/widget/LinearLayout;
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 88
    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 89
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/tapsdk/moment/view/NetworkErrorDialog;->getContext()Landroid/content/Context;

    move-result-object v6

    const/high16 v7, 0x43520000    # 210.0f

    invoke-static {v6, v7}, Lcom/tapsdk/moment/Utils;->dip2px(Landroid/content/Context;F)I

    move-result v6

    invoke-virtual {p0}, Lcom/tapsdk/moment/view/NetworkErrorDialog;->getContext()Landroid/content/Context;

    move-result-object v7

    const/high16 v8, 0x43160000    # 150.0f

    invoke-static {v7, v8}, Lcom/tapsdk/moment/Utils;->dip2px(Landroid/content/Context;F)I

    move-result v7

    invoke-direct {v5, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 90
    .local v5, "contain_lp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v6, 0xd

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 91
    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 92
    new-instance v7, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/tapsdk/moment/view/NetworkErrorDialog;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 93
    .local v7, "imageView":Landroid/widget/ImageView;
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/tapsdk/moment/view/NetworkErrorDialog;->getContext()Landroid/content/Context;

    move-result-object v9

    const/high16 v10, 0x430c0000    # 140.0f

    invoke-static {v9, v10}, Lcom/tapsdk/moment/Utils;->dip2px(Landroid/content/Context;F)I

    move-result v9

    invoke-virtual {p0}, Lcom/tapsdk/moment/view/NetworkErrorDialog;->getContext()Landroid/content/Context;

    move-result-object v10

    const/high16 v11, 0x42f00000    # 120.0f

    invoke-static {v10, v11}, Lcom/tapsdk/moment/Utils;->dip2px(Landroid/content/Context;F)I

    move-result v10

    invoke-direct {v8, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 94
    invoke-virtual {p0}, Lcom/tapsdk/moment/view/NetworkErrorDialog;->getContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "network_error"

    invoke-static {v8, v9}, Lcom/tapsdk/moment/Utils;->getDrawable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 95
    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 96
    new-instance v8, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/tapsdk/moment/view/NetworkErrorDialog;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 97
    .local v8, "tip":Landroid/widget/TextView;
    const/high16 v9, 0x41800000    # 16.0f

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextSize(F)V

    .line 98
    const-string v9, "load_fail_hint"

    invoke-static {v9}, Lcom/tapsdk/moment/Utils;->getTranslatedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 100
    invoke-virtual {p0}, Lcom/tapsdk/moment/view/NetworkErrorDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p0}, Lcom/tapsdk/moment/view/NetworkErrorDialog;->getContext()Landroid/content/Context;

    move-result-object v9

    const-string v10, "ic_refresh"

    invoke-static {v9, v10}, Lcom/tapsdk/moment/Utils;->getDrawable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 101
    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/tapsdk/moment/view/NetworkErrorDialog;->getContext()Landroid/content/Context;

    move-result-object v9

    const/high16 v10, 0x40a00000    # 5.0f

    invoke-static {v9, v10}, Lcom/tapsdk/moment/Utils;->dip2px(Landroid/content/Context;F)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 102
    const/4 v9, 0x0

    invoke-virtual {v8, v9, v9, v2, v9}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 103
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v11, -0x2

    invoke-direct {v9, v11, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 104
    new-instance v9, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v8}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    invoke-direct {v9, v11}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 105
    .local v9, "marginLayoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {p0}, Lcom/tapsdk/moment/view/NetworkErrorDialog;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11, v10}, Lcom/tapsdk/moment/Utils;->dip2px(Landroid/content/Context;F)I

    move-result v10

    iput v10, v9, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 106
    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 107
    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 109
    new-instance v10, Lcom/tapsdk/moment/view/TTMGifView;

    invoke-virtual {p0}, Lcom/tapsdk/moment/view/NetworkErrorDialog;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/tapsdk/moment/view/TTMGifView;-><init>(Landroid/content/Context;)V

    .line 110
    .local v10, "ttmGifView":Lcom/tapsdk/moment/view/TTMGifView;
    new-instance v11, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/tapsdk/moment/view/NetworkErrorDialog;->getContext()Landroid/content/Context;

    move-result-object v12

    const/high16 v13, 0x41c00000    # 24.0f

    invoke-static {v12, v13}, Lcom/tapsdk/moment/Utils;->dip2px(Landroid/content/Context;F)I

    move-result v12

    invoke-virtual {p0}, Lcom/tapsdk/moment/view/NetworkErrorDialog;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-static {v14, v13}, Lcom/tapsdk/moment/Utils;->dip2px(Landroid/content/Context;F)I

    move-result v13

    invoke-direct {v11, v12, v13}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 111
    .local v11, "load_lp":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v11, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 112
    invoke-virtual {p0}, Lcom/tapsdk/moment/view/NetworkErrorDialog;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v12, "ttos_moment_loading"

    invoke-static {v6, v12}, Lcom/tapsdk/moment/Utils;->getDrawable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v10, v6}, Lcom/tapsdk/moment/view/TTMGifView;->setMovieResource(I)V

    .line 113
    invoke-virtual {v10, v11}, Lcom/tapsdk/moment/view/TTMGifView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 114
    const/4 v6, 0x4

    invoke-virtual {v10, v6}, Lcom/tapsdk/moment/view/TTMGifView;->setVisibility(I)V

    .line 115
    invoke-virtual {v0, v10}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 116
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 118
    new-instance v6, Lcom/tapsdk/moment/view/NetworkErrorDialog$2;

    invoke-direct {v6, p0, v8, v3, v10}, Lcom/tapsdk/moment/view/NetworkErrorDialog$2;-><init>(Lcom/tapsdk/moment/view/NetworkErrorDialog;Landroid/widget/TextView;Landroid/widget/LinearLayout;Lcom/tapsdk/moment/view/TTMGifView;)V

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 34
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 35
    invoke-direct {p0}, Lcom/tapsdk/moment/view/NetworkErrorDialog;->initView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tapsdk/moment/view/NetworkErrorDialog;->setContentView(Landroid/view/View;)V

    .line 36
    return-void
.end method

.method protected onStart()V
    .registers 5

    .line 40
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 41
    invoke-virtual {p0}, Lcom/tapsdk/moment/view/NetworkErrorDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 42
    .local v0, "window":Landroid/view/Window;
    if-eqz v0, :cond_38

    .line 43
    const/16 v1, 0x400

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 44
    const/4 v1, -0x1

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setLayout(II)V

    .line 45
    invoke-virtual {p0}, Lcom/tapsdk/moment/view/NetworkErrorDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "error_background"

    invoke-static {v1, v2}, Lcom/tapsdk/moment/Utils;->getDrawable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 46
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_38

    .line 48
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 49
    .local v1, "lp":Landroid/view/WindowManager$LayoutParams;
    const/4 v2, 0x1

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 50
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 52
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    .line 53
    .local v2, "decorView":Landroid/view/View;
    const/16 v3, 0x500

    invoke-virtual {v2, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 56
    .end local v1    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v2    # "decorView":Landroid/view/View;
    :cond_38
    return-void
.end method
