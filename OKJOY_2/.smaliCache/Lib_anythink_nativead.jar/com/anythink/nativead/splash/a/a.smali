.class public final Lcom/anythink/nativead/splash/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/nativead/api/ATNativeAdRenderer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/nativead/splash/a/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/anythink/nativead/api/ATNativeAdRenderer<",
        "Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;",
        ">;"
    }
.end annotation


# instance fields
.field a:Landroid/view/View;

.field b:I

.field c:Z

.field d:Z

.field e:Lcom/anythink/nativead/splash/a/a$a;

.field private f:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anythink/nativead/splash/a/a;->c:Z

    .line 46
    iput-boolean v0, p0, Lcom/anythink/nativead/splash/a/a;->d:Z

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/nativead/splash/a/a;->f:Landroid/content/Context;

    .line 38
    return-void
.end method

.method private a()V
    .registers 2

    .line 206
    iget-boolean v0, p0, Lcom/anythink/nativead/splash/a/a;->c:Z

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Lcom/anythink/nativead/splash/a/a;->d:Z

    if-eqz v0, :cond_f

    .line 207
    iget-object v0, p0, Lcom/anythink/nativead/splash/a/a;->e:Lcom/anythink/nativead/splash/a/a$a;

    if-eqz v0, :cond_f

    .line 208
    invoke-interface {v0}, Lcom/anythink/nativead/splash/a/a$a;->a()V

    .line 211
    :cond_f
    return-void
.end method

