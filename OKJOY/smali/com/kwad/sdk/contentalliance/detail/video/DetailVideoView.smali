.class public Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;
.super Landroid/widget/FrameLayout;
.source ""


# instance fields
.field public a:Lcom/kwad/sdk/core/page/widget/SafeTextureView;

.field private b:Lcom/kwad/sdk/contentalliance/detail/video/a;

.field private c:Landroid/graphics/SurfaceTexture;

.field public d:Landroid/view/Surface;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1}, Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;->a(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;)Landroid/graphics/SurfaceTexture;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;->c:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method static synthetic a(Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture;
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;->c:Landroid/graphics/SurfaceTexture;

    return-object p1
.end method

.method private a()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;->a:Lcom/kwad/sdk/core/page/widget/SafeTextureView;

    new-instance v1, Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView$a;

    invoke-direct {v1, p0}, Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView$a;-><init>(Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;)V

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .registers 5

    const/4 v2, -0x1

    new-instance v0, Lcom/kwad/sdk/core/page/widget/SafeTextureView;

    invoke-direct {v0, p1}, Lcom/kwad/sdk/core/page/widget/SafeTextureView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;->a:Lcom/kwad/sdk/core/page/widget/SafeTextureView;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x11

    invoke-direct {v0, v2, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iget-object v1, p0, Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;->a:Lcom/kwad/sdk/core/page/widget/SafeTextureView;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;->a()V

    return-void
.end method

.method static synthetic b(Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;)Lcom/kwad/sdk/contentalliance/detail/video/a;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;->b:Lcom/kwad/sdk/contentalliance/detail/video/a;

    return-object v0
.end method


# virtual methods
.method public a(II)V
    .registers 8

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;->a:Lcom/kwad/sdk/core/page/widget/SafeTextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_b

    :cond_a
    :goto_a
    return-void

    :cond_b
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-eqz v1, :cond_a

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;->a:Lcom/kwad/sdk/core/page/widget/SafeTextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v2, p2

    int-to-float v3, p1

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float/2addr v3, v4

    div-float/2addr v2, v3

    int-to-float v1, v1

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;->a:Lcom/kwad/sdk/core/page/widget/SafeTextureView;

    invoke-virtual {v1, v0}, Landroid/view/TextureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_a
.end method

.method public setMediaPlayer(Lcom/kwad/sdk/contentalliance/detail/video/a;)V
    .registers 4

    iput-object p1, p0, Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;->b:Lcom/kwad/sdk/contentalliance/detail/video/a;

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;->d:Landroid/view/Surface;

    if-eqz v0, :cond_d

    iget-object v1, p0, Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;->b:Lcom/kwad/sdk/contentalliance/detail/video/a;

    if-eqz v1, :cond_d

    invoke-virtual {v1, v0}, Lcom/kwad/sdk/contentalliance/detail/video/a;->a(Landroid/view/Surface;)V

    :cond_d
    return-void
.end method
