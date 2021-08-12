.class public Lcom/anythink/basead/ui/SplashAdView;
.super Lcom/anythink/basead/ui/BaseAdView;


# instance fields
.field a:Landroid/widget/TextView;

.field b:Ljava/lang/String;

.field c:Landroid/os/CountDownTimer;

.field d:Lcom/anythink/basead/f/a;

.field e:Lcom/anythink/basead/ui/a;

.field u:I

.field v:I

.field w:Z

.field x:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 52
    invoke-direct {p0, p1}, Lcom/anythink/basead/ui/BaseAdView;-><init>(Landroid/content/Context;)V

    .line 41
    const-string p1, "Skip"

    iput-object p1, p0, Lcom/anythink/basead/ui/SplashAdView;->b:Ljava/lang/String;

    .line 352
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/anythink/basead/ui/SplashAdView;->w:Z

    .line 353
    iput-boolean p1, p0, Lcom/anythink/basead/ui/SplashAdView;->x:Z

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/anythink/core/common/d/i;Lcom/anythink/core/common/d/h;Lcom/anythink/basead/f/a;)V
    .registers 5

    .line 56
    invoke-direct {p0, p1, p2, p3}, Lcom/anythink/basead/ui/BaseAdView;-><init>(Landroid/content/Context;Lcom/anythink/core/common/d/i;Lcom/anythink/core/common/d/h;)V

    .line 41
    const-string p1, "Skip"

    iput-object p1, p0, Lcom/anythink/basead/ui/SplashAdView;->b:Ljava/lang/String;

    .line 352
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/anythink/basead/ui/SplashAdView;->w:Z

    .line 353
    iput-boolean p1, p0, Lcom/anythink/basead/ui/SplashAdView;->x:Z

    .line 58
    iput-object p4, p0, Lcom/anythink/basead/ui/SplashAdView;->d:Lcom/anythink/basead/f/a;

    .line 60
    nop

    .line 1289
    new-instance p1, Lcom/anythink/basead/ui/SplashAdView$6;

    invoke-direct {p1, p0}, Lcom/anythink/basead/ui/SplashAdView$6;-><init>(Lcom/anythink/basead/ui/SplashAdView;)V

    .line 2038
    const/16 p2, 0x64

    invoke-super {p0, p2, p1}, Lcom/anythink/basead/ui/BaseAdView;->a(ILjava/lang/Runnable;)V

    .line 61
    nop

    .line 2328
    new-instance p1, Lcom/anythink/basead/ui/SplashAdView$7;

    invoke-direct {p1, p0}, Lcom/anythink/basead/ui/SplashAdView$7;-><init>(Lcom/anythink/basead/ui/SplashAdView;)V

    invoke-virtual {p0, p1}, Lcom/anythink/basead/ui/SplashAdView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    return-void
.end method

.method private static synthetic a(Lcom/anythink/basead/ui/SplashAdView;Ljava/lang/Runnable;)V
    .registers 3

    .line 38
    const/16 v0, 0x64

    invoke-super {p0, v0, p1}, Lcom/anythink/basead/ui/BaseAdView;->a(ILjava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Lcom/anythink/basead/ui/SplashAdView;)Z
    .registers 1

    .line 38
    invoke-direct {p0}, Lcom/anythink/basead/ui/SplashAdView;->p()Z

    move-result p0

    return p0
.end method

.method static synthetic b(Lcom/anythink/basead/ui/SplashAdView;)V
    .registers 1

    .line 38
    invoke-super {p0}, Lcom/anythink/basead/ui/BaseAdView;->f()V

    return-void
.end method

.method static synthetic c(Lcom/anythink/basead/ui/SplashAdView;)V
    .registers 1

    .line 38
    invoke-super {p0}, Lcom/anythink/basead/ui/BaseAdView;->f()V

    return-void
.end method

.method static synthetic d(Lcom/anythink/basead/ui/SplashAdView;)V
    .registers 1

    .line 38
    invoke-super {p0}, Lcom/anythink/basead/ui/BaseAdView;->g()V

    return-void
.end method

.method private static synthetic e(Lcom/anythink/basead/ui/SplashAdView;)V
    .registers 1

    .line 38
    invoke-super {p0}, Lcom/anythink/basead/ui/BaseAdView;->h()V

    return-void
.end method

.method private static l()V
    .registers 0

    .line 84
    return-void
.end method

