.class public Lcom/tds/common/widgets/image/NetworkImageView;
.super Landroid/widget/ImageView;
.source "NetworkImageView.java"


# instance fields
.field private mDefaultImageId:I

.field private mErrorImageId:I

.field private mImageTarget:Lcom/tds/common/widgets/image/ImageTarget;

.field private mLoadBuilder:Lcom/tds/common/widgets/image/LoadBuilder;

.field private mTdsImage:Lcom/tds/common/widgets/image/TdsImage;

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 19
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/tds/common/widgets/image/NetworkImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 24
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/tds/common/widgets/image/NetworkImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 29
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    return-void
.end method

.method static synthetic access$000(Lcom/tds/common/widgets/image/NetworkImageView;Landroid/graphics/Bitmap;)V
    .registers 2
    .param p0, "x0"    # Lcom/tds/common/widgets/image/NetworkImageView;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .line 10
    invoke-direct {p0, p1}, Lcom/tds/common/widgets/image/NetworkImageView;->setImageBitmapInMain(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$100(Lcom/tds/common/widgets/image/NetworkImageView;)I
    .registers 2
    .param p0, "x0"    # Lcom/tds/common/widgets/image/NetworkImageView;

    .line 10
    iget v0, p0, Lcom/tds/common/widgets/image/NetworkImageView;->mErrorImageId:I

    return v0
.end method

.method private getResizedDimension(IIIILandroid/widget/ImageView$ScaleType;)I
    .registers 13
    .param p1, "maxPrimary"    # I
    .param p2, "maxSecondary"    # I
    .param p3, "actualPrimary"    # I
    .param p4, "actualSecondary"    # I
    .param p5, "scaleType"    # Landroid/widget/ImageView$ScaleType;

    .line 162
    if-nez p1, :cond_5

    if-nez p2, :cond_5

    .line 163
    return p3

    .line 164
    :cond_5
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    if-ne p5, v0, :cond_f

    .line 165
    if-nez p1, :cond_d

    move v0, p3

    goto :goto_e

    :cond_d
    move v0, p1

    :goto_e
    return v0

    .line 168
    :cond_f
    if-nez p1, :cond_18

    .line 169
    int-to-double v0, p2

    int-to-double v2, p4

    div-double/2addr v0, v2

    .line 170
    .local v0, "ratio":D
    int-to-double v2, p3

    mul-double/2addr v2, v0

    double-to-int v2, v2

    return v2

    .line 171
    .end local v0    # "ratio":D
    :cond_18
    if-nez p2, :cond_1b

    .line 172
    return p1

    .line 174
    :cond_1b
    int-to-double v0, p4

    int-to-double v2, p3

    div-double/2addr v0, v2

    .line 175
    .restart local v0    # "ratio":D
    move v2, p1

    .line 176
    .local v2, "resized":I
    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    if-ne p5, v3, :cond_2e

    .line 177
    int-to-double v3, p1

    mul-double/2addr v3, v0

    int-to-double v5, p2

    cmpg-double v3, v3, v5

    if-gez v3, :cond_2d

    .line 178
    int-to-double v3, p2

    div-double/2addr v3, v0

    double-to-int v2, v3

    .line 181
    :cond_2d
    return v2

    .line 183
    :cond_2e
    int-to-double v3, p1

    mul-double/2addr v3, v0

    int-to-double v5, p2

    cmpl-double v3, v3, v5

    if-lez v3, :cond_38

    .line 184
    int-to-double v3, p2

    div-double/2addr v3, v0

    double-to-int v2, v3

    .line 187
    :cond_38
    return v2
.end method

.method private initImageTarget()V
    .registers 2

    .line 139
    iget-object v0, p0, Lcom/tds/common/widgets/image/NetworkImageView;->mImageTarget:Lcom/tds/common/widgets/image/ImageTarget;

    if-nez v0, :cond_b

    .line 140
    new-instance v0, Lcom/tds/common/widgets/image/NetworkImageView$1;

    invoke-direct {v0, p0}, Lcom/tds/common/widgets/image/NetworkImageView$1;-><init>(Lcom/tds/common/widgets/image/NetworkImageView;)V

    iput-object v0, p0, Lcom/tds/common/widgets/image/NetworkImageView;->mImageTarget:Lcom/tds/common/widgets/image/ImageTarget;

    .line 159
    :cond_b
    return-void
.end method

.method private resetBitmapSize(Landroid/graphics/Bitmap;)V
    .registers 19
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 84
    move-object/from16 v0, p1

    if-nez v0, :cond_5

    .line 85
    return-void

    .line 87
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/tds/common/widgets/image/NetworkImageView;->getWidth()I

    move-result v1

    .line 88
    .local v1, "width":I
    invoke-virtual/range {p0 .. p0}, Lcom/tds/common/widgets/image/NetworkImageView;->getHeight()I

    move-result v2

    .line 90
    .local v2, "height":I
    const/4 v3, 0x0

    .local v3, "wrapWidth":Z
    const/4 v4, 0x0

    .line 91
    .local v4, "wrapHeight":Z
    invoke-virtual/range {p0 .. p0}, Lcom/tds/common/widgets/image/NetworkImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    const/4 v7, 0x0

    if-eqz v5, :cond_2f

    .line 92
    invoke-virtual/range {p0 .. p0}, Lcom/tds/common/widgets/image/NetworkImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v8, -0x2

    if-ne v5, v8, :cond_21

    const/4 v5, 0x1

    goto :goto_22

    :cond_21
    move v5, v7

    :goto_22
    move v3, v5

    .line 93
    invoke-virtual/range {p0 .. p0}, Lcom/tds/common/widgets/image/NetworkImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v5, v8, :cond_2d

    const/4 v5, 0x1

    goto :goto_2e

    :cond_2d
    move v5, v7

    :goto_2e
    move v4, v5

    .line 95
    :cond_2f
    if-eqz v3, :cond_33

    move v5, v7

    goto :goto_34

    :cond_33
    move v5, v1

    .line 96
    .local v5, "maxWidth":I
    :goto_34
    if-eqz v4, :cond_37

    goto :goto_38

    :cond_37
    move v7, v2

    .line 97
    .local v7, "maxHeight":I
    :goto_38
    if-nez v5, :cond_42

    if-nez v7, :cond_42

    .line 98
    invoke-direct/range {p0 .. p1}, Lcom/tds/common/widgets/image/NetworkImageView;->setImageBitmapInMain(Landroid/graphics/Bitmap;)V

    move-object/from16 v9, p0

    goto :goto_71

    .line 100
    :cond_42
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    .line 101
    .local v14, "actualWidth":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    .line 102
    .local v15, "actualHeight":I
    invoke-virtual/range {p0 .. p0}, Lcom/tds/common/widgets/image/NetworkImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v13

    move-object/from16 v8, p0

    move v9, v5

    move v10, v7

    move v11, v14

    move v12, v15

    invoke-direct/range {v8 .. v13}, Lcom/tds/common/widgets/image/NetworkImageView;->getResizedDimension(IIIILandroid/widget/ImageView$ScaleType;)I

    move-result v13

    .line 103
    .local v13, "desiredWidth":I
    invoke-virtual/range {p0 .. p0}, Lcom/tds/common/widgets/image/NetworkImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v16

    move v9, v7

    move v10, v5

    move v11, v15

    move v12, v14

    move v6, v13

    .end local v13    # "desiredWidth":I
    .local v6, "desiredWidth":I
    move-object/from16 v13, v16

    invoke-direct/range {v8 .. v13}, Lcom/tds/common/widgets/image/NetworkImageView;->getResizedDimension(IIIILandroid/widget/ImageView$ScaleType;)I

    move-result v8

    .line 104
    .local v8, "desiredHeight":I
    const/4 v9, 0x1

    invoke-static {v0, v6, v8, v9}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 105
    .end local p1    # "bitmap":Landroid/graphics/Bitmap;
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    move-object/from16 v9, p0

    invoke-direct {v9, v0}, Lcom/tds/common/widgets/image/NetworkImageView;->setImageBitmapInMain(Landroid/graphics/Bitmap;)V

    .line 107
    .end local v6    # "desiredWidth":I
    .end local v8    # "desiredHeight":I
    .end local v14    # "actualWidth":I
    .end local v15    # "actualHeight":I
    :goto_71
    return-void
.end method

.method private setDefaultImageOrNull()V
    .registers 2

    .line 110
    iget v0, p0, Lcom/tds/common/widgets/image/NetworkImageView;->mDefaultImageId:I

    if-eqz v0, :cond_8

    .line 111
    invoke-virtual {p0, v0}, Lcom/tds/common/widgets/image/NetworkImageView;->setImageResource(I)V

    goto :goto_c

    .line 113
    :cond_8
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tds/common/widgets/image/NetworkImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 115
    :goto_c
    return-void
.end method

.method private setImageBitmapInMain(Landroid/graphics/Bitmap;)V
    .registers 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 194
    if-eqz p1, :cond_a

    .line 195
    new-instance v0, Lcom/tds/common/widgets/image/NetworkImageView$2;

    invoke-direct {v0, p0, p1}, Lcom/tds/common/widgets/image/NetworkImageView$2;-><init>(Lcom/tds/common/widgets/image/NetworkImageView;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0}, Lcom/tds/common/widgets/image/NetworkImageView;->post(Ljava/lang/Runnable;)Z

    .line 202
    :cond_a
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .registers 1

    .line 134
    invoke-super {p0}, Landroid/widget/ImageView;->drawableStateChanged()V

    .line 135
    invoke-virtual {p0}, Lcom/tds/common/widgets/image/NetworkImageView;->invalidate()V

    .line 136
    return-void
.end method

.method loadImageIfNecessary()V
    .registers 9

    .line 57
    invoke-virtual {p0}, Lcom/tds/common/widgets/image/NetworkImageView;->getWidth()I

    move-result v0

    .line 58
    .local v0, "width":I
    invoke-virtual {p0}, Lcom/tds/common/widgets/image/NetworkImageView;->getHeight()I

    move-result v1

    .line 60
    .local v1, "height":I
    const/4 v2, 0x0

    .local v2, "wrapWidth":Z
    const/4 v3, 0x0

    .line 61
    .local v3, "wrapHeight":Z
    invoke-virtual {p0}, Lcom/tds/common/widgets/image/NetworkImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_2b

    .line 62
    invoke-virtual {p0}, Lcom/tds/common/widgets/image/NetworkImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v7, -0x2

    if-ne v4, v7, :cond_1d

    move v4, v5

    goto :goto_1e

    :cond_1d
    move v4, v6

    :goto_1e
    move v2, v4

    .line 63
    invoke-virtual {p0}, Lcom/tds/common/widgets/image/NetworkImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v4, v7, :cond_29

    move v4, v5

    goto :goto_2a

    :cond_29
    move v4, v6

    :goto_2a
    move v3, v4

    .line 65
    :cond_2b
    if-eqz v2, :cond_30

    if-eqz v3, :cond_30

    goto :goto_31

    :cond_30
    move v5, v6

    :goto_31
    move v4, v5

    .line 66
    .local v4, "isFullyWrapContent":Z
    if-nez v0, :cond_39

    if-nez v1, :cond_39

    if-nez v4, :cond_39

    .line 67
    return-void

    .line 70
    :cond_39
    iget-object v5, p0, Lcom/tds/common/widgets/image/NetworkImageView;->mUrl:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_50

    .line 71
    iget-object v5, p0, Lcom/tds/common/widgets/image/NetworkImageView;->mImageTarget:Lcom/tds/common/widgets/image/ImageTarget;

    if-eqz v5, :cond_4c

    iget-object v6, p0, Lcom/tds/common/widgets/image/NetworkImageView;->mTdsImage:Lcom/tds/common/widgets/image/TdsImage;

    if-eqz v6, :cond_4c

    .line 72
    invoke-virtual {v6, v5}, Lcom/tds/common/widgets/image/TdsImage;->cancelRequest(Ljava/lang/Object;)V

    .line 74
    :cond_4c
    invoke-direct {p0}, Lcom/tds/common/widgets/image/NetworkImageView;->setDefaultImageOrNull()V

    .line 75
    return-void

    .line 77
    :cond_50
    invoke-direct {p0}, Lcom/tds/common/widgets/image/NetworkImageView;->initImageTarget()V

    .line 78
    iget-object v5, p0, Lcom/tds/common/widgets/image/NetworkImageView;->mLoadBuilder:Lcom/tds/common/widgets/image/LoadBuilder;

    if-eqz v5, :cond_70

    .line 79
    iget v6, p0, Lcom/tds/common/widgets/image/NetworkImageView;->mErrorImageId:I

    invoke-virtual {v5, v6}, Lcom/tds/common/widgets/image/LoadBuilder;->error(I)Lcom/tds/common/widgets/image/LoadBuilder;

    move-result-object v5

    iget v6, p0, Lcom/tds/common/widgets/image/NetworkImageView;->mDefaultImageId:I

    invoke-virtual {v5, v6}, Lcom/tds/common/widgets/image/LoadBuilder;->placeholder(I)Lcom/tds/common/widgets/image/LoadBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/tds/common/widgets/image/NetworkImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v6

    invoke-virtual {v5, v0, v1, v6}, Lcom/tds/common/widgets/image/LoadBuilder;->scale(IILandroid/widget/ImageView$ScaleType;)Lcom/tds/common/widgets/image/LoadBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/tds/common/widgets/image/NetworkImageView;->mImageTarget:Lcom/tds/common/widgets/image/ImageTarget;

    invoke-virtual {v5, v6}, Lcom/tds/common/widgets/image/LoadBuilder;->into(Lcom/tds/common/widgets/image/ImageTarget;)V

    .line 81
    :cond_70
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    .line 125
    iget-object v0, p0, Lcom/tds/common/widgets/image/NetworkImageView;->mTdsImage:Lcom/tds/common/widgets/image/TdsImage;

    if-eqz v0, :cond_f

    iget-object v1, p0, Lcom/tds/common/widgets/image/NetworkImageView;->mLoadBuilder:Lcom/tds/common/widgets/image/LoadBuilder;

    if-eqz v1, :cond_f

    .line 126
    invoke-virtual {v0, p0}, Lcom/tds/common/widgets/image/TdsImage;->cancelRequest(Ljava/lang/Object;)V

    .line 127
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tds/common/widgets/image/NetworkImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 129
    :cond_f
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 130
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 6
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 119
    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    .line 120
    invoke-virtual {p0}, Lcom/tds/common/widgets/image/NetworkImageView;->loadImageIfNecessary()V

    .line 121
    return-void
.end method

.method public setDefaultImageResId(I)V
    .registers 2
    .param p1, "defaultImage"    # I

    .line 46
    iput p1, p0, Lcom/tds/common/widgets/image/NetworkImageView;->mDefaultImageId:I

    .line 47
    return-void
.end method

.method public setErrorImageResId(I)V
    .registers 2
    .param p1, "errorImage"    # I

    .line 51
    iput p1, p0, Lcom/tds/common/widgets/image/NetworkImageView;->mErrorImageId:I

    .line 52
    return-void
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .registers 3
    .param p1, "url"    # Ljava/lang/String;

    .line 34
    iget-object v0, p0, Lcom/tds/common/widgets/image/NetworkImageView;->mUrl:Ljava/lang/String;

    if-eqz v0, :cond_a

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 35
    :cond_a
    iput-object p1, p0, Lcom/tds/common/widgets/image/NetworkImageView;->mUrl:Ljava/lang/String;

    .line 36
    if-eqz p1, :cond_1e

    .line 37
    invoke-virtual {p0}, Lcom/tds/common/widgets/image/NetworkImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tds/common/widgets/image/TdsImage;->get(Landroid/content/Context;)Lcom/tds/common/widgets/image/TdsImage;

    move-result-object v0

    iput-object v0, p0, Lcom/tds/common/widgets/image/NetworkImageView;->mTdsImage:Lcom/tds/common/widgets/image/TdsImage;

    .line 38
    invoke-virtual {v0, p1}, Lcom/tds/common/widgets/image/TdsImage;->load(Ljava/lang/String;)Lcom/tds/common/widgets/image/LoadBuilder;

    move-result-object v0

    iput-object v0, p0, Lcom/tds/common/widgets/image/NetworkImageView;->mLoadBuilder:Lcom/tds/common/widgets/image/LoadBuilder;

    .line 40
    :cond_1e
    invoke-virtual {p0}, Lcom/tds/common/widgets/image/NetworkImageView;->loadImageIfNecessary()V

    .line 42
    :cond_21
    return-void
.end method
