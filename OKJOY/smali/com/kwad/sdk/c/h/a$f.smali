.class Lcom/kwad/sdk/c/h/a$f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/c/h/a;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/c/h/a;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/c/h/a;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/c/h/a$f;->a:Lcom/kwad/sdk/c/h/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .registers 6

    iget-object v0, p0, Lcom/kwad/sdk/c/h/a$f;->a:Lcom/kwad/sdk/c/h/a;

    invoke-static {v0}, Lcom/kwad/sdk/c/h/a;->b(Lcom/kwad/sdk/c/h/a;)Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/kwad/sdk/c/h/a$f;->a:Lcom/kwad/sdk/c/h/a;

    invoke-static {v0, p1}, Lcom/kwad/sdk/c/h/a;->a(Lcom/kwad/sdk/c/h/a;Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture;

    iget-object v0, p0, Lcom/kwad/sdk/c/h/a$f;->a:Lcom/kwad/sdk/c/h/a;

    invoke-static {v0}, Lcom/kwad/sdk/c/h/a;->c(Lcom/kwad/sdk/c/h/a;)V

    :goto_12
    return-void

    :cond_13
    iget-object v0, p0, Lcom/kwad/sdk/c/h/a$f;->a:Lcom/kwad/sdk/c/h/a;

    invoke-static {v0}, Lcom/kwad/sdk/c/h/a;->d(Lcom/kwad/sdk/c/h/a;)Landroid/view/TextureView;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/c/h/a$f;->a:Lcom/kwad/sdk/c/h/a;

    invoke-static {v1}, Lcom/kwad/sdk/c/h/a;->b(Lcom/kwad/sdk/c/h/a;)Landroid/graphics/SurfaceTexture;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V

    goto :goto_12
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .registers 3

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
