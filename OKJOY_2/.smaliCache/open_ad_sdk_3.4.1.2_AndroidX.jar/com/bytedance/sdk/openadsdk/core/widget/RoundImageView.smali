.class public Lcom/bytedance/sdk/openadsdk/core/widget/RoundImageView;
.super Landroid/widget/ImageView;
.source "RoundImageView.java"


# instance fields
.field private a:I

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 30
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 25
    const/4 p1, 0x0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/RoundImageView;->a:I

    .line 26
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/RoundImageView;->b:I

    .line 27
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/RoundImageView;->c:I

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;III)V
    .registers 5

    .line 34
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 25
    const/4 p1, 0x0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/RoundImageView;->a:I

    .line 26
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/RoundImageView;->b:I

    .line 27
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/RoundImageView;->c:I

    .line 35
    iput p2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/RoundImageView;->c:I

    .line 36
    iput p3, p0, Lcom/bytedance/sdk/openadsdk/core/widget/RoundImageView;->a:I

    .line 37
    iput p4, p0, Lcom/bytedance/sdk/openadsdk/core/widget/RoundImageView;->b:I

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 41
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    const/4 p1, 0x0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/RoundImageView;->a:I

    .line 26
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/RoundImageView;->b:I

    .line 27
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/RoundImageView;->c:I

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    const/4 p1, 0x0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/RoundImageView;->a:I

    .line 26
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/RoundImageView;->b:I

    .line 27
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/RoundImageView;->c:I

    .line 46
    return-void
.end method

.method private a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .registers 10

    .line 106
    mul-int/lit8 p2, p2, 0x2

    .line 109
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 110
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 113
    nop

    .line 114
    const/4 v2, 0x0

    if-le v1, v0, :cond_18

    .line 116
    nop

    .line 117
    nop

    .line 118
    sub-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x2

    .line 120
    invoke-static {p1, v2, v1, v0, v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_25

    .line 122
    :cond_18
    if-ge v1, v0, :cond_24

    .line 123
    nop

    .line 124
    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    .line 125
    nop

    .line 126
    invoke-static {p1, v0, v2, v1, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_25

    .line 122
    :cond_24
    const/4 v0, 0x0

    .line 130
    :goto_25
    if-nez v0, :cond_28

    .line 131
    goto :goto_29

    .line 130
    :cond_28
    move-object p1, v0

    .line 134
    :goto_29
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, p2, :cond_38

    .line 135
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-eq v0, p2, :cond_37

    goto :goto_38

    .line 140
    :cond_37
    goto :goto_3c

    .line 136
    :cond_38
    :goto_38
    invoke-static {p1, p2, p2, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 142
    :goto_3c
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    .line 143
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 142
    invoke-static {p2, v0, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 144
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 146
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 147
    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 148
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-direct {v4, v2, v2, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 150
    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 151
    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 152
    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 153
    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 154
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    .line 155
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    .line 154
    invoke-virtual {v0, v1, v2, v5, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 157
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 158
    invoke-virtual {v0, p1, v4, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 160
    nop

    .line 162
    nop

    .line 164
    nop

    .line 165
    return-object p2
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 7

    .line 50
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/RoundImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 51
    if-nez v0, :cond_7

    .line 52
    return-void

    .line 54
    :cond_7
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/RoundImageView;->getWidth()I

    move-result v1

    if-eqz v1, :cond_78

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/RoundImageView;->getHeight()I

    move-result v1

    if-nez v1, :cond_14

    goto :goto_78

    .line 57
    :cond_14
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/RoundImageView;->measure(II)V

    .line 58
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Landroid/graphics/drawable/NinePatchDrawable;

    if-ne v1, v2, :cond_21

    .line 59
    return-void

    .line 61
    :cond_21
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 62
    if-nez v0, :cond_2a

    .line 63
    return-void

    .line 65
    :cond_2a
    nop

    .line 67
    const/4 v1, 0x0

    :try_start_2c
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_33
    .catchall {:try_start_2c .. :try_end_33} :catchall_34

    .line 69
    goto :goto_36

    .line 68
    :catchall_34
    move-exception v0

    move-object v0, v1

    .line 71
    :goto_36
    if-nez v0, :cond_3c

    .line 72
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 73
    return-void

    .line 76
    :cond_3c
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/RoundImageView;->a:I

    if-nez v2, :cond_46

    .line 77
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/RoundImageView;->getWidth()I

    move-result v2

    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/RoundImageView;->a:I

    .line 80
    :cond_46
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/RoundImageView;->b:I

    if-nez v2, :cond_50

    .line 81
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/RoundImageView;->getHeight()I

    move-result v2

    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/RoundImageView;->b:I

    .line 83
    :cond_50
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/RoundImageView;->a:I

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/core/widget/RoundImageView;->b:I

    if-ge v2, v3, :cond_57

    goto :goto_58

    :cond_57
    move v2, v3

    :goto_58
    div-int/lit8 v2, v2, 0x2

    .line 86
    nop

    .line 88
    :try_start_5b
    invoke-direct {p0, v0, v2}, Lcom/bytedance/sdk/openadsdk/core/widget/RoundImageView;->a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_5f
    .catchall {:try_start_5b .. :try_end_5f} :catchall_60

    .line 90
    goto :goto_62

    .line 89
    :catchall_60
    move-exception v0

    move-object v0, v1

    .line 91
    :goto_62
    if-nez v0, :cond_68

    .line 92
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 93
    return-void

    .line 95
    :cond_68
    iget v3, p0, Lcom/bytedance/sdk/openadsdk/core/widget/RoundImageView;->a:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v3, v2

    int-to-float v3, v3

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/core/widget/RoundImageView;->b:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v4, v2

    int-to-float v2, v4

    invoke-virtual {p1, v0, v3, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 97
    return-void

    .line 55
    :cond_78
    :goto_78
    return-void
.end method