.method private a(Landroid/view/View;Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;)V
    .registers 23

    .line 60
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 61
    const-string v3, "plugin_splash_ad_title"

    const-string v4, "id"

    invoke-static {v2, v3, v4}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 62
    const-string v5, "plugin_splash_ad_install_btn"

    invoke-static {v2, v5, v4}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 63
    const-string v6, "plugin_splash_desc"

    invoke-static {v2, v6, v4}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 64
    const-string v7, "plugin_splash_ad_from"

    invoke-static {v2, v7, v4}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 65
    const-string v8, "plugin_splash_self_ad_logo"

    invoke-static {v2, v8, v4}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 67
    const-string v9, "plugin_splash_ad_content_image_area"

    invoke-static {v2, v9, v4}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/FrameLayout;

    .line 68
    const-string v10, "plugin_splash_ad_express_area"

    invoke-static {v2, v10, v4}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/FrameLayout;

    .line 69
    const/4 v11, 0x2

    new-array v12, v11, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v9, v12, v13

    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v15, 0x1

    aput-object v14, v12, v15

    move-object/from16 v14, p2

    invoke-virtual {v14, v12}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getAdMediaView([Ljava/lang/Object;)Landroid/view/View;

    move-result-object v12

    .line 71
    const-string v15, "plugin_splash_bg"

    invoke-static {v2, v15, v4}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v1, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Lcom/anythink/nativead/views/RoundImageView;

    .line 74
    const-string v11, "plugin_rating_view"

    invoke-static {v2, v11, v4}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/anythink/nativead/views/AppRatingView;

    .line 75
    const/4 v13, 0x5

    invoke-virtual {v11, v13}, Lcom/anythink/nativead/views/AppRatingView;->setStarNum(I)V

    .line 76
    invoke-virtual/range {p2 .. p2}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getStarRating()Ljava/lang/Double;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v16

    const-wide/16 v18, 0x0

    cmpl-double v16, v16, v18

    if-nez v16, :cond_a0

    goto :goto_a8

    :cond_a0
    invoke-virtual/range {p2 .. p2}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getStarRating()Ljava/lang/Double;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Double;->intValue()I

    move-result v13

    :goto_a8
    invoke-virtual {v11, v13}, Lcom/anythink/nativead/views/AppRatingView;->setRating(I)V

    .line 78
    const-string v13, "plugin_splash_ad_logo"

    invoke-static {v2, v13, v4}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/anythink/nativead/views/RoundImageView;

    .line 79
    invoke-virtual/range {p2 .. p2}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getAdChoiceIconUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_ea

    .line 80
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/anythink/nativead/views/RoundImageView;->setVisibility(I)V

    .line 81
    invoke-virtual {v1}, Lcom/anythink/nativead/views/RoundImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 82
    iget-object v13, v0, Lcom/anythink/nativead/splash/a/a;->f:Landroid/content/Context;

    invoke-static {v13}, Lcom/anythink/core/common/res/b;->a(Landroid/content/Context;)Lcom/anythink/core/common/res/b;

    move-result-object v13

    new-instance v14, Lcom/anythink/core/common/res/e;

    move-object/from16 v16, v15

    invoke-virtual/range {p2 .. p2}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getAdChoiceIconUrl()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v17, v2

    const/4 v2, 0x2

    invoke-direct {v14, v2, v15}, Lcom/anythink/core/common/res/e;-><init>(ILjava/lang/String;)V

    new-instance v2, Lcom/anythink/nativead/splash/a/a$1;

    invoke-direct {v2, v0, v1}, Lcom/anythink/nativead/splash/a/a$1;-><init>(Lcom/anythink/nativead/splash/a/a;Lcom/anythink/nativead/views/RoundImageView;)V

    invoke-virtual {v13, v14, v4, v4, v2}, Lcom/anythink/core/common/res/b;->a(Lcom/anythink/core/common/res/e;IILcom/anythink/core/common/res/b$a;)V

    .line 96
    const/16 v2, 0x8

    goto :goto_f9

    .line 97
    :cond_ea
    move-object/from16 v17, v2

    move-object/from16 v16, v15

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/anythink/nativead/splash/a/a;->c:Z

    .line 98
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/anythink/nativead/views/RoundImageView;->setVisibility(I)V

    .line 99
    invoke-direct/range {p0 .. p0}, Lcom/anythink/nativead/splash/a/a;->a()V

    .line 103
    :goto_f9
    invoke-virtual {v9}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 104
    invoke-virtual {v9, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 105
    invoke-virtual {v10, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 106
    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 108
    const/4 v4, 0x0

    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 109
    const/4 v4, -0x1

    if-eqz v12, :cond_175

    .line 110
    invoke-virtual/range {p2 .. p2}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->isNativeExpress()Z

    move-result v2

    if-eqz v2, :cond_142

    .line 111
    const/16 v2, 0x8

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 112
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 113
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 114
    if-eqz v6, :cond_125

    .line 115
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 117
    :cond_125
    invoke-virtual {v11, v2}, Lcom/anythink/nativead/views/AppRatingView;->setVisibility(I)V

    .line 118
    invoke-virtual {v1, v2}, Lcom/anythink/nativead/views/RoundImageView;->setVisibility(I)V

    .line 119
    if-eqz v7, :cond_130

    .line 120
    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 123
    :cond_130
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 124
    const/16 v2, 0x11

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 125
    invoke-virtual {v10, v12, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 126
    const/4 v1, 0x0

    invoke-virtual {v10, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 127
    goto :goto_14e

    .line 128
    :cond_142
    const/4 v1, 0x0

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v9, v12, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 129
    invoke-virtual {v9, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 131
    :goto_14e
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/anythink/nativead/splash/a/a;->d:Z

    .line 132
    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "plugin_splash_default_bg"

    const-string v4, "drawable"

    move-object/from16 v8, v17

    invoke-static {v8, v2, v4}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 133
    invoke-static {v8, v1}, Lcom/anythink/core/common/g/b;->a(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object/from16 v15, v16

    invoke-virtual {v15, v2}, Lcom/anythink/nativead/views/RoundImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 134
    if-eqz v1, :cond_171

    .line 135
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 137
    :cond_171
    invoke-direct/range {p0 .. p0}, Lcom/anythink/nativead/splash/a/a;->a()V

    .line 138
    goto :goto_1ae

    .line 139
    :cond_175
    move-object/from16 v15, v16

    move-object/from16 v8, v17

    new-instance v1, Lcom/anythink/nativead/views/RoundImageView;

    invoke-direct {v1, v8}, Lcom/anythink/nativead/views/RoundImageView;-><init>(Landroid/content/Context;)V

    .line 140
    new-instance v10, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v10, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 141
    invoke-virtual {v1, v10}, Lcom/anythink/nativead/views/RoundImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 142
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/anythink/nativead/views/RoundImageView;->setNeedRadiu(Z)V

    .line 143
    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v4}, Lcom/anythink/nativead/views/RoundImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 144
    invoke-virtual {v9, v1, v10}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 145
    const/4 v4, 0x0

    invoke-virtual {v9, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 147
    iget-object v4, v0, Lcom/anythink/nativead/splash/a/a;->f:Landroid/content/Context;

    invoke-static {v4}, Lcom/anythink/core/common/res/b;->a(Landroid/content/Context;)Lcom/anythink/core/common/res/b;

    move-result-object v4

    new-instance v9, Lcom/anythink/core/common/res/e;

    invoke-virtual/range {p2 .. p2}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getMainImageUrl()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x2

    invoke-direct {v9, v11, v10}, Lcom/anythink/core/common/res/e;-><init>(ILjava/lang/String;)V

    new-instance v10, Lcom/anythink/nativead/splash/a/a$2;

    invoke-direct {v10, v0, v1, v8, v15}, Lcom/anythink/nativead/splash/a/a$2;-><init>(Lcom/anythink/nativead/splash/a/a;Lcom/anythink/nativead/views/RoundImageView;Landroid/content/Context;Lcom/anythink/nativead/views/RoundImageView;)V

    invoke-virtual {v4, v9, v2, v2, v10}, Lcom/anythink/core/common/res/b;->a(Lcom/anythink/core/common/res/e;IILcom/anythink/core/common/res/b$a;)V

    .line 171
    :goto_1ae
    invoke-virtual/range {p2 .. p2}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1c4

    .line 172
    invoke-virtual/range {p2 .. p2}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1c9

    .line 175
    :cond_1c4
    const/16 v1, 0x8

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 178
    :goto_1c9
    invoke-virtual/range {p2 .. p2}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getCallToActionText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1df

    .line 179
    invoke-virtual/range {p2 .. p2}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getCallToActionText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    const/4 v1, 0x0

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1e4

    .line 182
    :cond_1df
    const/16 v1, 0x8

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 185
    :goto_1e4
    if-eqz v6, :cond_201

    .line 186
    invoke-virtual/range {p2 .. p2}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getDescriptionText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1fc

    .line 187
    invoke-virtual/range {p2 .. p2}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getDescriptionText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    const/4 v1, 0x0

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_201

    .line 190
    :cond_1fc
    const/16 v1, 0x8

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 194
    :cond_201
    :goto_201
    if-eqz v7, :cond_21e

    .line 195
    invoke-virtual/range {p2 .. p2}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getAdFrom()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_219

    .line 196
    invoke-virtual/range {p2 .. p2}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getAdFrom()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    const/4 v1, 0x0

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    .line 199
    :cond_219
    const/16 v1, 0x8

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 202
    :cond_21e
    return-void
.end method

.method static synthetic a(Lcom/anythink/nativead/splash/a/a;)V
    .registers 1

    .line 32
    invoke-direct {p0}, Lcom/anythink/nativead/splash/a/a;->a()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/anythink/nativead/splash/a/a$a;)V
    .registers 2

    .line 216
    iput-object p1, p0, Lcom/anythink/nativead/splash/a/a;->e:Lcom/anythink/nativead/splash/a/a$a;

    .line 217
    return-void
.end method

.method public final createView(Landroid/content/Context;I)Landroid/view/View;
    .registers 6

    .line 51
    iget-object v0, p0, Lcom/anythink/nativead/splash/a/a;->a:Landroid/view/View;

    if-nez v0, :cond_17

    .line 52
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v1, "plugin_splash_ad_layout"

    const-string v2, "layout"

    invoke-static {p1, v1, v2}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/nativead/splash/a/a;->a:Landroid/view/View;

    .line 54
    :cond_17
    iput p2, p0, Lcom/anythink/nativead/splash/a/a;->b:I

    .line 55
    iget-object p1, p0, Lcom/anythink/nativead/splash/a/a;->a:Landroid/view/View;

    return-object p1
.end method

.method public final synthetic renderAdView(Landroid/view/View;Lcom/anythink/nativead/unitgroup/a;)V
    .registers 23

    .line 32
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    check-cast v2, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;

    .line 1060
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 1061
    const-string v4, "plugin_splash_ad_title"

    const-string v5, "id"

    invoke-static {v3, v4, v5}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 1062
    const-string v6, "plugin_splash_ad_install_btn"

    invoke-static {v3, v6, v5}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 1063
    const-string v7, "plugin_splash_desc"

    invoke-static {v3, v7, v5}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 1064
    const-string v8, "plugin_splash_ad_from"

    invoke-static {v3, v8, v5}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 1065
    const-string v9, "plugin_splash_self_ad_logo"

    invoke-static {v3, v9, v5}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 1067
    const-string v10, "plugin_splash_ad_content_image_area"

    invoke-static {v3, v10, v5}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/FrameLayout;

    .line 1068
    const-string v11, "plugin_splash_ad_express_area"

    invoke-static {v3, v11, v5}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/FrameLayout;

    .line 1069
    const/4 v12, 0x2

    new-array v13, v12, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v10, v13, v14

    invoke-virtual {v10}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/4 v12, 0x1

    aput-object v15, v13, v12

    invoke-virtual {v2, v13}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getAdMediaView([Ljava/lang/Object;)Landroid/view/View;

    move-result-object v13

    .line 1071
    const-string v15, "plugin_splash_bg"

    invoke-static {v3, v15, v5}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v1, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Lcom/anythink/nativead/views/RoundImageView;

    .line 1074
    const-string v12, "plugin_rating_view"

    invoke-static {v3, v12, v5}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v1, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lcom/anythink/nativead/views/AppRatingView;

    .line 1075
    const/4 v14, 0x5

    invoke-virtual {v12, v14}, Lcom/anythink/nativead/views/AppRatingView;->setStarNum(I)V

    .line 1076
    invoke-virtual {v2}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getStarRating()Ljava/lang/Double;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v16

    const-wide/16 v18, 0x0

    cmpl-double v16, v16, v18

    if-nez v16, :cond_a2

    goto :goto_aa

    :cond_a2
    invoke-virtual {v2}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getStarRating()Ljava/lang/Double;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Double;->intValue()I

    move-result v14

    :goto_aa
    invoke-virtual {v12, v14}, Lcom/anythink/nativead/views/AppRatingView;->setRating(I)V

    .line 1078
    const-string v14, "plugin_splash_ad_logo"

    invoke-static {v3, v14, v5}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/anythink/nativead/views/RoundImageView;

    .line 1079
    invoke-virtual {v2}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getAdChoiceIconUrl()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_ee

    .line 1080
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lcom/anythink/nativead/views/RoundImageView;->setVisibility(I)V

    .line 1081
    invoke-virtual {v1}, Lcom/anythink/nativead/views/RoundImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1082
    iget-object v14, v0, Lcom/anythink/nativead/splash/a/a;->f:Landroid/content/Context;

    invoke-static {v14}, Lcom/anythink/core/common/res/b;->a(Landroid/content/Context;)Lcom/anythink/core/common/res/b;

    move-result-object v14

    move-object/from16 v16, v15

    new-instance v15, Lcom/anythink/core/common/res/e;

    move-object/from16 v17, v3

    invoke-virtual {v2}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getAdChoiceIconUrl()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v18, v8

    const/4 v8, 0x2

    invoke-direct {v15, v8, v3}, Lcom/anythink/core/common/res/e;-><init>(ILjava/lang/String;)V

    new-instance v3, Lcom/anythink/nativead/splash/a/a$1;

    invoke-direct {v3, v0, v1}, Lcom/anythink/nativead/splash/a/a$1;-><init>(Lcom/anythink/nativead/splash/a/a;Lcom/anythink/nativead/views/RoundImageView;)V

    invoke-virtual {v14, v15, v5, v5, v3}, Lcom/anythink/core/common/res/b;->a(Lcom/anythink/core/common/res/e;IILcom/anythink/core/common/res/b$a;)V

    .line 1096
    const/16 v3, 0x8

    goto :goto_ff

    .line 1097
    :cond_ee
    move-object/from16 v17, v3

    move-object/from16 v18, v8

    move-object/from16 v16, v15

    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/anythink/nativead/splash/a/a;->c:Z

    .line 1098
    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Lcom/anythink/nativead/views/RoundImageView;->setVisibility(I)V

    .line 1099
    invoke-direct/range {p0 .. p0}, Lcom/anythink/nativead/splash/a/a;->a()V

    .line 1103
    :goto_ff
    invoke-virtual {v10}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 1104
    invoke-virtual {v10, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1105
    invoke-virtual {v11, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1106
    invoke-virtual {v10}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1108
    const/4 v5, 0x0

    invoke-virtual {v9, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1109
    const/4 v5, -0x1

    if-eqz v13, :cond_182

    .line 1110
    invoke-virtual {v2}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->isNativeExpress()Z

    move-result v3

    if-eqz v3, :cond_14d

    .line 1111
    const/16 v3, 0x8

    invoke-virtual {v9, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1112
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1113
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1114
    if-eqz v7, :cond_12b

    .line 1115
    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1117
    :cond_12b
    invoke-virtual {v12, v3}, Lcom/anythink/nativead/views/AppRatingView;->setVisibility(I)V

    .line 1118
    invoke-virtual {v1, v3}, Lcom/anythink/nativead/views/RoundImageView;->setVisibility(I)V

    .line 1119
    if-eqz v18, :cond_139

    .line 1120
    move-object/from16 v8, v18

    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_13b

    .line 1119
    :cond_139
    move-object/from16 v8, v18

    .line 1123
    :goto_13b
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1124
    const/16 v3, 0x11

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1125
    invoke-virtual {v11, v13, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1126
    const/4 v1, 0x0

    invoke-virtual {v11, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1127
    goto :goto_15b

    .line 1128
    :cond_14d
    move-object/from16 v8, v18

    const/4 v1, 0x0

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v10, v13, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1129
    invoke-virtual {v10, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1131
    :goto_15b
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/anythink/nativead/splash/a/a;->d:Z

    .line 1132
    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v3, "plugin_splash_default_bg"

    const-string v5, "drawable"

    move-object/from16 v9, v17

    invoke-static {v9, v3, v5}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-static {v1, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1133
    invoke-static {v9, v1}, Lcom/anythink/core/common/g/b;->a(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object/from16 v15, v16

    invoke-virtual {v15, v3}, Lcom/anythink/nativead/views/RoundImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1134
    if-eqz v1, :cond_17e

    .line 1135
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 1137
    :cond_17e
    invoke-direct/range {p0 .. p0}, Lcom/anythink/nativead/splash/a/a;->a()V

    .line 1138
    goto :goto_1bd

    .line 1139
    :cond_182
    move-object/from16 v15, v16

    move-object/from16 v9, v17

    move-object/from16 v8, v18

    new-instance v1, Lcom/anythink/nativead/views/RoundImageView;

    invoke-direct {v1, v9}, Lcom/anythink/nativead/views/RoundImageView;-><init>(Landroid/content/Context;)V

    .line 1140
    new-instance v11, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v11, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1141
    invoke-virtual {v1, v11}, Lcom/anythink/nativead/views/RoundImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1142
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Lcom/anythink/nativead/views/RoundImageView;->setNeedRadiu(Z)V

    .line 1143
    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v5}, Lcom/anythink/nativead/views/RoundImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1144
    invoke-virtual {v10, v1, v11}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1145
    const/4 v5, 0x0

    invoke-virtual {v10, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1147
    iget-object v5, v0, Lcom/anythink/nativead/splash/a/a;->f:Landroid/content/Context;

    invoke-static {v5}, Lcom/anythink/core/common/res/b;->a(Landroid/content/Context;)Lcom/anythink/core/common/res/b;

    move-result-object v5

    new-instance v10, Lcom/anythink/core/common/res/e;

    invoke-virtual {v2}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getMainImageUrl()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x2

    invoke-direct {v10, v12, v11}, Lcom/anythink/core/common/res/e;-><init>(ILjava/lang/String;)V

    new-instance v11, Lcom/anythink/nativead/splash/a/a$2;

    invoke-direct {v11, v0, v1, v9, v15}, Lcom/anythink/nativead/splash/a/a$2;-><init>(Lcom/anythink/nativead/splash/a/a;Lcom/anythink/nativead/views/RoundImageView;Landroid/content/Context;Lcom/anythink/nativead/views/RoundImageView;)V

    invoke-virtual {v5, v10, v3, v3, v11}, Lcom/anythink/core/common/res/b;->a(Lcom/anythink/core/common/res/e;IILcom/anythink/core/common/res/b$a;)V

    .line 1171
    :goto_1bd
    invoke-virtual {v2}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1d3

    .line 1172
    invoke-virtual {v2}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1173
    const/4 v1, 0x0

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1d8

    .line 1175
    :cond_1d3
    const/16 v1, 0x8

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1178
    :goto_1d8
    invoke-virtual {v2}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getCallToActionText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1ee

    .line 1179
    invoke-virtual {v2}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getCallToActionText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1180
    const/4 v1, 0x0

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1f3

    .line 1182
    :cond_1ee
    const/16 v1, 0x8

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1185
    :goto_1f3
    if-eqz v7, :cond_210

    .line 1186
    invoke-virtual {v2}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getDescriptionText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_20b

    .line 1187
    invoke-virtual {v2}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getDescriptionText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1188
    const/4 v1, 0x0

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_210

    .line 1190
    :cond_20b
    const/16 v1, 0x8

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1194
    :cond_210
    :goto_210
    if-eqz v8, :cond_22d

    .line 1195
    invoke-virtual {v2}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getAdFrom()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_228

    .line 1196
    invoke-virtual {v2}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getAdFrom()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1197
    const/4 v1, 0x0

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    .line 1199
    :cond_228
    const/16 v1, 0x8

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 32
    :cond_22d
    return-void
.end method
