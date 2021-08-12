.class Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView$1;
.super Ljava/lang/Object;

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

    iput-object p1, p0, Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView$1;->a:Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .registers 4

    iget-object p2, p0, Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView$1;->a:Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;

    invoke-static {p2}, Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;->a(Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;)Landroid/graphics/SurfaceTexture;

    move-result-object p2

    if-ne p2, p1, :cond_9

    return-void

    :cond_9
    iget-object p2, p0, Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView$1;->a:Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;

    invoke-static {p2, p1}, Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;->a(Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture;

    iget-object p2, p0, Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView$1;->a:Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;

    invoke-static {p2}, Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;->b(Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;)V

    iget-object p2, p0, Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView$1;->a:Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;

    new-instance p3, Landroid/view/Surface;

    invoke-direct {p3, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object p3, p2, Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;->b:Landroid/view/Surface;

    iget-object p1, p0, Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView$1;->a:Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;

    invoke-static {p1}, Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;->c(Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;)Lcom/kwad/sdk/contentalliance/detail/video/a;

    move-result-object p1

    if-eqz p1, :cond_31

    iget-object p1, p0, Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView$1;->a:Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;

    invoke-static {p1}, Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;->c(Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;)Lcom/kwad/sdk/contentalliance/detail/video/a;

    move-result-object p1

    iget-object p2, p0, Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView$1;->a:Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;

    iget-object p2, p2, Lcom/kwad/sdk/contentalliance/detail/video/DetailVideoView;->b:Landroid/view/Surface;

    invoke-virtual {p1, p2}, Lcom/kwad/sdk/contentalliance/detail/video/a;->a(Landroid/view/Surface;)V

    :cond_31
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .registers 4

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .registers 2

    return-void
.end method
