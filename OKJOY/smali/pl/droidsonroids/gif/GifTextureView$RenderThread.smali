.class Lpl/droidsonroids/gif/GifTextureView$RenderThread;
.super Ljava/lang/Thread;
.source "GifTextureView.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpl/droidsonroids/gif/GifTextureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RenderThread"
.end annotation


# instance fields
.field final isSurfaceValid:Lpl/droidsonroids/gif/ConditionVariable;

.field private mGifInfoHandle:Lpl/droidsonroids/gif/GifInfoHandle;

.field private final mGifTextureViewReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lpl/droidsonroids/gif/GifTextureView;",
            ">;"
        }
    .end annotation
.end field

.field private mIOException:Ljava/io/IOException;

.field mSavedState:[J


# direct methods
.method constructor <init>(Lpl/droidsonroids/gif/GifTextureView;)V
    .registers 3
    .param p1, "gifTextureView"    # Lpl/droidsonroids/gif/GifTextureView;

    .prologue
    .line 168
    const-string v0, "GifRenderThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 161
    new-instance v0, Lpl/droidsonroids/gif/ConditionVariable;

    invoke-direct {v0}, Lpl/droidsonroids/gif/ConditionVariable;-><init>()V

    iput-object v0, p0, Lpl/droidsonroids/gif/GifTextureView$RenderThread;->isSurfaceValid:Lpl/droidsonroids/gif/ConditionVariable;

    .line 162
    new-instance v0, Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-direct {v0}, Lpl/droidsonroids/gif/GifInfoHandle;-><init>()V

    iput-object v0, p0, Lpl/droidsonroids/gif/GifTextureView$RenderThread;->mGifInfoHandle:Lpl/droidsonroids/gif/GifInfoHandle;

    .line 169
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lpl/droidsonroids/gif/GifTextureView$RenderThread;->mGifTextureViewReference:Ljava/lang/ref/WeakReference;

    .line 170
    return-void
.end method

.method static synthetic access$300(Lpl/droidsonroids/gif/GifTextureView$RenderThread;)Lpl/droidsonroids/gif/GifInfoHandle;
    .registers 2
    .param p0, "x0"    # Lpl/droidsonroids/gif/GifTextureView$RenderThread;

    .prologue
    .line 159
    iget-object v0, p0, Lpl/droidsonroids/gif/GifTextureView$RenderThread;->mGifInfoHandle:Lpl/droidsonroids/gif/GifInfoHandle;

    return-object v0
.end method

.method static synthetic access$600(Lpl/droidsonroids/gif/GifTextureView$RenderThread;)Ljava/io/IOException;
    .registers 2
    .param p0, "x0"    # Lpl/droidsonroids/gif/GifTextureView$RenderThread;

    .prologue
    .line 159
    iget-object v0, p0, Lpl/droidsonroids/gif/GifTextureView$RenderThread;->mIOException:Ljava/io/IOException;

    return-object v0
.end method


# virtual methods
.method dispose(Lpl/droidsonroids/gif/GifTextureView;Lpl/droidsonroids/gif/GifTextureView$PlaceholderDrawListener;)V
    .registers 5
    .param p1, "gifTextureView"    # Lpl/droidsonroids/gif/GifTextureView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "drawer"    # Lpl/droidsonroids/gif/GifTextureView$PlaceholderDrawListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 262
    iget-object v1, p0, Lpl/droidsonroids/gif/GifTextureView$RenderThread;->isSurfaceValid:Lpl/droidsonroids/gif/ConditionVariable;

    invoke-virtual {v1}, Lpl/droidsonroids/gif/ConditionVariable;->close()V

    .line 263
    if-eqz p2, :cond_18

    new-instance v0, Lpl/droidsonroids/gif/PlaceholderDrawingSurfaceTextureListener;

    invoke-direct {v0, p2}, Lpl/droidsonroids/gif/PlaceholderDrawingSurfaceTextureListener;-><init>(Lpl/droidsonroids/gif/GifTextureView$PlaceholderDrawListener;)V

    .line 265
    .local v0, "listener":Landroid/view/TextureView$SurfaceTextureListener;
    :goto_c
    # invokes: Lpl/droidsonroids/gif/GifTextureView;->setSuperSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V
    invoke-static {p1, v0}, Lpl/droidsonroids/gif/GifTextureView;->access$200(Lpl/droidsonroids/gif/GifTextureView;Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 266
    iget-object v1, p0, Lpl/droidsonroids/gif/GifTextureView$RenderThread;->mGifInfoHandle:Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-virtual {v1}, Lpl/droidsonroids/gif/GifInfoHandle;->postUnbindSurface()V

    .line 267
    invoke-virtual {p0}, Lpl/droidsonroids/gif/GifTextureView$RenderThread;->interrupt()V

    .line 268
    return-void

    .line 263
    .end local v0    # "listener":Landroid/view/TextureView$SurfaceTextureListener;
    :cond_18
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .registers 6
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 236
    iget-object v1, p0, Lpl/droidsonroids/gif/GifTextureView$RenderThread;->mGifTextureViewReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/droidsonroids/gif/GifTextureView;

    .line 237
    .local v0, "gifTextureView":Lpl/droidsonroids/gif/GifTextureView;
    if-eqz v0, :cond_f

    .line 238
    iget-object v1, p0, Lpl/droidsonroids/gif/GifTextureView$RenderThread;->mGifInfoHandle:Lpl/droidsonroids/gif/GifInfoHandle;

    # invokes: Lpl/droidsonroids/gif/GifTextureView;->updateTextureViewSize(Lpl/droidsonroids/gif/GifInfoHandle;)V
    invoke-static {v0, v1}, Lpl/droidsonroids/gif/GifTextureView;->access$400(Lpl/droidsonroids/gif/GifTextureView;Lpl/droidsonroids/gif/GifInfoHandle;)V

    .line 240
    :cond_f
    iget-object v1, p0, Lpl/droidsonroids/gif/GifTextureView$RenderThread;->isSurfaceValid:Lpl/droidsonroids/gif/ConditionVariable;

    invoke-virtual {v1}, Lpl/droidsonroids/gif/ConditionVariable;->open()V

    .line 241
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .registers 3
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 250
    iget-object v0, p0, Lpl/droidsonroids/gif/GifTextureView$RenderThread;->isSurfaceValid:Lpl/droidsonroids/gif/ConditionVariable;

    invoke-virtual {v0}, Lpl/droidsonroids/gif/ConditionVariable;->close()V

    .line 251
    iget-object v0, p0, Lpl/droidsonroids/gif/GifTextureView$RenderThread;->mGifInfoHandle:Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-virtual {v0}, Lpl/droidsonroids/gif/GifInfoHandle;->postUnbindSurface()V

    .line 252
    invoke-virtual {p0}, Lpl/droidsonroids/gif/GifTextureView$RenderThread;->interrupt()V

    .line 253
    const/4 v0, 0x1

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .registers 4
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 246
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .registers 2
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 259
    return-void
.end method

.method public run()V
    .registers 11

    .prologue
    .line 175
    :try_start_0
    iget-object v7, p0, Lpl/droidsonroids/gif/GifTextureView$RenderThread;->mGifTextureViewReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/droidsonroids/gif/GifTextureView;

    .line 176
    .local v3, "gifTextureView":Lpl/droidsonroids/gif/GifTextureView;
    if-nez v3, :cond_b

    .line 232
    .end local v3    # "gifTextureView":Lpl/droidsonroids/gif/GifTextureView;
    :goto_a
    return-void

    .line 179
    .restart local v3    # "gifTextureView":Lpl/droidsonroids/gif/GifTextureView;
    :cond_b
    # getter for: Lpl/droidsonroids/gif/GifTextureView;->mInputSource:Lpl/droidsonroids/gif/InputSource;
    invoke-static {v3}, Lpl/droidsonroids/gif/GifTextureView;->access$000(Lpl/droidsonroids/gif/GifTextureView;)Lpl/droidsonroids/gif/InputSource;

    move-result-object v7

    invoke-virtual {v7}, Lpl/droidsonroids/gif/InputSource;->open()Lpl/droidsonroids/gif/GifInfoHandle;

    move-result-object v7

    iput-object v7, p0, Lpl/droidsonroids/gif/GifTextureView$RenderThread;->mGifInfoHandle:Lpl/droidsonroids/gif/GifInfoHandle;

    .line 180
    iget-object v7, p0, Lpl/droidsonroids/gif/GifTextureView$RenderThread;->mGifInfoHandle:Lpl/droidsonroids/gif/GifInfoHandle;

    const/4 v8, 0x1

    invoke-virtual {v3}, Lpl/droidsonroids/gif/GifTextureView;->isOpaque()Z

    move-result v9

    invoke-virtual {v7, v8, v9}, Lpl/droidsonroids/gif/GifInfoHandle;->setOptions(CZ)V

    .line 181
    # getter for: Lpl/droidsonroids/gif/GifTextureView;->viewAttributes:Lpl/droidsonroids/gif/GifViewUtils$GifViewAttributes;
    invoke-static {v3}, Lpl/droidsonroids/gif/GifTextureView;->access$100(Lpl/droidsonroids/gif/GifTextureView;)Lpl/droidsonroids/gif/GifViewUtils$GifViewAttributes;

    move-result-object v7

    iget v7, v7, Lpl/droidsonroids/gif/GifViewUtils$GifViewAttributes;->mLoopCount:I

    if-ltz v7, :cond_32

    .line 182
    iget-object v7, p0, Lpl/droidsonroids/gif/GifTextureView$RenderThread;->mGifInfoHandle:Lpl/droidsonroids/gif/GifInfoHandle;

    # getter for: Lpl/droidsonroids/gif/GifTextureView;->viewAttributes:Lpl/droidsonroids/gif/GifViewUtils$GifViewAttributes;
    invoke-static {v3}, Lpl/droidsonroids/gif/GifTextureView;->access$100(Lpl/droidsonroids/gif/GifTextureView;)Lpl/droidsonroids/gif/GifViewUtils$GifViewAttributes;

    move-result-object v8

    iget v8, v8, Lpl/droidsonroids/gif/GifViewUtils$GifViewAttributes;->mLoopCount:I

    invoke-virtual {v7, v8}, Lpl/droidsonroids/gif/GifInfoHandle;->setLoopCount(I)V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_32} :catch_42

    .line 189
    :cond_32
    iget-object v7, p0, Lpl/droidsonroids/gif/GifTextureView$RenderThread;->mGifTextureViewReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "gifTextureView":Lpl/droidsonroids/gif/GifTextureView;
    check-cast v3, Lpl/droidsonroids/gif/GifTextureView;

    .line 190
    .restart local v3    # "gifTextureView":Lpl/droidsonroids/gif/GifTextureView;
    if-nez v3, :cond_46

    .line 191
    iget-object v7, p0, Lpl/droidsonroids/gif/GifTextureView$RenderThread;->mGifInfoHandle:Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-virtual {v7}, Lpl/droidsonroids/gif/GifInfoHandle;->recycle()V

    goto :goto_a

    .line 184
    .end local v3    # "gifTextureView":Lpl/droidsonroids/gif/GifTextureView;
    :catch_42
    move-exception v2

    .line 185
    .local v2, "ex":Ljava/io/IOException;
    iput-object v2, p0, Lpl/droidsonroids/gif/GifTextureView$RenderThread;->mIOException:Ljava/io/IOException;

    goto :goto_a

    .line 195
    .end local v2    # "ex":Ljava/io/IOException;
    .restart local v3    # "gifTextureView":Lpl/droidsonroids/gif/GifTextureView;
    :cond_46
    # invokes: Lpl/droidsonroids/gif/GifTextureView;->setSuperSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V
    invoke-static {v3, p0}, Lpl/droidsonroids/gif/GifTextureView;->access$200(Lpl/droidsonroids/gif/GifTextureView;Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 196
    invoke-virtual {v3}, Lpl/droidsonroids/gif/GifTextureView;->isAvailable()Z

    move-result v4

    .line 197
    .local v4, "isSurfaceAvailable":Z
    iget-object v7, p0, Lpl/droidsonroids/gif/GifTextureView$RenderThread;->isSurfaceValid:Lpl/droidsonroids/gif/ConditionVariable;

    invoke-virtual {v7, v4}, Lpl/droidsonroids/gif/ConditionVariable;->set(Z)V

    .line 198
    if-eqz v4, :cond_5c

    .line 199
    new-instance v7, Lpl/droidsonroids/gif/GifTextureView$RenderThread$1;

    invoke-direct {v7, p0, v3}, Lpl/droidsonroids/gif/GifTextureView$RenderThread$1;-><init>(Lpl/droidsonroids/gif/GifTextureView$RenderThread;Lpl/droidsonroids/gif/GifTextureView;)V

    invoke-virtual {v3, v7}, Lpl/droidsonroids/gif/GifTextureView;->post(Ljava/lang/Runnable;)Z

    .line 206
    :cond_5c
    iget-object v7, p0, Lpl/droidsonroids/gif/GifTextureView$RenderThread;->mGifInfoHandle:Lpl/droidsonroids/gif/GifInfoHandle;

    # getter for: Lpl/droidsonroids/gif/GifTextureView;->mSpeedFactor:F
    invoke-static {v3}, Lpl/droidsonroids/gif/GifTextureView;->access$500(Lpl/droidsonroids/gif/GifTextureView;)F

    move-result v8

    invoke-virtual {v7, v8}, Lpl/droidsonroids/gif/GifInfoHandle;->setSpeedFactor(F)V

    .line 208
    :cond_65
    :goto_65
    invoke-virtual {p0}, Lpl/droidsonroids/gif/GifTextureView$RenderThread;->isInterrupted()Z

    move-result v7

    if-nez v7, :cond_7a

    .line 210
    :try_start_6b
    iget-object v7, p0, Lpl/droidsonroids/gif/GifTextureView$RenderThread;->isSurfaceValid:Lpl/droidsonroids/gif/ConditionVariable;

    invoke-virtual {v7}, Lpl/droidsonroids/gif/ConditionVariable;->block()V
    :try_end_70
    .catch Ljava/lang/InterruptedException; {:try_start_6b .. :try_end_70} :catch_87

    .line 215
    iget-object v7, p0, Lpl/droidsonroids/gif/GifTextureView$RenderThread;->mGifTextureViewReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/droidsonroids/gif/GifTextureView;

    .line 216
    .local v0, "currentGifTextureView":Lpl/droidsonroids/gif/GifTextureView;
    if-nez v0, :cond_90

    .line 230
    .end local v0    # "currentGifTextureView":Lpl/droidsonroids/gif/GifTextureView;
    :cond_7a
    :goto_7a
    iget-object v7, p0, Lpl/droidsonroids/gif/GifTextureView$RenderThread;->mGifInfoHandle:Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-virtual {v7}, Lpl/droidsonroids/gif/GifInfoHandle;->recycle()V

    .line 231
    new-instance v7, Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-direct {v7}, Lpl/droidsonroids/gif/GifInfoHandle;-><init>()V

    iput-object v7, p0, Lpl/droidsonroids/gif/GifTextureView$RenderThread;->mGifInfoHandle:Lpl/droidsonroids/gif/GifInfoHandle;

    goto :goto_a

    .line 211
    :catch_87
    move-exception v1

    .line 212
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->interrupt()V

    goto :goto_7a

    .line 219
    .end local v1    # "e":Ljava/lang/InterruptedException;
    .restart local v0    # "currentGifTextureView":Lpl/droidsonroids/gif/GifTextureView;
    :cond_90
    invoke-virtual {v0}, Lpl/droidsonroids/gif/GifTextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v6

    .line 220
    .local v6, "surfaceTexture":Landroid/graphics/SurfaceTexture;
    if-eqz v6, :cond_65

    .line 223
    new-instance v5, Landroid/view/Surface;

    invoke-direct {v5, v6}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 225
    .local v5, "surface":Landroid/view/Surface;
    :try_start_9b
    iget-object v7, p0, Lpl/droidsonroids/gif/GifTextureView$RenderThread;->mGifInfoHandle:Lpl/droidsonroids/gif/GifInfoHandle;

    iget-object v8, p0, Lpl/droidsonroids/gif/GifTextureView$RenderThread;->mSavedState:[J

    invoke-virtual {v7, v5, v8}, Lpl/droidsonroids/gif/GifInfoHandle;->bindSurface(Landroid/view/Surface;[J)V
    :try_end_a2
    .catchall {:try_start_9b .. :try_end_a2} :catchall_a6

    .line 227
    invoke-virtual {v5}, Landroid/view/Surface;->release()V

    goto :goto_65

    :catchall_a6
    move-exception v7

    invoke-virtual {v5}, Landroid/view/Surface;->release()V

    .line 228
    throw v7
.end method
