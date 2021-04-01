.class public Lcom/bytedance/sdk/openadsdk/core/widget/RoundImageView;
.super Landroid/widget/ImageView;
.source "RoundImageView.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "AppCompatCustomView"
    }
.end annotation


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 29
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 25
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/RoundImageView;->a:I

    .line 26
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/RoundImageView;->b:I

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/RoundImageView;->a:I

    .line 26
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/RoundImageView;->b:I

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/RoundImageView;->a:I

    .line 26
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/RoundImageView;->b:I

    .line 38
    return-void
.end method

.method private a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .registers 11

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 97
    mul-int/lit8 v1, p2, 0x2

    .line 100
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 101
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 104
    const/4 v0, 0x0

    .line 105
    if-le v3, v2, :cond_80

    .line 109
    sub-int v0, v3, v2

    div-int/lit8 v0, v0, 0x2

    .line 111
    invoke-static {p1, v6, v0, v2, v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 121
    :cond_17
    :goto_17
    if-nez v0, :cond_8b

    .line 125
    :goto_19
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-ne v0, v1, :cond_25

    .line 126
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-eq v0, v1, :cond_29

    .line 127
    :cond_25
    invoke-static {p1, v1, v1, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 133
    :cond_29
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 134
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 133
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 135
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 137
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 138
    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 139
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-direct {v3, v6, v6, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 141
    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 142
    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 143
    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setDither(Z)V

    .line 144
    invoke-virtual {v1, v6, v6, v6, v6}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 145
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    .line 146
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    .line 145
    invoke-virtual {v1, v4, v5, v6, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 148
    new-instance v4, Landroid/graphics/PorterDuffXfermode;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 149
    invoke-virtual {v1, p1, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 156
    return-object v0

    .line 113
    :cond_80
    if-ge v3, v2, :cond_17

    .line 115
    sub-int v0, v2, v3

    div-int/lit8 v0, v0, 0x2

    .line 117
    invoke-static {p1, v0, v6, v3, v3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_17

    :cond_8b
    move-object p1, v0

    goto :goto_19
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 7

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 42
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/RoundImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 43
    if-nez v0, :cond_9

    .line 88
    :cond_8
    :goto_8
    return-void

    .line 46
    :cond_9
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/RoundImageView;->getWidth()I

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/RoundImageView;->getHeight()I

    move-result v2

    if-eqz v2, :cond_8

    .line 49
    invoke-virtual {p0, v3, v3}, Lcom/bytedance/sdk/openadsdk/core/widget/RoundImageView;->measure(II)V

    .line 50
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/graphics/drawable/NinePatchDrawable;

    if-eq v2, v3, :cond_8

    .line 53
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 54
    if-eqz v0, :cond_8

    .line 59
    :try_start_28
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_2e} :catch_36

    move-result-object v0

    move-object v2, v0

    .line 63
    :goto_30
    if-nez v2, :cond_39

    .line 64
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    goto :goto_8

    .line 60
    :catch_36
    move-exception v0

    move-object v2, v1

    goto :goto_30

    .line 68
    :cond_39
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/RoundImageView;->a:I

    if-nez v0, :cond_43

    .line 69
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/RoundImageView;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/RoundImageView;->a:I

    .line 72
    :cond_43
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/RoundImageView;->b:I

    if-nez v0, :cond_4d

    .line 73
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/RoundImageView;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/RoundImageView;->b:I

    .line 75
    :cond_4d
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/RoundImageView;->a:I

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/core/widget/RoundImageView;->b:I

    if-ge v0, v3, :cond_61

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/RoundImageView;->a:I

    :goto_55
    div-int/lit8 v3, v0, 0x2

    .line 79
    :try_start_57
    invoke-direct {p0, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/widget/RoundImageView;->a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    :try_end_5a
    .catch Ljava/lang/Throwable; {:try_start_57 .. :try_end_5a} :catch_64

    move-result-object v0

    .line 82
    :goto_5b
    if-nez v0, :cond_67

    .line 83
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    goto :goto_8

    .line 75
    :cond_61
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/RoundImageView;->b:I

    goto :goto_55

    .line 80
    :catch_64
    move-exception v0

    move-object v0, v1

    goto :goto_5b

    .line 86
    :cond_67
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/RoundImageView;->a:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/core/widget/RoundImageView;->b:I

    div-int/lit8 v4, v4, 0x2

    sub-int v3, v4, v3

    int-to-float v3, v3

    invoke-virtual {p1, v0, v2, v3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_8
.end method
