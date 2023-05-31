.class Lcom/sigmob/sdk/base/views/AdLogoView$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/volley/toolbox/t;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/base/views/AdLogoView;->a(Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/base/views/AdLogoView;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/base/views/AdLogoView;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/base/views/AdLogoView$1;->a:Lcom/sigmob/sdk/base/views/AdLogoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/sigmob/volley/ae;)V
    .registers 2

    return-void
.end method

.method public a(Lcom/sigmob/volley/toolbox/s;Z)V
    .registers 8

    const/4 v4, 0x0

    const/high16 v0, 0x40400000    # 3.0f

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/AdLogoView$1;->a:Lcom/sigmob/sdk/base/views/AdLogoView;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/views/AdLogoView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sigmob/sdk/base/common/utils/b;->b(FLandroid/content/Context;)I

    move-result v1

    invoke-virtual {p1}, Lcom/sigmob/volley/toolbox/s;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_64

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/AdLogoView$1;->a:Lcom/sigmob/sdk/base/views/AdLogoView;

    invoke-static {v0}, Lcom/sigmob/sdk/base/views/AdLogoView;->a(Lcom/sigmob/sdk/base/views/AdLogoView;)I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_57

    invoke-virtual {p1}, Lcom/sigmob/volley/toolbox/s;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Lcom/sigmob/volley/toolbox/s;->b()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3fc00000    # 1.5f

    mul-float/2addr v2, v3

    cmpl-float v0, v0, v2

    if-lez v0, :cond_57

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/AdLogoView$1;->a:Lcom/sigmob/sdk/base/views/AdLogoView;

    invoke-static {v0}, Lcom/sigmob/sdk/base/views/AdLogoView;->b(Lcom/sigmob/sdk/base/views/AdLogoView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    neg-int v1, v1

    invoke-virtual {p1}, Lcom/sigmob/volley/toolbox/s;->b()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Lcom/sigmob/volley/toolbox/s;->b()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    div-int/2addr v2, v3

    mul-int/2addr v1, v2

    invoke-virtual {v0, v1, v4, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    :cond_57
    iget-object v0, p0, Lcom/sigmob/sdk/base/views/AdLogoView$1;->a:Lcom/sigmob/sdk/base/views/AdLogoView;

    invoke-static {v0}, Lcom/sigmob/sdk/base/views/AdLogoView;->b(Lcom/sigmob/sdk/base/views/AdLogoView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sigmob/volley/toolbox/s;->b()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_64
    return-void
.end method
