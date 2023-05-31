.class public Lpl/droidsonroids/gif/GifDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "GifDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Animatable;
.implements Landroid/widget/MediaController$MediaPlayerControl;


# instance fields
.field final mBuffer:Landroid/graphics/Bitmap;

.field private final mDstRect:Landroid/graphics/Rect;

.field final mExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field final mInvalidationHandler:Lpl/droidsonroids/gif/InvalidationHandler;

.field final mIsRenderingTriggeredOnDraw:Z

.field volatile mIsRunning:Z

.field final mListeners:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lpl/droidsonroids/gif/AnimationListener;",
            ">;"
        }
    .end annotation
.end field

.field final mNativeInfoHandle:Lpl/droidsonroids/gif/GifInfoHandle;

.field mNextFrameRenderTime:J

.field protected final mPaint:Landroid/graphics/Paint;

.field private final mRenderTask:Lpl/droidsonroids/gif/RenderTask;

.field mRenderTaskSchedule:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation
.end field

.field private mScaledHeight:I

.field private mScaledWidth:I

.field private final mSrcRect:Landroid/graphics/Rect;

.field private mTint:Landroid/content/res/ColorStateList;

.field private mTintFilter:Landroid/graphics/PorterDuffColorFilter;

.field private mTintMode:Landroid/graphics/PorterDuff$Mode;

.field private mTransform:Lpl/droidsonroids/gif/transforms/Transform;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .registers 6
    .param p1, "resolver"    # Landroid/content/ContentResolver;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "uri"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 206
    invoke-static {p1, p2}, Lpl/droidsonroids/gif/GifInfoHandle;->openUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Lpl/droidsonroids/gif/GifInfoHandle;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v2, v2, v1}, Lpl/droidsonroids/gif/GifDrawable;-><init>(Lpl/droidsonroids/gif/GifInfoHandle;Lpl/droidsonroids/gif/GifDrawable;Ljava/util/concurrent/ScheduledThreadPoolExecutor;Z)V

    .line 207
    return-void
.end method

.method public constructor <init>(Landroid/content/res/AssetFileDescriptor;)V
    .registers 5
    .param p1, "afd"    # Landroid/content/res/AssetFileDescriptor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 158
    new-instance v0, Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-direct {v0, p1}, Lpl/droidsonroids/gif/GifInfoHandle;-><init>(Landroid/content/res/AssetFileDescriptor;)V

    const/4 v1, 0x1

    invoke-direct {p0, v0, v2, v2, v1}, Lpl/droidsonroids/gif/GifDrawable;-><init>(Lpl/droidsonroids/gif/GifInfoHandle;Lpl/droidsonroids/gif/GifDrawable;Ljava/util/concurrent/ScheduledThreadPoolExecutor;Z)V

    .line 159
    return-void
.end method

.method public constructor <init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V
    .registers 4
    .param p1, "assets"    # Landroid/content/res/AssetManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "assetName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 108
    invoke-virtual {p1, p2}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    invoke-direct {p0, v0}, Lpl/droidsonroids/gif/GifDrawable;-><init>(Landroid/content/res/AssetFileDescriptor;)V

    .line 109
    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;I)V
    .registers 5
    .param p1, "res"    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "id"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation

        .annotation build Landroid/support/annotation/RawRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 93
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    invoke-direct {p0, v1}, Lpl/droidsonroids/gif/GifDrawable;-><init>(Landroid/content/res/AssetFileDescriptor;)V

    .line 94
    invoke-static {p1, p2}, Lpl/droidsonroids/gif/GifViewUtils;->getDensityScale(Landroid/content/res/Resources;I)F

    move-result v0

    .line 95
    .local v0, "densityScale":F
    iget-object v1, p0, Lpl/droidsonroids/gif/GifDrawable;->mNativeInfoHandle:Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-virtual {v1}, Lpl/droidsonroids/gif/GifInfoHandle;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lpl/droidsonroids/gif/GifDrawable;->mScaledHeight:I

    .line 96
    iget-object v1, p0, Lpl/droidsonroids/gif/GifDrawable;->mNativeInfoHandle:Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-virtual {v1}, Lpl/droidsonroids/gif/GifInfoHandle;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lpl/droidsonroids/gif/GifDrawable;->mScaledWidth:I

    .line 97
    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .registers 3
    .param p1, "file"    # Ljava/io/File;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 133
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lpl/droidsonroids/gif/GifDrawable;-><init>(Ljava/lang/String;)V

    .line 134
    return-void
.end method

.method public constructor <init>(Ljava/io/FileDescriptor;)V
    .registers 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 169
    new-instance v0, Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-direct {v0, p1}, Lpl/droidsonroids/gif/GifInfoHandle;-><init>(Ljava/io/FileDescriptor;)V

    const/4 v1, 0x1

    invoke-direct {p0, v0, v2, v2, v1}, Lpl/droidsonroids/gif/GifDrawable;-><init>(Lpl/droidsonroids/gif/GifInfoHandle;Lpl/droidsonroids/gif/GifDrawable;Ljava/util/concurrent/ScheduledThreadPoolExecutor;Z)V

    .line 170
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 5
    .param p1, "stream"    # Ljava/io/InputStream;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 146
    new-instance v0, Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-direct {v0, p1}, Lpl/droidsonroids/gif/GifInfoHandle;-><init>(Ljava/io/InputStream;)V

    const/4 v1, 0x1

    invoke-direct {p0, v0, v2, v2, v1}, Lpl/droidsonroids/gif/GifDrawable;-><init>(Lpl/droidsonroids/gif/GifInfoHandle;Lpl/droidsonroids/gif/GifDrawable;Ljava/util/concurrent/ScheduledThreadPoolExecutor;Z)V

    .line 147
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 5
    .param p1, "filePath"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 122
    new-instance v0, Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-direct {v0, p1}, Lpl/droidsonroids/gif/GifInfoHandle;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-direct {p0, v0, v2, v2, v1}, Lpl/droidsonroids/gif/GifDrawable;-><init>(Lpl/droidsonroids/gif/GifInfoHandle;Lpl/droidsonroids/gif/GifDrawable;Ljava/util/concurrent/ScheduledThreadPoolExecutor;Z)V

    .line 123
    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .registers 5
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 193
    new-instance v0, Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-direct {v0, p1}, Lpl/droidsonroids/gif/GifInfoHandle;-><init>(Ljava/nio/ByteBuffer;)V

    const/4 v1, 0x1

    invoke-direct {p0, v0, v2, v2, v1}, Lpl/droidsonroids/gif/GifDrawable;-><init>(Lpl/droidsonroids/gif/GifInfoHandle;Lpl/droidsonroids/gif/GifDrawable;Ljava/util/concurrent/ScheduledThreadPoolExecutor;Z)V

    .line 194
    return-void
.end method

