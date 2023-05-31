.class public Lcom/bytedance/sdk/openadsdk/core/video/renderview/SSRenderTextureView;
.super Landroid/view/TextureView;
.source "SSRenderTextureView.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Lcom/bytedance/sdk/openadsdk/core/video/renderview/b;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation build Landroid/support/annotation/RequiresApi;
    api = 0xe
.end annotation


# instance fields
.field private a:Lcom/bytedance/sdk/openadsdk/core/video/renderview/a;

.field private b:Lcom/bytedance/sdk/openadsdk/core/video/renderview/b$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 24
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/video/renderview/SSRenderTextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    return-void
.end method


# virtual methods
.method public a(II)V
    .registers 4

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/renderview/SSRenderTextureView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 40
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 41
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 42
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/video/renderview/SSRenderTextureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 43
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/video/renderview/a;)V
    .registers 2

    .prologue
    .line 33
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/renderview/SSRenderTextureView;->a:Lcom/bytedance/sdk/openadsdk/core/video/renderview/a;

    .line 34
    invoke-virtual {p0, p0}, Lcom/bytedance/sdk/openadsdk/core/video/renderview/SSRenderTextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 35
    return-void
.end method

.method public getHolder()Landroid/view/SurfaceHolder;
    .registers 2

    .prologue
    .line 47
    const/4 v0, 0x0

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .registers 1

    .prologue
    .line 52
    return-object p0
.end method

.method protected onAttachedToWindow()V
    .registers 1

    .prologue
    .line 69
    invoke-super {p0}, Landroid/view/TextureView;->onAttachedToWindow()V

    .line 70
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 58
    :try_start_0
    invoke-super {p0}, Landroid/view/TextureView;->onDetachedFromWindow()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    .line 65
    :goto_3
    return-void

    .line 59
    :catch_4
    move-exception v0

    .line 60
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3
.end method

.method protected onSizeChanged(IIII)V
    .registers 5

    .prologue
    .line 74
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/TextureView;->onSizeChanged(IIII)V

    .line 75
    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .registers 5

    .prologue
    .line 79
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/renderview/SSRenderTextureView;->a:Lcom/bytedance/sdk/openadsdk/core/video/renderview/a;

    if-eqz v0, :cond_9

    .line 80
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/renderview/SSRenderTextureView;->a:Lcom/bytedance/sdk/openadsdk/core/video/renderview/a;

    invoke-interface {v0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/video/renderview/a;->a(Landroid/graphics/SurfaceTexture;II)V

    .line 82
    :cond_9
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .registers 3

    .prologue
    .line 93
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/renderview/SSRenderTextureView;->a:Lcom/bytedance/sdk/openadsdk/core/video/renderview/a;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/renderview/SSRenderTextureView;->a:Lcom/bytedance/sdk/openadsdk/core/video/renderview/a;

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/renderview/a;->a(Landroid/graphics/SurfaceTexture;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .registers 5

    .prologue
    .line 86
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/renderview/SSRenderTextureView;->a:Lcom/bytedance/sdk/openadsdk/core/video/renderview/a;

    if-eqz v0, :cond_9

    .line 87
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/renderview/SSRenderTextureView;->a:Lcom/bytedance/sdk/openadsdk/core/video/renderview/a;

    invoke-interface {v0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/video/renderview/a;->b(Landroid/graphics/SurfaceTexture;II)V

    .line 89
    :cond_9
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .registers 3

    .prologue
    .line 98
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/renderview/SSRenderTextureView;->a:Lcom/bytedance/sdk/openadsdk/core/video/renderview/a;

    if-eqz v0, :cond_9

    .line 99
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/renderview/SSRenderTextureView;->a:Lcom/bytedance/sdk/openadsdk/core/video/renderview/a;

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/renderview/a;->b(Landroid/graphics/SurfaceTexture;)V

    .line 101
    :cond_9
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .registers 3

    .prologue
    .line 106
    invoke-super {p0, p1}, Landroid/view/TextureView;->onWindowVisibilityChanged(I)V

    .line 107
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/renderview/SSRenderTextureView;->b:Lcom/bytedance/sdk/openadsdk/core/video/renderview/b$a;

    if-eqz v0, :cond_c

    .line 108
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/renderview/SSRenderTextureView;->b:Lcom/bytedance/sdk/openadsdk/core/video/renderview/b$a;

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/renderview/b$a;->a(I)V

    .line 110
    :cond_c
    return-void
.end method

.method public setWindowVisibilityChangedListener(Lcom/bytedance/sdk/openadsdk/core/video/renderview/b$a;)V
    .registers 2

    .prologue
    .line 114
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/renderview/SSRenderTextureView;->b:Lcom/bytedance/sdk/openadsdk/core/video/renderview/b$a;

    .line 115
    return-void
.end method
