.class Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView$a;->a:Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .registers 6

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView$a;->a:Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;

    invoke-static {v0}, Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;->a(Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;)Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-nez v0, :cond_3a

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView$a;->a:Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;

    iget-object v0, v0, Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;->d:Landroid/view/Surface;

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView$a;->a:Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;->d:Landroid/view/Surface;

    :cond_16
    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView$a;->a:Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;

    invoke-static {v0, p1}, Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;->a(Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture;

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView$a;->a:Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;

    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v1, v0, Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;->d:Landroid/view/Surface;

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView$a;->a:Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;

    invoke-static {v0}, Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;->b(Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;)Lcom/kwad/sdk/contentalliance/detail/video/a;

    move-result-object v0

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView$a;->a:Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;

    invoke-static {v0}, Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;->b(Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;)Lcom/kwad/sdk/contentalliance/detail/video/a;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView$a;->a:Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;

    iget-object v1, v1, Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;->d:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/contentalliance/detail/video/a;->a(Landroid/view/Surface;)V

    :cond_39
    :goto_39
    return-void

    :cond_3a
    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView$a;->a:Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;

    iget-object v0, v0, Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;->a:Lcom/kwad/sdk/core/page/widget/SafeTextureView;

    invoke-virtual {v0, p1}, Landroid/view/TextureView;->setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V

    goto :goto_39
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView$a;->a:Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;

    iget-object v0, v0, Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;->d:Landroid/view/Surface;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView$a;->a:Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;

    iput-object v1, v0, Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;->d:Landroid/view/Surface;

    :cond_e
    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView$a;->a:Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;

    invoke-static {v0}, Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;->a(Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;)Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView$a;->a:Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;

    invoke-static {v0}, Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;->a(Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;)Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView$a;->a:Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;

    invoke-static {v0, v1}, Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;->a(Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture;

    :cond_24
    const/4 v0, 0x0

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .registers 4

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .registers 2

    return-void
.end method
