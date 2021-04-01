.class Lcom/kwad/sdk/b/c/d$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/b/c/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/b/c/d;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/b/c/d;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/b/c/d$a;->a:Lcom/kwad/sdk/b/c/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    const/4 v5, -0x1

    iget-object v0, p0, Lcom/kwad/sdk/b/c/d$a;->a:Lcom/kwad/sdk/b/c/d;

    invoke-virtual {v0}, Lcom/kwad/sdk/mvp/Presenter;->e()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/kwad/sdk/b/c/d$a;->a:Lcom/kwad/sdk/b/c/d;

    invoke-static {v1}, Lcom/kwad/sdk/b/c/d;->a(Lcom/kwad/sdk/b/c/d;)Lcom/kwad/sdk/core/response/model/AdTemplate;

    move-result-object v1

    invoke-static {v1}, Lcom/kwad/sdk/b/c/d;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/d;

    move-result-object v1

    iget-object v2, p0, Lcom/kwad/sdk/b/c/d$a;->a:Lcom/kwad/sdk/b/c/d;

    invoke-static {v2}, Lcom/kwad/sdk/b/c/d;->b(Lcom/kwad/sdk/b/c/d;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {v1}, Lcom/kwad/sdk/core/response/model/d;->a()I

    move-result v3

    invoke-virtual {v1}, Lcom/kwad/sdk/core/response/model/d;->b()I

    move-result v4

    if-eqz v3, :cond_2b

    if-nez v4, :cond_94

    :cond_2b
    iput v5, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v5, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lcom/kwad/sdk/b/c/d$a;->a:Lcom/kwad/sdk/b/c/d;

    invoke-static {v0}, Lcom/kwad/sdk/b/c/d;->b(Lcom/kwad/sdk/b/c/d;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/kwad/sdk/b/c/d$a;->a:Lcom/kwad/sdk/b/c/d;

    invoke-static {v0}, Lcom/kwad/sdk/b/c/d;->b(Lcom/kwad/sdk/b/c/d;)Landroid/widget/ImageView;

    move-result-object v0

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :goto_43
    iget-object v0, p0, Lcom/kwad/sdk/b/c/d$a;->a:Lcom/kwad/sdk/b/c/d;

    invoke-static {v0}, Lcom/kwad/sdk/b/c/d;->b(Lcom/kwad/sdk/b/c/d;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1}, Lcom/kwad/sdk/core/response/model/d;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "First Frame isCover="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/kwad/sdk/core/response/model/d;->e()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " isAd="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/kwad/sdk/core/response/model/d;->d()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "DetailFirstFramePresenter"

    invoke-static {v2, v0}, Lcom/kwad/sdk/c/c/b;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kwad/sdk/b/c/d$a;->a:Lcom/kwad/sdk/b/c/d;

    invoke-static {v0}, Lcom/kwad/sdk/b/c/d;->b(Lcom/kwad/sdk/b/c/d;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v1}, Lcom/kwad/sdk/core/response/model/d;->c()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/kwad/sdk/b/c/d$a$a;

    invoke-direct {v2, p0}, Lcom/kwad/sdk/b/c/d$a$a;-><init>(Lcom/kwad/sdk/b/c/d$a;)V

    invoke-static {v0, v1, v2}, Lcom/kwad/sdk/core/imageloader/KSImageLoader;->loadImage(Landroid/widget/ImageView;Ljava/lang/String;Lcom/kwad/sdk/core/imageloader/core/listener/ImageLoadingListener;)V

    :goto_93
    return-void

    :cond_94
    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v4, v4

    int-to-float v3, v3

    const/high16 v5, 0x3f800000    # 1.0f

    mul-float/2addr v3, v5

    div-float v3, v4, v3

    int-to-float v0, v0

    mul-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lcom/kwad/sdk/b/c/d$a;->a:Lcom/kwad/sdk/b/c/d;

    invoke-static {v0}, Lcom/kwad/sdk/b/c/d;->b(Lcom/kwad/sdk/b/c/d;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/kwad/sdk/b/c/d$a;->a:Lcom/kwad/sdk/b/c/d;

    invoke-static {v0}, Lcom/kwad/sdk/b/c/d;->b(Lcom/kwad/sdk/b/c/d;)Landroid/widget/ImageView;

    move-result-object v0

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_43

    :cond_b7
    const-string v0, "DetailFirstFramePresenter"

    const-string v1, "Video first frame url is null!"

    invoke-static {v0, v1}, Lcom/kwad/sdk/c/c/b;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kwad/sdk/b/c/d$a;->a:Lcom/kwad/sdk/b/c/d;

    iget-object v0, v0, Lcom/kwad/sdk/b/c/b;->e:Lcom/kwad/sdk/b/c/c;

    iget-object v1, v0, Lcom/kwad/sdk/b/c/c;->e:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iget v0, v0, Lcom/kwad/sdk/b/c/c;->d:I

    int-to-long v2, v0

    const-string v0, ""

    invoke-static {v1, v2, v3, v0}, Lcom/kwad/sdk/c/f/c;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;JLjava/lang/String;)V

    goto :goto_93
.end method