.method constructor <init>(Lpl/droidsonroids/gif/GifInfoHandle;Lpl/droidsonroids/gif/GifDrawable;Ljava/util/concurrent/ScheduledThreadPoolExecutor;Z)V
    .registers 11
    .param p1, "gifInfoHandle"    # Lpl/droidsonroids/gif/GifInfoHandle;
    .param p2, "oldDrawable"    # Lpl/droidsonroids/gif/GifDrawable;
    .param p3, "executor"    # Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    .param p4, "isRenderingTriggeredOnDraw"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 228
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 56
    iput-boolean v1, p0, Lpl/droidsonroids/gif/GifDrawable;->mIsRunning:Z

    .line 57
    const-wide/high16 v4, -0x8000000000000000L

    iput-wide v4, p0, Lpl/droidsonroids/gif/GifDrawable;->mNextFrameRenderTime:J

    .line 59
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lpl/droidsonroids/gif/GifDrawable;->mDstRect:Landroid/graphics/Rect;

    .line 63
    new-instance v3, Landroid/graphics/Paint;

    const/4 v4, 0x6

    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, p0, Lpl/droidsonroids/gif/GifDrawable;->mPaint:Landroid/graphics/Paint;

    .line 69
    new-instance v3, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v3, p0, Lpl/droidsonroids/gif/GifDrawable;->mListeners:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 76
    new-instance v3, Lpl/droidsonroids/gif/RenderTask;

    invoke-direct {v3, p0}, Lpl/droidsonroids/gif/RenderTask;-><init>(Lpl/droidsonroids/gif/GifDrawable;)V

    iput-object v3, p0, Lpl/droidsonroids/gif/GifDrawable;->mRenderTask:Lpl/droidsonroids/gif/RenderTask;

    .line 229
    iput-boolean p4, p0, Lpl/droidsonroids/gif/GifDrawable;->mIsRenderingTriggeredOnDraw:Z

    .line 230
    if-eqz p3, :cond_b5

    .end local p3    # "executor":Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    :goto_2c
    iput-object p3, p0, Lpl/droidsonroids/gif/GifDrawable;->mExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 231
    iput-object p1, p0, Lpl/droidsonroids/gif/GifDrawable;->mNativeInfoHandle:Lpl/droidsonroids/gif/GifInfoHandle;

    .line 232
    const/4 v0, 0x0

    .line 233
    .local v0, "oldBitmap":Landroid/graphics/Bitmap;
    if-eqz p2, :cond_64

    .line 234
    iget-object v3, p2, Lpl/droidsonroids/gif/GifDrawable;->mNativeInfoHandle:Lpl/droidsonroids/gif/GifInfoHandle;

    monitor-enter v3

    .line 235
    :try_start_36
    iget-object v4, p2, Lpl/droidsonroids/gif/GifDrawable;->mNativeInfoHandle:Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-virtual {v4}, Lpl/droidsonroids/gif/GifInfoHandle;->isRecycled()Z

    move-result v4

    if-nez v4, :cond_63

    iget-object v4, p2, Lpl/droidsonroids/gif/GifDrawable;->mNativeInfoHandle:Lpl/droidsonroids/gif/GifInfoHandle;

    .line 236
    invoke-virtual {v4}, Lpl/droidsonroids/gif/GifInfoHandle;->getHeight()I

    move-result v4

    iget-object v5, p0, Lpl/droidsonroids/gif/GifDrawable;->mNativeInfoHandle:Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-virtual {v5}, Lpl/droidsonroids/gif/GifInfoHandle;->getHeight()I

    move-result v5

    if-lt v4, v5, :cond_63

    iget-object v4, p2, Lpl/droidsonroids/gif/GifDrawable;->mNativeInfoHandle:Lpl/droidsonroids/gif/GifInfoHandle;

    .line 237
    invoke-virtual {v4}, Lpl/droidsonroids/gif/GifInfoHandle;->getWidth()I

    move-result v4

    iget-object v5, p0, Lpl/droidsonroids/gif/GifDrawable;->mNativeInfoHandle:Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-virtual {v5}, Lpl/droidsonroids/gif/GifInfoHandle;->getWidth()I

    move-result v5

    if-lt v4, v5, :cond_63

    .line 238
    invoke-direct {p2}, Lpl/droidsonroids/gif/GifDrawable;->shutdown()V

    .line 239
    iget-object v0, p2, Lpl/droidsonroids/gif/GifDrawable;->mBuffer:Landroid/graphics/Bitmap;

    .line 240
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 242
    :cond_63
    monitor-exit v3
    :try_end_64
    .catchall {:try_start_36 .. :try_end_64} :catchall_bb

    .line 245
    :cond_64
    if-nez v0, :cond_be

    .line 246
    iget-object v3, p0, Lpl/droidsonroids/gif/GifDrawable;->mNativeInfoHandle:Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-virtual {v3}, Lpl/droidsonroids/gif/GifInfoHandle;->getWidth()I

    move-result v3

    iget-object v4, p0, Lpl/droidsonroids/gif/GifDrawable;->mNativeInfoHandle:Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-virtual {v4}, Lpl/droidsonroids/gif/GifInfoHandle;->getHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lpl/droidsonroids/gif/GifDrawable;->mBuffer:Landroid/graphics/Bitmap;

    .line 250
    :goto_7a
    iget-object v3, p0, Lpl/droidsonroids/gif/GifDrawable;->mBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Lpl/droidsonroids/gif/GifInfoHandle;->isOpaque()Z

    move-result v4

    if-nez v4, :cond_c1

    :goto_82
    invoke-virtual {v3, v1}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 251
    new-instance v1, Landroid/graphics/Rect;

    iget-object v3, p0, Lpl/droidsonroids/gif/GifDrawable;->mNativeInfoHandle:Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-virtual {v3}, Lpl/droidsonroids/gif/GifInfoHandle;->getWidth()I

    move-result v3

    iget-object v4, p0, Lpl/droidsonroids/gif/GifDrawable;->mNativeInfoHandle:Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-virtual {v4}, Lpl/droidsonroids/gif/GifInfoHandle;->getHeight()I

    move-result v4

    invoke-direct {v1, v2, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lpl/droidsonroids/gif/GifDrawable;->mSrcRect:Landroid/graphics/Rect;

    .line 252
    new-instance v1, Lpl/droidsonroids/gif/InvalidationHandler;

    invoke-direct {v1, p0}, Lpl/droidsonroids/gif/InvalidationHandler;-><init>(Lpl/droidsonroids/gif/GifDrawable;)V

    iput-object v1, p0, Lpl/droidsonroids/gif/GifDrawable;->mInvalidationHandler:Lpl/droidsonroids/gif/InvalidationHandler;

    .line 253
    iget-object v1, p0, Lpl/droidsonroids/gif/GifDrawable;->mRenderTask:Lpl/droidsonroids/gif/RenderTask;

    invoke-virtual {v1}, Lpl/droidsonroids/gif/RenderTask;->doWork()V

    .line 254
    iget-object v1, p0, Lpl/droidsonroids/gif/GifDrawable;->mNativeInfoHandle:Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-virtual {v1}, Lpl/droidsonroids/gif/GifInfoHandle;->getWidth()I

    move-result v1

    iput v1, p0, Lpl/droidsonroids/gif/GifDrawable;->mScaledWidth:I

    .line 255
    iget-object v1, p0, Lpl/droidsonroids/gif/GifDrawable;->mNativeInfoHandle:Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-virtual {v1}, Lpl/droidsonroids/gif/GifInfoHandle;->getHeight()I

    move-result v1

    iput v1, p0, Lpl/droidsonroids/gif/GifDrawable;->mScaledHeight:I

    .line 256
    return-void

    .line 230
    .end local v0    # "oldBitmap":Landroid/graphics/Bitmap;
    .restart local p3    # "executor":Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    :cond_b5
    invoke-static {}, Lpl/droidsonroids/gif/GifRenderingExecutor;->getInstance()Lpl/droidsonroids/gif/GifRenderingExecutor;

    move-result-object p3

    goto/16 :goto_2c

    .line 242
    .end local p3    # "executor":Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    .restart local v0    # "oldBitmap":Landroid/graphics/Bitmap;
    :catchall_bb
    move-exception v1

    :try_start_bc
    monitor-exit v3
    :try_end_bd
    .catchall {:try_start_bc .. :try_end_bd} :catchall_bb

    throw v1

    .line 248
    :cond_be
    iput-object v0, p0, Lpl/droidsonroids/gif/GifDrawable;->mBuffer:Landroid/graphics/Bitmap;

    goto :goto_7a

    :cond_c1
    move v1, v2

    .line 250
    goto :goto_82
.end method

.method protected constructor <init>(Lpl/droidsonroids/gif/InputSource;Lpl/droidsonroids/gif/GifDrawable;Ljava/util/concurrent/ScheduledThreadPoolExecutor;ZLpl/droidsonroids/gif/GifOptions;)V
    .registers 7
    .param p1, "inputSource"    # Lpl/droidsonroids/gif/InputSource;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "oldDrawable"    # Lpl/droidsonroids/gif/GifDrawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "executor"    # Ljava/util/concurrent/ScheduledThreadPoolExecutor;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "isRenderingTriggeredOnDraw"    # Z
    .param p5, "options"    # Lpl/droidsonroids/gif/GifOptions;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 225
    invoke-virtual {p1, p5}, Lpl/droidsonroids/gif/InputSource;->createHandleWith(Lpl/droidsonroids/gif/GifOptions;)Lpl/droidsonroids/gif/GifInfoHandle;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3, p4}, Lpl/droidsonroids/gif/GifDrawable;-><init>(Lpl/droidsonroids/gif/GifInfoHandle;Lpl/droidsonroids/gif/GifDrawable;Ljava/util/concurrent/ScheduledThreadPoolExecutor;Z)V

    .line 226
    return-void
