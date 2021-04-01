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
        "Lcom/anythink/nativead/api/ATNativeAdRenderer",
        "<",
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


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-boolean v0, p0, Lcom/anythink/nativead/splash/a/a;->c:Z

    .line 38
    iput-boolean v0, p0, Lcom/anythink/nativead/splash/a/a;->d:Z

    .line 30
    return-void
.end method

.method private a()V
    .registers 2

    .prologue
    .line 198
    iget-boolean v0, p0, Lcom/anythink/nativead/splash/a/a;->c:Z

    if-eqz v0, :cond_11

    iget-boolean v0, p0, Lcom/anythink/nativead/splash/a/a;->d:Z

    if-eqz v0, :cond_11

    .line 199
    iget-object v0, p0, Lcom/anythink/nativead/splash/a/a;->e:Lcom/anythink/nativead/splash/a/a$a;

    if-eqz v0, :cond_11

    .line 200
    iget-object v0, p0, Lcom/anythink/nativead/splash/a/a;->e:Lcom/anythink/nativead/splash/a/a$a;

    invoke-interface {v0}, Lcom/anythink/nativead/splash/a/a$a;->a()V

    .line 203
    :cond_11
    return-void
.end method

.method private a(Landroid/view/View;Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;)V
    .registers 21

    .prologue
    .line 52
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v12

    .line 53
    const-string v2, "plugin_splash_ad_title"

    const-string v3, "id"

    invoke-static {v12, v2, v3}, Lcom/anythink/core/b/g/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 54
    const-string v3, "plugin_splash_ad_install_btn"

    const-string v4, "id"

    invoke-static {v12, v3, v4}, Lcom/anythink/core/b/g/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 55
    const-string v4, "plugin_splash_desc"

    const-string v5, "id"

    invoke-static {v12, v4, v5}, Lcom/anythink/core/b/g/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 56
    const-string v5, "plugin_splash_ad_from"

    const-string v6, "id"

    invoke-static {v12, v5, v6}, Lcom/anythink/core/b/g/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 57
    const-string v6, "plugin_splash_self_ad_logo"

    const-string v7, "id"

    invoke-static {v12, v6, v7}, Lcom/anythink/core/b/g/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 59
    const-string v7, "plugin_splash_ad_content_image_area"

    const-string v8, "id"

    invoke-static {v12, v7, v8}, Lcom/anythink/core/b/g/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout;

    .line 60
    const-string v8, "plugin_splash_ad_express_area"

    const-string v9, "id"

    invoke-static {v12, v8, v9}, Lcom/anythink/core/b/g/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout;

    .line 61
    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v7, v9, v10

    const/4 v10, 0x1

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getAdMediaView([Ljava/lang/Object;)Landroid/view/View;

    move-result-object v13

    .line 63
    const-string v9, "plugin_splash_bg"

    const-string v10, "id"

    invoke-static {v12, v9, v10}, Lcom/anythink/core/b/g/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/anythink/nativead/views/RoundImageView;

    .line 66
    const-string v10, "plugin_rating_view"

    const-string v11, "id"

    invoke-static {v12, v10, v11}, Lcom/anythink/core/b/g/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/anythink/nativead/views/AppRatingView;

    .line 67
    const/4 v11, 0x5

    invoke-virtual {v10, v11}, Lcom/anythink/nativead/views/AppRatingView;->setStarNum(I)V

    .line 68
    invoke-virtual/range {p2 .. p2}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getStarRating()Ljava/lang/Double;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    const-wide/16 v16, 0x0

    cmpl-double v11, v14, v16

    if-nez v11, :cond_1d6

    const/4 v11, 0x5

    :goto_be
    invoke-virtual {v10, v11}, Lcom/anythink/nativead/views/AppRatingView;->setRating(I)V

    .line 70
    const-string v11, "plugin_splash_ad_logo"

    const-string v14, "id"

    invoke-static {v12, v11, v14}, Lcom/anythink/core/b/g/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/anythink/nativead/views/RoundImageView;

    .line 71
    invoke-virtual/range {p2 .. p2}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getAdChoiceIconUrl()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_1e0

    .line 72
    const/4 v14, 0x0

    invoke-virtual {v11, v14}, Lcom/anythink/nativead/views/RoundImageView;->setVisibility(I)V

    .line 73
    invoke-virtual {v11}, Lcom/anythink/nativead/views/RoundImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    iget v14, v14, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 74
    invoke-static {}, Lcom/anythink/nativead/a/c;->a()Lcom/anythink/nativead/a/c;

    move-result-object v15

    invoke-virtual/range {p2 .. p2}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getAdChoiceIconUrl()Ljava/lang/String;

    move-result-object v16

    new-instance v17, Lcom/anythink/nativead/splash/a/a$1;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v11}, Lcom/anythink/nativead/splash/a/a$1;-><init>(Lcom/anythink/nativead/splash/a/a;Lcom/anythink/nativead/views/RoundImageView;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v15, v0, v14, v1}, Lcom/anythink/nativead/a/c;->a(Ljava/lang/String;ILcom/anythink/nativead/a/c$a;)V

    .line 95
    :goto_fd
    invoke-virtual {v7}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 96
    const/16 v14, 0x8

    invoke-virtual {v7, v14}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 97
    const/16 v14, 0x8

    invoke-virtual {v8, v14}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 98
    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    iget v14, v14, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 100
    const/4 v15, 0x0

    invoke-virtual {v6, v15}, Landroid/widget/TextView;->setVisibility(I)V

    .line 101
    if-eqz v13, :cond_1ff

    .line 102
    invoke-virtual/range {p2 .. p2}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->isNativeExpress()Z

    move-result v14

    if-eqz v14, :cond_1ef

    .line 103
    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 104
    const/16 v6, 0x8

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 105
    const/16 v6, 0x8

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 106
    if-eqz v4, :cond_132

    .line 107
    const/16 v6, 0x8

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 109
    :cond_132
    const/16 v6, 0x8

    invoke-virtual {v10, v6}, Lcom/anythink/nativead/views/AppRatingView;->setVisibility(I)V

    .line 110
    const/16 v6, 0x8

    invoke-virtual {v11, v6}, Lcom/anythink/nativead/views/RoundImageView;->setVisibility(I)V

    .line 111
    if-eqz v5, :cond_143

    .line 112
    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 115
    :cond_143
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v7, -0x2

    const/4 v10, -0x2

    invoke-direct {v6, v7, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 116
    const/16 v7, 0x11

    iput v7, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 117
    invoke-virtual {v8, v13, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 118
    const/4 v6, 0x0

    invoke-virtual {v8, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 123
    :goto_155
    const/4 v6, 0x1

    move-object/from16 v0, p0

    iput-boolean v6, v0, Lcom/anythink/nativead/splash/a/a;->d:Z

    .line 124
    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const-string v7, "plugin_splash_default_bg"

    const-string v8, "drawable"

    invoke-static {v12, v7, v8}, Lcom/anythink/core/b/g/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-static {v6, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 125
    invoke-static {}, Lcom/anythink/nativead/a/c;->a()Lcom/anythink/nativead/a/c;

    move-result-object v7

    invoke-virtual {v7, v12, v6}, Lcom/anythink/nativead/a/c;->a(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v9, v7}, Lcom/anythink/nativead/views/RoundImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 126
    if-eqz v6, :cond_17a

    .line 127
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 129
    :cond_17a
    invoke-direct/range {p0 .. p0}, Lcom/anythink/nativead/splash/a/a;->a()V

    .line 163
    :goto_17d
    invoke-virtual/range {p2 .. p2}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_232

    .line 164
    invoke-virtual/range {p2 .. p2}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 170
    :goto_192
    invoke-virtual/range {p2 .. p2}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getCallToActionText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_239

    .line 171
    invoke-virtual/range {p2 .. p2}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getCallToActionText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 177
    :goto_1a7
    if-eqz v4, :cond_1be

    .line 178
    invoke-virtual/range {p2 .. p2}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getDescriptionText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_240

    .line 179
    invoke-virtual/range {p2 .. p2}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getDescriptionText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 186
    :cond_1be
    :goto_1be
    if-eqz v5, :cond_1d5

    .line 187
    invoke-virtual/range {p2 .. p2}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getAdFrom()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_247

    .line 188
    invoke-virtual/range {p2 .. p2}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getAdFrom()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    const/4 v2, 0x0

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 194
    :cond_1d5
    :goto_1d5
    return-void

    .line 68
    :cond_1d6
    invoke-virtual/range {p2 .. p2}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getStarRating()Ljava/lang/Double;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Double;->intValue()I

    move-result v11

    goto/16 :goto_be

    .line 89
    :cond_1e0
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/anythink/nativead/splash/a/a;->c:Z

    .line 90
    const/16 v14, 0x8

    invoke-virtual {v11, v14}, Lcom/anythink/nativead/views/RoundImageView;->setVisibility(I)V

    .line 91
    invoke-direct/range {p0 .. p0}, Lcom/anythink/nativead/splash/a/a;->a()V

    goto/16 :goto_fd

    .line 120
    :cond_1ef
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v8, -0x1

    const/4 v10, -0x1

    invoke-direct {v6, v8, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v13, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 121
    const/4 v6, 0x0

    invoke-virtual {v7, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto/16 :goto_155

    .line 131
    :cond_1ff
    new-instance v6, Lcom/anythink/nativead/views/RoundImageView;

    invoke-direct {v6, v12}, Lcom/anythink/nativead/views/RoundImageView;-><init>(Landroid/content/Context;)V

    .line 132
    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v10, -0x1

    const/4 v11, -0x1

    invoke-direct {v8, v10, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 133
    invoke-virtual {v6, v8}, Lcom/anythink/nativead/views/RoundImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 134
    const/4 v10, 0x1

    invoke-virtual {v6, v10}, Lcom/anythink/nativead/views/RoundImageView;->setNeedRadiu(Z)V

    .line 135
    sget-object v10, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v6, v10}, Lcom/anythink/nativead/views/RoundImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 136
    invoke-virtual {v7, v6, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 137
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 139
    invoke-static {}, Lcom/anythink/nativead/a/c;->a()Lcom/anythink/nativead/a/c;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getMainImageUrl()Ljava/lang/String;

    move-result-object v8

    new-instance v10, Lcom/anythink/nativead/splash/a/a$2;

    move-object/from16 v0, p0

    invoke-direct {v10, v0, v6, v12, v9}, Lcom/anythink/nativead/splash/a/a$2;-><init>(Lcom/anythink/nativead/splash/a/a;Lcom/anythink/nativead/views/RoundImageView;Landroid/content/Context;Lcom/anythink/nativead/views/RoundImageView;)V

    invoke-virtual {v7, v8, v14, v10}, Lcom/anythink/nativead/a/c;->a(Ljava/lang/String;ILcom/anythink/nativead/a/c$a;)V

    goto/16 :goto_17d

    .line 167
    :cond_232
    const/16 v6, 0x8

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_192

    .line 174
    :cond_239
    const/16 v2, 0x8

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1a7

    .line 182
    :cond_240
    const/16 v2, 0x8

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1be

    .line 191
    :cond_247
    const/16 v2, 0x8

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1d5
.end method

.method static synthetic a(Lcom/anythink/nativead/splash/a/a;)V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/anythink/nativead/splash/a/a;->a()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/anythink/nativead/splash/a/a$a;)V
    .registers 2

    .prologue
    .line 208
    iput-object p1, p0, Lcom/anythink/nativead/splash/a/a;->e:Lcom/anythink/nativead/splash/a/a$a;

    .line 209
    return-void
.end method

.method public final createView(Landroid/content/Context;I)Landroid/view/View;
    .registers 6

    .prologue
    .line 43
    iget-object v0, p0, Lcom/anythink/nativead/splash/a/a;->a:Landroid/view/View;

    if-nez v0, :cond_17

    .line 44
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v1, "plugin_splash_ad_layout"

    const-string v2, "layout"

    invoke-static {p1, v1, v2}, Lcom/anythink/core/b/g/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/nativead/splash/a/a;->a:Landroid/view/View;

    .line 46
    :cond_17
    iput p2, p0, Lcom/anythink/nativead/splash/a/a;->b:I

    .line 47
    iget-object v0, p0, Lcom/anythink/nativead/splash/a/a;->a:Landroid/view/View;

    return-object v0
.end method

.method public final synthetic renderAdView(Landroid/view/View;Lcom/anythink/nativead/unitgroup/a;)V
    .registers 21

    .prologue
    .line 26
    check-cast p2, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;

    .line 1052
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v12

    .line 1053
    const-string v2, "plugin_splash_ad_title"

    const-string v3, "id"

    invoke-static {v12, v2, v3}, Lcom/anythink/core/b/g/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1054
    const-string v3, "plugin_splash_ad_install_btn"

    const-string v4, "id"

    invoke-static {v12, v3, v4}, Lcom/anythink/core/b/g/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 1055
    const-string v4, "plugin_splash_desc"

    const-string v5, "id"

    invoke-static {v12, v4, v5}, Lcom/anythink/core/b/g/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 1056
    const-string v5, "plugin_splash_ad_from"

    const-string v6, "id"

    invoke-static {v12, v5, v6}, Lcom/anythink/core/b/g/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 1057
    const-string v6, "plugin_splash_self_ad_logo"

    const-string v7, "id"

    invoke-static {v12, v6, v7}, Lcom/anythink/core/b/g/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 1059
    const-string v7, "plugin_splash_ad_content_image_area"

    const-string v8, "id"

    invoke-static {v12, v7, v8}, Lcom/anythink/core/b/g/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout;

    .line 1060
    const-string v8, "plugin_splash_ad_express_area"

    const-string v9, "id"

    invoke-static {v12, v8, v9}, Lcom/anythink/core/b/g/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout;

    .line 1061
    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v7, v9, v10

    const/4 v10, 0x1

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getAdMediaView([Ljava/lang/Object;)Landroid/view/View;

    move-result-object v13

    .line 1063
    const-string v9, "plugin_splash_bg"

    const-string v10, "id"

    invoke-static {v12, v9, v10}, Lcom/anythink/core/b/g/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/anythink/nativead/views/RoundImageView;

    .line 1066
    const-string v10, "plugin_rating_view"

    const-string v11, "id"

    invoke-static {v12, v10, v11}, Lcom/anythink/core/b/g/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/anythink/nativead/views/AppRatingView;

    .line 1067
    const/4 v11, 0x5

    invoke-virtual {v10, v11}, Lcom/anythink/nativead/views/AppRatingView;->setStarNum(I)V

    .line 1068
    invoke-virtual/range {p2 .. p2}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getStarRating()Ljava/lang/Double;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    const-wide/16 v16, 0x0

    cmpl-double v11, v14, v16

    if-nez v11, :cond_1d8

    const/4 v11, 0x5

    :goto_c0
    invoke-virtual {v10, v11}, Lcom/anythink/nativead/views/AppRatingView;->setRating(I)V

    .line 1070
    const-string v11, "plugin_splash_ad_logo"

    const-string v14, "id"

    invoke-static {v12, v11, v14}, Lcom/anythink/core/b/g/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/anythink/nativead/views/RoundImageView;

    .line 1071
    invoke-virtual/range {p2 .. p2}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getAdChoiceIconUrl()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_1e2

    .line 1072
    const/4 v14, 0x0

    invoke-virtual {v11, v14}, Lcom/anythink/nativead/views/RoundImageView;->setVisibility(I)V

    .line 1073
    invoke-virtual {v11}, Lcom/anythink/nativead/views/RoundImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    iget v14, v14, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1074
    invoke-static {}, Lcom/anythink/nativead/a/c;->a()Lcom/anythink/nativead/a/c;

    move-result-object v15

    invoke-virtual/range {p2 .. p2}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getAdChoiceIconUrl()Ljava/lang/String;

    move-result-object v16

    new-instance v17, Lcom/anythink/nativead/splash/a/a$1;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v11}, Lcom/anythink/nativead/splash/a/a$1;-><init>(Lcom/anythink/nativead/splash/a/a;Lcom/anythink/nativead/views/RoundImageView;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v15, v0, v14, v1}, Lcom/anythink/nativead/a/c;->a(Ljava/lang/String;ILcom/anythink/nativead/a/c$a;)V

    .line 1095
    :goto_ff
    invoke-virtual {v7}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 1096
    const/16 v14, 0x8

    invoke-virtual {v7, v14}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1097
    const/16 v14, 0x8

    invoke-virtual {v8, v14}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1098
    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    iget v14, v14, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1100
    const/4 v15, 0x0

    invoke-virtual {v6, v15}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1101
    if-eqz v13, :cond_201

    .line 1102
    invoke-virtual/range {p2 .. p2}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->isNativeExpress()Z

    move-result v14

    if-eqz v14, :cond_1f1

    .line 1103
    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1104
    const/16 v6, 0x8

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1105
    const/16 v6, 0x8

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1106
    if-eqz v4, :cond_134

    .line 1107
    const/16 v6, 0x8

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1109
    :cond_134
    const/16 v6, 0x8

    invoke-virtual {v10, v6}, Lcom/anythink/nativead/views/AppRatingView;->setVisibility(I)V

    .line 1110
    const/16 v6, 0x8

    invoke-virtual {v11, v6}, Lcom/anythink/nativead/views/RoundImageView;->setVisibility(I)V

    .line 1111
    if-eqz v5, :cond_145

    .line 1112
    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1115
    :cond_145
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v7, -0x2

    const/4 v10, -0x2

    invoke-direct {v6, v7, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1116
    const/16 v7, 0x11

    iput v7, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1117
    invoke-virtual {v8, v13, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1118
    const/4 v6, 0x0

    invoke-virtual {v8, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1123
    :goto_157
    const/4 v6, 0x1

    move-object/from16 v0, p0

    iput-boolean v6, v0, Lcom/anythink/nativead/splash/a/a;->d:Z

    .line 1124
    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const-string v7, "plugin_splash_default_bg"

    const-string v8, "drawable"

    invoke-static {v12, v7, v8}, Lcom/anythink/core/b/g/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-static {v6, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 1125
    invoke-static {}, Lcom/anythink/nativead/a/c;->a()Lcom/anythink/nativead/a/c;

    move-result-object v7

    invoke-virtual {v7, v12, v6}, Lcom/anythink/nativead/a/c;->a(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v9, v7}, Lcom/anythink/nativead/views/RoundImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1126
    if-eqz v6, :cond_17c

    .line 1127
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 1129
    :cond_17c
    invoke-direct/range {p0 .. p0}, Lcom/anythink/nativead/splash/a/a;->a()V

    .line 1163
    :goto_17f
    invoke-virtual/range {p2 .. p2}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_234

    .line 1164
    invoke-virtual/range {p2 .. p2}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1165
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1170
    :goto_194
    invoke-virtual/range {p2 .. p2}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getCallToActionText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_23b

    .line 1171
    invoke-virtual/range {p2 .. p2}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getCallToActionText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1172
    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1177
    :goto_1a9
    if-eqz v4, :cond_1c0

    .line 1178
    invoke-virtual/range {p2 .. p2}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getDescriptionText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_242

    .line 1179
    invoke-virtual/range {p2 .. p2}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getDescriptionText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1180
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1186
    :cond_1c0
    :goto_1c0
    if-eqz v5, :cond_1d7

    .line 1187
    invoke-virtual/range {p2 .. p2}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getAdFrom()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_249

    .line 1188
    invoke-virtual/range {p2 .. p2}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getAdFrom()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1189
    const/4 v2, 0x0

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1d7
    :goto_1d7
    return-void

    .line 1068
    :cond_1d8
    invoke-virtual/range {p2 .. p2}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getStarRating()Ljava/lang/Double;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Double;->intValue()I

    move-result v11

    goto/16 :goto_c0

    .line 1089
    :cond_1e2
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/anythink/nativead/splash/a/a;->c:Z

    .line 1090
    const/16 v14, 0x8

    invoke-virtual {v11, v14}, Lcom/anythink/nativead/views/RoundImageView;->setVisibility(I)V

    .line 1091
    invoke-direct/range {p0 .. p0}, Lcom/anythink/nativead/splash/a/a;->a()V

    goto/16 :goto_ff

    .line 1120
    :cond_1f1
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v8, -0x1

    const/4 v10, -0x1

    invoke-direct {v6, v8, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v13, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1121
    const/4 v6, 0x0

    invoke-virtual {v7, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto/16 :goto_157

    .line 1131
    :cond_201
    new-instance v6, Lcom/anythink/nativead/views/RoundImageView;

    invoke-direct {v6, v12}, Lcom/anythink/nativead/views/RoundImageView;-><init>(Landroid/content/Context;)V

    .line 1132
    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v10, -0x1

    const/4 v11, -0x1

    invoke-direct {v8, v10, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1133
    invoke-virtual {v6, v8}, Lcom/anythink/nativead/views/RoundImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1134
    const/4 v10, 0x1

    invoke-virtual {v6, v10}, Lcom/anythink/nativead/views/RoundImageView;->setNeedRadiu(Z)V

    .line 1135
    sget-object v10, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v6, v10}, Lcom/anythink/nativead/views/RoundImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1136
    invoke-virtual {v7, v6, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1137
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1139
    invoke-static {}, Lcom/anythink/nativead/a/c;->a()Lcom/anythink/nativead/a/c;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getMainImageUrl()Ljava/lang/String;

    move-result-object v8

    new-instance v10, Lcom/anythink/nativead/splash/a/a$2;

    move-object/from16 v0, p0

    invoke-direct {v10, v0, v6, v12, v9}, Lcom/anythink/nativead/splash/a/a$2;-><init>(Lcom/anythink/nativead/splash/a/a;Lcom/anythink/nativead/views/RoundImageView;Landroid/content/Context;Lcom/anythink/nativead/views/RoundImageView;)V

    invoke-virtual {v7, v8, v14, v10}, Lcom/anythink/nativead/a/c;->a(Ljava/lang/String;ILcom/anythink/nativead/a/c$a;)V

    goto/16 :goto_17f

    .line 1167
    :cond_234
    const/16 v6, 0x8

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_194

    .line 1174
    :cond_23b
    const/16 v2, 0x8

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1a9

    .line 1182
    :cond_242
    const/16 v2, 0x8

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1c0

    .line 1191
    :cond_249
    const/16 v2, 0x8

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1d7
.end method
