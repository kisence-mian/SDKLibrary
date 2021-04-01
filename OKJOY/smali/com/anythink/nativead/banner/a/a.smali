.class public final Lcom/anythink/nativead/banner/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/nativead/api/ATNativeAdRenderer;


# annotations
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
.field a:Landroid/content/Context;

.field b:Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;

.field c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;)V
    .registers 3

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/anythink/nativead/banner/a/a;->a:Landroid/content/Context;

    .line 36
    iput-object p2, p0, Lcom/anythink/nativead/banner/a/a;->b:Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;

    .line 37
    return-void
.end method

.method private static a(Landroid/content/Context;F)I
    .registers 4

    .prologue
    .line 374
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 375
    mul-float/2addr v0, p1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private a(Landroid/view/View;Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;)V
    .registers 19

    .prologue
    .line 75
    move-object/from16 v0, p1

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_5e

    move-object/from16 v1, p1

    .line 76
    check-cast v1, Landroid/view/ViewGroup;

    .line 78
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v3, 0x5

    if-le v2, v3, :cond_1e

    .line 79
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    :goto_15
    const/4 v3, 0x5

    if-lt v2, v3, :cond_1e

    .line 80
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 79
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 83
    :cond_1e
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getAdMediaView([Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_5e

    invoke-virtual/range {p2 .. p2}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->isNativeExpress()Z

    move-result v2

    if-eqz v2, :cond_5e

    .line 84
    const/4 v2, 0x0

    :goto_30
    const/4 v3, 0x5

    if-ge v2, v3, :cond_3f

    .line 85
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 84
    add-int/lit8 v2, v2, 0x1

    goto :goto_30

    .line 87
    :cond_3f
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 88
    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 89
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getAdMediaView([Ljava/lang/Object;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 90
    const/4 v1, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 371
    :goto_5d
    return-void

    .line 95
    :cond_5e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/anythink/nativead/banner/a/a;->b:Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;

    iget-object v1, v1, Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;->bannerSize:Lcom/anythink/nativead/banner/api/ATNativeBannerSize;

    sget-object v2, Lcom/anythink/nativead/banner/api/ATNativeBannerSize;->BANNER_SIZE_320x50:Lcom/anythink/nativead/banner/api/ATNativeBannerSize;

    if-ne v1, v2, :cond_1b6

    .line 96
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/anythink/nativead/banner/a/a;->a:Landroid/content/Context;

    const-string v2, "plugin_320_banner_icon"

    const-string v3, "id"

    invoke-static {v1, v2, v3}, Lcom/anythink/core/b/g/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/anythink/nativead/views/RoundImageView;

    .line 97
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/anythink/nativead/views/RoundImageView;->setNeedRadiu(Z)V

    .line 98
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/anythink/nativead/banner/a/a;->a:Landroid/content/Context;

    const-string v3, "plugin_320_banner_cta"

    const-string v4, "id"

    invoke-static {v2, v3, v4}, Lcom/anythink/core/b/g/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 99
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/anythink/nativead/banner/a/a;->a:Landroid/content/Context;

    const-string v4, "plugin_320_banner_title"

    const-string v5, "id"

    invoke-static {v3, v4, v5}, Lcom/anythink/core/b/g/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 100
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/anythink/nativead/banner/a/a;->a:Landroid/content/Context;

    const-string v5, "plugin_320_banner_desc"

    const-string v6, "id"

    invoke-static {v4, v5, v6}, Lcom/anythink/core/b/g/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 101
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/anythink/nativead/banner/a/a;->a:Landroid/content/Context;

    const-string v6, "plugin_320_banner_adfrom_view"

    const-string v7, "id"

    invoke-static {v5, v6, v7}, Lcom/anythink/core/b/g/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 102
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/anythink/nativead/banner/a/a;->a:Landroid/content/Context;

    const-string v7, "plugin_320_banner_adchoice_icon"

    const-string v8, "id"

    invoke-static {v6, v7, v8}, Lcom/anythink/core/b/g/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/anythink/nativead/views/RoundImageView;

    .line 105
    invoke-static {}, Lcom/anythink/nativead/a/c;->a()Lcom/anythink/nativead/a/c;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getIconImageUrl()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/anythink/nativead/banner/a/a;->a:Landroid/content/Context;

    const/high16 v10, 0x42200000    # 40.0f

    invoke-static {v9, v10}, Lcom/anythink/nativead/banner/a/a;->a(Landroid/content/Context;F)I

    move-result v9

    new-instance v10, Lcom/anythink/nativead/banner/a/a$1;

    move-object/from16 v0, p0

    invoke-direct {v10, v0, v1}, Lcom/anythink/nativead/banner/a/a$1;-><init>(Lcom/anythink/nativead/banner/a/a;Lcom/anythink/nativead/views/RoundImageView;)V

    invoke-virtual {v7, v8, v9, v10}, Lcom/anythink/nativead/a/c;->a(Ljava/lang/String;ILcom/anythink/nativead/a/c$a;)V

    .line 118
    invoke-virtual/range {p2 .. p2}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getAdFrom()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4df

    .line 119
    invoke-virtual/range {p2 .. p2}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getAdFrom()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    :goto_111
    invoke-virtual/range {p2 .. p2}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getCallToActionText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4e6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/anythink/nativead/banner/a/a;->b:Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;

    iget-boolean v1, v1, Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;->isCtaBtnShow:Z

    if-eqz v1, :cond_4e6

    .line 125
    invoke-virtual/range {p2 .. p2}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getCallToActionText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 131
    :goto_12e
    invoke-virtual/range {p2 .. p2}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4ed

    .line 132
    invoke-virtual/range {p2 .. p2}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 134
    const/4 v1, 0x1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 140
    :goto_147
    invoke-virtual/range {p2 .. p2}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getDescriptionText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4f4

    .line 141
    invoke-virtual/range {p2 .. p2}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getDescriptionText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    const/4 v1, 0x0

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 143
    const/4 v1, 0x1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 149
    :goto_160
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/anythink/nativead/banner/a/a;->b:Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;

    iget v1, v1, Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;->titleColor:I

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 150
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/anythink/nativead/banner/a/a;->b:Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;

    iget v1, v1, Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;->descColor:I

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 152
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 153
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/anythink/nativead/banner/a/a;->a:Landroid/content/Context;

    const/high16 v4, 0x41a00000    # 20.0f

    invoke-static {v3, v4}, Lcom/anythink/nativead/banner/a/a;->a(Landroid/content/Context;F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 154
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/anythink/nativead/banner/a/a;->b:Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;

    iget v3, v3, Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;->ctaBgColor:I

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 155
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/anythink/nativead/banner/a/a;->b:Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;

    iget v3, v3, Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;->ctaColor:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 156
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 158
    invoke-static {}, Lcom/anythink/nativead/a/c;->a()Lcom/anythink/nativead/a/c;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getAdChoiceIconUrl()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/anythink/nativead/banner/a/a;->a:Landroid/content/Context;

    const/high16 v4, 0x41200000    # 10.0f

    invoke-static {v3, v4}, Lcom/anythink/nativead/banner/a/a;->a(Landroid/content/Context;F)I

    move-result v3

    new-instance v4, Lcom/anythink/nativead/banner/a/a$2;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v6}, Lcom/anythink/nativead/banner/a/a$2;-><init>(Lcom/anythink/nativead/banner/a/a;Lcom/anythink/nativead/views/RoundImageView;)V

    invoke-virtual {v1, v2, v3, v4}, Lcom/anythink/nativead/a/c;->a(Ljava/lang/String;ILcom/anythink/nativead/a/c$a;)V

    .line 173
    :cond_1b6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/anythink/nativead/banner/a/a;->b:Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;

    iget-object v1, v1, Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;->bannerSize:Lcom/anythink/nativead/banner/api/ATNativeBannerSize;

    sget-object v2, Lcom/anythink/nativead/banner/api/ATNativeBannerSize;->BANNER_SIZE_640x150:Lcom/anythink/nativead/banner/api/ATNativeBannerSize;

    if-ne v1, v2, :cond_333

    .line 174
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/anythink/nativead/banner/a/a;->a:Landroid/content/Context;

    const-string v2, "plugin_640_image_area"

    const-string v3, "id"

    invoke-static {v1, v2, v3}, Lcom/anythink/core/b/g/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 175
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getAdMediaView([Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    .line 176
    if-eqz v2, :cond_4fb

    .line 177
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 196
    :goto_1f0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/anythink/nativead/banner/a/a;->a:Landroid/content/Context;

    const-string v2, "plugin_640_banner_cta"

    const-string v3, "id"

    invoke-static {v1, v2, v3}, Lcom/anythink/core/b/g/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 197
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/anythink/nativead/banner/a/a;->a:Landroid/content/Context;

    const-string v3, "plugin_640_banner_title"

    const-string v4, "id"

    invoke-static {v2, v3, v4}, Lcom/anythink/core/b/g/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 198
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/anythink/nativead/banner/a/a;->a:Landroid/content/Context;

    const-string v4, "plugin_640_banner_desc"

    const-string v5, "id"

    invoke-static {v3, v4, v5}, Lcom/anythink/core/b/g/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 199
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/anythink/nativead/banner/a/a;->a:Landroid/content/Context;

    const-string v5, "plugin_640_banner_from"

    const-string v6, "id"

    invoke-static {v4, v5, v6}, Lcom/anythink/core/b/g/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 200
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/anythink/nativead/banner/a/a;->a:Landroid/content/Context;

    const-string v6, "plugin_640_banner_adfrom_view"

    const-string v7, "id"

    invoke-static {v5, v6, v7}, Lcom/anythink/core/b/g/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 201
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/anythink/nativead/banner/a/a;->a:Landroid/content/Context;

    const-string v7, "plugin_640_banner_adchoice_icon"

    const-string v8, "id"

    invoke-static {v6, v7, v8}, Lcom/anythink/core/b/g/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/anythink/nativead/views/RoundImageView;

    .line 203
    invoke-virtual/range {p2 .. p2}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getAdFrom()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_52a

    .line 204
    invoke-virtual/range {p2 .. p2}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getAdFrom()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 209
    :goto_279
    invoke-virtual/range {p2 .. p2}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getCallToActionText()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_531

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/anythink/nativead/banner/a/a;->b:Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;

    iget-boolean v5, v5, Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;->isCtaBtnShow:Z

    if-eqz v5, :cond_531

    .line 210
    invoke-virtual/range {p2 .. p2}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getCallToActionText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 216
    :goto_296
    invoke-virtual/range {p2 .. p2}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_538

    .line 217
    invoke-virtual/range {p2 .. p2}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 218
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 219
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setSelected(Z)V

    .line 224
    :goto_2af
    invoke-virtual/range {p2 .. p2}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getDescriptionText()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_53f

    .line 225
    invoke-virtual/range {p2 .. p2}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getDescriptionText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 227
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setSelected(Z)V

    .line 232
    :goto_2c8
    invoke-virtual/range {p2 .. p2}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getAdFrom()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_546

    .line 233
    invoke-virtual/range {p2 .. p2}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getAdFrom()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 234
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 239
    :goto_2dd
    invoke-static {}, Lcom/anythink/nativead/a/c;->a()Lcom/anythink/nativead/a/c;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getAdChoiceIconUrl()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/anythink/nativead/banner/a/a;->a:Landroid/content/Context;

    const/high16 v8, 0x41200000    # 10.0f

    invoke-static {v7, v8}, Lcom/anythink/nativead/banner/a/a;->a(Landroid/content/Context;F)I

    move-result v7

    new-instance v8, Lcom/anythink/nativead/banner/a/a$4;

    move-object/from16 v0, p0

    invoke-direct {v8, v0, v6}, Lcom/anythink/nativead/banner/a/a$4;-><init>(Lcom/anythink/nativead/banner/a/a;Lcom/anythink/nativead/views/RoundImageView;)V

    invoke-virtual {v4, v5, v7, v8}, Lcom/anythink/nativead/a/c;->a(Ljava/lang/String;ILcom/anythink/nativead/a/c$a;)V

    .line 252
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/anythink/nativead/banner/a/a;->b:Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;

    iget v4, v4, Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;->titleColor:I

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 253
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/anythink/nativead/banner/a/a;->b:Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;

    iget v2, v2, Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;->descColor:I

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 255
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 256
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/anythink/nativead/banner/a/a;->a:Landroid/content/Context;

    const/high16 v4, 0x41a00000    # 20.0f

    invoke-static {v3, v4}, Lcom/anythink/nativead/banner/a/a;->a(Landroid/content/Context;F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 257
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/anythink/nativead/banner/a/a;->b:Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;

    iget v3, v3, Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;->ctaBgColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 258
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/anythink/nativead/banner/a/a;->b:Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;

    iget v3, v3, Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;->ctaColor:I

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 259
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 263
    :cond_333
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/anythink/nativead/banner/a/a;->b:Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;

    iget-object v1, v1, Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;->bannerSize:Lcom/anythink/nativead/banner/api/ATNativeBannerSize;

    sget-object v2, Lcom/anythink/nativead/banner/api/ATNativeBannerSize;->BANNER_SIZE_AUTO:Lcom/anythink/nativead/banner/api/ATNativeBannerSize;

    if-ne v1, v2, :cond_4d7

    .line 264
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/anythink/nativead/banner/a/a;->a:Landroid/content/Context;

    const-string v2, "plugin_auto_banner_icon"

    const-string v3, "id"

    invoke-static {v1, v2, v3}, Lcom/anythink/core/b/g/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/anythink/nativead/views/RoundImageView;

    .line 265
    const/4 v1, 0x1

    invoke-virtual {v6, v1}, Lcom/anythink/nativead/views/RoundImageView;->setNeedRadiu(Z)V

    .line 266
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/anythink/nativead/banner/a/a;->a:Landroid/content/Context;

    const-string v2, "plugin_auto_banner_title"

    const-string v3, "id"

    invoke-static {v1, v2, v3}, Lcom/anythink/core/b/g/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 267
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/anythink/nativead/banner/a/a;->a:Landroid/content/Context;

    const-string v2, "plugin_auto_banner_desc"

    const-string v3, "id"

    invoke-static {v1, v2, v3}, Lcom/anythink/core/b/g/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 268
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/anythink/nativead/banner/a/a;->a:Landroid/content/Context;

    const-string v2, "plugin_auto_banner_cta"

    const-string v3, "id"

    invoke-static {v1, v2, v3}, Lcom/anythink/core/b/g/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 269
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/anythink/nativead/banner/a/a;->a:Landroid/content/Context;

    const-string v2, "plugin_auto_banner_adchoice_icon"

    const-string v3, "id"

    invoke-static {v1, v2, v3}, Lcom/anythink/core/b/g/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Lcom/anythink/nativead/views/RoundImageView;

    .line 270
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/anythink/nativead/banner/a/a;->a:Landroid/content/Context;

    const-string v2, "plugin_auto_banner_adfrom_view"

    const-string v3, "id"

    invoke-static {v1, v2, v3}, Lcom/anythink/core/b/g/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 272
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/anythink/nativead/banner/a/a;->a:Landroid/content/Context;

    const/high16 v3, 0x43a00000    # 320.0f

    invoke-static {v2, v3}, Lcom/anythink/nativead/banner/a/a;->a(Landroid/content/Context;F)I

    .line 273
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/anythink/nativead/banner/a/a;->a:Landroid/content/Context;

    const/high16 v3, 0x42480000    # 50.0f

    invoke-static {v2, v3}, Lcom/anythink/nativead/banner/a/a;->a(Landroid/content/Context;F)I

    move-result v4

    .line 274
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/anythink/nativead/banner/a/a;->a:Landroid/content/Context;

    const/high16 v3, 0x42200000    # 40.0f

    invoke-static {v2, v3}, Lcom/anythink/nativead/banner/a/a;->a(Landroid/content/Context;F)I

    move-result v5

    .line 276
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/anythink/nativead/banner/a/a;->a:Landroid/content/Context;

    const/high16 v3, 0x41700000    # 15.0f

    invoke-static {v2, v3}, Lcom/anythink/nativead/banner/a/a;->a(Landroid/content/Context;F)I

    move-result v7

    .line 277
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/anythink/nativead/banner/a/a;->a:Landroid/content/Context;

    const/high16 v3, 0x41400000    # 12.0f

    invoke-static {v2, v3}, Lcom/anythink/nativead/banner/a/a;->a(Landroid/content/Context;F)I

    move-result v8

    .line 278
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/anythink/nativead/banner/a/a;->a:Landroid/content/Context;

    const/high16 v3, 0x41500000    # 13.0f

    invoke-static {v2, v3}, Lcom/anythink/nativead/banner/a/a;->a(Landroid/content/Context;F)I

    move-result v9

    .line 280
    invoke-static {}, Lcom/anythink/nativead/a/c;->a()Lcom/anythink/nativead/a/c;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getIconImageUrl()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/anythink/nativead/banner/a/a;->a:Landroid/content/Context;

    const/high16 v15, 0x42200000    # 40.0f

    invoke-static {v14, v15}, Lcom/anythink/nativead/banner/a/a;->a(Landroid/content/Context;F)I

    move-result v14

    new-instance v15, Lcom/anythink/nativead/banner/a/a$5;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v6}, Lcom/anythink/nativead/banner/a/a$5;-><init>(Lcom/anythink/nativead/banner/a/a;Lcom/anythink/nativead/views/RoundImageView;)V

    invoke-virtual {v2, v3, v14, v15}, Lcom/anythink/nativead/a/c;->a(Ljava/lang/String;ILcom/anythink/nativead/a/c$a;)V

    .line 293
    invoke-virtual/range {p2 .. p2}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getCallToActionText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_54d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/anythink/nativead/banner/a/a;->b:Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;

    iget-boolean v2, v2, Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;->isCtaBtnShow:Z

    if-eqz v2, :cond_54d

    .line 294
    invoke-virtual/range {p2 .. p2}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getCallToActionText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 295
    const/4 v2, 0x0

    invoke-virtual {v12, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 300
    :goto_42e
    invoke-virtual/range {p2 .. p2}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getAdFrom()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_554

    .line 301
    invoke-virtual/range {p2 .. p2}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getAdFrom()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 306
    :goto_43f
    invoke-virtual/range {p2 .. p2}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_55b

    .line 307
    invoke-virtual/range {p2 .. p2}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 308
    const/4 v1, 0x0

    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 309
    const/4 v1, 0x1

    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 314
    :goto_458
    invoke-virtual/range {p2 .. p2}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getDescriptionText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_562

    .line 315
    invoke-virtual/range {p2 .. p2}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getDescriptionText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 316
    const/4 v1, 0x0

    invoke-virtual {v11, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 317
    const/4 v1, 0x1

    invoke-virtual {v11, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 322
    :goto_471
    new-instance v1, Lcom/anythink/nativead/banner/a/a$6;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v1 .. v12}, Lcom/anythink/nativead/banner/a/a$6;-><init>(Lcom/anythink/nativead/banner/a/a;Landroid/view/View;IILcom/anythink/nativead/views/RoundImageView;IIILandroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 344
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/anythink/nativead/banner/a/a;->b:Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;

    iget v2, v2, Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;->titleColor:I

    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 345
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/anythink/nativead/banner/a/a;->b:Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;

    iget v2, v2, Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;->descColor:I

    invoke-virtual {v11, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 347
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 348
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/anythink/nativead/banner/a/a;->a:Landroid/content/Context;

    const/high16 v4, 0x41a00000    # 20.0f

    invoke-static {v3, v4}, Lcom/anythink/nativead/banner/a/a;->a(Landroid/content/Context;F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 349
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/anythink/nativead/banner/a/a;->b:Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;

    iget v3, v3, Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;->ctaBgColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 350
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/anythink/nativead/banner/a/a;->b:Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;

    iget v3, v3, Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;->ctaColor:I

    invoke-virtual {v12, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 351
    invoke-virtual {v12, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 353
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 355
    invoke-static {}, Lcom/anythink/nativead/a/c;->a()Lcom/anythink/nativead/a/c;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getAdChoiceIconUrl()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/anythink/nativead/banner/a/a;->a:Landroid/content/Context;

    const/high16 v4, 0x41200000    # 10.0f

    invoke-static {v3, v4}, Lcom/anythink/nativead/banner/a/a;->a(Landroid/content/Context;F)I

    move-result v3

    new-instance v4, Lcom/anythink/nativead/banner/a/a$7;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v13}, Lcom/anythink/nativead/banner/a/a$7;-><init>(Lcom/anythink/nativead/banner/a/a;Lcom/anythink/nativead/views/RoundImageView;)V

    invoke-virtual {v1, v2, v3, v4}, Lcom/anythink/nativead/a/c;->a(Ljava/lang/String;ILcom/anythink/nativead/a/c$a;)V

    .line 370
    :cond_4d7
    const/4 v1, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_5d

    .line 121
    :cond_4df
    const/16 v1, 0x8

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_111

    .line 128
    :cond_4e6
    const/16 v1, 0x8

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_12e

    .line 136
    :cond_4ed
    const/16 v1, 0x8

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_147

    .line 145
    :cond_4f4
    const/16 v1, 0x8

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_160

    .line 179
    :cond_4fb
    new-instance v2, Lcom/anythink/nativead/views/RoundImageView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/anythink/nativead/banner/a/a;->a:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/anythink/nativead/views/RoundImageView;-><init>(Landroid/content/Context;)V

    .line 180
    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Lcom/anythink/nativead/views/RoundImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 181
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 182
    invoke-static {}, Lcom/anythink/nativead/a/c;->a()Lcom/anythink/nativead/a/c;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getMainImageUrl()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/anythink/nativead/banner/a/a;->a:Landroid/content/Context;

    const/high16 v6, 0x43960000    # 300.0f

    invoke-static {v5, v6}, Lcom/anythink/nativead/banner/a/a;->a(Landroid/content/Context;F)I

    move-result v5

    new-instance v6, Lcom/anythink/nativead/banner/a/a$3;

    move-object/from16 v0, p0

    invoke-direct {v6, v0, v1, v2}, Lcom/anythink/nativead/banner/a/a$3;-><init>(Lcom/anythink/nativead/banner/a/a;Landroid/widget/FrameLayout;Lcom/anythink/nativead/views/RoundImageView;)V

    invoke-virtual {v3, v4, v5, v6}, Lcom/anythink/nativead/a/c;->a(Ljava/lang/String;ILcom/anythink/nativead/a/c$a;)V

    goto/16 :goto_1f0

    .line 206
    :cond_52a
    const/16 v7, 0x8

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_279

    .line 213
    :cond_531
    const/16 v5, 0x8

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_296

    .line 221
    :cond_538
    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2af

    .line 229
    :cond_53f
    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2c8

    .line 236
    :cond_546
    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2dd

    .line 297
    :cond_54d
    const/16 v2, 0x8

    invoke-virtual {v12, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_42e

    .line 303
    :cond_554
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_43f

    .line 311
    :cond_55b
    const/16 v1, 0x8

    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_458

    .line 319
    :cond_562
    const/16 v1, 0x8

    invoke-virtual {v11, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_471
.end method


# virtual methods
.method public final a()Lcom/anythink/nativead/banner/api/ATNativeBannerSize;
    .registers 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/anythink/nativead/banner/a/a;->b:Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;

    iget-object v0, v0, Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;->bannerSize:Lcom/anythink/nativead/banner/api/ATNativeBannerSize;

    return-object v0
.end method

.method public final a(Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;)V
    .registers 2

    .prologue
    .line 40
    iput-object p1, p0, Lcom/anythink/nativead/banner/a/a;->b:Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;

    .line 41
    return-void
.end method

.method public final createView(Landroid/content/Context;I)Landroid/view/View;
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 52
    .line 53
    iget-object v0, p0, Lcom/anythink/nativead/banner/a/a;->b:Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;

    iget-object v0, v0, Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;->bannerSize:Lcom/anythink/nativead/banner/api/ATNativeBannerSize;

    sget-object v2, Lcom/anythink/nativead/banner/api/ATNativeBannerSize;->BANNER_SIZE_320x50:Lcom/anythink/nativead/banner/api/ATNativeBannerSize;

    if-ne v0, v2, :cond_71

    .line 54
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v2, p0, Lcom/anythink/nativead/banner/a/a;->a:Landroid/content/Context;

    const-string v3, "plugin_banner_320x50"

    const-string v4, "layout"

    invoke-static {v2, v3, v4}, Lcom/anythink/core/b/g/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 56
    :goto_1b
    iget-object v2, p0, Lcom/anythink/nativead/banner/a/a;->b:Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;

    iget-object v2, v2, Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;->bannerSize:Lcom/anythink/nativead/banner/api/ATNativeBannerSize;

    sget-object v3, Lcom/anythink/nativead/banner/api/ATNativeBannerSize;->BANNER_SIZE_640x150:Lcom/anythink/nativead/banner/api/ATNativeBannerSize;

    if-ne v2, v3, :cond_35

    .line 57
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v2, p0, Lcom/anythink/nativead/banner/a/a;->a:Landroid/content/Context;

    const-string v3, "plugin_banner_640x150"

    const-string v4, "layout"

    invoke-static {v2, v3, v4}, Lcom/anythink/core/b/g/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 60
    :cond_35
    iget-object v2, p0, Lcom/anythink/nativead/banner/a/a;->b:Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;

    iget-object v2, v2, Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;->bannerSize:Lcom/anythink/nativead/banner/api/ATNativeBannerSize;

    sget-object v3, Lcom/anythink/nativead/banner/api/ATNativeBannerSize;->BANNER_SIZE_AUTO:Lcom/anythink/nativead/banner/api/ATNativeBannerSize;

    if-ne v2, v3, :cond_4f

    .line 61
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v2, p0, Lcom/anythink/nativead/banner/a/a;->a:Landroid/content/Context;

    const-string v3, "plugin_banner_auto"

    const-string v4, "layout"

    invoke-static {v2, v3, v4}, Lcom/anythink/core/b/g/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 64
    :cond_4f
    if-nez v0, :cond_69

    .line 65
    iget-object v0, p0, Lcom/anythink/nativead/banner/a/a;->b:Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;

    sget-object v2, Lcom/anythink/nativead/banner/api/ATNativeBannerSize;->BANNER_SIZE_AUTO:Lcom/anythink/nativead/banner/api/ATNativeBannerSize;

    iput-object v2, v0, Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;->bannerSize:Lcom/anythink/nativead/banner/api/ATNativeBannerSize;

    .line 66
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v2, p0, Lcom/anythink/nativead/banner/a/a;->a:Landroid/content/Context;

    const-string v3, "plugin_banner_auto"

    const-string v4, "layout"

    invoke-static {v2, v3, v4}, Lcom/anythink/core/b/g/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 68
    :cond_69
    iput p2, p0, Lcom/anythink/nativead/banner/a/a;->c:I

    .line 69
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 70
    return-object v0

    :cond_71
    move-object v0, v1

    goto :goto_1b
.end method

.method public final synthetic renderAdView(Landroid/view/View;Lcom/anythink/nativead/unitgroup/a;)V
    .registers 19

    .prologue
    .line 29
    check-cast p2, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;

    .line 1075
    move-object/from16 v0, p1

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_60

    move-object/from16 v1, p1

    .line 1076
    check-cast v1, Landroid/view/ViewGroup;

    .line 1078
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v3, 0x5

    if-le v2, v3, :cond_20

    .line 1079
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    :goto_17
    const/4 v3, 0x5

    if-lt v2, v3, :cond_20

    .line 1080
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 1079
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 1083
    :cond_20
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getAdMediaView([Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_60

    invoke-virtual/range {p2 .. p2}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->isNativeExpress()Z

    move-result v2

    if-eqz v2, :cond_60

    .line 1084
    const/4 v2, 0x0

    :goto_32
    const/4 v3, 0x5

    if-ge v2, v3, :cond_41

    .line 1085
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1084
    add-int/lit8 v2, v2, 0x1

    goto :goto_32

    .line 1087
    :cond_41
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1088
    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1089
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getAdMediaView([Ljava/lang/Object;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1370
    :cond_59
    :goto_59
    const/4 v1, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 29
    return-void

    .line 1095
    :cond_60
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/anythink/nativead/banner/a/a;->b:Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;

    iget-object v1, v1, Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;->bannerSize:Lcom/anythink/nativead/banner/api/ATNativeBannerSize;

    sget-object v2, Lcom/anythink/nativead/banner/api/ATNativeBannerSize;->BANNER_SIZE_320x50:Lcom/anythink/nativead/banner/api/ATNativeBannerSize;

    if-ne v1, v2, :cond_1b8

    .line 1096
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/anythink/nativead/banner/a/a;->a:Landroid/content/Context;

    const-string v2, "plugin_320_banner_icon"

    const-string v3, "id"

    invoke-static {v1, v2, v3}, Lcom/anythink/core/b/g/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/anythink/nativead/views/RoundImageView;

    .line 1097
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/anythink/nativead/views/RoundImageView;->setNeedRadiu(Z)V

    .line 1098
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/anythink/nativead/banner/a/a;->a:Landroid/content/Context;

    const-string v3, "plugin_320_banner_cta"

    const-string v4, "id"

    invoke-static {v2, v3, v4}, Lcom/anythink/core/b/g/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1099
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/anythink/nativead/banner/a/a;->a:Landroid/content/Context;

    const-string v4, "plugin_320_banner_title"

    const-string v5, "id"

    invoke-static {v3, v4, v5}, Lcom/anythink/core/b/g/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 1100
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/anythink/nativead/banner/a/a;->a:Landroid/content/Context;

    const-string v5, "plugin_320_banner_desc"

    const-string v6, "id"

    invoke-static {v4, v5, v6}, Lcom/anythink/core/b/g/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 1101
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/anythink/nativead/banner/a/a;->a:Landroid/content/Context;

    const-string v6, "plugin_320_banner_adfrom_view"

    const-string v7, "id"

    invoke-static {v5, v6, v7}, Lcom/anythink/core/b/g/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 1102
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/anythink/nativead/banner/a/a;->a:Landroid/content/Context;

    const-string v7, "plugin_320_banner_adchoice_icon"

    const-string v8, "id"

    invoke-static {v6, v7, v8}, Lcom/anythink/core/b/g/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/anythink/nativead/views/RoundImageView;

    .line 1105
    invoke-static {}, Lcom/anythink/nativead/a/c;->a()Lcom/anythink/nativead/a/c;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getIconImageUrl()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/anythink/nativead/banner/a/a;->a:Landroid/content/Context;

    const/high16 v10, 0x42200000    # 40.0f

    invoke-static {v9, v10}, Lcom/anythink/nativead/banner/a/a;->a(Landroid/content/Context;F)I

    move-result v9

    new-instance v10, Lcom/anythink/nativead/banner/a/a$1;

    move-object/from16 v0, p0

    invoke-direct {v10, v0, v1}, Lcom/anythink/nativead/banner/a/a$1;-><init>(Lcom/anythink/nativead/banner/a/a;Lcom/anythink/nativead/views/RoundImageView;)V

    invoke-virtual {v7, v8, v9, v10}, Lcom/anythink/nativead/a/c;->a(Ljava/lang/String;ILcom/anythink/nativead/a/c$a;)V

    .line 1118
    invoke-virtual/range {p2 .. p2}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getAdFrom()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4db

    .line 1119
    invoke-virtual/range {p2 .. p2}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getAdFrom()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1124
    :goto_113
    invoke-virtual/range {p2 .. p2}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getCallToActionText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4e2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/anythink/nativead/banner/a/a;->b:Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;

    iget-boolean v1, v1, Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;->isCtaBtnShow:Z

    if-eqz v1, :cond_4e2

    .line 1125
    invoke-virtual/range {p2 .. p2}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getCallToActionText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1126
    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1131
    :goto_130
    invoke-virtual/range {p2 .. p2}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4e9

    .line 1132
    invoke-virtual/range {p2 .. p2}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1133
    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1134
    const/4 v1, 0x1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1140
    :goto_149
    invoke-virtual/range {p2 .. p2}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getDescriptionText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4f0

    .line 1141
    invoke-virtual/range {p2 .. p2}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getDescriptionText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1142
    const/4 v1, 0x0

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1143
    const/4 v1, 0x1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1149
    :goto_162
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/anythink/nativead/banner/a/a;->b:Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;

    iget v1, v1, Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;->titleColor:I

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1150
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/anythink/nativead/banner/a/a;->b:Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;

    iget v1, v1, Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;->descColor:I

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1152
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 1153
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/anythink/nativead/banner/a/a;->a:Landroid/content/Context;

    const/high16 v4, 0x41a00000    # 20.0f

    invoke-static {v3, v4}, Lcom/anythink/nativead/banner/a/a;->a(Landroid/content/Context;F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 1154
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/anythink/nativead/banner/a/a;->b:Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;

    iget v3, v3, Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;->ctaBgColor:I

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 1155
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/anythink/nativead/banner/a/a;->b:Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;

    iget v3, v3, Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;->ctaColor:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1156
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1158
    invoke-static {}, Lcom/anythink/nativead/a/c;->a()Lcom/anythink/nativead/a/c;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getAdChoiceIconUrl()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/anythink/nativead/banner/a/a;->a:Landroid/content/Context;

    const/high16 v4, 0x41200000    # 10.0f

    invoke-static {v3, v4}, Lcom/anythink/nativead/banner/a/a;->a(Landroid/content/Context;F)I

    move-result v3

    new-instance v4, Lcom/anythink/nativead/banner/a/a$2;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v6}, Lcom/anythink/nativead/banner/a/a$2;-><init>(Lcom/anythink/nativead/banner/a/a;Lcom/anythink/nativead/views/RoundImageView;)V

    invoke-virtual {v1, v2, v3, v4}, Lcom/anythink/nativead/a/c;->a(Ljava/lang/String;ILcom/anythink/nativead/a/c$a;)V

    .line 1173
    :cond_1b8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/anythink/nativead/banner/a/a;->b:Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;

    iget-object v1, v1, Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;->bannerSize:Lcom/anythink/nativead/banner/api/ATNativeBannerSize;

    sget-object v2, Lcom/anythink/nativead/banner/api/ATNativeBannerSize;->BANNER_SIZE_640x150:Lcom/anythink/nativead/banner/api/ATNativeBannerSize;

    if-ne v1, v2, :cond_335

    .line 1174
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/anythink/nativead/banner/a/a;->a:Landroid/content/Context;

    const-string v2, "plugin_640_image_area"

    const-string v3, "id"

    invoke-static {v1, v2, v3}, Lcom/anythink/core/b/g/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 1175
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getAdMediaView([Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    .line 1176
    if-eqz v2, :cond_4f7

    .line 1177
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1196
    :goto_1f2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/anythink/nativead/banner/a/a;->a:Landroid/content/Context;

    const-string v2, "plugin_640_banner_cta"

    const-string v3, "id"

    invoke-static {v1, v2, v3}, Lcom/anythink/core/b/g/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1197
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/anythink/nativead/banner/a/a;->a:Landroid/content/Context;

    const-string v3, "plugin_640_banner_title"

    const-string v4, "id"

    invoke-static {v2, v3, v4}, Lcom/anythink/core/b/g/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1198
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/anythink/nativead/banner/a/a;->a:Landroid/content/Context;

    const-string v4, "plugin_640_banner_desc"

    const-string v5, "id"

    invoke-static {v3, v4, v5}, Lcom/anythink/core/b/g/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 1199
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/anythink/nativead/banner/a/a;->a:Landroid/content/Context;

    const-string v5, "plugin_640_banner_from"

    const-string v6, "id"

    invoke-static {v4, v5, v6}, Lcom/anythink/core/b/g/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 1200
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/anythink/nativead/banner/a/a;->a:Landroid/content/Context;

    const-string v6, "plugin_640_banner_adfrom_view"

    const-string v7, "id"

    invoke-static {v5, v6, v7}, Lcom/anythink/core/b/g/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 1201
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/anythink/nativead/banner/a/a;->a:Landroid/content/Context;

    const-string v7, "plugin_640_banner_adchoice_icon"

    const-string v8, "id"

    invoke-static {v6, v7, v8}, Lcom/anythink/core/b/g/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/anythink/nativead/views/RoundImageView;

    .line 1203
    invoke-virtual/range {p2 .. p2}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getAdFrom()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_526

    .line 1204
    invoke-virtual/range {p2 .. p2}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getAdFrom()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1209
    :goto_27b
    invoke-virtual/range {p2 .. p2}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getCallToActionText()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_52d

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/anythink/nativead/banner/a/a;->b:Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;

    iget-boolean v5, v5, Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;->isCtaBtnShow:Z

    if-eqz v5, :cond_52d

    .line 1210
    invoke-virtual/range {p2 .. p2}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getCallToActionText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1211
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1216
    :goto_298
    invoke-virtual/range {p2 .. p2}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_534

    .line 1217
    invoke-virtual/range {p2 .. p2}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1218
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1219
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1224
    :goto_2b1
    invoke-virtual/range {p2 .. p2}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getDescriptionText()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_53b

    .line 1225
    invoke-virtual/range {p2 .. p2}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getDescriptionText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1226
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1227
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1232
    :goto_2ca
    invoke-virtual/range {p2 .. p2}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getAdFrom()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_542

    .line 1233
    invoke-virtual/range {p2 .. p2}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getAdFrom()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1234
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1239
    :goto_2df
    invoke-static {}, Lcom/anythink/nativead/a/c;->a()Lcom/anythink/nativead/a/c;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getAdChoiceIconUrl()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/anythink/nativead/banner/a/a;->a:Landroid/content/Context;

    const/high16 v8, 0x41200000    # 10.0f

    invoke-static {v7, v8}, Lcom/anythink/nativead/banner/a/a;->a(Landroid/content/Context;F)I

    move-result v7

    new-instance v8, Lcom/anythink/nativead/banner/a/a$4;

    move-object/from16 v0, p0

    invoke-direct {v8, v0, v6}, Lcom/anythink/nativead/banner/a/a$4;-><init>(Lcom/anythink/nativead/banner/a/a;Lcom/anythink/nativead/views/RoundImageView;)V

    invoke-virtual {v4, v5, v7, v8}, Lcom/anythink/nativead/a/c;->a(Ljava/lang/String;ILcom/anythink/nativead/a/c$a;)V

    .line 1252
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/anythink/nativead/banner/a/a;->b:Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;

    iget v4, v4, Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;->titleColor:I

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1253
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/anythink/nativead/banner/a/a;->b:Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;

    iget v2, v2, Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;->descColor:I

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1255
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 1256
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/anythink/nativead/banner/a/a;->a:Landroid/content/Context;

    const/high16 v4, 0x41a00000    # 20.0f

    invoke-static {v3, v4}, Lcom/anythink/nativead/banner/a/a;->a(Landroid/content/Context;F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 1257
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/anythink/nativead/banner/a/a;->b:Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;

    iget v3, v3, Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;->ctaBgColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 1258
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/anythink/nativead/banner/a/a;->b:Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;

    iget v3, v3, Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;->ctaColor:I

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1259
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1263
    :cond_335
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/anythink/nativead/banner/a/a;->b:Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;

    iget-object v1, v1, Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;->bannerSize:Lcom/anythink/nativead/banner/api/ATNativeBannerSize;

    sget-object v2, Lcom/anythink/nativead/banner/api/ATNativeBannerSize;->BANNER_SIZE_AUTO:Lcom/anythink/nativead/banner/api/ATNativeBannerSize;

    if-ne v1, v2, :cond_59

    .line 1264
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/anythink/nativead/banner/a/a;->a:Landroid/content/Context;

    const-string v2, "plugin_auto_banner_icon"

    const-string v3, "id"

    invoke-static {v1, v2, v3}, Lcom/anythink/core/b/g/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/anythink/nativead/views/RoundImageView;

    .line 1265
    const/4 v1, 0x1

    invoke-virtual {v6, v1}, Lcom/anythink/nativead/views/RoundImageView;->setNeedRadiu(Z)V

    .line 1266
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/anythink/nativead/banner/a/a;->a:Landroid/content/Context;

    const-string v2, "plugin_auto_banner_title"

    const-string v3, "id"

    invoke-static {v1, v2, v3}, Lcom/anythink/core/b/g/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 1267
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/anythink/nativead/banner/a/a;->a:Landroid/content/Context;

    const-string v2, "plugin_auto_banner_desc"

    const-string v3, "id"

    invoke-static {v1, v2, v3}, Lcom/anythink/core/b/g/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 1268
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/anythink/nativead/banner/a/a;->a:Landroid/content/Context;

    const-string v2, "plugin_auto_banner_cta"

    const-string v3, "id"

    invoke-static {v1, v2, v3}, Lcom/anythink/core/b/g/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 1269
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/anythink/nativead/banner/a/a;->a:Landroid/content/Context;

    const-string v2, "plugin_auto_banner_adchoice_icon"

    const-string v3, "id"

    invoke-static {v1, v2, v3}, Lcom/anythink/core/b/g/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Lcom/anythink/nativead/views/RoundImageView;

    .line 1270
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/anythink/nativead/banner/a/a;->a:Landroid/content/Context;

    const-string v2, "plugin_auto_banner_adfrom_view"

    const-string v3, "id"

    invoke-static {v1, v2, v3}, Lcom/anythink/core/b/g/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1272
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/anythink/nativead/banner/a/a;->a:Landroid/content/Context;

    const/high16 v3, 0x43a00000    # 320.0f

    invoke-static {v2, v3}, Lcom/anythink/nativead/banner/a/a;->a(Landroid/content/Context;F)I

    .line 1273
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/anythink/nativead/banner/a/a;->a:Landroid/content/Context;

    const/high16 v3, 0x42480000    # 50.0f

    invoke-static {v2, v3}, Lcom/anythink/nativead/banner/a/a;->a(Landroid/content/Context;F)I

    move-result v4

    .line 1274
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/anythink/nativead/banner/a/a;->a:Landroid/content/Context;

    const/high16 v3, 0x42200000    # 40.0f

    invoke-static {v2, v3}, Lcom/anythink/nativead/banner/a/a;->a(Landroid/content/Context;F)I

    move-result v5

    .line 1276
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/anythink/nativead/banner/a/a;->a:Landroid/content/Context;

    const/high16 v3, 0x41700000    # 15.0f

    invoke-static {v2, v3}, Lcom/anythink/nativead/banner/a/a;->a(Landroid/content/Context;F)I

    move-result v7

    .line 1277
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/anythink/nativead/banner/a/a;->a:Landroid/content/Context;

    const/high16 v3, 0x41400000    # 12.0f

    invoke-static {v2, v3}, Lcom/anythink/nativead/banner/a/a;->a(Landroid/content/Context;F)I

    move-result v8

    .line 1278
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/anythink/nativead/banner/a/a;->a:Landroid/content/Context;

    const/high16 v3, 0x41500000    # 13.0f

    invoke-static {v2, v3}, Lcom/anythink/nativead/banner/a/a;->a(Landroid/content/Context;F)I

    move-result v9

    .line 1280
    invoke-static {}, Lcom/anythink/nativead/a/c;->a()Lcom/anythink/nativead/a/c;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getIconImageUrl()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/anythink/nativead/banner/a/a;->a:Landroid/content/Context;

    const/high16 v15, 0x42200000    # 40.0f

    invoke-static {v14, v15}, Lcom/anythink/nativead/banner/a/a;->a(Landroid/content/Context;F)I

    move-result v14

    new-instance v15, Lcom/anythink/nativead/banner/a/a$5;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v6}, Lcom/anythink/nativead/banner/a/a$5;-><init>(Lcom/anythink/nativead/banner/a/a;Lcom/anythink/nativead/views/RoundImageView;)V

    invoke-virtual {v2, v3, v14, v15}, Lcom/anythink/nativead/a/c;->a(Ljava/lang/String;ILcom/anythink/nativead/a/c$a;)V

    .line 1293
    invoke-virtual/range {p2 .. p2}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getCallToActionText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_549

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/anythink/nativead/banner/a/a;->b:Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;

    iget-boolean v2, v2, Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;->isCtaBtnShow:Z

    if-eqz v2, :cond_549

    .line 1294
    invoke-virtual/range {p2 .. p2}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getCallToActionText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1295
    const/4 v2, 0x0

    invoke-virtual {v12, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1300
    :goto_430
    invoke-virtual/range {p2 .. p2}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getAdFrom()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_550

    .line 1301
    invoke-virtual/range {p2 .. p2}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getAdFrom()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1306
    :goto_441
    invoke-virtual/range {p2 .. p2}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_557

    .line 1307
    invoke-virtual/range {p2 .. p2}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1308
    const/4 v1, 0x0

    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1309
    const/4 v1, 0x1

    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1314
    :goto_45a
    invoke-virtual/range {p2 .. p2}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getDescriptionText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_55e

    .line 1315
    invoke-virtual/range {p2 .. p2}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getDescriptionText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1316
    const/4 v1, 0x0

    invoke-virtual {v11, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1317
    const/4 v1, 0x1

    invoke-virtual {v11, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1322
    :goto_473
    new-instance v1, Lcom/anythink/nativead/banner/a/a$6;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v1 .. v12}, Lcom/anythink/nativead/banner/a/a$6;-><init>(Lcom/anythink/nativead/banner/a/a;Landroid/view/View;IILcom/anythink/nativead/views/RoundImageView;IIILandroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 1344
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/anythink/nativead/banner/a/a;->b:Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;

    iget v2, v2, Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;->titleColor:I

    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1345
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/anythink/nativead/banner/a/a;->b:Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;

    iget v2, v2, Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;->descColor:I

    invoke-virtual {v11, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1347
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 1348
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/anythink/nativead/banner/a/a;->a:Landroid/content/Context;

    const/high16 v4, 0x41a00000    # 20.0f

    invoke-static {v3, v4}, Lcom/anythink/nativead/banner/a/a;->a(Landroid/content/Context;F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 1349
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/anythink/nativead/banner/a/a;->b:Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;

    iget v3, v3, Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;->ctaBgColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 1350
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/anythink/nativead/banner/a/a;->b:Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;

    iget v3, v3, Lcom/anythink/nativead/banner/api/ATNativeBannerConfig;->ctaColor:I

    invoke-virtual {v12, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1351
    invoke-virtual {v12, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1353
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1355
    invoke-static {}, Lcom/anythink/nativead/a/c;->a()Lcom/anythink/nativead/a/c;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getAdChoiceIconUrl()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/anythink/nativead/banner/a/a;->a:Landroid/content/Context;

    const/high16 v4, 0x41200000    # 10.0f

    invoke-static {v3, v4}, Lcom/anythink/nativead/banner/a/a;->a(Landroid/content/Context;F)I

    move-result v3

    new-instance v4, Lcom/anythink/nativead/banner/a/a$7;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v13}, Lcom/anythink/nativead/banner/a/a$7;-><init>(Lcom/anythink/nativead/banner/a/a;Lcom/anythink/nativead/views/RoundImageView;)V

    invoke-virtual {v1, v2, v3, v4}, Lcom/anythink/nativead/a/c;->a(Ljava/lang/String;ILcom/anythink/nativead/a/c$a;)V

    goto/16 :goto_59

    .line 1121
    :cond_4db
    const/16 v1, 0x8

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_113

    .line 1128
    :cond_4e2
    const/16 v1, 0x8

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_130

    .line 1136
    :cond_4e9
    const/16 v1, 0x8

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_149

    .line 1145
    :cond_4f0
    const/16 v1, 0x8

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_162

    .line 1179
    :cond_4f7
    new-instance v2, Lcom/anythink/nativead/views/RoundImageView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/anythink/nativead/banner/a/a;->a:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/anythink/nativead/views/RoundImageView;-><init>(Landroid/content/Context;)V

    .line 1180
    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Lcom/anythink/nativead/views/RoundImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1181
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1182
    invoke-static {}, Lcom/anythink/nativead/a/c;->a()Lcom/anythink/nativead/a/c;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getMainImageUrl()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/anythink/nativead/banner/a/a;->a:Landroid/content/Context;

    const/high16 v6, 0x43960000    # 300.0f

    invoke-static {v5, v6}, Lcom/anythink/nativead/banner/a/a;->a(Landroid/content/Context;F)I

    move-result v5

    new-instance v6, Lcom/anythink/nativead/banner/a/a$3;

    move-object/from16 v0, p0

    invoke-direct {v6, v0, v1, v2}, Lcom/anythink/nativead/banner/a/a$3;-><init>(Lcom/anythink/nativead/banner/a/a;Landroid/widget/FrameLayout;Lcom/anythink/nativead/views/RoundImageView;)V

    invoke-virtual {v3, v4, v5, v6}, Lcom/anythink/nativead/a/c;->a(Ljava/lang/String;ILcom/anythink/nativead/a/c$a;)V

    goto/16 :goto_1f2

    .line 1206
    :cond_526
    const/16 v7, 0x8

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_27b

    .line 1213
    :cond_52d
    const/16 v5, 0x8

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_298

    .line 1221
    :cond_534
    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2b1

    .line 1229
    :cond_53b
    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2ca

    .line 1236
    :cond_542
    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2df

    .line 1297
    :cond_549
    const/16 v2, 0x8

    invoke-virtual {v12, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_430

    .line 1303
    :cond_550
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_441

    .line 1311
    :cond_557
    const/16 v1, 0x8

    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_45a

    .line 1319
    :cond_55e
    const/16 v1, 0x8

    invoke-virtual {v11, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_473
.end method
