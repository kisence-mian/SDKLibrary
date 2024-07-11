.class public final Lcom/anythink/nativead/banner/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/nativead/api/ATNativeAdRenderer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/anythink/nativead/api/ATNativeAdRenderer<",
        "Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;",
        ">;"
    }
.end annotation


# instance fields
.field a:Landroid/content/Context;

.field b:Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;

.field c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;)V
    .registers 3

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/anythink/nativead/banner/a/a;->a:Landroid/content/Context;

    .line 39
    iput-object p2, p0, Lcom/anythink/nativead/banner/a/a;->b:Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;

    .line 40
    return-void
.end method

.method private static a(Landroid/content/Context;F)I
    .registers 2

    .line 337
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    .line 338
    mul-float/2addr p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method private a(Landroid/view/View;Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;)V
    .registers 23

    .line 78
    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move-object/from16 v14, p2

    instance-of v0, v13, Landroid/view/ViewGroup;

    const/4 v15, 0x0

    const/16 v11, 0x8

    if-eqz v0, :cond_56

    .line 79
    move-object v0, v13

    check-cast v0, Landroid/view/ViewGroup;

    .line 81
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x5

    if-le v1, v2, :cond_23

    .line 82
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    :goto_1b
    if-lt v1, v2, :cond_23

    .line 83
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 82
    add-int/lit8 v1, v1, -0x1

    goto :goto_1b

    .line 86
    :cond_23
    new-array v1, v15, [Ljava/lang/Object;

    invoke-virtual {v14, v1}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getAdMediaView([Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_56

    invoke-virtual/range {p2 .. p2}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->isNativeExpress()Z

    move-result v1

    if-eqz v1, :cond_56

    .line 87
    move v1, v15

    :goto_32
    if-ge v1, v2, :cond_3e

    .line 88
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v11}, Landroid/view/View;->setVisibility(I)V

    .line 87
    add-int/lit8 v1, v1, 0x1

    goto :goto_32

    .line 90
    :cond_3e
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 91
    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 92
    new-array v2, v15, [Ljava/lang/Object;

    invoke-virtual {v14, v2}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getAdMediaView([Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 93
    invoke-virtual {v13, v15}, Landroid/view/View;->setVisibility(I)V

    .line 94
    return-void

    .line 98
    :cond_56
    iget-object v0, v12, Lcom/anythink/nativead/banner/a/a;->b:Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;

    iget-object v0, v0, Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;->bannerSize:Lcom/anythink/nativead/banner/api/ATNativeBannerSize;

    sget-object v1, Lcom/anythink/nativead/banner/api/ATNativeBannerSize;->BANNER_SIZE_320x50:Lcom/anythink/nativead/banner/api/ATNativeBannerSize;

    const/4 v2, 0x1

    const/high16 v9, 0x42200000    # 40.0f

    const-string v3, "id"

    if-ne v0, v1, :cond_187

    .line 99
    iget-object v0, v12, Lcom/anythink/nativead/banner/a/a;->a:Landroid/content/Context;

    const-string v1, "plugin_320_banner_icon"

    invoke-static {v0, v1, v3}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/anythink/nativead/views/RoundImageView;

    .line 100
    invoke-virtual {v0, v2}, Lcom/anythink/nativead/views/RoundImageView;->setNeedRadiu(Z)V

    .line 101
    iget-object v0, v12, Lcom/anythink/nativead/banner/a/a;->a:Landroid/content/Context;

    const-string v1, "plugin_320_banner_cta"

    invoke-static {v0, v1, v3}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 102
    iget-object v1, v12, Lcom/anythink/nativead/banner/a/a;->a:Landroid/content/Context;

    const-string v4, "plugin_320_banner_title"

    invoke-static {v1, v4, v3}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v13, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 103
    iget-object v4, v12, Lcom/anythink/nativead/banner/a/a;->a:Landroid/content/Context;

    const-string v5, "plugin_320_banner_desc"

    invoke-static {v4, v5, v3}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v13, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 104
    iget-object v5, v12, Lcom/anythink/nativead/banner/a/a;->a:Landroid/content/Context;

    const-string v6, "plugin_320_banner_adfrom_view"

    invoke-static {v5, v6, v3}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v13, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 105
    iget-object v6, v12, Lcom/anythink/nativead/banner/a/a;->a:Landroid/content/Context;

    const-string v7, "plugin_320_banner_adchoice_icon"

    invoke-static {v6, v7, v3}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v13, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/anythink/nativead/views/RoundImageView;

    .line 107
    invoke-virtual/range {p2 .. p2}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getIconImageUrl()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v12, Lcom/anythink/nativead/banner/a/a;->a:Landroid/content/Context;

    invoke-static {v8, v9}, Lcom/anythink/nativead/banner/a/a;->a(Landroid/content/Context;F)I

    move-result v8

    iget-object v10, v12, Lcom/anythink/nativead/banner/a/a;->a:Landroid/content/Context;

    invoke-static {v10, v9}, Lcom/anythink/nativead/banner/a/a;->a(Landroid/content/Context;F)I

    move-result v10

    invoke-virtual {v6, v7, v8, v10}, Lcom/anythink/nativead/views/RoundImageView;->setImage(Ljava/lang/String;II)V

    .line 109
    invoke-virtual/range {p2 .. p2}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getAdFrom()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_df

    .line 110
    invoke-virtual/range {p2 .. p2}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getAdFrom()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_e2

    .line 112
    :cond_df
    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 115
    :goto_e2
    invoke-virtual/range {p2 .. p2}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getCallToActionText()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_fd

    iget-object v5, v12, Lcom/anythink/nativead/banner/a/a;->b:Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;

    iget-boolean v5, v5, Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;->isCtaBtnShow:Z

    if-eqz v5, :cond_fd

    .line 116
    invoke-virtual/range {p2 .. p2}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getCallToActionText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    invoke-virtual {v0, v15}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_100

    .line 119
    :cond_fd
    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 122
    :goto_100
    invoke-virtual/range {p2 .. p2}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_118

    .line 123
    invoke-virtual/range {p2 .. p2}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    invoke-virtual {v1, v15}, Landroid/widget/TextView;->setVisibility(I)V

    .line 125
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_11b

    .line 127
    :cond_118
    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 131
    :goto_11b
    invoke-virtual/range {p2 .. p2}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getDescriptionText()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_133

    .line 132
    invoke-virtual/range {p2 .. p2}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getDescriptionText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    invoke-virtual {v4, v15}, Landroid/widget/TextView;->setVisibility(I)V

    .line 134
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_136

    .line 136
    :cond_133
    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 140
    :goto_136
    iget-object v5, v12, Lcom/anythink/nativead/banner/a/a;->b:Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;

    iget v5, v5, Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;->titleColor:I

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 141
    iget-object v1, v12, Lcom/anythink/nativead/banner/a/a;->b:Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;

    iget v1, v1, Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;->descColor:I

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 143
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 144
    iget-object v4, v12, Lcom/anythink/nativead/banner/a/a;->a:Landroid/content/Context;

    const/high16 v5, 0x41a00000    # 20.0f

    invoke-static {v4, v5}, Lcom/anythink/nativead/banner/a/a;->a(Landroid/content/Context;F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 145
    iget-object v4, v12, Lcom/anythink/nativead/banner/a/a;->b:Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;

    iget v4, v4, Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;->ctaBgColor:I

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 146
    iget-object v4, v12, Lcom/anythink/nativead/banner/a/a;->b:Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;

    iget v4, v4, Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;->ctaColor:I

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 147
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 149
    invoke-virtual/range {p2 .. p2}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getAdChoiceIconUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_184

    .line 150
    invoke-virtual/range {p2 .. p2}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getIconImageUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v1, v12, Lcom/anythink/nativead/banner/a/a;->a:Landroid/content/Context;

    invoke-static {v1, v9}, Lcom/anythink/nativead/banner/a/a;->a(Landroid/content/Context;F)I

    move-result v1

    iget-object v4, v12, Lcom/anythink/nativead/banner/a/a;->a:Landroid/content/Context;

    invoke-static {v4, v9}, Lcom/anythink/nativead/banner/a/a;->a(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v6, v0, v1, v4}, Lcom/anythink/nativead/views/RoundImageView;->setImage(Ljava/lang/String;II)V

    goto :goto_187

    .line 152
    :cond_184
    invoke-virtual {v6, v11}, Lcom/anythink/nativead/views/RoundImageView;->setVisibility(I)V

    .line 157
    :cond_187
    :goto_187
    iget-object v0, v12, Lcom/anythink/nativead/banner/a/a;->b:Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;

    iget-object v0, v0, Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;->bannerSize:Lcom/anythink/nativead/banner/api/ATNativeBannerSize;

    sget-object v1, Lcom/anythink/nativead/banner/api/ATNativeBannerSize;->BANNER_SIZE_640x150:Lcom/anythink/nativead/banner/api/ATNativeBannerSize;

    if-ne v0, v1, :cond_31f

    .line 158
    iget-object v0, v12, Lcom/anythink/nativead/banner/a/a;->a:Landroid/content/Context;

    const-string v1, "plugin_640_image_area"

    invoke-static {v0, v1, v3}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 159
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v15

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-virtual {v14, v1}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getAdMediaView([Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    .line 160
    if-eqz v1, :cond_1c3

    .line 161
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    .line 162
    instance-of v5, v4, Landroid/view/ViewGroup;

    if-eqz v5, :cond_1bf

    .line 163
    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 165
    :cond_1bf
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 166
    goto :goto_1f8

    .line 167
    :cond_1c3
    new-instance v1, Lcom/anythink/nativead/views/RoundImageView;

    iget-object v4, v12, Lcom/anythink/nativead/banner/a/a;->a:Landroid/content/Context;

    invoke-direct {v1, v4}, Lcom/anythink/nativead/views/RoundImageView;-><init>(Landroid/content/Context;)V

    .line 168
    sget-object v4, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v4}, Lcom/anythink/nativead/views/RoundImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 169
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 170
    invoke-virtual/range {p2 .. p2}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getMainImageUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1f5

    .line 171
    invoke-virtual/range {p2 .. p2}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getMainImageUrl()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v12, Lcom/anythink/nativead/banner/a/a;->a:Landroid/content/Context;

    const/high16 v6, 0x43960000    # 300.0f

    invoke-static {v5, v6}, Lcom/anythink/nativead/banner/a/a;->a(Landroid/content/Context;F)I

    move-result v5

    iget-object v7, v12, Lcom/anythink/nativead/banner/a/a;->a:Landroid/content/Context;

    invoke-static {v7, v6}, Lcom/anythink/nativead/banner/a/a;->a(Landroid/content/Context;F)I

    move-result v6

    invoke-virtual {v1, v4, v5, v6}, Lcom/anythink/nativead/views/RoundImageView;->setImage(Ljava/lang/String;II)V

    .line 172
    invoke-virtual {v0, v15}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_1f8

    .line 174
    :cond_1f5
    invoke-virtual {v0, v11}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 179
    :goto_1f8
    iget-object v0, v12, Lcom/anythink/nativead/banner/a/a;->a:Landroid/content/Context;

    const-string v1, "plugin_640_banner_cta"

    invoke-static {v0, v1, v3}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 180
    iget-object v1, v12, Lcom/anythink/nativead/banner/a/a;->a:Landroid/content/Context;

    const-string v4, "plugin_640_banner_title"

    invoke-static {v1, v4, v3}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v13, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 181
    iget-object v4, v12, Lcom/anythink/nativead/banner/a/a;->a:Landroid/content/Context;

    const-string v5, "plugin_640_banner_desc"

    invoke-static {v4, v5, v3}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v13, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 182
    iget-object v5, v12, Lcom/anythink/nativead/banner/a/a;->a:Landroid/content/Context;

    const-string v6, "plugin_640_banner_from"

    invoke-static {v5, v6, v3}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v13, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 183
    iget-object v6, v12, Lcom/anythink/nativead/banner/a/a;->a:Landroid/content/Context;

    const-string v7, "plugin_640_banner_adfrom_view"

    invoke-static {v6, v7, v3}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v13, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 184
    iget-object v7, v12, Lcom/anythink/nativead/banner/a/a;->a:Landroid/content/Context;

    const-string v8, "plugin_640_banner_adchoice_icon"

    invoke-static {v7, v8, v3}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v13, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/anythink/nativead/views/RoundImageView;

    .line 186
    invoke-virtual/range {p2 .. p2}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getAdFrom()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_25e

    .line 187
    invoke-virtual/range {p2 .. p2}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getAdFrom()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_261

    .line 189
    :cond_25e
    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 192
    :goto_261
    invoke-virtual/range {p2 .. p2}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getCallToActionText()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_27c

    iget-object v6, v12, Lcom/anythink/nativead/banner/a/a;->b:Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;

    iget-boolean v6, v6, Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;->isCtaBtnShow:Z

    if-eqz v6, :cond_27c

    .line 193
    invoke-virtual/range {p2 .. p2}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getCallToActionText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    invoke-virtual {v0, v15}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_27f

    .line 196
    :cond_27c
    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 199
    :goto_27f
    invoke-virtual/range {p2 .. p2}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_297

    .line 200
    invoke-virtual/range {p2 .. p2}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    invoke-virtual {v1, v15}, Landroid/widget/TextView;->setVisibility(I)V

    .line 202
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_29a

    .line 204
    :cond_297
    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 207
    :goto_29a
    invoke-virtual/range {p2 .. p2}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getDescriptionText()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2b2

    .line 208
    invoke-virtual/range {p2 .. p2}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getDescriptionText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 209
    invoke-virtual {v4, v15}, Landroid/widget/TextView;->setVisibility(I)V

    .line 210
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_2b5

    .line 212
    :cond_2b2
    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 215
    :goto_2b5
    invoke-virtual/range {p2 .. p2}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getAdFrom()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2ca

    .line 216
    invoke-virtual/range {p2 .. p2}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getAdFrom()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 217
    invoke-virtual {v5, v15}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2cd

    .line 219
    :cond_2ca
    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 222
    :goto_2cd
    invoke-virtual/range {p2 .. p2}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getAdChoiceIconUrl()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2eb

    .line 223
    invoke-virtual/range {p2 .. p2}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getIconImageUrl()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v12, Lcom/anythink/nativead/banner/a/a;->a:Landroid/content/Context;

    invoke-static {v6, v9}, Lcom/anythink/nativead/banner/a/a;->a(Landroid/content/Context;F)I

    move-result v6

    iget-object v8, v12, Lcom/anythink/nativead/banner/a/a;->a:Landroid/content/Context;

    invoke-static {v8, v9}, Lcom/anythink/nativead/banner/a/a;->a(Landroid/content/Context;F)I

    move-result v8

    invoke-virtual {v7, v5, v6, v8}, Lcom/anythink/nativead/views/RoundImageView;->setImage(Ljava/lang/String;II)V

    goto :goto_2ee

    .line 225
    :cond_2eb
    invoke-virtual {v7, v11}, Lcom/anythink/nativead/views/RoundImageView;->setVisibility(I)V

    .line 229
    :goto_2ee
    iget-object v5, v12, Lcom/anythink/nativead/banner/a/a;->b:Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;

    iget v5, v5, Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;->titleColor:I

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 230
    iget-object v1, v12, Lcom/anythink/nativead/banner/a/a;->b:Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;

    iget v1, v1, Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;->descColor:I

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 232
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 233
    iget-object v4, v12, Lcom/anythink/nativead/banner/a/a;->a:Landroid/content/Context;

    const/high16 v10, 0x41a00000    # 20.0f

    invoke-static {v4, v10}, Lcom/anythink/nativead/banner/a/a;->a(Landroid/content/Context;F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 234
    iget-object v4, v12, Lcom/anythink/nativead/banner/a/a;->b:Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;

    iget v4, v4, Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;->ctaBgColor:I

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 235
    iget-object v4, v12, Lcom/anythink/nativead/banner/a/a;->b:Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;

    iget v4, v4, Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;->ctaColor:I

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 236
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_321

    .line 157
    :cond_31f
    const/high16 v10, 0x41a00000    # 20.0f

    .line 240
    :goto_321
    iget-object v0, v12, Lcom/anythink/nativead/banner/a/a;->b:Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;

    iget-object v0, v0, Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;->bannerSize:Lcom/anythink/nativead/banner/api/ATNativeBannerSize;

    sget-object v1, Lcom/anythink/nativead/banner/api/ATNativeBannerSize;->BANNER_SIZE_AUTO:Lcom/anythink/nativead/banner/api/ATNativeBannerSize;

    if-ne v0, v1, :cond_4c1

    .line 241
    iget-object v0, v12, Lcom/anythink/nativead/banner/a/a;->a:Landroid/content/Context;

    const-string v1, "plugin_auto_banner_icon"

    invoke-static {v0, v1, v3}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/anythink/nativead/views/RoundImageView;

    .line 242
    invoke-virtual {v5, v2}, Lcom/anythink/nativead/views/RoundImageView;->setNeedRadiu(Z)V

    .line 243
    iget-object v0, v12, Lcom/anythink/nativead/banner/a/a;->a:Landroid/content/Context;

    const-string v1, "plugin_auto_banner_title"

    invoke-static {v0, v1, v3}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/widget/TextView;

    .line 244
    iget-object v0, v12, Lcom/anythink/nativead/banner/a/a;->a:Landroid/content/Context;

    const-string v1, "plugin_auto_banner_desc"

    invoke-static {v0, v1, v3}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/widget/TextView;

    .line 245
    iget-object v0, v12, Lcom/anythink/nativead/banner/a/a;->a:Landroid/content/Context;

    const-string v1, "plugin_auto_banner_cta"

    invoke-static {v0, v1, v3}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/TextView;

    .line 246
    iget-object v0, v12, Lcom/anythink/nativead/banner/a/a;->a:Landroid/content/Context;

    const-string v1, "plugin_auto_banner_adchoice_icon"

    invoke-static {v0, v1, v3}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/anythink/nativead/views/RoundImageView;

    .line 247
    iget-object v0, v12, Lcom/anythink/nativead/banner/a/a;->a:Landroid/content/Context;

    const-string v1, "plugin_auto_banner_adfrom_view"

    invoke-static {v0, v1, v3}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 249
    iget-object v1, v12, Lcom/anythink/nativead/banner/a/a;->a:Landroid/content/Context;

    const/high16 v3, 0x43a00000    # 320.0f

    invoke-static {v1, v3}, Lcom/anythink/nativead/banner/a/a;->a(Landroid/content/Context;F)I

    .line 250
    iget-object v1, v12, Lcom/anythink/nativead/banner/a/a;->a:Landroid/content/Context;

    const/high16 v3, 0x42480000    # 50.0f

    invoke-static {v1, v3}, Lcom/anythink/nativead/banner/a/a;->a(Landroid/content/Context;F)I

    move-result v3

    .line 251
    iget-object v1, v12, Lcom/anythink/nativead/banner/a/a;->a:Landroid/content/Context;

    invoke-static {v1, v9}, Lcom/anythink/nativead/banner/a/a;->a(Landroid/content/Context;F)I

    move-result v16

    .line 253
    iget-object v1, v12, Lcom/anythink/nativead/banner/a/a;->a:Landroid/content/Context;

    const/high16 v10, 0x41700000    # 15.0f

    invoke-static {v1, v10}, Lcom/anythink/nativead/banner/a/a;->a(Landroid/content/Context;F)I

    move-result v10

    .line 254
    iget-object v1, v12, Lcom/anythink/nativead/banner/a/a;->a:Landroid/content/Context;

    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {v1, v2}, Lcom/anythink/nativead/banner/a/a;->a(Landroid/content/Context;F)I

    move-result v18

    .line 255
    iget-object v1, v12, Lcom/anythink/nativead/banner/a/a;->a:Landroid/content/Context;

    const/high16 v2, 0x41500000    # 13.0f

    invoke-static {v1, v2}, Lcom/anythink/nativead/banner/a/a;->a(Landroid/content/Context;F)I

    move-result v19

    .line 257
    invoke-virtual/range {p2 .. p2}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getIconImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3d0

    .line 258
    invoke-virtual/range {p2 .. p2}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getIconImageUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v12, Lcom/anythink/nativead/banner/a/a;->a:Landroid/content/Context;

    invoke-static {v2, v9}, Lcom/anythink/nativead/banner/a/a;->a(Landroid/content/Context;F)I

    move-result v2

    iget-object v15, v12, Lcom/anythink/nativead/banner/a/a;->a:Landroid/content/Context;

    invoke-static {v15, v9}, Lcom/anythink/nativead/banner/a/a;->a(Landroid/content/Context;F)I

    move-result v15

    invoke-virtual {v5, v1, v2, v15}, Lcom/anythink/nativead/views/RoundImageView;->setImage(Ljava/lang/String;II)V

    goto :goto_3d3

    .line 260
    :cond_3d0
    invoke-virtual {v5, v11}, Lcom/anythink/nativead/views/RoundImageView;->setVisibility(I)V

    .line 263
    :goto_3d3
    invoke-virtual/range {p2 .. p2}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getCallToActionText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3ef

    iget-object v1, v12, Lcom/anythink/nativead/banner/a/a;->b:Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;

    iget-boolean v1, v1, Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;->isCtaBtnShow:Z

    if-eqz v1, :cond_3ef

    .line 264
    invoke-virtual/range {p2 .. p2}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getCallToActionText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 265
    const/4 v1, 0x0

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3f2

    .line 267
    :cond_3ef
    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 270
    :goto_3f2
    invoke-virtual/range {p2 .. p2}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getAdFrom()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_404

    .line 271
    invoke-virtual/range {p2 .. p2}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getAdFrom()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_407

    .line 273
    :cond_404
    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 276
    :goto_407
    invoke-virtual/range {p2 .. p2}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_421

    .line 277
    invoke-virtual/range {p2 .. p2}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 278
    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 279
    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_424

    .line 281
    :cond_421
    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 284
    :goto_424
    invoke-virtual/range {p2 .. p2}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getDescriptionText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_43e

    .line 285
    invoke-virtual/range {p2 .. p2}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getDescriptionText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 286
    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 287
    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_441

    .line 289
    :cond_43e
    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 292
    :goto_441
    new-instance v15, Lcom/anythink/nativead/banner/a/a$1;

    move-object v0, v15

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v14, v4

    move/from16 v4, v16

    move-object/from16 v16, v6

    move v6, v10

    move-object v10, v7

    move/from16 v7, v18

    move-object/from16 v17, v8

    move/from16 v8, v19

    move v13, v9

    move-object/from16 v9, v17

    move-object/from16 v18, v10

    const/high16 v13, 0x41a00000    # 20.0f

    move-object/from16 v11, v16

    invoke-direct/range {v0 .. v11}, Lcom/anythink/nativead/banner/a/a$1;-><init>(Lcom/anythink/nativead/banner/a/a;Landroid/view/View;IILcom/anythink/nativead/views/RoundImageView;IIILandroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 314
    iget-object v0, v12, Lcom/anythink/nativead/banner/a/a;->b:Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;

    iget v0, v0, Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;->titleColor:I

    move-object/from16 v1, v17

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 315
    iget-object v0, v12, Lcom/anythink/nativead/banner/a/a;->b:Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;

    iget v0, v0, Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;->descColor:I

    move-object/from16 v1, v18

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 317
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 318
    iget-object v1, v12, Lcom/anythink/nativead/banner/a/a;->a:Landroid/content/Context;

    invoke-static {v1, v13}, Lcom/anythink/nativead/banner/a/a;->a(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 319
    iget-object v1, v12, Lcom/anythink/nativead/banner/a/a;->b:Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;

    iget v1, v1, Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;->ctaBgColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 320
    iget-object v1, v12, Lcom/anythink/nativead/banner/a/a;->b:Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;

    iget v1, v1, Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;->ctaColor:I

    move-object/from16 v2, v16

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 321
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 323
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, v15}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 325
    invoke-virtual/range {p2 .. p2}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getAdChoiceIconUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4bc

    .line 326
    invoke-virtual/range {p2 .. p2}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getIconImageUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v1, v12, Lcom/anythink/nativead/banner/a/a;->a:Landroid/content/Context;

    const/high16 v2, 0x42200000    # 40.0f

    invoke-static {v1, v2}, Lcom/anythink/nativead/banner/a/a;->a(Landroid/content/Context;F)I

    move-result v1

    iget-object v3, v12, Lcom/anythink/nativead/banner/a/a;->a:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/anythink/nativead/banner/a/a;->a(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v14, v0, v1, v2}, Lcom/anythink/nativead/views/RoundImageView;->setImage(Ljava/lang/String;II)V

    goto :goto_4c1

    .line 328
    :cond_4bc
    const/16 v0, 0x8

    invoke-virtual {v14, v0}, Lcom/anythink/nativead/views/RoundImageView;->setVisibility(I)V

    .line 333
    :cond_4c1
    :goto_4c1
    move-object/from16 v0, p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 334
    return-void
.end method


# virtual methods
.method public final a()Lcom/anythink/nativead/banner/api/ATNativeBannerSize;
    .registers 2

    .line 47
    iget-object v0, p0, Lcom/anythink/nativead/banner/a/a;->b:Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;

    iget-object v0, v0, Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;->bannerSize:Lcom/anythink/nativead/banner/api/ATNativeBannerSize;

    return-object v0
.end method

.method public final a(Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;)V
    .registers 2

    .line 43
    iput-object p1, p0, Lcom/anythink/nativead/banner/a/a;->b:Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;

    .line 44
    return-void
.end method

.method public final createView(Landroid/content/Context;I)Landroid/view/View;
    .registers 9

    .line 55
    nop

    .line 56
    iget-object v0, p0, Lcom/anythink/nativead/banner/a/a;->b:Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;

    iget-object v0, v0, Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;->bannerSize:Lcom/anythink/nativead/banner/api/ATNativeBannerSize;

    sget-object v1, Lcom/anythink/nativead/banner/api/ATNativeBannerSize;->BANNER_SIZE_320x50:Lcom/anythink/nativead/banner/api/ATNativeBannerSize;

    const-string v2, "layout"

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1d

    .line 57
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/nativead/banner/a/a;->a:Landroid/content/Context;

    const-string v4, "plugin_banner_320x50"

    invoke-static {v1, v4, v2}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_1e

    .line 56
    :cond_1d
    move-object v0, v3

    .line 59
    :goto_1e
    iget-object v1, p0, Lcom/anythink/nativead/banner/a/a;->b:Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;

    iget-object v1, v1, Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;->bannerSize:Lcom/anythink/nativead/banner/api/ATNativeBannerSize;

    sget-object v4, Lcom/anythink/nativead/banner/api/ATNativeBannerSize;->BANNER_SIZE_640x150:Lcom/anythink/nativead/banner/api/ATNativeBannerSize;

    if-ne v1, v4, :cond_36

    .line 60
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/nativead/banner/a/a;->a:Landroid/content/Context;

    const-string v4, "plugin_banner_640x150"

    invoke-static {v1, v4, v2}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 63
    :cond_36
    iget-object v1, p0, Lcom/anythink/nativead/banner/a/a;->b:Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;

    iget-object v1, v1, Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;->bannerSize:Lcom/anythink/nativead/banner/api/ATNativeBannerSize;

    sget-object v4, Lcom/anythink/nativead/banner/api/ATNativeBannerSize;->BANNER_SIZE_AUTO:Lcom/anythink/nativead/banner/api/ATNativeBannerSize;

    const-string v5, "plugin_banner_auto"

    if-ne v1, v4, :cond_4e

    .line 64
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/nativead/banner/a/a;->a:Landroid/content/Context;

    invoke-static {v1, v5, v2}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 67
    :cond_4e
    if-nez v0, :cond_64

    .line 68
    iget-object v0, p0, Lcom/anythink/nativead/banner/a/a;->b:Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;

    sget-object v1, Lcom/anythink/nativead/banner/api/ATNativeBannerSize;->BANNER_SIZE_AUTO:Lcom/anythink/nativead/banner/api/ATNativeBannerSize;

    iput-object v1, v0, Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;->bannerSize:Lcom/anythink/nativead/banner/api/ATNativeBannerSize;

    .line 69
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iget-object v0, p0, Lcom/anythink/nativead/banner/a/a;->a:Landroid/content/Context;

    invoke-static {v0, v5, v2}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 71
    :cond_64
    iput p2, p0, Lcom/anythink/nativead/banner/a/a;->c:I

    .line 72
    const/16 p1, 0x8

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 73
    return-object v0
.end method

.method public final synthetic renderAdView(Landroid/view/View;Lcom/anythink/nativead/unitgroup/a;)V
    .registers 23

    .line 32
    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move-object/from16 v14, p2

    check-cast v14, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;

    .line 1078
    instance-of v0, v13, Landroid/view/ViewGroup;

    const/4 v15, 0x0

    const/16 v11, 0x8

    if-eqz v0, :cond_56

    .line 1079
    move-object v0, v13

    check-cast v0, Landroid/view/ViewGroup;

    .line 1081
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x5

    if-le v1, v2, :cond_25

    .line 1082
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    :goto_1d
    if-lt v1, v2, :cond_25

    .line 1083
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 1082
    add-int/lit8 v1, v1, -0x1

    goto :goto_1d

    .line 1086
    :cond_25
    new-array v1, v15, [Ljava/lang/Object;

    invoke-virtual {v14, v1}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getAdMediaView([Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_56

    invoke-virtual {v14}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->isNativeExpress()Z

    move-result v1

    if-eqz v1, :cond_56

    .line 1087
    move v1, v15

    :goto_34
    if-ge v1, v2, :cond_40

    .line 1088
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v11}, Landroid/view/View;->setVisibility(I)V

    .line 1087
    add-int/lit8 v1, v1, 0x1

    goto :goto_34

    .line 1090
    :cond_40
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1091
    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1092
    new-array v2, v15, [Ljava/lang/Object;

    invoke-virtual {v14, v2}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getAdMediaView([Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1094
    goto/16 :goto_4c7

    .line 1098
    :cond_56
    iget-object v0, v12, Lcom/anythink/nativead/banner/a/a;->b:Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;

    iget-object v0, v0, Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;->bannerSize:Lcom/anythink/nativead/banner/api/ATNativeBannerSize;

    sget-object v1, Lcom/anythink/nativead/banner/api/ATNativeBannerSize;->BANNER_SIZE_320x50:Lcom/anythink/nativead/banner/api/ATNativeBannerSize;

    const/4 v2, 0x1

    const/high16 v9, 0x42200000    # 40.0f

    const-string v3, "id"

    if-ne v0, v1, :cond_187

    .line 1099
    iget-object v0, v12, Lcom/anythink/nativead/banner/a/a;->a:Landroid/content/Context;

    const-string v1, "plugin_320_banner_icon"

    invoke-static {v0, v1, v3}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/anythink/nativead/views/RoundImageView;

    .line 1100
    invoke-virtual {v0, v2}, Lcom/anythink/nativead/views/RoundImageView;->setNeedRadiu(Z)V

    .line 1101
    iget-object v0, v12, Lcom/anythink/nativead/banner/a/a;->a:Landroid/content/Context;

    const-string v1, "plugin_320_banner_cta"

    invoke-static {v0, v1, v3}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1102
    iget-object v1, v12, Lcom/anythink/nativead/banner/a/a;->a:Landroid/content/Context;

    const-string v4, "plugin_320_banner_title"

    invoke-static {v1, v4, v3}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v13, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1103
    iget-object v4, v12, Lcom/anythink/nativead/banner/a/a;->a:Landroid/content/Context;

    const-string v5, "plugin_320_banner_desc"

    invoke-static {v4, v5, v3}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v13, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 1104
    iget-object v5, v12, Lcom/anythink/nativead/banner/a/a;->a:Landroid/content/Context;

    const-string v6, "plugin_320_banner_adfrom_view"

    invoke-static {v5, v6, v3}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v13, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 1105
    iget-object v6, v12, Lcom/anythink/nativead/banner/a/a;->a:Landroid/content/Context;

    const-string v7, "plugin_320_banner_adchoice_icon"

    invoke-static {v6, v7, v3}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v13, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/anythink/nativead/views/RoundImageView;

    .line 1107
    invoke-virtual {v14}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getIconImageUrl()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v12, Lcom/anythink/nativead/banner/a/a;->a:Landroid/content/Context;

    invoke-static {v8, v9}, Lcom/anythink/nativead/banner/a/a;->a(Landroid/content/Context;F)I

    move-result v8

    iget-object v10, v12, Lcom/anythink/nativead/banner/a/a;->a:Landroid/content/Context;

    invoke-static {v10, v9}, Lcom/anythink/nativead/banner/a/a;->a(Landroid/content/Context;F)I

    move-result v10

    invoke-virtual {v6, v7, v8, v10}, Lcom/anythink/nativead/views/RoundImageView;->setImage(Ljava/lang/String;II)V

    .line 1109
    invoke-virtual {v14}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getAdFrom()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_df

    .line 1110
    invoke-virtual {v14}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getAdFrom()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_e2

    .line 1112
    :cond_df
    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1115
    :goto_e2
    invoke-virtual {v14}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getCallToActionText()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_fd

    iget-object v5, v12, Lcom/anythink/nativead/banner/a/a;->b:Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;

    iget-boolean v5, v5, Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;->isCtaBtnShow:Z

    if-eqz v5, :cond_fd

    .line 1116
    invoke-virtual {v14}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getCallToActionText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1117
    invoke-virtual {v0, v15}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_100

    .line 1119
    :cond_fd
    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1122
    :goto_100
    invoke-virtual {v14}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_118

    .line 1123
    invoke-virtual {v14}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1124
    invoke-virtual {v1, v15}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1125
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_11b

    .line 1127
    :cond_118
    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1131
    :goto_11b
    invoke-virtual {v14}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getDescriptionText()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_133

    .line 1132
    invoke-virtual {v14}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getDescriptionText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1133
    invoke-virtual {v4, v15}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1134
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_136

    .line 1136
    :cond_133
    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1140
    :goto_136
    iget-object v5, v12, Lcom/anythink/nativead/banner/a/a;->b:Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;

    iget v5, v5, Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;->titleColor:I

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1141
    iget-object v1, v12, Lcom/anythink/nativead/banner/a/a;->b:Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;

    iget v1, v1, Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;->descColor:I

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1143
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 1144
    iget-object v4, v12, Lcom/anythink/nativead/banner/a/a;->a:Landroid/content/Context;

    const/high16 v5, 0x41a00000    # 20.0f

    invoke-static {v4, v5}, Lcom/anythink/nativead/banner/a/a;->a(Landroid/content/Context;F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 1145
    iget-object v4, v12, Lcom/anythink/nativead/banner/a/a;->b:Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;

    iget v4, v4, Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;->ctaBgColor:I

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 1146
    iget-object v4, v12, Lcom/anythink/nativead/banner/a/a;->b:Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;

    iget v4, v4, Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;->ctaColor:I

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1147
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1149
    invoke-virtual {v14}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getAdChoiceIconUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_184

    .line 1150
    invoke-virtual {v14}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getIconImageUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v1, v12, Lcom/anythink/nativead/banner/a/a;->a:Landroid/content/Context;

    invoke-static {v1, v9}, Lcom/anythink/nativead/banner/a/a;->a(Landroid/content/Context;F)I

    move-result v1

    iget-object v4, v12, Lcom/anythink/nativead/banner/a/a;->a:Landroid/content/Context;

    invoke-static {v4, v9}, Lcom/anythink/nativead/banner/a/a;->a(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v6, v0, v1, v4}, Lcom/anythink/nativead/views/RoundImageView;->setImage(Ljava/lang/String;II)V

    goto :goto_187

    .line 1152
    :cond_184
    invoke-virtual {v6, v11}, Lcom/anythink/nativead/views/RoundImageView;->setVisibility(I)V

    .line 1157
    :cond_187
    :goto_187
    iget-object v0, v12, Lcom/anythink/nativead/banner/a/a;->b:Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;

    iget-object v0, v0, Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;->bannerSize:Lcom/anythink/nativead/banner/api/ATNativeBannerSize;

    sget-object v1, Lcom/anythink/nativead/banner/api/ATNativeBannerSize;->BANNER_SIZE_640x150:Lcom/anythink/nativead/banner/api/ATNativeBannerSize;

    if-ne v0, v1, :cond_31f

    .line 1158
    iget-object v0, v12, Lcom/anythink/nativead/banner/a/a;->a:Landroid/content/Context;

    const-string v1, "plugin_640_image_area"

    invoke-static {v0, v1, v3}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 1159
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v15

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-virtual {v14, v1}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getAdMediaView([Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    .line 1160
    if-eqz v1, :cond_1c3

    .line 1161
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    .line 1162
    instance-of v5, v4, Landroid/view/ViewGroup;

    if-eqz v5, :cond_1bf

    .line 1163
    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1165
    :cond_1bf
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1166
    goto :goto_1f8

    .line 1167
    :cond_1c3
    new-instance v1, Lcom/anythink/nativead/views/RoundImageView;

    iget-object v4, v12, Lcom/anythink/nativead/banner/a/a;->a:Landroid/content/Context;

    invoke-direct {v1, v4}, Lcom/anythink/nativead/views/RoundImageView;-><init>(Landroid/content/Context;)V

    .line 1168
    sget-object v4, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v4}, Lcom/anythink/nativead/views/RoundImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1169
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1170
    invoke-virtual {v14}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getMainImageUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1f5

    .line 1171
    invoke-virtual {v14}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getMainImageUrl()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v12, Lcom/anythink/nativead/banner/a/a;->a:Landroid/content/Context;

    const/high16 v6, 0x43960000    # 300.0f

    invoke-static {v5, v6}, Lcom/anythink/nativead/banner/a/a;->a(Landroid/content/Context;F)I

    move-result v5

    iget-object v7, v12, Lcom/anythink/nativead/banner/a/a;->a:Landroid/content/Context;

    invoke-static {v7, v6}, Lcom/anythink/nativead/banner/a/a;->a(Landroid/content/Context;F)I

    move-result v6

    invoke-virtual {v1, v4, v5, v6}, Lcom/anythink/nativead/views/RoundImageView;->setImage(Ljava/lang/String;II)V

    .line 1172
    invoke-virtual {v0, v15}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_1f8

    .line 1174
    :cond_1f5
    invoke-virtual {v0, v11}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1179
    :goto_1f8
    iget-object v0, v12, Lcom/anythink/nativead/banner/a/a;->a:Landroid/content/Context;

    const-string v1, "plugin_640_banner_cta"

    invoke-static {v0, v1, v3}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1180
    iget-object v1, v12, Lcom/anythink/nativead/banner/a/a;->a:Landroid/content/Context;

    const-string v4, "plugin_640_banner_title"

    invoke-static {v1, v4, v3}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v13, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1181
    iget-object v4, v12, Lcom/anythink/nativead/banner/a/a;->a:Landroid/content/Context;

    const-string v5, "plugin_640_banner_desc"

    invoke-static {v4, v5, v3}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v13, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 1182
    iget-object v5, v12, Lcom/anythink/nativead/banner/a/a;->a:Landroid/content/Context;

    const-string v6, "plugin_640_banner_from"

    invoke-static {v5, v6, v3}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v13, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 1183
    iget-object v6, v12, Lcom/anythink/nativead/banner/a/a;->a:Landroid/content/Context;

    const-string v7, "plugin_640_banner_adfrom_view"

    invoke-static {v6, v7, v3}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v13, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 1184
    iget-object v7, v12, Lcom/anythink/nativead/banner/a/a;->a:Landroid/content/Context;

    const-string v8, "plugin_640_banner_adchoice_icon"

    invoke-static {v7, v8, v3}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v13, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/anythink/nativead/views/RoundImageView;

    .line 1186
    invoke-virtual {v14}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getAdFrom()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_25e

    .line 1187
    invoke-virtual {v14}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getAdFrom()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_261

    .line 1189
    :cond_25e
    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1192
    :goto_261
    invoke-virtual {v14}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getCallToActionText()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_27c

    iget-object v6, v12, Lcom/anythink/nativead/banner/a/a;->b:Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;

    iget-boolean v6, v6, Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;->isCtaBtnShow:Z

    if-eqz v6, :cond_27c

    .line 1193
    invoke-virtual {v14}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getCallToActionText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1194
    invoke-virtual {v0, v15}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_27f

    .line 1196
    :cond_27c
    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1199
    :goto_27f
    invoke-virtual {v14}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_297

    .line 1200
    invoke-virtual {v14}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1201
    invoke-virtual {v1, v15}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1202
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_29a

    .line 1204
    :cond_297
    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1207
    :goto_29a
    invoke-virtual {v14}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getDescriptionText()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2b2

    .line 1208
    invoke-virtual {v14}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getDescriptionText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1209
    invoke-virtual {v4, v15}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1210
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_2b5

    .line 1212
    :cond_2b2
    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1215
    :goto_2b5
    invoke-virtual {v14}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getAdFrom()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2ca

    .line 1216
    invoke-virtual {v14}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getAdFrom()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1217
    invoke-virtual {v5, v15}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2cd

    .line 1219
    :cond_2ca
    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1222
    :goto_2cd
    invoke-virtual {v14}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getAdChoiceIconUrl()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2eb

    .line 1223
    invoke-virtual {v14}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getIconImageUrl()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v12, Lcom/anythink/nativead/banner/a/a;->a:Landroid/content/Context;

    invoke-static {v6, v9}, Lcom/anythink/nativead/banner/a/a;->a(Landroid/content/Context;F)I

    move-result v6

    iget-object v8, v12, Lcom/anythink/nativead/banner/a/a;->a:Landroid/content/Context;

    invoke-static {v8, v9}, Lcom/anythink/nativead/banner/a/a;->a(Landroid/content/Context;F)I

    move-result v8

    invoke-virtual {v7, v5, v6, v8}, Lcom/anythink/nativead/views/RoundImageView;->setImage(Ljava/lang/String;II)V

    goto :goto_2ee

    .line 1225
    :cond_2eb
    invoke-virtual {v7, v11}, Lcom/anythink/nativead/views/RoundImageView;->setVisibility(I)V

    .line 1229
    :goto_2ee
    iget-object v5, v12, Lcom/anythink/nativead/banner/a/a;->b:Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;

    iget v5, v5, Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;->titleColor:I

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1230
    iget-object v1, v12, Lcom/anythink/nativead/banner/a/a;->b:Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;

    iget v1, v1, Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;->descColor:I

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1232
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 1233
    iget-object v4, v12, Lcom/anythink/nativead/banner/a/a;->a:Landroid/content/Context;

    const/high16 v10, 0x41a00000    # 20.0f

    invoke-static {v4, v10}, Lcom/anythink/nativead/banner/a/a;->a(Landroid/content/Context;F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 1234
    iget-object v4, v12, Lcom/anythink/nativead/banner/a/a;->b:Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;

    iget v4, v4, Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;->ctaBgColor:I

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 1235
    iget-object v4, v12, Lcom/anythink/nativead/banner/a/a;->b:Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;

    iget v4, v4, Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;->ctaColor:I

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1236
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_321

    .line 1157
    :cond_31f
    const/high16 v10, 0x41a00000    # 20.0f

    .line 1240
    :goto_321
    iget-object v0, v12, Lcom/anythink/nativead/banner/a/a;->b:Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;

    iget-object v0, v0, Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;->bannerSize:Lcom/anythink/nativead/banner/api/ATNativeBannerSize;

    sget-object v1, Lcom/anythink/nativead/banner/api/ATNativeBannerSize;->BANNER_SIZE_AUTO:Lcom/anythink/nativead/banner/api/ATNativeBannerSize;

    if-ne v0, v1, :cond_4c7

    .line 1241
    iget-object v0, v12, Lcom/anythink/nativead/banner/a/a;->a:Landroid/content/Context;

    const-string v1, "plugin_auto_banner_icon"

    invoke-static {v0, v1, v3}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/anythink/nativead/views/RoundImageView;

    .line 1242
    invoke-virtual {v5, v2}, Lcom/anythink/nativead/views/RoundImageView;->setNeedRadiu(Z)V

    .line 1243
    iget-object v0, v12, Lcom/anythink/nativead/banner/a/a;->a:Landroid/content/Context;

    const-string v1, "plugin_auto_banner_title"

    invoke-static {v0, v1, v3}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/widget/TextView;

    .line 1244
    iget-object v0, v12, Lcom/anythink/nativead/banner/a/a;->a:Landroid/content/Context;

    const-string v1, "plugin_auto_banner_desc"

    invoke-static {v0, v1, v3}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/widget/TextView;

    .line 1245
    iget-object v0, v12, Lcom/anythink/nativead/banner/a/a;->a:Landroid/content/Context;

    const-string v1, "plugin_auto_banner_cta"

    invoke-static {v0, v1, v3}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/TextView;

    .line 1246
    iget-object v0, v12, Lcom/anythink/nativead/banner/a/a;->a:Landroid/content/Context;

    const-string v1, "plugin_auto_banner_adchoice_icon"

    invoke-static {v0, v1, v3}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/anythink/nativead/views/RoundImageView;

    .line 1247
    iget-object v0, v12, Lcom/anythink/nativead/banner/a/a;->a:Landroid/content/Context;

    const-string v1, "plugin_auto_banner_adfrom_view"

    invoke-static {v0, v1, v3}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1249
    iget-object v1, v12, Lcom/anythink/nativead/banner/a/a;->a:Landroid/content/Context;

    const/high16 v3, 0x43a00000    # 320.0f

    invoke-static {v1, v3}, Lcom/anythink/nativead/banner/a/a;->a(Landroid/content/Context;F)I

    .line 1250
    iget-object v1, v12, Lcom/anythink/nativead/banner/a/a;->a:Landroid/content/Context;

    const/high16 v3, 0x42480000    # 50.0f

    invoke-static {v1, v3}, Lcom/anythink/nativead/banner/a/a;->a(Landroid/content/Context;F)I

    move-result v3

    .line 1251
    iget-object v1, v12, Lcom/anythink/nativead/banner/a/a;->a:Landroid/content/Context;

    invoke-static {v1, v9}, Lcom/anythink/nativead/banner/a/a;->a(Landroid/content/Context;F)I

    move-result v16

    .line 1253
    iget-object v1, v12, Lcom/anythink/nativead/banner/a/a;->a:Landroid/content/Context;

    const/high16 v10, 0x41700000    # 15.0f

    invoke-static {v1, v10}, Lcom/anythink/nativead/banner/a/a;->a(Landroid/content/Context;F)I

    move-result v10

    .line 1254
    iget-object v1, v12, Lcom/anythink/nativead/banner/a/a;->a:Landroid/content/Context;

    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {v1, v2}, Lcom/anythink/nativead/banner/a/a;->a(Landroid/content/Context;F)I

    move-result v18

    .line 1255
    iget-object v1, v12, Lcom/anythink/nativead/banner/a/a;->a:Landroid/content/Context;

    const/high16 v2, 0x41500000    # 13.0f

    invoke-static {v1, v2}, Lcom/anythink/nativead/banner/a/a;->a(Landroid/content/Context;F)I

    move-result v19

    .line 1257
    invoke-virtual {v14}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getIconImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3d0

    .line 1258
    invoke-virtual {v14}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getIconImageUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v12, Lcom/anythink/nativead/banner/a/a;->a:Landroid/content/Context;

    invoke-static {v2, v9}, Lcom/anythink/nativead/banner/a/a;->a(Landroid/content/Context;F)I

    move-result v2

    iget-object v15, v12, Lcom/anythink/nativead/banner/a/a;->a:Landroid/content/Context;

    invoke-static {v15, v9}, Lcom/anythink/nativead/banner/a/a;->a(Landroid/content/Context;F)I

    move-result v15

    invoke-virtual {v5, v1, v2, v15}, Lcom/anythink/nativead/views/RoundImageView;->setImage(Ljava/lang/String;II)V

    goto :goto_3d3

    .line 1260
    :cond_3d0
    invoke-virtual {v5, v11}, Lcom/anythink/nativead/views/RoundImageView;->setVisibility(I)V

    .line 1263
    :goto_3d3
    invoke-virtual {v14}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getCallToActionText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3ef

    iget-object v1, v12, Lcom/anythink/nativead/banner/a/a;->b:Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;

    iget-boolean v1, v1, Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;->isCtaBtnShow:Z

    if-eqz v1, :cond_3ef

    .line 1264
    invoke-virtual {v14}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getCallToActionText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1265
    const/4 v1, 0x0

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3f2

    .line 1267
    :cond_3ef
    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1270
    :goto_3f2
    invoke-virtual {v14}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getAdFrom()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_404

    .line 1271
    invoke-virtual {v14}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getAdFrom()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_407

    .line 1273
    :cond_404
    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1276
    :goto_407
    invoke-virtual {v14}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_421

    .line 1277
    invoke-virtual {v14}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1278
    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1279
    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_424

    .line 1281
    :cond_421
    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1284
    :goto_424
    invoke-virtual {v14}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getDescriptionText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_43e

    .line 1285
    invoke-virtual {v14}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getDescriptionText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1286
    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1287
    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_441

    .line 1289
    :cond_43e
    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1292
    :goto_441
    new-instance v15, Lcom/anythink/nativead/banner/a/a$1;

    move-object v0, v15

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v13, v4

    move/from16 v4, v16

    move-object/from16 v16, v6

    move v6, v10

    move-object v10, v7

    move/from16 v7, v18

    move-object/from16 v17, v8

    move/from16 v8, v19

    move-object/from16 v18, v13

    move v13, v9

    move-object/from16 v9, v17

    move-object/from16 v19, v10

    const/high16 v13, 0x41a00000    # 20.0f

    move-object/from16 v11, v16

    invoke-direct/range {v0 .. v11}, Lcom/anythink/nativead/banner/a/a$1;-><init>(Lcom/anythink/nativead/banner/a/a;Landroid/view/View;IILcom/anythink/nativead/views/RoundImageView;IIILandroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 1314
    iget-object v0, v12, Lcom/anythink/nativead/banner/a/a;->b:Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;

    iget v0, v0, Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;->titleColor:I

    move-object/from16 v1, v17

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1315
    iget-object v0, v12, Lcom/anythink/nativead/banner/a/a;->b:Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;

    iget v0, v0, Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;->descColor:I

    move-object/from16 v1, v19

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1317
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 1318
    iget-object v1, v12, Lcom/anythink/nativead/banner/a/a;->a:Landroid/content/Context;

    invoke-static {v1, v13}, Lcom/anythink/nativead/banner/a/a;->a(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 1319
    iget-object v1, v12, Lcom/anythink/nativead/banner/a/a;->b:Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;

    iget v1, v1, Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;->ctaBgColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 1320
    iget-object v1, v12, Lcom/anythink/nativead/banner/a/a;->b:Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;

    iget v1, v1, Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;->ctaColor:I

    move-object/from16 v2, v16

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1321
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1323
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, v15}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1325
    invoke-virtual {v14}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getAdChoiceIconUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4c0

    .line 1326
    invoke-virtual {v14}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getIconImageUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v1, v12, Lcom/anythink/nativead/banner/a/a;->a:Landroid/content/Context;

    const/high16 v2, 0x42200000    # 40.0f

    invoke-static {v1, v2}, Lcom/anythink/nativead/banner/a/a;->a(Landroid/content/Context;F)I

    move-result v1

    iget-object v3, v12, Lcom/anythink/nativead/banner/a/a;->a:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/anythink/nativead/banner/a/a;->a(Landroid/content/Context;F)I

    move-result v2

    move-object/from16 v3, v18

    invoke-virtual {v3, v0, v1, v2}, Lcom/anythink/nativead/views/RoundImageView;->setImage(Ljava/lang/String;II)V

    goto :goto_4c7

    .line 1328
    :cond_4c0
    move-object/from16 v3, v18

    const/16 v0, 0x8

    invoke-virtual {v3, v0}, Lcom/anythink/nativead/views/RoundImageView;->setVisibility(I)V

    .line 1333
    :cond_4c7
    :goto_4c7
    move-object/from16 v0, p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 32
    return-void
.end method
