.class Lpl/droidsonroids/gif/RenderTask;
.super Lpl/droidsonroids/gif/SafeRunnable;
.source "RenderTask.java"


# direct methods
.method constructor <init>(Lpl/droidsonroids/gif/GifDrawable;)V
    .registers 2
    .param p1, "gifDrawable"    # Lpl/droidsonroids/gif/GifDrawable;

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lpl/droidsonroids/gif/SafeRunnable;-><init>(Lpl/droidsonroids/gif/GifDrawable;)V

    .line 13
    return-void
.end method


# virtual methods
.method public doWork()V
    .registers 11

    .prologue
    const-wide/16 v8, 0x0

    const/4 v6, -0x1

    .line 17
    iget-object v2, p0, Lpl/droidsonroids/gif/RenderTask;->mGifDrawable:Lpl/droidsonroids/gif/GifDrawable;

    iget-object v2, v2, Lpl/droidsonroids/gif/GifDrawable;->mNativeInfoHandle:Lpl/droidsonroids/gif/GifInfoHandle;

    iget-object v3, p0, Lpl/droidsonroids/gif/RenderTask;->mGifDrawable:Lpl/droidsonroids/gif/GifDrawable;

    iget-object v3, v3, Lpl/droidsonroids/gif/GifDrawable;->mBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Lpl/droidsonroids/gif/GifInfoHandle;->renderFrame(Landroid/graphics/Bitmap;)J

    move-result-wide v0

    .line 18
    .local v0, "invalidationDelay":J
    cmp-long v2, v0, v8

    if-ltz v2, :cond_8c

    .line 19
    iget-object v2, p0, Lpl/droidsonroids/gif/RenderTask;->mGifDrawable:Lpl/droidsonroids/gif/GifDrawable;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    add-long/2addr v4, v0

    iput-wide v4, v2, Lpl/droidsonroids/gif/GifDrawable;->mNextFrameRenderTime:J

    .line 20
    iget-object v2, p0, Lpl/droidsonroids/gif/RenderTask;->mGifDrawable:Lpl/droidsonroids/gif/GifDrawable;

    invoke-virtual {v2}, Lpl/droidsonroids/gif/GifDrawable;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_45

    iget-object v2, p0, Lpl/droidsonroids/gif/RenderTask;->mGifDrawable:Lpl/droidsonroids/gif/GifDrawable;

    iget-boolean v2, v2, Lpl/droidsonroids/gif/GifDrawable;->mIsRunning:Z

    if-eqz v2, :cond_45

    iget-object v2, p0, Lpl/droidsonroids/gif/RenderTask;->mGifDrawable:Lpl/droidsonroids/gif/GifDrawable;

    iget-boolean v2, v2, Lpl/droidsonroids/gif/GifDrawable;->mIsRenderingTriggeredOnDraw:Z

    if-nez v2, :cond_45

    .line 21
    iget-object v2, p0, Lpl/droidsonroids/gif/RenderTask;->mGifDrawable:Lpl/droidsonroids/gif/GifDrawable;

    iget-object v2, v2, Lpl/droidsonroids/gif/GifDrawable;->mExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v2, p0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->remove(Ljava/lang/Runnable;)Z

    .line 22
    iget-object v2, p0, Lpl/droidsonroids/gif/RenderTask;->mGifDrawable:Lpl/droidsonroids/gif/GifDrawable;

    iget-object v3, p0, Lpl/droidsonroids/gif/RenderTask;->mGifDrawable:Lpl/droidsonroids/gif/GifDrawable;

    iget-object v3, v3, Lpl/droidsonroids/gif/GifDrawable;->mExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, p0, v0, v1, v4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v3

    iput-object v3, v2, Lpl/droidsonroids/gif/GifDrawable;->mRenderTaskSchedule:Ljava/util/concurrent/ScheduledFuture;

    .line 24
    :cond_45
    iget-object v2, p0, Lpl/droidsonroids/gif/RenderTask;->mGifDrawable:Lpl/droidsonroids/gif/GifDrawable;

    iget-object v2, v2, Lpl/droidsonroids/gif/GifDrawable;->mListeners:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_72

    iget-object v2, p0, Lpl/droidsonroids/gif/RenderTask;->mGifDrawable:Lpl/droidsonroids/gif/GifDrawable;

    invoke-virtual {v2}, Lpl/droidsonroids/gif/GifDrawable;->getCurrentFrameIndex()I

    move-result v2

    iget-object v3, p0, Lpl/droidsonroids/gif/RenderTask;->mGifDrawable:Lpl/droidsonroids/gif/GifDrawable;

    iget-object v3, v3, Lpl/droidsonroids/gif/GifDrawable;->mNativeInfoHandle:Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-virtual {v3}, Lpl/droidsonroids/gif/GifInfoHandle;->getNumberOfFrames()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v2, v3, :cond_72

    .line 25
    iget-object v2, p0, Lpl/droidsonroids/gif/RenderTask;->mGifDrawable:Lpl/droidsonroids/gif/GifDrawable;

    iget-object v2, v2, Lpl/droidsonroids/gif/GifDrawable;->mInvalidationHandler:Lpl/droidsonroids/gif/InvalidationHandler;

    iget-object v3, p0, Lpl/droidsonroids/gif/RenderTask;->mGifDrawable:Lpl/droidsonroids/gif/GifDrawable;

    invoke-virtual {v3}, Lpl/droidsonroids/gif/GifDrawable;->getCurrentLoop()I

    move-result v3

    iget-object v4, p0, Lpl/droidsonroids/gif/RenderTask;->mGifDrawable:Lpl/droidsonroids/gif/GifDrawable;

    iget-wide v4, v4, Lpl/droidsonroids/gif/GifDrawable;->mNextFrameRenderTime:J

    invoke-virtual {v2, v3, v4, v5}, Lpl/droidsonroids/gif/InvalidationHandler;->sendEmptyMessageAtTime(IJ)Z

    .line 31
    :cond_72
    :goto_72
    iget-object v2, p0, Lpl/droidsonroids/gif/RenderTask;->mGifDrawable:Lpl/droidsonroids/gif/GifDrawable;

    invoke-virtual {v2}, Lpl/droidsonroids/gif/GifDrawable;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_8b

    iget-object v2, p0, Lpl/droidsonroids/gif/RenderTask;->mGifDrawable:Lpl/droidsonroids/gif/GifDrawable;

    iget-object v2, v2, Lpl/droidsonroids/gif/GifDrawable;->mInvalidationHandler:Lpl/droidsonroids/gif/InvalidationHandler;

    invoke-virtual {v2, v6}, Lpl/droidsonroids/gif/InvalidationHandler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_8b

    .line 32
    iget-object v2, p0, Lpl/droidsonroids/gif/RenderTask;->mGifDrawable:Lpl/droidsonroids/gif/GifDrawable;

    iget-object v2, v2, Lpl/droidsonroids/gif/GifDrawable;->mInvalidationHandler:Lpl/droidsonroids/gif/InvalidationHandler;

    invoke-virtual {v2, v6, v8, v9}, Lpl/droidsonroids/gif/InvalidationHandler;->sendEmptyMessageAtTime(IJ)Z

    .line 34
    :cond_8b
    return-void

    .line 28
    :cond_8c
    iget-object v2, p0, Lpl/droidsonroids/gif/RenderTask;->mGifDrawable:Lpl/droidsonroids/gif/GifDrawable;

    const-wide/high16 v4, -0x8000000000000000L

    iput-wide v4, v2, Lpl/droidsonroids/gif/GifDrawable;->mNextFrameRenderTime:J

    .line 29
    iget-object v2, p0, Lpl/droidsonroids/gif/RenderTask;->mGifDrawable:Lpl/droidsonroids/gif/GifDrawable;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lpl/droidsonroids/gif/GifDrawable;->mIsRunning:Z

    goto :goto_72
.end method
