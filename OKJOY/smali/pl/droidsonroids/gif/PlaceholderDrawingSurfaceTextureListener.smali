.class Lpl/droidsonroids/gif/PlaceholderDrawingSurfaceTextureListener;
.super Ljava/lang/Object;
.source "PlaceholderDrawingSurfaceTextureListener.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# instance fields
.field private final mDrawer:Lpl/droidsonroids/gif/GifTextureView$PlaceholderDrawListener;


# direct methods
.method constructor <init>(Lpl/droidsonroids/gif/GifTextureView$PlaceholderDrawListener;)V
    .registers 2
    .param p1, "drawer"    # Lpl/droidsonroids/gif/GifTextureView$PlaceholderDrawListener;

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lpl/droidsonroids/gif/PlaceholderDrawingSurfaceTextureListener;->mDrawer:Lpl/droidsonroids/gif/GifTextureView$PlaceholderDrawListener;

    .line 13
    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .registers 7
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 17
    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 18
    .local v1, "surface":Landroid/view/Surface;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v0

    .line 19
    .local v0, "canvas":Landroid/graphics/Canvas;
    iget-object v2, p0, Lpl/droidsonroids/gif/PlaceholderDrawingSurfaceTextureListener;->mDrawer:Lpl/droidsonroids/gif/GifTextureView$PlaceholderDrawListener;

    invoke-interface {v2, v0}, Lpl/droidsonroids/gif/GifTextureView$PlaceholderDrawListener;->onDrawPlaceholder(Landroid/graphics/Canvas;)V

    .line 20
    invoke-virtual {v1, v0}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 21
    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    .line 22
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .registers 3
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 31
    const/4 v0, 0x0

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .registers 4
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 27
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .registers 2
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 37
    return-void
.end method
