.class Lcom/kwad/sdk/draw/b/a$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/draw/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/draw/b/a;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/draw/b/a;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/draw/b/a$2;->a:Lcom/kwad/sdk/draw/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    iget-object v0, p0, Lcom/kwad/sdk/draw/b/a$2;->a:Lcom/kwad/sdk/draw/b/a;

    invoke-virtual {v0}, Lcom/kwad/sdk/draw/b/a;->i()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/kwad/sdk/draw/b/a$2;->a:Lcom/kwad/sdk/draw/b/a;

    invoke-static {v1}, Lcom/kwad/sdk/draw/b/a;->a(Lcom/kwad/sdk/draw/b/a;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget-object v2, p0, Lcom/kwad/sdk/draw/b/a$2;->a:Lcom/kwad/sdk/draw/b/a;

    invoke-static {v2}, Lcom/kwad/sdk/draw/b/a;->b(Lcom/kwad/sdk/draw/b/a;)Lcom/kwad/sdk/core/response/model/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kwad/sdk/core/response/model/c;->c()I

    move-result v2

    iget-object v3, p0, Lcom/kwad/sdk/draw/b/a$2;->a:Lcom/kwad/sdk/draw/b/a;

    invoke-static {v3}, Lcom/kwad/sdk/draw/b/a;->b(Lcom/kwad/sdk/draw/b/a;)Lcom/kwad/sdk/core/response/model/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kwad/sdk/core/response/model/c;->b()I

    move-result v3

    if-eqz v2, :cond_51

    if-eqz v3, :cond_51

    if-le v3, v2, :cond_2f

    goto :goto_51

    :cond_2f
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v3, v3

    int-to-float v2, v2

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float/2addr v2, v4

    div-float/2addr v3, v2

    int-to-float v0, v0

    mul-float/2addr v3, v0

    float-to-int v0, v3

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lcom/kwad/sdk/draw/b/a$2;->a:Lcom/kwad/sdk/draw/b/a;

    invoke-static {v0}, Lcom/kwad/sdk/draw/b/a;->a(Lcom/kwad/sdk/draw/b/a;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/kwad/sdk/draw/b/a$2;->a:Lcom/kwad/sdk/draw/b/a;

    invoke-static {v0}, Lcom/kwad/sdk/draw/b/a;->a(Lcom/kwad/sdk/draw/b/a;)Landroid/widget/ImageView;

    move-result-object v0

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_5f

    :cond_51
    :goto_51
    const/4 v0, -0x1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lcom/kwad/sdk/draw/b/a$2;->a:Lcom/kwad/sdk/draw/b/a;

    invoke-static {v0}, Lcom/kwad/sdk/draw/b/a;->a(Lcom/kwad/sdk/draw/b/a;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_5f
    iget-object v0, p0, Lcom/kwad/sdk/draw/b/a$2;->a:Lcom/kwad/sdk/draw/b/a;

    invoke-static {v0}, Lcom/kwad/sdk/draw/b/a;->a(Lcom/kwad/sdk/draw/b/a;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/kwad/sdk/draw/b/a$2;->a:Lcom/kwad/sdk/draw/b/a;

    invoke-static {v0}, Lcom/kwad/sdk/draw/b/a;->a(Lcom/kwad/sdk/draw/b/a;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/draw/b/a$2;->a:Lcom/kwad/sdk/draw/b/a;

    invoke-static {v1}, Lcom/kwad/sdk/draw/b/a;->b(Lcom/kwad/sdk/draw/b/a;)Lcom/kwad/sdk/core/response/model/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kwad/sdk/core/response/model/c;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/kwad/sdk/draw/b/a$2;->a:Lcom/kwad/sdk/draw/b/a;

    invoke-static {v2}, Lcom/kwad/sdk/draw/b/a;->c(Lcom/kwad/sdk/draw/b/a;)Lcom/kwad/sdk/draw/a/b;

    move-result-object v2

    iget-object v2, v2, Lcom/kwad/sdk/draw/a/b;->c:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {v0, v1, v2}, Lcom/kwad/sdk/core/imageloader/KSImageLoader;->loadImage(Landroid/widget/ImageView;Ljava/lang/String;Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    return-void
.end method
