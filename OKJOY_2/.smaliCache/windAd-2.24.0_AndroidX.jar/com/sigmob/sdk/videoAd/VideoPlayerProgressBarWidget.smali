.class public Lcom/sigmob/sdk/videoAd/VideoPlayerProgressBarWidget;
.super Landroid/widget/ImageView;


# instance fields
.field private a:Lcom/sigmob/sdk/base/views/e;

.field private final b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/sigmob/sdk/base/views/e;

    invoke-direct {v0, p1}, Lcom/sigmob/sdk/base/views/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sigmob/sdk/videoAd/VideoPlayerProgressBarWidget;->a:Lcom/sigmob/sdk/base/views/e;

    invoke-virtual {p0, v0}, Lcom/sigmob/sdk/videoAd/VideoPlayerProgressBarWidget;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v0, p1}, Lcom/sigmob/sdk/common/f/d;->b(FLandroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/sigmob/sdk/videoAd/VideoPlayerProgressBarWidget;->b:I

    return-void
.end method


# virtual methods
.method getImageViewDrawable()Lcom/sigmob/sdk/base/views/e;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/VideoPlayerProgressBarWidget;->a:Lcom/sigmob/sdk/base/views/e;

    return-object v0
.end method

.method public setAnchorId(I)V
    .registers 5

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/sigmob/sdk/videoAd/VideoPlayerProgressBarWidget;->b:I

    const/4 v2, -0x1

    invoke-direct {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {p0, v0}, Lcom/sigmob/sdk/videoAd/VideoPlayerProgressBarWidget;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method setImageViewDrawable(Lcom/sigmob/sdk/base/views/e;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Lcom/sigmob/sdk/videoAd/VideoPlayerProgressBarWidget;->a:Lcom/sigmob/sdk/base/views/e;

    return-void
.end method