.end method

.method public constructor <init>([B)V
    .registers 5
    .param p1, "bytes"    # [B
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 181
    new-instance v0, Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-direct {v0, p1}, Lpl/droidsonroids/gif/GifInfoHandle;-><init>([B)V

    const/4 v1, 0x1

    invoke-direct {p0, v0, v2, v2, v1}, Lpl/droidsonroids/gif/GifDrawable;-><init>(Lpl/droidsonroids/gif/GifInfoHandle;Lpl/droidsonroids/gif/GifDrawable;Ljava/util/concurrent/ScheduledThreadPoolExecutor;Z)V

    .line 182
    return-void
.end method

.method private cancelPendingRenderTask()V
    .registers 3

    .prologue
    .line 383
    iget-object v0, p0, Lpl/droidsonroids/gif/GifDrawable;->mRenderTaskSchedule:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_a

    .line 384
    iget-object v0, p0, Lpl/droidsonroids/gif/GifDrawable;->mRenderTaskSchedule:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 386
    :cond_a
    iget-object v0, p0, Lpl/droidsonroids/gif/GifDrawable;->mInvalidationHandler:Lpl/droidsonroids/gif/InvalidationHandler;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lpl/droidsonroids/gif/InvalidationHandler;->removeMessages(I)V

    .line 387
    return-void
.end method

.method public static createFromResource(Landroid/content/res/Resources;I)Lpl/droidsonroids/gif/GifDrawable;
    .registers 4
    .param p0, "res"    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "resourceId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation

        .annotation build Landroid/support/annotation/RawRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 460
    :try_start_0
    new-instance v1, Lpl/droidsonroids/gif/GifDrawable;

    invoke-direct {v1, p0, p1}, Lpl/droidsonroids/gif/GifDrawable;-><init>(Landroid/content/res/Resources;I)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    .line 462
    :goto_5
    return-object v1

    .line 461
    :catch_6
    move-exception v0

    .line 462
    .local v0, "ignored":Ljava/io/IOException;
    const/4 v1, 0x0

    goto :goto_5
.end method

.method private scheduleNextRender()V
    .registers 11

    .prologue
    const-wide/high16 v8, -0x8000000000000000L

    .line 776
    iget-boolean v2, p0, Lpl/droidsonroids/gif/GifDrawable;->mIsRenderingTriggeredOnDraw:Z

    if-eqz v2, :cond_32

    iget-boolean v2, p0, Lpl/droidsonroids/gif/GifDrawable;->mIsRunning:Z

    if-eqz v2, :cond_32

    iget-wide v2, p0, Lpl/droidsonroids/gif/GifDrawable;->mNextFrameRenderTime:J

    cmp-long v2, v2, v8

    if-eqz v2, :cond_32

    .line 777
    const-wide/16 v2, 0x0

    iget-wide v4, p0, Lpl/droidsonroids/gif/GifDrawable;->mNextFrameRenderTime:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 778
    .local v0, "renderDelay":J
    iput-wide v8, p0, Lpl/droidsonroids/gif/GifDrawable;->mNextFrameRenderTime:J

    .line 779
    iget-object v2, p0, Lpl/droidsonroids/gif/GifDrawable;->mExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    iget-object v3, p0, Lpl/droidsonroids/gif/GifDrawable;->mRenderTask:Lpl/droidsonroids/gif/RenderTask;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->remove(Ljava/lang/Runnable;)Z

    .line 780
    iget-object v2, p0, Lpl/droidsonroids/gif/GifDrawable;->mExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    iget-object v3, p0, Lpl/droidsonroids/gif/GifDrawable;->mRenderTask:Lpl/droidsonroids/gif/RenderTask;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v0, v1, v4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v2

    iput-object v2, p0, Lpl/droidsonroids/gif/GifDrawable;->mRenderTaskSchedule:Ljava/util/concurrent/ScheduledFuture;

    .line 782
    .end local v0    # "renderDelay":J
    :cond_32
    return-void
.end method

.method private shutdown()V
    .registers 3

    .prologue
    .line 271
    const/4 v0, 0x0

    iput-boolean v0, p0, Lpl/droidsonroids/gif/GifDrawable;->mIsRunning:Z

    .line 272
    iget-object v0, p0, Lpl/droidsonroids/gif/GifDrawable;->mInvalidationHandler:Lpl/droidsonroids/gif/InvalidationHandler;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lpl/droidsonroids/gif/InvalidationHandler;->removeMessages(I)V

    .line 273
    iget-object v0, p0, Lpl/droidsonroids/gif/GifDrawable;->mNativeInfoHandle:Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-virtual {v0}, Lpl/droidsonroids/gif/GifInfoHandle;->recycle()V

    .line 274
    return-void
.end method

.method private updateTintFilter(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
    .registers 6
    .param p1, "tint"    # Landroid/content/res/ColorStateList;
    .param p2, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    .line 848
    if-eqz p1, :cond_4

    if-nez p2, :cond_6

    .line 849
    :cond_4
    const/4 v1, 0x0

    .line 853
    :goto_5
    return-object v1

    .line 852
    :cond_6
    invoke-virtual {p0}, Lpl/droidsonroids/gif/GifDrawable;->getState()[I

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 853
    .local v0, "color":I
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v1, v0, p2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_5
.end method


# virtual methods
.method public addAnimationListener(Lpl/droidsonroids/gif/AnimationListener;)V
    .registers 3
    .param p1, "listener"    # Lpl/droidsonroids/gif/AnimationListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 818
    iget-object v0, p0, Lpl/droidsonroids/gif/GifDrawable;->mListeners:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 819
    return-void
.end method

.method public canPause()Z
    .registers 2

    .prologue
    .line 625
    const/4 v0, 0x1

    return v0
.end method

.method public canSeekBackward()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 635
    invoke-virtual {p0}, Lpl/droidsonroids/gif/GifDrawable;->getNumberOfFrames()I

    move-result v1

    if-le v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public canSeekForward()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 645
    invoke-virtual {p0}, Lpl/droidsonroids/gif/GifDrawable;->getNumberOfFrames()I

    move-result v1

    if-le v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 758
    iget-object v1, p0, Lpl/droidsonroids/gif/GifDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    if-eqz v1, :cond_2c

    iget-object v1, p0, Lpl/droidsonroids/gif/GifDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v1

    if-nez v1, :cond_2c

    .line 759
    iget-object v1, p0, Lpl/droidsonroids/gif/GifDrawable;->mPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lpl/droidsonroids/gif/GifDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 760
    const/4 v0, 0x1

    .line 764
    .local v0, "clearColorFilter":Z
    :goto_14
    iget-object v1, p0, Lpl/droidsonroids/gif/GifDrawable;->mTransform:Lpl/droidsonroids/gif/transforms/Transform;

    if-nez v1, :cond_2e

    .line 765
    iget-object v1, p0, Lpl/droidsonroids/gif/GifDrawable;->mBuffer:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lpl/droidsonroids/gif/GifDrawable;->mSrcRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lpl/droidsonroids/gif/GifDrawable;->mDstRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lpl/droidsonroids/gif/GifDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 769
    :goto_23
    if-eqz v0, :cond_2b

    .line 770
    iget-object v1, p0, Lpl/droidsonroids/gif/GifDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 773
    :cond_2b
    return-void

    .line 762
    .end local v0    # "clearColorFilter":Z
    :cond_2c
    const/4 v0, 0x0

    .restart local v0    # "clearColorFilter":Z
    goto :goto_14

    .line 767
    :cond_2e
    iget-object v1, p0, Lpl/droidsonroids/gif/GifDrawable;->mTransform:Lpl/droidsonroids/gif/transforms/Transform;

    iget-object v2, p0, Lpl/droidsonroids/gif/GifDrawable;->mPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lpl/droidsonroids/gif/GifDrawable;->mBuffer:Landroid/graphics/Bitmap;

    invoke-interface {v1, p1, v2, v3}, Lpl/droidsonroids/gif/transforms/Transform;->onDraw(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Bitmap;)V

    goto :goto_23
.end method

.method public getAllocationByteCount()J
    .registers 5

    .prologue
    .line 679
    iget-object v2, p0, Lpl/droidsonroids/gif/GifDrawable;->mNativeInfoHandle:Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-virtual {v2}, Lpl/droidsonroids/gif/GifInfoHandle;->getAllocationByteCount()J

    move-result-wide v0

    .line 680
    .local v0, "byteCount":J
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_15

    .line 681
    iget-object v2, p0, Lpl/droidsonroids/gif/GifDrawable;->mBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 685
    :goto_14
    return-wide v0

    .line 683
    :cond_15
    invoke-virtual {p0}, Lpl/droidsonroids/gif/GifDrawable;->getFrameByteCount()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    goto :goto_14
.end method

.method public getAlpha()I
    .registers 2

    .prologue
    .line 794
    iget-object v0, p0, Lpl/droidsonroids/gif/GifDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    return v0
.end method

.method public getAudioSessionId()I
    .registers 2

    .prologue
    .line 656
    const/4 v0, 0x0

    return v0
.end method

.method public getBufferPercentage()I
    .registers 2

    .prologue
    .line 615
    const/16 v0, 0x64

    return v0
.end method

.method public getColorFilter()Landroid/graphics/ColorFilter;
    .registers 2

    .prologue
    .line 833
    iget-object v0, p0, Lpl/droidsonroids/gif/GifDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    return-object v0
.end method

.method public getComment()Ljava/lang/String;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 401
    iget-object v0, p0, Lpl/droidsonroids/gif/GifDrawable;->mNativeInfoHandle:Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-virtual {v0}, Lpl/droidsonroids/gif/GifInfoHandle;->getComment()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCornerRadius()F
    .registers 2
    .annotation build Landroid/support/annotation/FloatRange;
        from = 0.0
    .end annotation

    .prologue
    .line 978
    iget-object v0, p0, Lpl/droidsonroids/gif/GifDrawable;->mTransform:Lpl/droidsonroids/gif/transforms/Transform;

    instance-of v0, v0, Lpl/droidsonroids/gif/transforms/CornerRadiusTransform;

    if-eqz v0, :cond_f

    .line 979
    iget-object v0, p0, Lpl/droidsonroids/gif/GifDrawable;->mTransform:Lpl/droidsonroids/gif/transforms/Transform;

    check-cast v0, Lpl/droidsonroids/gif/transforms/CornerRadiusTransform;

    invoke-virtual {v0}, Lpl/droidsonroids/gif/transforms/CornerRadiusTransform;->getCornerRadius()F

    move-result v0

    .line 981
    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public getCurrentFrame()Landroid/graphics/Bitmap;
    .registers 5

    .prologue
    .line 842
    iget-object v1, p0, Lpl/droidsonroids/gif/GifDrawable;->mBuffer:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lpl/droidsonroids/gif/GifDrawable;->mBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    iget-object v3, p0, Lpl/droidsonroids/gif/GifDrawable;->mBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 843
    .local v0, "copy":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lpl/droidsonroids/gif/GifDrawable;->mBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 844
    return-object v0
.end method

.method public getCurrentFrameIndex()I
    .registers 2

    .prologue
    .line 922
    iget-object v0, p0, Lpl/droidsonroids/gif/GifDrawable;->mNativeInfoHandle:Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-virtual {v0}, Lpl/droidsonroids/gif/GifInfoHandle;->getCurrentFrameIndex()I

    move-result v0

    return v0
.end method

.method public getCurrentLoop()I
    .registers 3

    .prologue
    .line 932
    iget-object v1, p0, Lpl/droidsonroids/gif/GifDrawable;->mNativeInfoHandle:Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-virtual {v1}, Lpl/droidsonroids/gif/GifInfoHandle;->getCurrentLoop()I

    move-result v0

    .line 933
    .local v0, "currentLoop":I
    if-eqz v0, :cond_10

    iget-object v1, p0, Lpl/droidsonroids/gif/GifDrawable;->mNativeInfoHandle:Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-virtual {v1}, Lpl/droidsonroids/gif/GifInfoHandle;->getLoopCount()I

    move-result v1

    if-ge v0, v1, :cond_11

    .line 936
    .end local v0    # "currentLoop":I
    :cond_10
    :goto_10
    return v0

    .restart local v0    # "currentLoop":I
    :cond_11
    add-int/lit8 v0, v0, -0x1

    goto :goto_10
.end method

.method public getCurrentPosition()I
    .registers 2

    .prologue
    .line 508
    iget-object v0, p0, Lpl/droidsonroids/gif/GifDrawable;->mNativeInfoHandle:Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-virtual {v0}, Lpl/droidsonroids/gif/GifInfoHandle;->getCurrentPosition()I

    move-result v0

    return v0
.end method

.method public getDuration()I
    .registers 2

    .prologue
    .line 497
    iget-object v0, p0, Lpl/droidsonroids/gif/GifDrawable;->mNativeInfoHandle:Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-virtual {v0}, Lpl/droidsonroids/gif/GifInfoHandle;->getDuration()I

    move-result v0

    return v0
.end method

.method public getError()Lpl/droidsonroids/gif/GifError;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 446
    iget-object v0, p0, Lpl/droidsonroids/gif/GifDrawable;->mNativeInfoHandle:Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-virtual {v0}, Lpl/droidsonroids/gif/GifInfoHandle;->getNativeErrorCode()I

    move-result v0

    invoke-static {v0}, Lpl/droidsonroids/gif/GifError;->fromCode(I)Lpl/droidsonroids/gif/GifError;

    move-result-object v0

    return-object v0
.end method

.method public getFrameByteCount()I
    .registers 3

    .prologue
    .line 668
    iget-object v0, p0, Lpl/droidsonroids/gif/GifDrawable;->mBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v0

    iget-object v1, p0, Lpl/droidsonroids/gif/GifDrawable;->mBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method

.method public getFrameDuration(I)I
    .registers 3
    .param p1, "index"    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    .prologue
    .line 958
    iget-object v0, p0, Lpl/droidsonroids/gif/GifDrawable;->mNativeInfoHandle:Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-virtual {v0, p1}, Lpl/droidsonroids/gif/GifInfoHandle;->getFrameDuration(I)I

    move-result v0

    return v0
.end method

.method public getInputSourceByteCount()J
    .registers 3

    .prologue
    .line 708
    iget-object v0, p0, Lpl/droidsonroids/gif/GifDrawable;->mNativeInfoHandle:Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-virtual {v0}, Lpl/droidsonroids/gif/GifInfoHandle;->getSourceLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public getIntrinsicHeight()I
    .registers 2

    .prologue
    .line 291
    iget v0, p0, Lpl/droidsonroids/gif/GifDrawable;->mScaledHeight:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .registers 2

    .prologue
    .line 296
    iget v0, p0, Lpl/droidsonroids/gif/GifDrawable;->mScaledWidth:I

    return v0
.end method

.method public getLoopCount()I
    .registers 2

    .prologue
    .line 411
    iget-object v0, p0, Lpl/droidsonroids/gif/GifDrawable;->mNativeInfoHandle:Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-virtual {v0}, Lpl/droidsonroids/gif/GifInfoHandle;->getLoopCount()I

    move-result v0

    return v0
.end method

.method public getMetadataAllocationByteCount()J
    .registers 3

    .prologue
    .line 695
    iget-object v0, p0, Lpl/droidsonroids/gif/GifDrawable;->mNativeInfoHandle:Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-virtual {v0}, Lpl/droidsonroids/gif/GifInfoHandle;->getMetadataByteCount()J

    move-result-wide v0

    return-wide v0
.end method

.method public getNumberOfFrames()I
    .registers 2

    .prologue
    .line 436
    iget-object v0, p0, Lpl/droidsonroids/gif/GifDrawable;->mNativeInfoHandle:Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-virtual {v0}, Lpl/droidsonroids/gif/GifInfoHandle;->getNumberOfFrames()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .registers 3

    .prologue
    .line 317
    iget-object v0, p0, Lpl/droidsonroids/gif/GifDrawable;->mNativeInfoHandle:Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-virtual {v0}, Lpl/droidsonroids/gif/GifInfoHandle;->isOpaque()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lpl/droidsonroids/gif/GifDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    const/16 v1, 0xff

    if-ge v0, v1, :cond_14

    .line 318
    :cond_12
    const/4 v0, -0x2

    .line 320
    :goto_13
    return v0

    :cond_14
    const/4 v0, -0x1

    goto :goto_13
.end method

.method public final getPaint()Landroid/graphics/Paint;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 789
    iget-object v0, p0, Lpl/droidsonroids/gif/GifDrawable;->mPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getPixel(II)I
    .registers 5
    .param p1, "x"    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p2, "y"    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    .prologue
    .line 733
    iget-object v0, p0, Lpl/droidsonroids/gif/GifDrawable;->mNativeInfoHandle:Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-virtual {v0}, Lpl/droidsonroids/gif/GifInfoHandle;->getWidth()I

    move-result v0

    if-lt p1, v0, :cond_10

    .line 734
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "x must be < width"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 736
    :cond_10
    iget-object v0, p0, Lpl/droidsonroids/gif/GifDrawable;->mNativeInfoHandle:Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-virtual {v0}, Lpl/droidsonroids/gif/GifInfoHandle;->getHeight()I

    move-result v0

    if-lt p2, v0, :cond_20

    .line 737
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "y must be < height"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 739
    :cond_20
    iget-object v0, p0, Lpl/droidsonroids/gif/GifDrawable;->mBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v0

    return v0
.end method

.method public getPixels([I)V
    .registers 10
    .param p1, "pixels"    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    .line 718
    iget-object v0, p0, Lpl/droidsonroids/gif/GifDrawable;->mBuffer:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lpl/droidsonroids/gif/GifDrawable;->mNativeInfoHandle:Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-virtual {v1}, Lpl/droidsonroids/gif/GifInfoHandle;->getWidth()I

    move-result v3

    iget-object v1, p0, Lpl/droidsonroids/gif/GifDrawable;->mNativeInfoHandle:Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-virtual {v1}, Lpl/droidsonroids/gif/GifInfoHandle;->getWidth()I

    move-result v6

    iget-object v1, p0, Lpl/droidsonroids/gif/GifDrawable;->mNativeInfoHandle:Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-virtual {v1}, Lpl/droidsonroids/gif/GifInfoHandle;->getHeight()I

    move-result v7

    move-object v1, p1

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 719
    return-void
.end method

.method public getTransform()Lpl/droidsonroids/gif/transforms/Transform;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 1002
    iget-object v0, p0, Lpl/droidsonroids/gif/GifDrawable;->mTransform:Lpl/droidsonroids/gif/transforms/Transform;

    return-object v0
.end method

.method public invalidateSelf()V
    .registers 1

    .prologue
    .line 285
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 286
    invoke-direct {p0}, Lpl/droidsonroids/gif/GifDrawable;->scheduleNextRender()V

    .line 287
    return-void
.end method

.method public isAnimationCompleted()Z
    .registers 2

    .prologue
    .line 946
    iget-object v0, p0, Lpl/droidsonroids/gif/GifDrawable;->mNativeInfoHandle:Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-virtual {v0}, Lpl/droidsonroids/gif/GifInfoHandle;->isAnimationCompleted()Z

    move-result v0

    return v0
.end method

.method public isPlaying()Z
    .registers 2

    .prologue
    .line 604
    iget-boolean v0, p0, Lpl/droidsonroids/gif/GifDrawable;->mIsRunning:Z

    return v0
.end method

.method public isRecycled()Z
    .registers 2

    .prologue
    .line 280
    iget-object v0, p0, Lpl/droidsonroids/gif/GifDrawable;->mNativeInfoHandle:Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-virtual {v0}, Lpl/droidsonroids/gif/GifInfoHandle;->isRecycled()Z

    move-result v0

    return v0
.end method

.method public isRunning()Z
    .registers 2

    .prologue
    .line 391
    iget-boolean v0, p0, Lpl/droidsonroids/gif/GifDrawable;->mIsRunning:Z

    return v0
.end method

.method public isStateful()Z
    .registers 2

    .prologue
    .line 881
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lpl/droidsonroids/gif/GifDrawable;->mTint:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lpl/droidsonroids/gif/GifDrawable;->mTint:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_12
    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 744
    iget-object v0, p0, Lpl/droidsonroids/gif/GifDrawable;->mDstRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 745
    iget-object v0, p0, Lpl/droidsonroids/gif/GifDrawable;->mTransform:Lpl/droidsonroids/gif/transforms/Transform;

    if-eqz v0, :cond_e

    .line 746
    iget-object v0, p0, Lpl/droidsonroids/gif/GifDrawable;->mTransform:Lpl/droidsonroids/gif/transforms/Transform;

    invoke-interface {v0, p1}, Lpl/droidsonroids/gif/transforms/Transform;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 748
    :cond_e
    return-void
.end method

.method protected onStateChange([I)Z
    .registers 4
    .param p1, "stateSet"    # [I

    .prologue
    .line 872
    iget-object v0, p0, Lpl/droidsonroids/gif/GifDrawable;->mTint:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lpl/droidsonroids/gif/GifDrawable;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    if-eqz v0, :cond_14

    .line 873
    iget-object v0, p0, Lpl/droidsonroids/gif/GifDrawable;->mTint:Landroid/content/res/ColorStateList;

    iget-object v1, p0, Lpl/droidsonroids/gif/GifDrawable;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p0, v0, v1}, Lpl/droidsonroids/gif/GifDrawable;->updateTintFilter(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    iput-object v0, p0, Lpl/droidsonroids/gif/GifDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 874
    const/4 v0, 0x1

    .line 876
    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public pause()V
    .registers 1

    .prologue
    .line 484
    invoke-virtual {p0}, Lpl/droidsonroids/gif/GifDrawable;->stop()V

    .line 485
    return-void
.end method

.method public recycle()V
    .registers 2

    .prologue
    .line 266
    invoke-direct {p0}, Lpl/droidsonroids/gif/GifDrawable;->shutdown()V

    .line 267
    iget-object v0, p0, Lpl/droidsonroids/gif/GifDrawable;->mBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 268
    return-void
.end method

.method public removeAnimationListener(Lpl/droidsonroids/gif/AnimationListener;)Z
    .registers 3
    .param p1, "listener"    # Lpl/droidsonroids/gif/AnimationListener;

    .prologue
    .line 828
    iget-object v0, p0, Lpl/droidsonroids/gif/GifDrawable;->mListeners:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public reset()V
    .registers 3

    .prologue
    .line 355
    iget-object v0, p0, Lpl/droidsonroids/gif/GifDrawable;->mExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v1, Lpl/droidsonroids/gif/GifDrawable$1;

    invoke-direct {v1, p0, p0}, Lpl/droidsonroids/gif/GifDrawable$1;-><init>(Lpl/droidsonroids/gif/GifDrawable;Lpl/droidsonroids/gif/GifDrawable;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 363
    return-void
.end method

.method public seekTo(I)V
    .registers 4
    .param p1, "position"    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0x7fffffffL
        .end annotation
    .end param

    .prologue
    .line 525
    if-gez p1, :cond_a

    .line 526
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Position is not positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 528
    :cond_a
    iget-object v0, p0, Lpl/droidsonroids/gif/GifDrawable;->mExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v1, Lpl/droidsonroids/gif/GifDrawable$2;

    invoke-direct {v1, p0, p0, p1}, Lpl/droidsonroids/gif/GifDrawable$2;-><init>(Lpl/droidsonroids/gif/GifDrawable;Lpl/droidsonroids/gif/GifDrawable;I)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 535
    return-void
.end method

.method public seekToFrame(I)V
    .registers 4
    .param p1, "frameIndex"    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0x7fffffffL
        .end annotation
    .end param

    .prologue
    .line 545
    if-gez p1, :cond_a

    .line 546
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Frame index is not positive"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 548
    :cond_a
    iget-object v0, p0, Lpl/droidsonroids/gif/GifDrawable;->mExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v1, Lpl/droidsonroids/gif/GifDrawable$3;

    invoke-direct {v1, p0, p0, p1}, Lpl/droidsonroids/gif/GifDrawable$3;-><init>(Lpl/droidsonroids/gif/GifDrawable;Lpl/droidsonroids/gif/GifDrawable;I)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 555
    return-void
.end method

.method public seekToFrameAndGet(I)Landroid/graphics/Bitmap;
    .registers 8
    .param p1, "frameIndex"    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0x7fffffffL
        .end annotation
    .end param

    .prologue
    .line 565
    if-gez p1, :cond_a

    .line 566
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    const-string v2, "Frame index is not positive"

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 569
    :cond_a
    iget-object v2, p0, Lpl/droidsonroids/gif/GifDrawable;->mNativeInfoHandle:Lpl/droidsonroids/gif/GifInfoHandle;

    monitor-enter v2

    .line 570
    :try_start_d
    iget-object v1, p0, Lpl/droidsonroids/gif/GifDrawable;->mNativeInfoHandle:Lpl/droidsonroids/gif/GifInfoHandle;

    iget-object v3, p0, Lpl/droidsonroids/gif/GifDrawable;->mBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v1, p1, v3}, Lpl/droidsonroids/gif/GifInfoHandle;->seekToFrame(ILandroid/graphics/Bitmap;)V

    .line 571
    invoke-virtual {p0}, Lpl/droidsonroids/gif/GifDrawable;->getCurrentFrame()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 572
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    monitor-exit v2
    :try_end_19
    .catchall {:try_start_d .. :try_end_19} :catchall_22

    .line 573
    iget-object v1, p0, Lpl/droidsonroids/gif/GifDrawable;->mInvalidationHandler:Lpl/droidsonroids/gif/InvalidationHandler;

    const/4 v2, -0x1

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v2, v4, v5}, Lpl/droidsonroids/gif/InvalidationHandler;->sendEmptyMessageAtTime(IJ)Z

    .line 574
    return-object v0

    .line 572
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :catchall_22
    move-exception v1

    :try_start_23
    monitor-exit v2
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw v1
.end method

.method public seekToPositionAndGet(I)Landroid/graphics/Bitmap;
    .registers 8
    .param p1, "position"    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0x7fffffffL
        .end annotation
    .end param

    .prologue
    .line 585
    if-gez p1, :cond_a

    .line 586
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Position is not positive"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 589
    :cond_a
    iget-object v2, p0, Lpl/droidsonroids/gif/GifDrawable;->mNativeInfoHandle:Lpl/droidsonroids/gif/GifInfoHandle;

    monitor-enter v2

    .line 590
    :try_start_d
    iget-object v1, p0, Lpl/droidsonroids/gif/GifDrawable;->mNativeInfoHandle:Lpl/droidsonroids/gif/GifInfoHandle;

    iget-object v3, p0, Lpl/droidsonroids/gif/GifDrawable;->mBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v1, p1, v3}, Lpl/droidsonroids/gif/GifInfoHandle;->seekToTime(ILandroid/graphics/Bitmap;)V

    .line 591
    invoke-virtual {p0}, Lpl/droidsonroids/gif/GifDrawable;->getCurrentFrame()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 592
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    monitor-exit v2
    :try_end_19
    .catchall {:try_start_d .. :try_end_19} :catchall_22

    .line 593
    iget-object v1, p0, Lpl/droidsonroids/gif/GifDrawable;->mInvalidationHandler:Lpl/droidsonroids/gif/InvalidationHandler;

    const/4 v2, -0x1

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v2, v4, v5}, Lpl/droidsonroids/gif/InvalidationHandler;->sendEmptyMessageAtTime(IJ)Z

    .line 594
    return-object v0

    .line 592
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :catchall_22
    move-exception v1

    :try_start_23
    monitor-exit v2
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw v1
.end method

.method public setAlpha(I)V
    .registers 3
    .param p1, "alpha"    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0xffL
        .end annotation
    .end param

    .prologue
    .line 301
    iget-object v0, p0, Lpl/droidsonroids/gif/GifDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 302
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3
    .param p1, "cf"    # Landroid/graphics/ColorFilter;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 306
    iget-object v0, p0, Lpl/droidsonroids/gif/GifDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 307
    return-void
.end method

.method public setCornerRadius(F)V
    .registers 4
    .param p1, "cornerRadius"    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
        .end annotation
    .end param

    .prologue
    .line 969
    new-instance v0, Lpl/droidsonroids/gif/transforms/CornerRadiusTransform;

    invoke-direct {v0, p1}, Lpl/droidsonroids/gif/transforms/CornerRadiusTransform;-><init>(F)V

    iput-object v0, p0, Lpl/droidsonroids/gif/GifDrawable;->mTransform:Lpl/droidsonroids/gif/transforms/Transform;

    .line 970
    iget-object v0, p0, Lpl/droidsonroids/gif/GifDrawable;->mTransform:Lpl/droidsonroids/gif/transforms/Transform;

    iget-object v1, p0, Lpl/droidsonroids/gif/GifDrawable;->mDstRect:Landroid/graphics/Rect;

    invoke-interface {v0, v1}, Lpl/droidsonroids/gif/transforms/Transform;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 971
    return-void
.end method

.method public setDither(Z)V
    .registers 3
    .param p1, "dither"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 807
    iget-object v0, p0, Lpl/droidsonroids/gif/GifDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 808
    invoke-virtual {p0}, Lpl/droidsonroids/gif/GifDrawable;->invalidateSelf()V

    .line 809
    return-void
.end method

.method public setFilterBitmap(Z)V
    .registers 3
    .param p1, "filter"    # Z

    .prologue
    .line 799
    iget-object v0, p0, Lpl/droidsonroids/gif/GifDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 800
    invoke-virtual {p0}, Lpl/droidsonroids/gif/GifDrawable;->invalidateSelf()V

    .line 801
    return-void
.end method

.method public setLoopCount(I)V
    .registers 3
    .param p1, "loopCount"    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0xffffL
        .end annotation
    .end param

    .prologue
    .line 420
    iget-object v0, p0, Lpl/droidsonroids/gif/GifDrawable;->mNativeInfoHandle:Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-virtual {v0, p1}, Lpl/droidsonroids/gif/GifInfoHandle;->setLoopCount(I)V

    .line 421
    return-void
.end method

.method public setSpeed(F)V
    .registers 3
    .param p1, "factor"    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            fromInclusive = false
        .end annotation
    .end param

    .prologue
    .line 476
    iget-object v0, p0, Lpl/droidsonroids/gif/GifDrawable;->mNativeInfoHandle:Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-virtual {v0, p1}, Lpl/droidsonroids/gif/GifInfoHandle;->setSpeedFactor(F)V

    .line 477
    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .registers 3
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 858
    iput-object p1, p0, Lpl/droidsonroids/gif/GifDrawable;->mTint:Landroid/content/res/ColorStateList;

    .line 859
    iget-object v0, p0, Lpl/droidsonroids/gif/GifDrawable;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p0, p1, v0}, Lpl/droidsonroids/gif/GifDrawable;->updateTintFilter(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    iput-object v0, p0, Lpl/droidsonroids/gif/GifDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 860
    invoke-virtual {p0}, Lpl/droidsonroids/gif/GifDrawable;->invalidateSelf()V

    .line 861
    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 3
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 865
    iput-object p1, p0, Lpl/droidsonroids/gif/GifDrawable;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 866
    iget-object v0, p0, Lpl/droidsonroids/gif/GifDrawable;->mTint:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v0, p1}, Lpl/droidsonroids/gif/GifDrawable;->updateTintFilter(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    iput-object v0, p0, Lpl/droidsonroids/gif/GifDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 867
    invoke-virtual {p0}, Lpl/droidsonroids/gif/GifDrawable;->invalidateSelf()V

    .line 868
    return-void
.end method

.method public setTransform(Lpl/droidsonroids/gif/transforms/Transform;)V
    .registers 4
    .param p1, "transform"    # Lpl/droidsonroids/gif/transforms/Transform;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 990
    iput-object p1, p0, Lpl/droidsonroids/gif/GifDrawable;->mTransform:Lpl/droidsonroids/gif/transforms/Transform;

    .line 991
    iget-object v0, p0, Lpl/droidsonroids/gif/GifDrawable;->mTransform:Lpl/droidsonroids/gif/transforms/Transform;

    if-eqz v0, :cond_d

    .line 992
    iget-object v0, p0, Lpl/droidsonroids/gif/GifDrawable;->mTransform:Lpl/droidsonroids/gif/transforms/Transform;

    iget-object v1, p0, Lpl/droidsonroids/gif/GifDrawable;->mDstRect:Landroid/graphics/Rect;

    invoke-interface {v0, v1}, Lpl/droidsonroids/gif/transforms/Transform;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 994
    :cond_d
    return-void
.end method

.method public setVisible(ZZ)Z
    .registers 5
    .param p1, "visible"    # Z
    .param p2, "restart"    # Z

    .prologue
    .line 900
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    .line 901
    .local v0, "changed":Z
    iget-boolean v1, p0, Lpl/droidsonroids/gif/GifDrawable;->mIsRenderingTriggeredOnDraw:Z

    if-nez v1, :cond_14

    .line 902
    if-eqz p1, :cond_15

    .line 903
    if-eqz p2, :cond_f

    .line 904
    invoke-virtual {p0}, Lpl/droidsonroids/gif/GifDrawable;->reset()V

    .line 906
    :cond_f
    if-eqz v0, :cond_14

    .line 907
    invoke-virtual {p0}, Lpl/droidsonroids/gif/GifDrawable;->start()V

    .line 913
    :cond_14
    :goto_14
    return v0

    .line 909
    :cond_15
    if-eqz v0, :cond_14

    .line 910
    invoke-virtual {p0}, Lpl/droidsonroids/gif/GifDrawable;->stop()V

    goto :goto_14
.end method

.method public start()V
    .registers 4

    .prologue
    .line 329
    monitor-enter p0

    .line 330
    :try_start_1
    iget-boolean v2, p0, Lpl/droidsonroids/gif/GifDrawable;->mIsRunning:Z

    if-eqz v2, :cond_7

    .line 331
    monitor-exit p0

    .line 337
    :goto_6
    return-void

    .line 333
    :cond_7
    const/4 v2, 0x1

    iput-boolean v2, p0, Lpl/droidsonroids/gif/GifDrawable;->mIsRunning:Z

    .line 334
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_15

    .line 335
    iget-object v2, p0, Lpl/droidsonroids/gif/GifDrawable;->mNativeInfoHandle:Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-virtual {v2}, Lpl/droidsonroids/gif/GifInfoHandle;->restoreRemainder()J

    move-result-wide v0

    .line 336
    .local v0, "lastFrameRemainder":J
    invoke-virtual {p0, v0, v1}, Lpl/droidsonroids/gif/GifDrawable;->startAnimation(J)V

    goto :goto_6

    .line 334
    .end local v0    # "lastFrameRemainder":J
    :catchall_15
    move-exception v2

    :try_start_16
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw v2
.end method

.method startAnimation(J)V
    .registers 8
    .param p1, "lastFrameRemainder"    # J

    .prologue
    const-wide/16 v2, 0x0

    .line 340
    iget-boolean v0, p0, Lpl/droidsonroids/gif/GifDrawable;->mIsRenderingTriggeredOnDraw:Z

    if-eqz v0, :cond_f

    .line 341
    iput-wide v2, p0, Lpl/droidsonroids/gif/GifDrawable;->mNextFrameRenderTime:J

    .line 342
    iget-object v0, p0, Lpl/droidsonroids/gif/GifDrawable;->mInvalidationHandler:Lpl/droidsonroids/gif/InvalidationHandler;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, v2, v3}, Lpl/droidsonroids/gif/InvalidationHandler;->sendEmptyMessageAtTime(IJ)Z

    .line 347
    :goto_e
    return-void

    .line 344
    :cond_f
    invoke-direct {p0}, Lpl/droidsonroids/gif/GifDrawable;->cancelPendingRenderTask()V

    .line 345
    iget-object v0, p0, Lpl/droidsonroids/gif/GifDrawable;->mExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    iget-object v1, p0, Lpl/droidsonroids/gif/GifDrawable;->mRenderTask:Lpl/droidsonroids/gif/RenderTask;

    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lpl/droidsonroids/gif/GifDrawable;->mRenderTaskSchedule:Ljava/util/concurrent/ScheduledFuture;

    goto :goto_e
.end method

.method public stop()V
    .registers 2

    .prologue
    .line 371
    monitor-enter p0

    .line 372
    :try_start_1
    iget-boolean v0, p0, Lpl/droidsonroids/gif/GifDrawable;->mIsRunning:Z

    if-nez v0, :cond_7

    .line 373
    monitor-exit p0

    .line 380
    :goto_6
    return-void

    .line 375
    :cond_7
    const/4 v0, 0x0

    iput-boolean v0, p0, Lpl/droidsonroids/gif/GifDrawable;->mIsRunning:Z

    .line 376
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_14

    .line 378
    invoke-direct {p0}, Lpl/droidsonroids/gif/GifDrawable;->cancelPendingRenderTask()V

    .line 379
    iget-object v0, p0, Lpl/droidsonroids/gif/GifDrawable;->mNativeInfoHandle:Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-virtual {v0}, Lpl/droidsonroids/gif/GifInfoHandle;->saveRemainder()V

    goto :goto_6

    .line 376
    :catchall_14
    move-exception v0

    :try_start_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .prologue
    .line 428
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v1, "GIF: size: %dx%d, frames: %d, error: %d"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lpl/droidsonroids/gif/GifDrawable;->mNativeInfoHandle:Lpl/droidsonroids/gif/GifInfoHandle;

    .line 429
    invoke-virtual {v4}, Lpl/droidsonroids/gif/GifInfoHandle;->getWidth()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lpl/droidsonroids/gif/GifDrawable;->mNativeInfoHandle:Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-virtual {v4}, Lpl/droidsonroids/gif/GifInfoHandle;->getHeight()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lpl/droidsonroids/gif/GifDrawable;->mNativeInfoHandle:Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-virtual {v4}, Lpl/droidsonroids/gif/GifInfoHandle;->getNumberOfFrames()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lpl/droidsonroids/gif/GifDrawable;->mNativeInfoHandle:Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-virtual {v4}, Lpl/droidsonroids/gif/GifInfoHandle;->getNativeErrorCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 428
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
