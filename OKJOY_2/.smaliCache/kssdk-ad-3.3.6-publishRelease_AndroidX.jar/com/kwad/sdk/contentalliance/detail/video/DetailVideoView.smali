.class public Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;
.super Landroid/widget/FrameLayout;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView$a;
    }
.end annotation


# instance fields
.field public a:Lcom/kwad/sdk/core/page/widget/b;

.field public b:Landroid/view/Surface;

.field private c:Lcom/kwad/sdk/contentalliance/detail/video/a;

.field private d:Landroid/graphics/SurfaceTexture;

.field private e:Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView$a;

.field private f:Z

.field private g:Z

.field private h:Landroid/graphics/Matrix;

.field private i:Lcom/kwad/sdk/core/response/model/PhotoInfo$VideoInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;->f:Z

    iput-boolean v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;->g:Z

    invoke-direct {p0, p1}, Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;->f:Z

    iput-boolean p2, p0, Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;->g:Z

    invoke-direct {p0, p1}, Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;->a(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;)Landroid/graphics/SurfaceTexture;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;->d:Landroid/graphics/SurfaceTexture;

    return-object p0
.end method

.method static synthetic a(Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture;
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;->d:Landroid/graphics/SurfaceTexture;

    return-object p1
.end method

.method private a()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;->a:Lcom/kwad/sdk/core/page/widget/b;

    new-instance v1, Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView$1;

    invoke-direct {v1, p0}, Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView$1;-><init>(Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;)V

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/page/widget/b;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .registers 4

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;->h:Landroid/graphics/Matrix;

    new-instance v0, Lcom/kwad/sdk/core/page/widget/b;

    invoke-direct {v0, p1}, Lcom/kwad/sdk/core/page/widget/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;->a:Lcom/kwad/sdk/core/page/widget/b;

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x1

    const/16 v1, 0x11

    invoke-direct {p1, v0, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;->a:Lcom/kwad/sdk/core/page/widget/b;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;->a()V

    return-void
.end method

.method private b()V
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;->b:Landroid/view/Surface;

    if-eqz v0, :cond_f

    :try_start_4
    invoke-virtual {v0}, Landroid/view/Surface;->release()V
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_8

    goto :goto_c

    :catchall_8
    move-exception v0

    invoke-static {v0}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/Throwable;)V

    :goto_c
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;->b:Landroid/view/Surface;

    :cond_f
    return-void
.end method

.method static synthetic b(Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;)V
    .registers 1

    invoke-direct {p0}, Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;->b()V

    return-void
.end method

.method static synthetic c(Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;)Lcom/kwad/sdk/contentalliance/detail/video/a;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;->c:Lcom/kwad/sdk/contentalliance/detail/video/a;

    return-object p0
.end method


# virtual methods
.method public a(II)V
    .registers 7

    iget-boolean v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;->g:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;->a:Lcom/kwad/sdk/core/page/widget/b;

    invoke-static {v0, p1, p2}, Lcom/kwad/sdk/utils/ah;->b(Landroid/view/View;II)V

    return-void

    :cond_a
    iget-boolean v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;->f:Z

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;->a:Lcom/kwad/sdk/core/page/widget/b;

    invoke-static {v0, p1, p2}, Lcom/kwad/sdk/utils/ah;->a(Landroid/view/View;II)V

    return-void

    :cond_14
    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;->a:Lcom/kwad/sdk/core/page/widget/b;

    invoke-virtual {v0}, Lcom/kwad/sdk/core/page/widget/b;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1f

    return-void

    :cond_1f
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-eqz v1, :cond_74

    if-nez v0, :cond_2c

    goto :goto_74

    :cond_2c
    iget-object v2, p0, Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;->i:Lcom/kwad/sdk/core/response/model/PhotoInfo$VideoInfo;

    if-eqz v2, :cond_50

    iget-object v3, p0, Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;->h:Landroid/graphics/Matrix;

    invoke-static {v3, v1, v0, v2}, Lcom/kwad/sdk/utils/ah;->a(Landroid/graphics/Matrix;IILcom/kwad/sdk/core/response/model/PhotoInfo$VideoInfo;)Z

    move-result v0

    if-eqz v0, :cond_50

    iget-object p1, p0, Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;->a:Lcom/kwad/sdk/core/page/widget/b;

    invoke-virtual {p1}, Lcom/kwad/sdk/core/page/widget/b;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    const/4 p2, -0x1

    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object p2, p0, Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;->a:Lcom/kwad/sdk/core/page/widget/b;

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;->h:Landroid/graphics/Matrix;

    invoke-virtual {p2, v0}, Lcom/kwad/sdk/core/page/widget/b;->setTransform(Landroid/graphics/Matrix;)V

    iget-object p2, p0, Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;->a:Lcom/kwad/sdk/core/page/widget/b;

    invoke-virtual {p2, p1}, Lcom/kwad/sdk/core/page/widget/b;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_74

    :cond_50
    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;->a:Lcom/kwad/sdk/core/page/widget/b;

    invoke-virtual {v0}, Lcom/kwad/sdk/core/page/widget/b;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float p2, p2

    int-to-float p1, p1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr p1, v2

    div-float/2addr p2, p1

    int-to-float p1, v1

    mul-float/2addr p2, p1

    float-to-int p1, p2

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object p1, p0, Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;->h:Landroid/graphics/Matrix;

    invoke-virtual {p1}, Landroid/graphics/Matrix;->reset()V

    iget-object p1, p0, Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;->a:Lcom/kwad/sdk/core/page/widget/b;

    iget-object p2, p0, Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;->h:Landroid/graphics/Matrix;

    invoke-virtual {p1, p2}, Lcom/kwad/sdk/core/page/widget/b;->setTransform(Landroid/graphics/Matrix;)V

    iget-object p1, p0, Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;->a:Lcom/kwad/sdk/core/page/widget/b;

    invoke-virtual {p1, v0}, Lcom/kwad/sdk/core/page/widget/b;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_74
    :goto_74
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;->a:Lcom/kwad/sdk/core/page/widget/b;

    if-ne p1, v0, :cond_c

    iget-object p1, p0, Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;->e:Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView$a;

    if-eqz p1, :cond_13

    invoke-interface {p1}, Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView$a;->a()V

    goto :goto_13

    :cond_c
    iget-object p1, p0, Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;->e:Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView$a;

    if-eqz p1, :cond_13

    invoke-interface {p1}, Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView$a;->b()V

    :cond_13
    :goto_13
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    invoke-direct {p0}, Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;->b()V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;->d:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;->d:Landroid/graphics/SurfaceTexture;

    :cond_10
    return-void
.end method

.method public setAd(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;->f:Z

    return-void
.end method

.method public setClickListener(Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView$a;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;->e:Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView$a;

    invoke-virtual {p0, p0}, Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setMediaPlayer(Lcom/kwad/sdk/contentalliance/detail/video/a;)V
    .registers 3

    iput-object p1, p0, Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;->c:Lcom/kwad/sdk/contentalliance/detail/video/a;

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;->b:Landroid/view/Surface;

    if-eqz v0, :cond_b

    if-eqz p1, :cond_b

    invoke-virtual {p1, v0}, Lcom/kwad/sdk/contentalliance/detail/video/a;->a(Landroid/view/Surface;)V

    :cond_b
    return-void
.end method

.method public setVideoInfo(Lcom/kwad/sdk/core/response/model/PhotoInfo$VideoInfo;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;->i:Lcom/kwad/sdk/core/response/model/PhotoInfo$VideoInfo;

    return-void
.end method
