.class public Lcom/bytedance/sdk/openadsdk/core/widget/c;
.super Landroid/graphics/drawable/Drawable;
.source "TTCustomShadowBackground.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/widget/c$a;
    }
.end annotation


# instance fields
.field private a:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field private b:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field private c:[I
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private d:[F
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private e:Landroid/graphics/LinearGradient;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:Landroid/graphics/RectF;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private k:Landroid/graphics/Paint;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(I[I[FILandroid/graphics/LinearGradient;IIII)V
    .registers 10
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .param p2    # [I
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # [F
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .param p5    # Landroid/graphics/LinearGradient;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 54
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c;->a:I

    .line 55
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c;->c:[I

    .line 56
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c;->d:[F

    .line 57
    iput p4, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c;->b:I

    .line 58
    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c;->e:Landroid/graphics/LinearGradient;

    .line 60
    iput p6, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c;->f:I

    .line 61
    iput p7, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c;->g:I

    .line 63
    iput p8, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c;->h:I

    .line 64
    iput p9, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c;->i:I

    .line 66
    return-void
.end method

.method private a()V
    .registers 10

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 103
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c;->k:Landroid/graphics/Paint;

    .line 104
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c;->k:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 105
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c;->k:Landroid/graphics/Paint;

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c;->g:I

    int-to-float v3, v3

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c;->h:I

    int-to-float v4, v4

    iget v5, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c;->i:I

    int-to-float v5, v5

    iget v6, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c;->b:I

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 107
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c;->j:Landroid/graphics/RectF;

    if-eqz v1, :cond_65

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c;->c:[I

    if-eqz v1, :cond_65

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c;->c:[I

    array-length v1, v1

    if-le v1, v0, :cond_65

    .line 108
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c;->d:[F

    if-eqz v1, :cond_5d

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c;->d:[F

    array-length v1, v1

    if-lez v1, :cond_5d

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c;->d:[F

    array-length v1, v1

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c;->c:[I

    array-length v3, v3

    if-ne v1, v3, :cond_5d

    move v4, v0

    .line 109
    :goto_3d
    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c;->k:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c;->e:Landroid/graphics/LinearGradient;

    if-nez v0, :cond_62

    new-instance v0, Landroid/graphics/LinearGradient;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c;->j:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c;->j:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c;->c:[I

    if-eqz v4, :cond_60

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c;->d:[F

    :goto_53
    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v4, v2

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    :goto_59
    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 114
    :goto_5c
    return-void

    .line 108
    :cond_5d
    const/4 v0, 0x0

    move v4, v0

    goto :goto_3d

    .line 109
    :cond_60
    const/4 v6, 0x0

    goto :goto_53

    :cond_62
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c;->e:Landroid/graphics/LinearGradient;

    goto :goto_59

    .line 112
    :cond_65
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c;->k:Landroid/graphics/Paint;

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c;->a:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_5c
.end method

.method public static a(Landroid/view/View;Lcom/bytedance/sdk/openadsdk/core/widget/c$a;)V
    .registers 4

    .prologue
    .line 122
    if-eqz p0, :cond_4

    if-nez p1, :cond_5

    .line 126
    :cond_4
    :goto_4
    return-void

    .line 124
    :cond_5
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 125
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/widget/c$a;->a()Lcom/bytedance/sdk/openadsdk/core/widget/c;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto :goto_4
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 8
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 70
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c;->j:Landroid/graphics/RectF;

    if-nez v0, :cond_33

    .line 71
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/c;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 72
    new-instance v1, Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c;->g:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c;->h:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c;->g:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c;->i:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget v5, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c;->g:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c;->h:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget v5, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c;->g:I

    sub-int/2addr v0, v5

    iget v5, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c;->i:I

    sub-int/2addr v0, v5

    int-to-float v0, v0

    invoke-direct {v1, v2, v3, v4, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c;->j:Landroid/graphics/RectF;

    .line 76
    :cond_33
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c;->k:Landroid/graphics/Paint;

    if-nez v0, :cond_3a

    .line 77
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/c;->a()V

    .line 80
    :cond_3a
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c;->j:Landroid/graphics/RectF;

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c;->f:I

    int-to-float v1, v1

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c;->f:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c;->k:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 81
    return-void
.end method

.method public getOpacity()I
    .registers 2

    .prologue
    .line 99
    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .registers 3

    .prologue
    .line 85
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c;->k:Landroid/graphics/Paint;

    if-eqz v0, :cond_9

    .line 86
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c;->k:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 88
    :cond_9
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3
    .param p1    # Landroid/graphics/ColorFilter;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 92
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c;->k:Landroid/graphics/Paint;

    if-eqz v0, :cond_9

    .line 93
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c;->k:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 95
    :cond_9
    return-void
.end method
