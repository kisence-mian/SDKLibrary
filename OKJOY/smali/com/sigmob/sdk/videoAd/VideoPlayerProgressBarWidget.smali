.class public Lcom/sigmob/sdk/videoAd/VideoPlayerProgressBarWidget;
.super Landroid/widget/ImageView;


# instance fields
.field private a:Lcom/sigmob/sdk/base/views/m;

.field private final b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/sigmob/sdk/base/views/m;

    invoke-direct {v0, p1}, Lcom/sigmob/sdk/base/views/m;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sigmob/sdk/videoAd/VideoPlayerProgressBarWidget;->a:Lcom/sigmob/sdk/base/views/m;

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/VideoPlayerProgressBarWidget;->a:Lcom/sigmob/sdk/base/views/m;

    invoke-virtual {p0, v0}, Lcom/sigmob/sdk/videoAd/VideoPlayerProgressBarWidget;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v0, p1}, Lcom/sigmob/sdk/base/common/utils/b;->b(FLandroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/sigmob/sdk/videoAd/VideoPlayerProgressBarWidget;->b:I

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/VideoPlayerProgressBarWidget;->a:Lcom/sigmob/sdk/base/views/m;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/views/m;->a()V

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/VideoPlayerProgressBarWidget;->a:Lcom/sigmob/sdk/base/views/m;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/views/m;->a(I)V

    return-void
.end method

.method public a(I)V
    .registers 3

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/VideoPlayerProgressBarWidget;->a:Lcom/sigmob/sdk/base/views/m;

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/base/views/m;->a(I)V

    return-void
.end method

.method public a(II)V
    .registers 4

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/VideoPlayerProgressBarWidget;->a:Lcom/sigmob/sdk/base/views/m;

    invoke-virtual {v0, p1, p2}, Lcom/sigmob/sdk/base/views/m;->a(II)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sigmob/sdk/videoAd/VideoPlayerProgressBarWidget;->setVisibility(I)V

    return-void
.end method

.method a(Lcom/sigmob/sdk/base/views/m;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Lcom/sigmob/sdk/videoAd/VideoPlayerProgressBarWidget;->a:Lcom/sigmob/sdk/base/views/m;

    return-void
.end method

.method getImageViewDrawable()Lcom/sigmob/sdk/base/views/m;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/VideoPlayerProgressBarWidget;->a:Lcom/sigmob/sdk/base/views/m;

    return-object v0
.end method

.method public setAnchorId(I)V
    .registers 5

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    iget v2, p0, Lcom/sigmob/sdk/videoAd/VideoPlayerProgressBarWidget;->b:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {p0, v0}, Lcom/sigmob/sdk/videoAd/VideoPlayerProgressBarWidget;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
