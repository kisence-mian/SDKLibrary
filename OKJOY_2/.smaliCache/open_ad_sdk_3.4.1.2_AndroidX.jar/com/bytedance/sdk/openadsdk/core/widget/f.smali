.class public Lcom/bytedance/sdk/openadsdk/core/widget/f;
.super Landroid/graphics/drawable/Drawable;
.source "TTCustomShadowBackground.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/widget/f$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:[I

.field private d:[F

.field private e:Landroid/graphics/LinearGradient;

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:Landroid/graphics/RectF;

.field private k:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(I[I[FILandroid/graphics/LinearGradient;IIII)V
    .registers 10

    .line 53
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 54
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/f;->a:I

    .line 55
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/f;->c:[I

    .line 56
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/widget/f;->d:[F

    .line 57
    iput p4, p0, Lcom/bytedance/sdk/openadsdk/core/widget/f;->b:I

    .line 58
    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/core/widget/f;->e:Landroid/graphics/LinearGradient;

    .line 60
    iput p6, p0, Lcom/bytedance/sdk/openadsdk/core/widget/f;->f:I

    .line 61
    iput p7, p0, Lcom/bytedance/sdk/openadsdk/core/widget/f;->g:I

    .line 63
    iput p8, p0, Lcom/bytedance/sdk/openadsdk/core/widget/f;->h:I

    .line 64
    iput p9, p0, Lcom/bytedance/sdk/openadsdk/core/widget/f;->i:I

    .line 66
    return-void
.end method

.method private a()V
    .registers 12

    .line 103
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/f;->k:Landroid/graphics/Paint;

    .line 104
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 105
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/f;->k:Landroid/graphics/Paint;

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/f;->g:I

    int-to-float v2, v2

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/core/widget/f;->h:I

    int-to-float v3, v3

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/core/widget/f;->i:I

    int-to-float v4, v4

    iget v5, p0, Lcom/bytedance/sdk/openadsdk/core/widget/f;->b:I

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 107
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/f;->j:Landroid/graphics/RectF;

    if-eqz v0, :cond_58

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/f;->c:[I

    if-eqz v0, :cond_58

    array-length v2, v0

    if-le v2, v1, :cond_58

    .line 108
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/f;->d:[F

    if-eqz v2, :cond_32

    array-length v3, v2

    if-lez v3, :cond_32

    array-length v2, v2

    array-length v0, v0

    if-ne v2, v0, :cond_32

    goto :goto_33

    :cond_32
    const/4 v1, 0x0

    .line 109
    :goto_33
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/f;->k:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/f;->e:Landroid/graphics/LinearGradient;

    if-nez v2, :cond_54

    new-instance v2, Landroid/graphics/LinearGradient;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/widget/f;->j:Landroid/graphics/RectF;

    iget v4, v3, Landroid/graphics/RectF;->left:F

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/widget/f;->j:Landroid/graphics/RectF;

    iget v6, v3, Landroid/graphics/RectF;->right:F

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/core/widget/f;->c:[I

    if-eqz v1, :cond_4c

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/f;->d:[F

    goto :goto_4d

    :cond_4c
    const/4 v1, 0x0

    :goto_4d
    move-object v9, v1

    sget-object v10, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    :cond_54
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 111
    goto :goto_5f

    .line 112
    :cond_58
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/f;->k:Landroid/graphics/Paint;

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/f;->a:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 114
    :goto_5f
    return-void
.end method

.method public static a(Landroid/view/View;Lcom/bytedance/sdk/openadsdk/core/widget/f$a;)V
    .registers 4

    .line 122
    if-eqz p0, :cond_12

    if-nez p1, :cond_5

    goto :goto_12

    .line 124
    :cond_5
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 125
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/widget/f$a;->a()Lcom/bytedance/sdk/openadsdk/core/widget/f;

    move-result-object p1

    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 126
    return-void

    .line 122
    :cond_12
    :goto_12
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 8

    .line 70
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/f;->j:Landroid/graphics/RectF;

    if-nez v0, :cond_33

    .line 71
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/f;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 72
    new-instance v1, Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/core/widget/f;->g:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/core/widget/f;->h:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/core/widget/f;->g:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/core/widget/f;->i:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget v5, p0, Lcom/bytedance/sdk/openadsdk/core/widget/f;->g:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/bytedance/sdk/openadsdk/core/widget/f;->h:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget v5, p0, Lcom/bytedance/sdk/openadsdk/core/widget/f;->g:I

    sub-int/2addr v0, v5

    iget v5, p0, Lcom/bytedance/sdk/openadsdk/core/widget/f;->i:I

    sub-int/2addr v0, v5

    int-to-float v0, v0

    invoke-direct {v1, v2, v3, v4, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/f;->j:Landroid/graphics/RectF;

    .line 76
    :cond_33
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/f;->k:Landroid/graphics/Paint;

    if-nez v0, :cond_3a

    .line 77
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/f;->a()V

    .line 80
    :cond_3a
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/f;->j:Landroid/graphics/RectF;

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/f;->f:I

    int-to-float v2, v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/widget/f;->k:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 81
    return-void
.end method

.method public getOpacity()I
    .registers 2

    .line 99
    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .registers 3

    .line 85
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/f;->k:Landroid/graphics/Paint;

    if-eqz v0, :cond_7

    .line 86
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 88
    :cond_7
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3

    .line 92
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/f;->k:Landroid/graphics/Paint;

    if-eqz v0, :cond_7

    .line 93
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 95
    :cond_7
    return-void
.end method
