.class Lcom/sigmob/sdk/base/views/AdLogoView$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/volley/toolbox/k$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/base/views/AdLogoView;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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
.method public a(Lcom/sigmob/volley/toolbox/k$c;Z)V
    .registers 6

    iget-object p2, p0, Lcom/sigmob/sdk/base/views/AdLogoView$1;->a:Lcom/sigmob/sdk/base/views/AdLogoView;

    invoke-virtual {p2}, Lcom/sigmob/sdk/base/views/AdLogoView;->getContext()Landroid/content/Context;

    move-result-object p2

    const/high16 v0, 0x40400000    # 3.0f

    invoke-static {v0, p2}, Lcom/sigmob/sdk/common/f/d;->b(FLandroid/content/Context;)I

    move-result p2

    invoke-virtual {p1}, Lcom/sigmob/volley/toolbox/k$c;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_64

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/AdLogoView$1;->a:Lcom/sigmob/sdk/base/views/AdLogoView;

    invoke-static {v0}, Lcom/sigmob/sdk/base/views/AdLogoView;->a(Lcom/sigmob/sdk/base/views/AdLogoView;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_57

    invoke-virtual {p1}, Lcom/sigmob/volley/toolbox/k$c;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Lcom/sigmob/volley/toolbox/k$c;->b()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3fc00000    # 1.5f

    mul-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_57

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/AdLogoView$1;->a:Lcom/sigmob/sdk/base/views/AdLogoView;

    invoke-static {v0}, Lcom/sigmob/sdk/base/views/AdLogoView;->b(Lcom/sigmob/sdk/base/views/AdLogoView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    neg-int p2, p2

    invoke-virtual {p1}, Lcom/sigmob/volley/toolbox/k$c;->b()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Lcom/sigmob/volley/toolbox/k$c;->b()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    div-int/2addr v1, v2

    mul-int/2addr p2, v1

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    :cond_57
    iget-object p2, p0, Lcom/sigmob/sdk/base/views/AdLogoView$1;->a:Lcom/sigmob/sdk/base/views/AdLogoView;

    invoke-static {p2}, Lcom/sigmob/sdk/base/views/AdLogoView;->b(Lcom/sigmob/sdk/base/views/AdLogoView;)Landroid/widget/ImageView;

    move-result-object p2

    invoke-virtual {p1}, Lcom/sigmob/volley/toolbox/k$c;->b()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_64
    return-void
.end method

.method public onErrorResponse(Lcom/sigmob/volley/t;)V
    .registers 2

    return-void
.end method