.method private m()V
    .registers 17

    .line 87
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/anythink/basead/ui/SplashAdView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "myoffer_splash_ad_title"

    const-string v3, "id"

    invoke-static {v1, v2, v3}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/anythink/basead/ui/SplashAdView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 88
    invoke-virtual/range {p0 .. p0}, Lcom/anythink/basead/ui/SplashAdView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v4, "myoffer_splash_ad_install_btn"

    invoke-static {v2, v4, v3}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/anythink/basead/ui/SplashAdView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 89
    invoke-virtual/range {p0 .. p0}, Lcom/anythink/basead/ui/SplashAdView;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "myoffer_splash_desc"

    invoke-static {v4, v5, v3}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/anythink/basead/ui/SplashAdView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 90
    invoke-virtual/range {p0 .. p0}, Lcom/anythink/basead/ui/SplashAdView;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "myoffer_splash_self_ad_logo"

    invoke-static {v5, v6, v3}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/anythink/basead/ui/SplashAdView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 92
    invoke-virtual/range {p0 .. p0}, Lcom/anythink/basead/ui/SplashAdView;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "myoffer_splash_ad_content_image_area"

    invoke-static {v6, v7, v3}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/anythink/basead/ui/SplashAdView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout;

    .line 93
    invoke-virtual/range {p0 .. p0}, Lcom/anythink/basead/ui/SplashAdView;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "myoffer_splash_bg"

    invoke-static {v7, v8, v3}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/anythink/basead/ui/SplashAdView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/anythink/basead/ui/component/RoundImageView;

    .line 94
    invoke-virtual/range {p0 .. p0}, Lcom/anythink/basead/ui/SplashAdView;->getContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "myoffer_splash_icon"

    invoke-static {v8, v9, v3}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v0, v8}, Lcom/anythink/basead/ui/SplashAdView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/anythink/basead/ui/component/RoundImageView;

    .line 96
    invoke-virtual/range {p0 .. p0}, Lcom/anythink/basead/ui/SplashAdView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Lcom/anythink/basead/ui/SplashAdView;->getContext()Landroid/content/Context;

    move-result-object v10

    const-string v11, "myoffer_splash_skip_text"

    const-string v12, "string"

    invoke-static {v10, v11, v12}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v0, Lcom/anythink/basead/ui/SplashAdView;->b:Ljava/lang/String;

    .line 97
    invoke-virtual/range {p0 .. p0}, Lcom/anythink/basead/ui/SplashAdView;->getContext()Landroid/content/Context;

    move-result-object v9

    const-string v10, "myoffer_splash_skip"

    invoke-static {v9, v10, v3}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v0, v9}, Lcom/anythink/basead/ui/SplashAdView;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, v0, Lcom/anythink/basead/ui/SplashAdView;->a:Landroid/widget/TextView;

    .line 100
    invoke-virtual/range {p0 .. p0}, Lcom/anythink/basead/ui/SplashAdView;->getContext()Landroid/content/Context;

    move-result-object v9

    const-string v10, "myoffer_splash_ad_logo"

    invoke-static {v9, v10, v3}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v0, v9}, Lcom/anythink/basead/ui/SplashAdView;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/anythink/basead/ui/component/RoundImageView;

    .line 101
    iget-object v10, v0, Lcom/anythink/basead/ui/SplashAdView;->g:Lcom/anythink/core/common/d/h;

    invoke-virtual {v10}, Lcom/anythink/core/common/d/h;->k()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/16 v13, 0x8

    if-nez v10, :cond_e1

    .line 102
    invoke-virtual {v9, v12}, Lcom/anythink/basead/ui/component/RoundImageView;->setVisibility(I)V

    .line 103
    invoke-virtual {v9}, Lcom/anythink/basead/ui/component/RoundImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    iget v10, v10, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 104
    invoke-virtual/range {p0 .. p0}, Lcom/anythink/basead/ui/SplashAdView;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-static {v14}, Lcom/anythink/core/common/res/b;->a(Landroid/content/Context;)Lcom/anythink/core/common/res/b;

    move-result-object v14

    new-instance v15, Lcom/anythink/core/common/res/e;

    iget-object v12, v0, Lcom/anythink/basead/ui/SplashAdView;->g:Lcom/anythink/core/common/d/h;

    invoke-virtual {v12}, Lcom/anythink/core/common/d/h;->k()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v15, v11, v12}, Lcom/anythink/core/common/res/e;-><init>(ILjava/lang/String;)V

    new-instance v12, Lcom/anythink/basead/ui/SplashAdView$1;

    invoke-direct {v12, v0, v9}, Lcom/anythink/basead/ui/SplashAdView$1;-><init>(Lcom/anythink/basead/ui/SplashAdView;Lcom/anythink/basead/ui/component/RoundImageView;)V

    invoke-virtual {v14, v15, v10, v10, v12}, Lcom/anythink/core/common/res/b;->a(Lcom/anythink/core/common/res/e;IILcom/anythink/core/common/res/b$a;)V

    .line 118
    goto :goto_e4

    .line 119
    :cond_e1
    invoke-virtual {v9, v13}, Lcom/anythink/basead/ui/component/RoundImageView;->setVisibility(I)V

    .line 123
    :goto_e4
    invoke-direct/range {p0 .. p0}, Lcom/anythink/basead/ui/SplashAdView;->p()Z

    move-result v9

    if-eqz v9, :cond_13f

    .line 124
    invoke-virtual {v1, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 125
    invoke-virtual {v2, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 126
    invoke-virtual {v4, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 127
    invoke-virtual {v6, v13}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 128
    invoke-virtual {v8, v13}, Lcom/anythink/basead/ui/component/RoundImageView;->setVisibility(I)V

    .line 130
    invoke-virtual/range {p0 .. p0}, Lcom/anythink/basead/ui/SplashAdView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/anythink/core/common/res/b;->a(Landroid/content/Context;)Lcom/anythink/core/common/res/b;

    move-result-object v1

    new-instance v2, Lcom/anythink/core/common/res/e;

    iget-object v3, v0, Lcom/anythink/basead/ui/SplashAdView;->g:Lcom/anythink/core/common/d/h;

    .line 131
    invoke-virtual {v3}, Lcom/anythink/core/common/d/h;->j()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v11, v3}, Lcom/anythink/core/common/res/e;-><init>(ILjava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/anythink/basead/ui/SplashAdView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual/range {p0 .. p0}, Lcom/anythink/basead/ui/SplashAdView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/lit16 v4, v4, 0x273

    div-int/lit16 v4, v4, 0x4b0

    new-instance v6, Lcom/anythink/basead/ui/SplashAdView$3;

    invoke-direct {v6, v0, v7}, Lcom/anythink/basead/ui/SplashAdView$3;-><init>(Lcom/anythink/basead/ui/SplashAdView;Lcom/anythink/basead/ui/component/RoundImageView;)V

    .line 130
    invoke-virtual {v1, v2, v3, v4, v6}, Lcom/anythink/core/common/res/b;->a(Lcom/anythink/core/common/res/e;IILcom/anythink/core/common/res/b$a;)V

    .line 158
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/g;->q()Z

    move-result v1

    if-eqz v1, :cond_13b

    .line 159
    const/4 v1, 0x0

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    .line 161
    :cond_13b
    invoke-virtual {v5, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 164
    return-void

    .line 168
    :cond_13f
    iget-object v9, v0, Lcom/anythink/basead/ui/SplashAdView;->g:Lcom/anythink/core/common/d/h;

    instance-of v9, v9, Lcom/anythink/core/common/d/u;

    if-eqz v9, :cond_17e

    iget-object v9, v0, Lcom/anythink/basead/ui/SplashAdView;->g:Lcom/anythink/core/common/d/h;

    invoke-virtual {v9}, Lcom/anythink/core/common/d/h;->i()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_17e

    .line 169
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/anythink/basead/ui/component/RoundImageView;->setVisibility(I)V

    .line 170
    invoke-virtual {v8, v11}, Lcom/anythink/basead/ui/component/RoundImageView;->setNeedRadiu(Z)V

    .line 171
    const/4 v9, 0x3

    invoke-virtual {v8, v9}, Lcom/anythink/basead/ui/component/RoundImageView;->setRadiusInDip(I)V

    .line 172
    invoke-virtual {v8}, Lcom/anythink/basead/ui/component/RoundImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    iget v9, v9, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 173
    invoke-virtual/range {p0 .. p0}, Lcom/anythink/basead/ui/SplashAdView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/anythink/core/common/res/b;->a(Landroid/content/Context;)Lcom/anythink/core/common/res/b;

    move-result-object v10

    new-instance v12, Lcom/anythink/core/common/res/e;

    iget-object v14, v0, Lcom/anythink/basead/ui/SplashAdView;->g:Lcom/anythink/core/common/d/h;

    invoke-virtual {v14}, Lcom/anythink/core/common/d/h;->i()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v12, v11, v14}, Lcom/anythink/core/common/res/e;-><init>(ILjava/lang/String;)V

    new-instance v14, Lcom/anythink/basead/ui/SplashAdView$4;

    invoke-direct {v14, v0, v8}, Lcom/anythink/basead/ui/SplashAdView$4;-><init>(Lcom/anythink/basead/ui/SplashAdView;Lcom/anythink/basead/ui/component/RoundImageView;)V

    invoke-virtual {v10, v12, v9, v9, v14}, Lcom/anythink/core/common/res/b;->a(Lcom/anythink/core/common/res/e;IILcom/anythink/core/common/res/b$a;)V

    .line 187
    goto :goto_19f

    .line 188
    :cond_17e
    invoke-virtual {v8, v13}, Lcom/anythink/basead/ui/component/RoundImageView;->setVisibility(I)V

    .line 191
    iget-object v8, v0, Lcom/anythink/basead/ui/SplashAdView;->f:Lcom/anythink/core/common/d/i;

    iget-object v8, v8, Lcom/anythink/core/common/d/i;->j:Lcom/anythink/core/common/d/j;

    invoke-virtual {v8}, Lcom/anythink/core/common/d/j;->g()I

    move-result v8

    if-ne v8, v11, :cond_19f

    .line 192
    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout$LayoutParams;

    .line 193
    if-eqz v8, :cond_19f

    .line 194
    invoke-virtual/range {p0 .. p0}, Lcom/anythink/basead/ui/SplashAdView;->getContext()Landroid/content/Context;

    move-result-object v9

    const/high16 v10, 0x42700000    # 60.0f

    invoke-static {v9, v10}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;F)I

    move-result v9

    iput v9, v8, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 201
    :cond_19f
    :goto_19f
    invoke-virtual/range {p0 .. p0}, Lcom/anythink/basead/ui/SplashAdView;->getContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "myoffer_rating_view"

    invoke-static {v8, v9, v3}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/anythink/basead/ui/SplashAdView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/anythink/basead/ui/AppRatingView;

    .line 202
    iget-object v8, v0, Lcom/anythink/basead/ui/SplashAdView;->g:Lcom/anythink/core/common/d/h;

    invoke-virtual {v8}, Lcom/anythink/core/common/d/h;->u()I

    move-result v8

    .line 203
    const/4 v9, 0x5

    if-le v8, v9, :cond_1c3

    .line 204
    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Lcom/anythink/basead/ui/AppRatingView;->setVisibility(I)V

    .line 205
    invoke-virtual {v3, v9}, Lcom/anythink/basead/ui/AppRatingView;->setStarNum(I)V

    .line 206
    invoke-virtual {v3, v9}, Lcom/anythink/basead/ui/AppRatingView;->setRating(I)V

    goto :goto_1d3

    .line 207
    :cond_1c3
    const/4 v10, 0x0

    if-lez v8, :cond_1d0

    .line 208
    invoke-virtual {v3, v10}, Lcom/anythink/basead/ui/AppRatingView;->setVisibility(I)V

    .line 209
    invoke-virtual {v3, v9}, Lcom/anythink/basead/ui/AppRatingView;->setStarNum(I)V

    .line 210
    invoke-virtual {v3, v8}, Lcom/anythink/basead/ui/AppRatingView;->setRating(I)V

    goto :goto_1d3

    .line 212
    :cond_1d0
    invoke-virtual {v3, v13}, Lcom/anythink/basead/ui/AppRatingView;->setVisibility(I)V

    .line 217
    :goto_1d3
    invoke-virtual {v6}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 218
    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 220
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v3

    invoke-virtual {v3}, Lcom/anythink/core/common/b/g;->q()Z

    move-result v3

    if-eqz v3, :cond_1eb

    .line 221
    const/4 v3, 0x0

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1ee

    .line 223
    :cond_1eb
    invoke-virtual {v5, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 226
    :goto_1ee
    new-instance v3, Lcom/anythink/basead/ui/component/RoundImageView;

    invoke-virtual/range {p0 .. p0}, Lcom/anythink/basead/ui/SplashAdView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/anythink/basead/ui/component/RoundImageView;-><init>(Landroid/content/Context;)V

    .line 227
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v8, -0x1

    invoke-direct {v5, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 228
    const/16 v8, 0x11

    iput v8, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 229
    invoke-virtual {v3, v5}, Lcom/anythink/basead/ui/component/RoundImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 230
    invoke-virtual {v3, v11}, Lcom/anythink/basead/ui/component/RoundImageView;->setNeedRadiu(Z)V

    .line 231
    sget-object v8, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v8}, Lcom/anythink/basead/ui/component/RoundImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 232
    invoke-virtual {v6, v3, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 233
    const/4 v5, 0x0

    invoke-virtual {v6, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 235
    invoke-virtual/range {p0 .. p0}, Lcom/anythink/basead/ui/SplashAdView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/anythink/core/common/res/b;->a(Landroid/content/Context;)Lcom/anythink/core/common/res/b;

    move-result-object v5

    new-instance v6, Lcom/anythink/core/common/res/e;

    iget-object v8, v0, Lcom/anythink/basead/ui/SplashAdView;->g:Lcom/anythink/core/common/d/h;

    .line 236
    invoke-virtual {v8}, Lcom/anythink/core/common/d/h;->j()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v11, v8}, Lcom/anythink/core/common/res/e;-><init>(ILjava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/anythink/basead/ui/SplashAdView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v8, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual/range {p0 .. p0}, Lcom/anythink/basead/ui/SplashAdView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v9, v9, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/lit16 v9, v9, 0x273

    div-int/lit16 v9, v9, 0x4b0

    new-instance v10, Lcom/anythink/basead/ui/SplashAdView$5;

    invoke-direct {v10, v0, v3, v7}, Lcom/anythink/basead/ui/SplashAdView$5;-><init>(Lcom/anythink/basead/ui/SplashAdView;Lcom/anythink/basead/ui/component/RoundImageView;Lcom/anythink/basead/ui/component/RoundImageView;)V

    .line 235
    invoke-virtual {v5, v6, v8, v9, v10}, Lcom/anythink/core/common/res/b;->a(Lcom/anythink/core/common/res/e;IILcom/anythink/core/common/res/b$a;)V

    .line 253
    iget-object v3, v0, Lcom/anythink/basead/ui/SplashAdView;->f:Lcom/anythink/core/common/d/i;

    iget-object v3, v3, Lcom/anythink/core/common/d/i;->j:Lcom/anythink/core/common/d/j;

    invoke-virtual {v3}, Lcom/anythink/core/common/d/j;->g()I

    move-result v3

    const/4 v5, 0x2

    const/4 v6, 0x4

    if-ne v3, v5, :cond_270

    .line 254
    iget-object v3, v0, Lcom/anythink/basead/ui/SplashAdView;->g:Lcom/anythink/core/common/d/h;

    invoke-virtual {v3}, Lcom/anythink/core/common/d/h;->g()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_26c

    .line 255
    iget-object v3, v0, Lcom/anythink/basead/ui/SplashAdView;->g:Lcom/anythink/core/common/d/h;

    invoke-virtual {v3}, Lcom/anythink/core/common/d/h;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 256
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_28d

    .line 258
    :cond_26c
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_28d

    .line 261
    :cond_270
    iget-object v3, v0, Lcom/anythink/basead/ui/SplashAdView;->g:Lcom/anythink/core/common/d/h;

    invoke-virtual {v3}, Lcom/anythink/core/common/d/h;->g()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_28a

    .line 262
    iget-object v3, v0, Lcom/anythink/basead/ui/SplashAdView;->g:Lcom/anythink/core/common/d/h;

    invoke-virtual {v3}, Lcom/anythink/core/common/d/h;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 263
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_28d

    .line 265
    :cond_28a
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 270
    :goto_28d
    iget-object v1, v0, Lcom/anythink/basead/ui/SplashAdView;->g:Lcom/anythink/core/common/d/h;

    invoke-virtual {v1}, Lcom/anythink/core/common/d/h;->l()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2a7

    .line 271
    iget-object v1, v0, Lcom/anythink/basead/ui/SplashAdView;->g:Lcom/anythink/core/common/d/h;

    invoke-virtual {v1}, Lcom/anythink/core/common/d/h;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 272
    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2aa

    .line 274
    :cond_2a7
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 278
    :goto_2aa
    if-eqz v4, :cond_2c9

    .line 279
    iget-object v1, v0, Lcom/anythink/basead/ui/SplashAdView;->g:Lcom/anythink/core/common/d/h;

    invoke-virtual {v1}, Lcom/anythink/core/common/d/h;->h()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2c6

    .line 280
    iget-object v1, v0, Lcom/anythink/basead/ui/SplashAdView;->g:Lcom/anythink/core/common/d/h;

    invoke-virtual {v1}, Lcom/anythink/core/common/d/h;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 281
    const/4 v1, 0x0

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    .line 283
    :cond_2c6
    invoke-virtual {v4, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 286
    :cond_2c9
    return-void
.end method

.method private n()V
    .registers 3

    .line 289
    new-instance v0, Lcom/anythink/basead/ui/SplashAdView$6;

    invoke-direct {v0, p0}, Lcom/anythink/basead/ui/SplashAdView$6;-><init>(Lcom/anythink/basead/ui/SplashAdView;)V

    .line 4038
    const/16 v1, 0x64

    invoke-super {p0, v1, v0}, Lcom/anythink/basead/ui/BaseAdView;->a(ILjava/lang/Runnable;)V

    .line 325
    return-void
.end method

.method private o()V
    .registers 2

    .line 328
    new-instance v0, Lcom/anythink/basead/ui/SplashAdView$7;

    invoke-direct {v0, p0}, Lcom/anythink/basead/ui/SplashAdView$7;-><init>(Lcom/anythink/basead/ui/SplashAdView;)V

    invoke-virtual {p0, v0}, Lcom/anythink/basead/ui/SplashAdView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 334
    return-void
.end method

.method private p()Z
    .registers 3

    .line 340
    iget-object v0, p0, Lcom/anythink/basead/ui/SplashAdView;->g:Lcom/anythink/core/common/d/h;

    instance-of v0, v0, Lcom/anythink/core/common/d/u;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/anythink/basead/ui/SplashAdView;->g:Lcom/anythink/core/common/d/h;

    check-cast v0, Lcom/anythink/core/common/d/u;

    .line 341
    invoke-virtual {v0}, Lcom/anythink/core/common/d/u;->z()I

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_12

    return v1

    :cond_12
    const/4 v0, 0x0

    .line 340
    return v0
.end method

.method private q()V
    .registers 4

    .line 356
    iget-boolean v0, p0, Lcom/anythink/basead/ui/SplashAdView;->w:Z

    if-eqz v0, :cond_5

    .line 357
    return-void

    .line 359
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/basead/ui/SplashAdView;->w:Z

    .line 361
    nop

    .line 6038
    invoke-super {p0}, Lcom/anythink/basead/ui/BaseAdView;->h()V

    .line 363
    iget-object v0, p0, Lcom/anythink/basead/ui/SplashAdView;->a:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 364
    iget-object v0, p0, Lcom/anythink/basead/ui/SplashAdView;->a:Landroid/widget/TextView;

    new-instance v2, Lcom/anythink/basead/ui/SplashAdView$8;

    invoke-direct {v2, p0}, Lcom/anythink/basead/ui/SplashAdView$8;-><init>(Lcom/anythink/basead/ui/SplashAdView;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 379
    iput-boolean v1, p0, Lcom/anythink/basead/ui/SplashAdView;->x:Z

    .line 381
    new-instance v0, Lcom/anythink/basead/ui/SplashAdView$9;

    iget-object v1, p0, Lcom/anythink/basead/ui/SplashAdView;->f:Lcom/anythink/core/common/d/i;

    iget-object v1, v1, Lcom/anythink/core/common/d/i;->j:Lcom/anythink/core/common/d/j;

    invoke-virtual {v1}, Lcom/anythink/core/common/d/j;->d()J

    move-result-wide v1

    invoke-direct {v0, p0, v1, v2}, Lcom/anythink/basead/ui/SplashAdView$9;-><init>(Lcom/anythink/basead/ui/SplashAdView;J)V

    iput-object v0, p0, Lcom/anythink/basead/ui/SplashAdView;->c:Landroid/os/CountDownTimer;

    .line 403
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 404
    return-void
.end method


# virtual methods
.method protected final a()V
    .registers 17

    .line 68
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/anythink/basead/ui/SplashAdView;->f:Lcom/anythink/core/common/d/i;

    iget-object v1, v1, Lcom/anythink/core/common/d/i;->j:Lcom/anythink/core/common/d/j;

    invoke-virtual {v1}, Lcom/anythink/core/common/d/j;->g()I

    move-result v1

    const-string v2, "layout"

    const/4 v3, 0x2

    if-ne v1, v3, :cond_25

    .line 69
    invoke-virtual/range {p0 .. p0}, Lcom/anythink/basead/ui/SplashAdView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/anythink/basead/ui/SplashAdView;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "myoffer_splash_ad_land_layout"

    invoke-static {v4, v5, v2}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    goto :goto_3a

    .line 71
    :cond_25
    invoke-virtual/range {p0 .. p0}, Lcom/anythink/basead/ui/SplashAdView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/anythink/basead/ui/SplashAdView;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "myoffer_splash_ad_layout"

    invoke-static {v4, v5, v2}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 78
    :goto_3a
    nop

    .line 3087
    invoke-virtual/range {p0 .. p0}, Lcom/anythink/basead/ui/SplashAdView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "myoffer_splash_ad_title"

    const-string v4, "id"

    invoke-static {v1, v2, v4}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/anythink/basead/ui/SplashAdView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 3088
    invoke-virtual/range {p0 .. p0}, Lcom/anythink/basead/ui/SplashAdView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v5, "myoffer_splash_ad_install_btn"

    invoke-static {v2, v5, v4}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/anythink/basead/ui/SplashAdView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 3089
    invoke-virtual/range {p0 .. p0}, Lcom/anythink/basead/ui/SplashAdView;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "myoffer_splash_desc"

    invoke-static {v5, v6, v4}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/anythink/basead/ui/SplashAdView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 3090
    invoke-virtual/range {p0 .. p0}, Lcom/anythink/basead/ui/SplashAdView;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "myoffer_splash_self_ad_logo"

    invoke-static {v6, v7, v4}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/anythink/basead/ui/SplashAdView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 3092
    invoke-virtual/range {p0 .. p0}, Lcom/anythink/basead/ui/SplashAdView;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "myoffer_splash_ad_content_image_area"

    invoke-static {v7, v8, v4}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/anythink/basead/ui/SplashAdView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout;

    .line 3093
    invoke-virtual/range {p0 .. p0}, Lcom/anythink/basead/ui/SplashAdView;->getContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "myoffer_splash_bg"

    invoke-static {v8, v9, v4}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v0, v8}, Lcom/anythink/basead/ui/SplashAdView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/anythink/basead/ui/component/RoundImageView;

    .line 3094
    invoke-virtual/range {p0 .. p0}, Lcom/anythink/basead/ui/SplashAdView;->getContext()Landroid/content/Context;

    move-result-object v9

    const-string v10, "myoffer_splash_icon"

    invoke-static {v9, v10, v4}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v0, v9}, Lcom/anythink/basead/ui/SplashAdView;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/anythink/basead/ui/component/RoundImageView;

    .line 3096
    invoke-virtual/range {p0 .. p0}, Lcom/anythink/basead/ui/SplashAdView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Lcom/anythink/basead/ui/SplashAdView;->getContext()Landroid/content/Context;

    move-result-object v11

    const-string v12, "myoffer_splash_skip_text"

    const-string v13, "string"

    invoke-static {v11, v12, v13}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Lcom/anythink/basead/ui/SplashAdView;->b:Ljava/lang/String;

    .line 3097
    invoke-virtual/range {p0 .. p0}, Lcom/anythink/basead/ui/SplashAdView;->getContext()Landroid/content/Context;

    move-result-object v10

    const-string v11, "myoffer_splash_skip"

    invoke-static {v10, v11, v4}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v0, v10}, Lcom/anythink/basead/ui/SplashAdView;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, v0, Lcom/anythink/basead/ui/SplashAdView;->a:Landroid/widget/TextView;

    .line 3100
    invoke-virtual/range {p0 .. p0}, Lcom/anythink/basead/ui/SplashAdView;->getContext()Landroid/content/Context;

    move-result-object v10

    const-string v11, "myoffer_splash_ad_logo"

    invoke-static {v10, v11, v4}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v0, v10}, Lcom/anythink/basead/ui/SplashAdView;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/anythink/basead/ui/component/RoundImageView;

    .line 3101
    iget-object v11, v0, Lcom/anythink/basead/ui/SplashAdView;->g:Lcom/anythink/core/common/d/h;

    invoke-virtual {v11}, Lcom/anythink/core/common/d/h;->k()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/16 v14, 0x8

    if-nez v11, :cond_11a

    .line 3102
    invoke-virtual {v10, v13}, Lcom/anythink/basead/ui/component/RoundImageView;->setVisibility(I)V

    .line 3103
    invoke-virtual {v10}, Lcom/anythink/basead/ui/component/RoundImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    iget v11, v11, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 3104
    invoke-virtual/range {p0 .. p0}, Lcom/anythink/basead/ui/SplashAdView;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-static {v15}, Lcom/anythink/core/common/res/b;->a(Landroid/content/Context;)Lcom/anythink/core/common/res/b;

    move-result-object v15

    new-instance v3, Lcom/anythink/core/common/res/e;

    iget-object v13, v0, Lcom/anythink/basead/ui/SplashAdView;->g:Lcom/anythink/core/common/d/h;

    invoke-virtual {v13}, Lcom/anythink/core/common/d/h;->k()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v3, v12, v13}, Lcom/anythink/core/common/res/e;-><init>(ILjava/lang/String;)V

    new-instance v13, Lcom/anythink/basead/ui/SplashAdView$1;

    invoke-direct {v13, v0, v10}, Lcom/anythink/basead/ui/SplashAdView$1;-><init>(Lcom/anythink/basead/ui/SplashAdView;Lcom/anythink/basead/ui/component/RoundImageView;)V

    invoke-virtual {v15, v3, v11, v11, v13}, Lcom/anythink/core/common/res/b;->a(Lcom/anythink/core/common/res/e;IILcom/anythink/core/common/res/b$a;)V

    .line 3118
    goto :goto_11d

    .line 3119
    :cond_11a
    invoke-virtual {v10, v14}, Lcom/anythink/basead/ui/component/RoundImageView;->setVisibility(I)V

    .line 3123
    :goto_11d
    invoke-direct/range {p0 .. p0}, Lcom/anythink/basead/ui/SplashAdView;->p()Z

    move-result v3

    if-eqz v3, :cond_178

    .line 3124
    invoke-virtual {v1, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3125
    invoke-virtual {v2, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3126
    invoke-virtual {v5, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3127
    invoke-virtual {v7, v14}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3128
    invoke-virtual {v9, v14}, Lcom/anythink/basead/ui/component/RoundImageView;->setVisibility(I)V

    .line 3130
    invoke-virtual/range {p0 .. p0}, Lcom/anythink/basead/ui/SplashAdView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/anythink/core/common/res/b;->a(Landroid/content/Context;)Lcom/anythink/core/common/res/b;

    move-result-object v1

    new-instance v2, Lcom/anythink/core/common/res/e;

    iget-object v3, v0, Lcom/anythink/basead/ui/SplashAdView;->g:Lcom/anythink/core/common/d/h;

    .line 3131
    invoke-virtual {v3}, Lcom/anythink/core/common/d/h;->j()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v12, v3}, Lcom/anythink/core/common/res/e;-><init>(ILjava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/anythink/basead/ui/SplashAdView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual/range {p0 .. p0}, Lcom/anythink/basead/ui/SplashAdView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/lit16 v4, v4, 0x273

    div-int/lit16 v4, v4, 0x4b0

    new-instance v5, Lcom/anythink/basead/ui/SplashAdView$3;

    invoke-direct {v5, v0, v8}, Lcom/anythink/basead/ui/SplashAdView$3;-><init>(Lcom/anythink/basead/ui/SplashAdView;Lcom/anythink/basead/ui/component/RoundImageView;)V

    .line 3130
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/anythink/core/common/res/b;->a(Lcom/anythink/core/common/res/e;IILcom/anythink/core/common/res/b$a;)V

    .line 3158
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/g;->q()Z

    move-result v1

    if-eqz v1, :cond_174

    .line 3159
    const/4 v1, 0x0

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    .line 3161
    :cond_174
    invoke-virtual {v6, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3164
    return-void

    .line 3168
    :cond_178
    iget-object v3, v0, Lcom/anythink/basead/ui/SplashAdView;->g:Lcom/anythink/core/common/d/h;

    instance-of v3, v3, Lcom/anythink/core/common/d/u;

    if-eqz v3, :cond_1b7

    iget-object v3, v0, Lcom/anythink/basead/ui/SplashAdView;->g:Lcom/anythink/core/common/d/h;

    invoke-virtual {v3}, Lcom/anythink/core/common/d/h;->i()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1b7

    .line 3169
    const/4 v3, 0x0

    invoke-virtual {v9, v3}, Lcom/anythink/basead/ui/component/RoundImageView;->setVisibility(I)V

    .line 3170
    invoke-virtual {v9, v12}, Lcom/anythink/basead/ui/component/RoundImageView;->setNeedRadiu(Z)V

    .line 3171
    const/4 v3, 0x3

    invoke-virtual {v9, v3}, Lcom/anythink/basead/ui/component/RoundImageView;->setRadiusInDip(I)V

    .line 3172
    invoke-virtual {v9}, Lcom/anythink/basead/ui/component/RoundImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 3173
    invoke-virtual/range {p0 .. p0}, Lcom/anythink/basead/ui/SplashAdView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/anythink/core/common/res/b;->a(Landroid/content/Context;)Lcom/anythink/core/common/res/b;

    move-result-object v10

    new-instance v11, Lcom/anythink/core/common/res/e;

    iget-object v13, v0, Lcom/anythink/basead/ui/SplashAdView;->g:Lcom/anythink/core/common/d/h;

    invoke-virtual {v13}, Lcom/anythink/core/common/d/h;->i()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Lcom/anythink/core/common/res/e;-><init>(ILjava/lang/String;)V

    new-instance v13, Lcom/anythink/basead/ui/SplashAdView$4;

    invoke-direct {v13, v0, v9}, Lcom/anythink/basead/ui/SplashAdView$4;-><init>(Lcom/anythink/basead/ui/SplashAdView;Lcom/anythink/basead/ui/component/RoundImageView;)V

    invoke-virtual {v10, v11, v3, v3, v13}, Lcom/anythink/core/common/res/b;->a(Lcom/anythink/core/common/res/e;IILcom/anythink/core/common/res/b$a;)V

    .line 3187
    goto :goto_1d8

    .line 3188
    :cond_1b7
    invoke-virtual {v9, v14}, Lcom/anythink/basead/ui/component/RoundImageView;->setVisibility(I)V

    .line 3191
    iget-object v3, v0, Lcom/anythink/basead/ui/SplashAdView;->f:Lcom/anythink/core/common/d/i;

    iget-object v3, v3, Lcom/anythink/core/common/d/i;->j:Lcom/anythink/core/common/d/j;

    invoke-virtual {v3}, Lcom/anythink/core/common/d/j;->g()I

    move-result v3

    if-ne v3, v12, :cond_1d8

    .line 3192
    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 3193
    if-eqz v3, :cond_1d8

    .line 3194
    invoke-virtual/range {p0 .. p0}, Lcom/anythink/basead/ui/SplashAdView;->getContext()Landroid/content/Context;

    move-result-object v9

    const/high16 v10, 0x42700000    # 60.0f

    invoke-static {v9, v10}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;F)I

    move-result v9

    iput v9, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 3201
    :cond_1d8
    :goto_1d8
    invoke-virtual/range {p0 .. p0}, Lcom/anythink/basead/ui/SplashAdView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v9, "myoffer_rating_view"

    invoke-static {v3, v9, v4}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/anythink/basead/ui/SplashAdView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/anythink/basead/ui/AppRatingView;

    .line 3202
    iget-object v4, v0, Lcom/anythink/basead/ui/SplashAdView;->g:Lcom/anythink/core/common/d/h;

    invoke-virtual {v4}, Lcom/anythink/core/common/d/h;->u()I

    move-result v4

    .line 3203
    const/4 v9, 0x5

    if-le v4, v9, :cond_1fc

    .line 3204
    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Lcom/anythink/basead/ui/AppRatingView;->setVisibility(I)V

    .line 3205
    invoke-virtual {v3, v9}, Lcom/anythink/basead/ui/AppRatingView;->setStarNum(I)V

    .line 3206
    invoke-virtual {v3, v9}, Lcom/anythink/basead/ui/AppRatingView;->setRating(I)V

    goto :goto_20c

    .line 3207
    :cond_1fc
    const/4 v10, 0x0

    if-lez v4, :cond_209

    .line 3208
    invoke-virtual {v3, v10}, Lcom/anythink/basead/ui/AppRatingView;->setVisibility(I)V

    .line 3209
    invoke-virtual {v3, v9}, Lcom/anythink/basead/ui/AppRatingView;->setStarNum(I)V

    .line 3210
    invoke-virtual {v3, v4}, Lcom/anythink/basead/ui/AppRatingView;->setRating(I)V

    goto :goto_20c

    .line 3212
    :cond_209
    invoke-virtual {v3, v14}, Lcom/anythink/basead/ui/AppRatingView;->setVisibility(I)V

    .line 3217
    :goto_20c
    invoke-virtual {v7}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 3218
    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 3220
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v3

    invoke-virtual {v3}, Lcom/anythink/core/common/b/g;->q()Z

    move-result v3

    if-eqz v3, :cond_224

    .line 3221
    const/4 v3, 0x0

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_227

    .line 3223
    :cond_224
    invoke-virtual {v6, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3226
    :goto_227
    new-instance v3, Lcom/anythink/basead/ui/component/RoundImageView;

    invoke-virtual/range {p0 .. p0}, Lcom/anythink/basead/ui/SplashAdView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/anythink/basead/ui/component/RoundImageView;-><init>(Landroid/content/Context;)V

    .line 3227
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v6, -0x1

    invoke-direct {v4, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 3228
    const/16 v6, 0x11

    iput v6, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 3229
    invoke-virtual {v3, v4}, Lcom/anythink/basead/ui/component/RoundImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3230
    invoke-virtual {v3, v12}, Lcom/anythink/basead/ui/component/RoundImageView;->setNeedRadiu(Z)V

    .line 3231
    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v6}, Lcom/anythink/basead/ui/component/RoundImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 3232
    invoke-virtual {v7, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3233
    const/4 v4, 0x0

    invoke-virtual {v7, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3235
    invoke-virtual/range {p0 .. p0}, Lcom/anythink/basead/ui/SplashAdView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/anythink/core/common/res/b;->a(Landroid/content/Context;)Lcom/anythink/core/common/res/b;

    move-result-object v4

    new-instance v6, Lcom/anythink/core/common/res/e;

    iget-object v7, v0, Lcom/anythink/basead/ui/SplashAdView;->g:Lcom/anythink/core/common/d/h;

    .line 3236
    invoke-virtual {v7}, Lcom/anythink/core/common/d/h;->j()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v12, v7}, Lcom/anythink/core/common/res/e;-><init>(ILjava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/anythink/basead/ui/SplashAdView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual/range {p0 .. p0}, Lcom/anythink/basead/ui/SplashAdView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v9, v9, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/lit16 v9, v9, 0x273

    div-int/lit16 v9, v9, 0x4b0

    new-instance v10, Lcom/anythink/basead/ui/SplashAdView$5;

    invoke-direct {v10, v0, v3, v8}, Lcom/anythink/basead/ui/SplashAdView$5;-><init>(Lcom/anythink/basead/ui/SplashAdView;Lcom/anythink/basead/ui/component/RoundImageView;Lcom/anythink/basead/ui/component/RoundImageView;)V

    .line 3235
    invoke-virtual {v4, v6, v7, v9, v10}, Lcom/anythink/core/common/res/b;->a(Lcom/anythink/core/common/res/e;IILcom/anythink/core/common/res/b$a;)V

    .line 3253
    iget-object v3, v0, Lcom/anythink/basead/ui/SplashAdView;->f:Lcom/anythink/core/common/d/i;

    iget-object v3, v3, Lcom/anythink/core/common/d/i;->j:Lcom/anythink/core/common/d/j;

    invoke-virtual {v3}, Lcom/anythink/core/common/d/j;->g()I

    move-result v3

    const/4 v4, 0x4

    const/4 v6, 0x2

    if-ne v3, v6, :cond_2a9

    .line 3254
    iget-object v3, v0, Lcom/anythink/basead/ui/SplashAdView;->g:Lcom/anythink/core/common/d/h;

    invoke-virtual {v3}, Lcom/anythink/core/common/d/h;->g()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2a5

    .line 3255
    iget-object v3, v0, Lcom/anythink/basead/ui/SplashAdView;->g:Lcom/anythink/core/common/d/h;

    invoke-virtual {v3}, Lcom/anythink/core/common/d/h;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3256
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2c6

    .line 3258
    :cond_2a5
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2c6

    .line 3261
    :cond_2a9
    iget-object v3, v0, Lcom/anythink/basead/ui/SplashAdView;->g:Lcom/anythink/core/common/d/h;

    invoke-virtual {v3}, Lcom/anythink/core/common/d/h;->g()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2c3

    .line 3262
    iget-object v3, v0, Lcom/anythink/basead/ui/SplashAdView;->g:Lcom/anythink/core/common/d/h;

    invoke-virtual {v3}, Lcom/anythink/core/common/d/h;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3263
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2c6

    .line 3265
    :cond_2c3
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3270
    :goto_2c6
    iget-object v1, v0, Lcom/anythink/basead/ui/SplashAdView;->g:Lcom/anythink/core/common/d/h;

    invoke-virtual {v1}, Lcom/anythink/core/common/d/h;->l()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2e0

    .line 3271
    iget-object v1, v0, Lcom/anythink/basead/ui/SplashAdView;->g:Lcom/anythink/core/common/d/h;

    invoke-virtual {v1}, Lcom/anythink/core/common/d/h;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3272
    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2e3

    .line 3274
    :cond_2e0
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3278
    :goto_2e3
    if-eqz v5, :cond_302

    .line 3279
    iget-object v1, v0, Lcom/anythink/basead/ui/SplashAdView;->g:Lcom/anythink/core/common/d/h;

    invoke-virtual {v1}, Lcom/anythink/core/common/d/h;->h()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2ff

    .line 3280
    iget-object v1, v0, Lcom/anythink/basead/ui/SplashAdView;->g:Lcom/anythink/core/common/d/h;

    invoke-virtual {v1}, Lcom/anythink/core/common/d/h;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3281
    const/4 v1, 0x0

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    .line 3283
    :cond_2ff
    invoke-virtual {v5, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 80
    :cond_302
    return-void
.end method

.method protected final a(Z)V
    .registers 3

    .line 429
    iget-object v0, p0, Lcom/anythink/basead/ui/SplashAdView;->d:Lcom/anythink/basead/f/a;

    if-eqz v0, :cond_7

    .line 430
    invoke-interface {v0, p1}, Lcom/anythink/basead/f/a;->onDeeplinkCallback(Z)V

    .line 432
    :cond_7
    return-void
.end method

.method protected final b()V
    .registers 4

    .line 409
    iget-object v0, p0, Lcom/anythink/basead/ui/SplashAdView;->g:Lcom/anythink/core/common/d/h;

    invoke-virtual {p0}, Lcom/anythink/basead/ui/SplashAdView;->j()Lcom/anythink/basead/c/h;

    move-result-object v1

    const/16 v2, 0x8

    invoke-static {v2, v0, v1}, Lcom/anythink/basead/a/a;->a(ILcom/anythink/core/common/d/h;Lcom/anythink/basead/c/h;)V

    .line 411
    iget-object v0, p0, Lcom/anythink/basead/ui/SplashAdView;->d:Lcom/anythink/basead/f/a;

    if-eqz v0, :cond_12

    .line 412
    invoke-interface {v0}, Lcom/anythink/basead/f/a;->onAdShow()V

    .line 414
    :cond_12
    return-void
.end method

.method protected final c()V
    .registers 4

    .line 418
    invoke-virtual {p0}, Lcom/anythink/basead/ui/SplashAdView;->j()Lcom/anythink/basead/c/h;

    move-result-object v0

    .line 419
    invoke-virtual {p0}, Lcom/anythink/basead/ui/SplashAdView;->k()Lcom/anythink/basead/c/b;

    move-result-object v1

    iput-object v1, v0, Lcom/anythink/basead/c/h;->g:Lcom/anythink/basead/c/b;

    .line 420
    iget-object v1, p0, Lcom/anythink/basead/ui/SplashAdView;->g:Lcom/anythink/core/common/d/h;

    const/16 v2, 0x9

    invoke-static {v2, v1, v0}, Lcom/anythink/basead/a/a;->a(ILcom/anythink/core/common/d/h;Lcom/anythink/basead/c/h;)V

    .line 422
    iget-object v0, p0, Lcom/anythink/basead/ui/SplashAdView;->d:Lcom/anythink/basead/f/a;

    if-eqz v0, :cond_18

    .line 423
    invoke-interface {v0}, Lcom/anythink/basead/f/a;->onAdClick()V

    .line 425
    :cond_18
    return-void
.end method

.method protected final d()V
    .registers 2

    .line 436
    iget-object v0, p0, Lcom/anythink/basead/ui/SplashAdView;->g:Lcom/anythink/core/common/d/h;

    instance-of v0, v0, Lcom/anythink/core/common/d/u;

    if-eqz v0, :cond_19

    .line 437
    iget-object v0, p0, Lcom/anythink/basead/ui/SplashAdView;->e:Lcom/anythink/basead/ui/a;

    if-nez v0, :cond_11

    .line 438
    new-instance v0, Lcom/anythink/basead/ui/a;

    invoke-direct {v0, p0}, Lcom/anythink/basead/ui/a;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/anythink/basead/ui/SplashAdView;->e:Lcom/anythink/basead/ui/a;

    .line 440
    :cond_11
    new-instance v0, Lcom/anythink/basead/ui/SplashAdView$10;

    invoke-direct {v0, p0}, Lcom/anythink/basead/ui/SplashAdView$10;-><init>(Lcom/anythink/basead/ui/SplashAdView;)V

    invoke-virtual {p0, v0}, Lcom/anythink/basead/ui/SplashAdView;->post(Ljava/lang/Runnable;)Z

    .line 447
    :cond_19
    return-void
.end method

.method protected final e()V
    .registers 2

    .line 451
    iget-object v0, p0, Lcom/anythink/basead/ui/SplashAdView;->g:Lcom/anythink/core/common/d/h;

    instance-of v0, v0, Lcom/anythink/core/common/d/u;

    if-eqz v0, :cond_12

    .line 452
    iget-object v0, p0, Lcom/anythink/basead/ui/SplashAdView;->e:Lcom/anythink/basead/ui/a;

    if-eqz v0, :cond_12

    .line 453
    new-instance v0, Lcom/anythink/basead/ui/SplashAdView$2;

    invoke-direct {v0, p0}, Lcom/anythink/basead/ui/SplashAdView$2;-><init>(Lcom/anythink/basead/ui/SplashAdView;)V

    invoke-virtual {p0, v0}, Lcom/anythink/basead/ui/SplashAdView;->post(Ljava/lang/Runnable;)Z

    .line 461
    :cond_12
    return-void
.end method

.method protected final i()V
    .registers 2

    .line 465
    invoke-super {p0}, Lcom/anythink/basead/ui/BaseAdView;->i()V

    .line 467
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anythink/basead/ui/SplashAdView;->d:Lcom/anythink/basead/f/a;

    .line 468
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .registers 4

    .line 346
    invoke-super {p0, p1}, Lcom/anythink/basead/ui/BaseAdView;->onWindowVisibilityChanged(I)V

    .line 347
    if-nez p1, :cond_35

    .line 348
    nop

    .line 4356
    iget-boolean p1, p0, Lcom/anythink/basead/ui/SplashAdView;->w:Z

    if-nez p1, :cond_35

    .line 4359
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/anythink/basead/ui/SplashAdView;->w:Z

    .line 4361
    nop

    .line 5038
    invoke-super {p0}, Lcom/anythink/basead/ui/BaseAdView;->h()V

    .line 4363
    iget-object p1, p0, Lcom/anythink/basead/ui/SplashAdView;->a:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4364
    iget-object p1, p0, Lcom/anythink/basead/ui/SplashAdView;->a:Landroid/widget/TextView;

    new-instance v1, Lcom/anythink/basead/ui/SplashAdView$8;

    invoke-direct {v1, p0}, Lcom/anythink/basead/ui/SplashAdView$8;-><init>(Lcom/anythink/basead/ui/SplashAdView;)V

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4379
    iput-boolean v0, p0, Lcom/anythink/basead/ui/SplashAdView;->x:Z

    .line 4381
    new-instance p1, Lcom/anythink/basead/ui/SplashAdView$9;

    iget-object v0, p0, Lcom/anythink/basead/ui/SplashAdView;->f:Lcom/anythink/core/common/d/i;

    iget-object v0, v0, Lcom/anythink/core/common/d/i;->j:Lcom/anythink/core/common/d/j;

    invoke-virtual {v0}, Lcom/anythink/core/common/d/j;->d()J

    move-result-wide v0

    invoke-direct {p1, p0, v0, v1}, Lcom/anythink/basead/ui/SplashAdView$9;-><init>(Lcom/anythink/basead/ui/SplashAdView;J)V

    iput-object p1, p0, Lcom/anythink/basead/ui/SplashAdView;->c:Landroid/os/CountDownTimer;

    .line 4403
    invoke-virtual {p1}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 350
    :cond_35
    return-void
.end method
