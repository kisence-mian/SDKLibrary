.class final Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;
.implements Lcom/kwad/sdk/core/imageloader/utils/IoUtils$CopyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask$TaskCancelledException;
    }
.end annotation


# static fields
.field private static final ERROR_NO_IMAGE_STREAM:Ljava/lang/String; = "No stream for image [%s]"

.field private static final ERROR_POST_PROCESSOR_NULL:Ljava/lang/String; = "Post-processor returned null [%s]"

.field private static final ERROR_PRE_PROCESSOR_NULL:Ljava/lang/String; = "Pre-processor returned null [%s]"

.field private static final ERROR_PROCESSOR_FOR_DISK_CACHE_NULL:Ljava/lang/String; = "Bitmap processor for disk cache returned null [%s]"

.field private static final LOG_CACHE_IMAGE_IN_MEMORY:Ljava/lang/String; = "Cache image in memory [%s]"

.field private static final LOG_CACHE_IMAGE_ON_DISK:Ljava/lang/String; = "Cache image on disk [%s]"

.field private static final LOG_DELAY_BEFORE_LOADING:Ljava/lang/String; = "Delay %d ms before loading...  [%s]"

.field private static final LOG_GET_IMAGE_FROM_MEMORY_CACHE_AFTER_WAITING:Ljava/lang/String; = "...Get cached bitmap from memory after waiting. [%s]"

.field private static final LOG_LOAD_IMAGE_FROM_DISK_CACHE:Ljava/lang/String; = "Load image from disk cache [%s]"

.field private static final LOG_LOAD_IMAGE_FROM_NETWORK:Ljava/lang/String; = "Load image from network [%s]"

.field private static final LOG_POSTPROCESS_IMAGE:Ljava/lang/String; = "PostProcess image before displaying [%s]"

.field private static final LOG_PREPROCESS_IMAGE:Ljava/lang/String; = "PreProcess image before caching in memory [%s]"

.field private static final LOG_PROCESS_IMAGE_BEFORE_CACHE_ON_DISK:Ljava/lang/String; = "Process image before cache on disk [%s]"

.field private static final LOG_RESIZE_CACHED_IMAGE_FILE:Ljava/lang/String; = "Resize image in disk cache [%s]"

.field private static final LOG_RESUME_AFTER_PAUSE:Ljava/lang/String; = ".. Resume loading [%s]"

.field private static final LOG_START_DISPLAY_IMAGE_TASK:Ljava/lang/String; = "Start display image task [%s]"

.field private static final LOG_TASK_CANCELLED_IMAGEAWARE_COLLECTED:Ljava/lang/String; = "ImageAware was collected by GC. Task is cancelled. [%s]"

.field private static final LOG_TASK_CANCELLED_IMAGEAWARE_REUSED:Ljava/lang/String; = "ImageAware is reused for another image. Task is cancelled. [%s]"

.field private static final LOG_TASK_INTERRUPTED:Ljava/lang/String; = "Task was interrupted [%s]"

.field private static final LOG_WAITING_FOR_IMAGE_LOADED:Ljava/lang/String; = "Image already is loading. Waiting... [%s]"

.field private static final LOG_WAITING_FOR_RESUME:Ljava/lang/String; = "ImageLoader is paused. Waiting...  [%s]"


# instance fields
.field private final configuration:Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration;

.field private final decoder:Lcom/kwad/sdk/core/imageloader/core/decode/ImageDecoder;

.field private final downloader:Lcom/kwad/sdk/core/imageloader/core/download/ImageDownloader;

.field private final engine:Lcom/kwad/sdk/core/imageloader/core/ImageLoaderEngine;

.field private final handler:Landroid/os/Handler;

.field final imageAware:Lcom/kwad/sdk/core/imageloader/core/imageaware/ImageAware;

.field private final imageLoadingInfo:Lcom/kwad/sdk/core/imageloader/core/ImageLoadingInfo;

.field final listener:Lcom/kwad/sdk/core/imageloader/core/listener/ImageLoadingListener;

.field private loadedFrom:Lcom/kwad/sdk/core/imageloader/core/assist/LoadedFrom;

.field private final memoryCacheKey:Ljava/lang/String;

.field private final networkDeniedDownloader:Lcom/kwad/sdk/core/imageloader/core/download/ImageDownloader;

.field final options:Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;

.field final progressListener:Lcom/kwad/sdk/core/imageloader/core/listener/ImageLoadingProgressListener;

.field private final slowNetworkDownloader:Lcom/kwad/sdk/core/imageloader/core/download/ImageDownloader;

.field private final syncLoading:Z

.field private final targetSize:Lcom/kwad/sdk/core/imageloader/core/assist/ImageSize;

.field final uri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/kwad/sdk/core/imageloader/core/ImageLoaderEngine;Lcom/kwad/sdk/core/imageloader/core/ImageLoadingInfo;Landroid/os/Handler;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/kwad/sdk/core/imageloader/core/assist/LoadedFrom;->NETWORK:Lcom/kwad/sdk/core/imageloader/core/assist/LoadedFrom;

    iput-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->loadedFrom:Lcom/kwad/sdk/core/imageloader/core/assist/LoadedFrom;

    iput-object p1, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->engine:Lcom/kwad/sdk/core/imageloader/core/ImageLoaderEngine;

    iput-object p2, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->imageLoadingInfo:Lcom/kwad/sdk/core/imageloader/core/ImageLoadingInfo;

    iput-object p3, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->handler:Landroid/os/Handler;

    iget-object v0, p1, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderEngine;->configuration:Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration;

    iput-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->configuration:Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration;

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->configuration:Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration;

    iget-object v1, v0, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration;->downloader:Lcom/kwad/sdk/core/imageloader/core/download/ImageDownloader;

    iput-object v1, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->downloader:Lcom/kwad/sdk/core/imageloader/core/download/ImageDownloader;

    iget-object v1, v0, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration;->networkDeniedDownloader:Lcom/kwad/sdk/core/imageloader/core/download/ImageDownloader;

    iput-object v1, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->networkDeniedDownloader:Lcom/kwad/sdk/core/imageloader/core/download/ImageDownloader;

    iget-object v1, v0, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration;->slowNetworkDownloader:Lcom/kwad/sdk/core/imageloader/core/download/ImageDownloader;

    iput-object v1, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->slowNetworkDownloader:Lcom/kwad/sdk/core/imageloader/core/download/ImageDownloader;

    iget-object v0, v0, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration;->decoder:Lcom/kwad/sdk/core/imageloader/core/decode/ImageDecoder;

    iput-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->decoder:Lcom/kwad/sdk/core/imageloader/core/decode/ImageDecoder;

    iget-object v0, p2, Lcom/kwad/sdk/core/imageloader/core/ImageLoadingInfo;->uri:Ljava/lang/String;

    iput-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->uri:Ljava/lang/String;

    iget-object v0, p2, Lcom/kwad/sdk/core/imageloader/core/ImageLoadingInfo;->memoryCacheKey:Ljava/lang/String;

    iput-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->memoryCacheKey:Ljava/lang/String;

    iget-object v0, p2, Lcom/kwad/sdk/core/imageloader/core/ImageLoadingInfo;->imageAware:Lcom/kwad/sdk/core/imageloader/core/imageaware/ImageAware;

    iput-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->imageAware:Lcom/kwad/sdk/core/imageloader/core/imageaware/ImageAware;

    iget-object v0, p2, Lcom/kwad/sdk/core/imageloader/core/ImageLoadingInfo;->targetSize:Lcom/kwad/sdk/core/imageloader/core/assist/ImageSize;

    iput-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->targetSize:Lcom/kwad/sdk/core/imageloader/core/assist/ImageSize;

    iget-object v0, p2, Lcom/kwad/sdk/core/imageloader/core/ImageLoadingInfo;->options:Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;

    iput-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->options:Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;

    iget-object v0, p2, Lcom/kwad/sdk/core/imageloader/core/ImageLoadingInfo;->listener:Lcom/kwad/sdk/core/imageloader/core/listener/ImageLoadingListener;

    iput-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->listener:Lcom/kwad/sdk/core/imageloader/core/listener/ImageLoadingListener;

    iget-object v0, p2, Lcom/kwad/sdk/core/imageloader/core/ImageLoadingInfo;->progressListener:Lcom/kwad/sdk/core/imageloader/core/listener/ImageLoadingProgressListener;

    iput-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->progressListener:Lcom/kwad/sdk/core/imageloader/core/listener/ImageLoadingProgressListener;

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->options:Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;

    invoke-virtual {v0}, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;->isSyncLoading()Z

    move-result v0

    iput-boolean v0, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->syncLoading:Z

    return-void
.end method

.method static synthetic access$000(Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;)Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->configuration:Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration;

    return-object v0
.end method

.method private checkTaskInterrupted()V
    .registers 2

    invoke-direct {p0}, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->isTaskInterrupted()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    new-instance v0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask$TaskCancelledException;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask$TaskCancelledException;-><init>(Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;)V

    throw v0
.end method

.method private checkTaskNotActual()V
    .registers 1

    invoke-direct {p0}, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->checkViewCollected()V

    invoke-direct {p0}, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->checkViewReused()V

    return-void
.end method

.method private checkViewCollected()V
    .registers 2

    invoke-direct {p0}, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->isViewCollected()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    new-instance v0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask$TaskCancelledException;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask$TaskCancelledException;-><init>(Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;)V

    throw v0
.end method

.method private checkViewReused()V
    .registers 2

    invoke-direct {p0}, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->isViewReused()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    new-instance v0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask$TaskCancelledException;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask$TaskCancelledException;-><init>(Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;)V

    throw v0
.end method

.method private decodeImage(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 10

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->imageAware:Lcom/kwad/sdk/core/imageloader/core/imageaware/ImageAware;

    invoke-interface {v0}, Lcom/kwad/sdk/core/imageloader/core/imageaware/ImageAware;->getScaleType()Lcom/kwad/sdk/core/imageloader/core/assist/ViewScaleType;

    move-result-object v5

    new-instance v0, Lcom/kwad/sdk/core/imageloader/core/decode/ImageDecodingInfo;

    iget-object v1, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->memoryCacheKey:Ljava/lang/String;

    iget-object v3, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->uri:Ljava/lang/String;

    iget-object v4, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->targetSize:Lcom/kwad/sdk/core/imageloader/core/assist/ImageSize;

    invoke-direct {p0}, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->getDownloader()Lcom/kwad/sdk/core/imageloader/core/download/ImageDownloader;

    move-result-object v6

    iget-object v7, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->options:Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lcom/kwad/sdk/core/imageloader/core/decode/ImageDecodingInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kwad/sdk/core/imageloader/core/assist/ImageSize;Lcom/kwad/sdk/core/imageloader/core/assist/ViewScaleType;Lcom/kwad/sdk/core/imageloader/core/download/ImageDownloader;Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;)V

    iget-object v1, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->decoder:Lcom/kwad/sdk/core/imageloader/core/decode/ImageDecoder;

    invoke-interface {v1, v0}, Lcom/kwad/sdk/core/imageloader/core/decode/ImageDecoder;->decode(Lcom/kwad/sdk/core/imageloader/core/decode/ImageDecodingInfo;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private delayIfNeed()Z
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->options:Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;

    invoke-virtual {v2}, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;->shouldDelayBeforeLoading()Z

    move-result v2

    if-eqz v2, :cond_3e

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->options:Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;

    invoke-virtual {v3}, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;->getDelayBeforeLoading()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    iget-object v3, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->memoryCacheKey:Ljava/lang/String;

    aput-object v3, v2, v0

    const-string v3, "Delay %d ms before loading...  [%s]"

    invoke-static {v3, v2}, Lcom/kwad/sdk/core/imageloader/utils/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_22
    iget-object v2, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->options:Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;

    invoke-virtual {v2}, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;->getDelayBeforeLoading()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2c
    .catch Ljava/lang/InterruptedException; {:try_start_22 .. :try_end_2c} :catch_31

    invoke-direct {p0}, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->isTaskNotActual()Z

    move-result v0

    :goto_30
    return v0

    :catch_31
    move-exception v2

    new-array v2, v0, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->memoryCacheKey:Ljava/lang/String;

    aput-object v3, v2, v1

    const-string v1, "Task was interrupted [%s]"

    invoke-static {v1, v2}, Lcom/kwad/sdk/core/imageloader/utils/L;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_30

    :cond_3e
    move v0, v1

    goto :goto_30
.end method

.method private downloadImage()Z
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->getDownloader()Lcom/kwad/sdk/core/imageloader/core/download/ImageDownloader;

    move-result-object v1

    iget-object v2, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->uri:Ljava/lang/String;

    iget-object v3, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->options:Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;

    invoke-virtual {v3}, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;->getExtraForDownloader()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/kwad/sdk/core/imageloader/core/download/ImageDownloader;->getStream(Ljava/lang/String;Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object v1

    if-nez v1, :cond_20

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->memoryCacheKey:Ljava/lang/String;

    aput-object v2, v1, v0

    const-string v2, "No stream for image [%s]"

    invoke-static {v2, v1}, Lcom/kwad/sdk/core/imageloader/utils/L;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1f
    return v0

    :cond_20
    :try_start_20
    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->configuration:Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration;

    iget-object v0, v0, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration;->diskCache:Lcom/kwad/sdk/core/imageloader/cache/disc/DiskCache;

    iget-object v2, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->uri:Ljava/lang/String;

    invoke-interface {v0, v2, v1, p0}, Lcom/kwad/sdk/core/imageloader/cache/disc/DiskCache;->save(Ljava/lang/String;Ljava/io/InputStream;Lcom/kwad/sdk/core/imageloader/utils/IoUtils$CopyListener;)Z
    :try_end_29
    .catchall {:try_start_20 .. :try_end_29} :catchall_2e

    move-result v0

    invoke-static {v1}, Lcom/kwad/sdk/core/imageloader/utils/IoUtils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_1f

    :catchall_2e
    move-exception v0

    invoke-static {v1}, Lcom/kwad/sdk/core/imageloader/utils/IoUtils;->closeSilently(Ljava/io/Closeable;)V

    throw v0
.end method

.method private fireCancelEvent()V
    .registers 5

    iget-boolean v0, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->syncLoading:Z

    if-nez v0, :cond_a

    invoke-direct {p0}, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->isTaskInterrupted()Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_a
    :goto_a
    return-void

    :cond_b
    new-instance v0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask$3;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask$3;-><init>(Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;)V

    iget-object v1, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->engine:Lcom/kwad/sdk/core/imageloader/core/ImageLoaderEngine;

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->runTask(Ljava/lang/Runnable;ZLandroid/os/Handler;Lcom/kwad/sdk/core/imageloader/core/ImageLoaderEngine;)V

    goto :goto_a
.end method

.method private fireFailEvent(Lcom/kwad/sdk/core/imageloader/core/assist/FailReason$FailType;Ljava/lang/Throwable;)V
    .registers 7

    iget-boolean v0, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->syncLoading:Z

    if-nez v0, :cond_10

    invoke-direct {p0}, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->isTaskInterrupted()Z

    move-result v0

    if-nez v0, :cond_10

    invoke-direct {p0}, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->isTaskNotActual()Z

    move-result v0

    if-eqz v0, :cond_11

    :cond_10
    :goto_10
    return-void

    :cond_11
    new-instance v0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask$2;-><init>(Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;Lcom/kwad/sdk/core/imageloader/core/assist/FailReason$FailType;Ljava/lang/Throwable;)V

    iget-object v1, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->engine:Lcom/kwad/sdk/core/imageloader/core/ImageLoaderEngine;

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->runTask(Ljava/lang/Runnable;ZLandroid/os/Handler;Lcom/kwad/sdk/core/imageloader/core/ImageLoaderEngine;)V

    goto :goto_10
.end method

.method private fireProgressEvent(II)Z
    .registers 7

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->isTaskInterrupted()Z

    move-result v1

    if-nez v1, :cond_d

    invoke-direct {p0}, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->isTaskNotActual()Z

    move-result v1

    if-eqz v1, :cond_e

    :cond_d
    :goto_d
    return v0

    :cond_e
    iget-object v1, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->progressListener:Lcom/kwad/sdk/core/imageloader/core/listener/ImageLoadingProgressListener;

    if-eqz v1, :cond_1e

    new-instance v1, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask$1;-><init>(Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;II)V

    iget-object v2, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->engine:Lcom/kwad/sdk/core/imageloader/core/ImageLoaderEngine;

    invoke-static {v1, v0, v2, v3}, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->runTask(Ljava/lang/Runnable;ZLandroid/os/Handler;Lcom/kwad/sdk/core/imageloader/core/ImageLoaderEngine;)V

    :cond_1e
    const/4 v0, 0x1

    goto :goto_d
.end method

.method private getDownloader()Lcom/kwad/sdk/core/imageloader/core/download/ImageDownloader;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->engine:Lcom/kwad/sdk/core/imageloader/core/ImageLoaderEngine;

    invoke-virtual {v0}, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderEngine;->isNetworkDenied()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->networkDeniedDownloader:Lcom/kwad/sdk/core/imageloader/core/download/ImageDownloader;

    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->engine:Lcom/kwad/sdk/core/imageloader/core/ImageLoaderEngine;

    invoke-virtual {v0}, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderEngine;->isSlowNetwork()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->slowNetworkDownloader:Lcom/kwad/sdk/core/imageloader/core/download/ImageDownloader;

    goto :goto_a

    :cond_16
    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->downloader:Lcom/kwad/sdk/core/imageloader/core/download/ImageDownloader;

    goto :goto_a
.end method

.method private isTaskInterrupted()Z
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    if-eqz v2, :cond_14

    new-array v2, v0, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->memoryCacheKey:Ljava/lang/String;

    aput-object v3, v2, v1

    const-string v1, "Task was interrupted [%s]"

    invoke-static {v1, v2}, Lcom/kwad/sdk/core/imageloader/utils/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_13
    return v0

    :cond_14
    move v0, v1

    goto :goto_13
.end method

.method private isTaskNotActual()Z
    .registers 2

    invoke-direct {p0}, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->isViewCollected()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-direct {p0}, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->isViewReused()Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private isViewCollected()Z
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->imageAware:Lcom/kwad/sdk/core/imageloader/core/imageaware/ImageAware;

    invoke-interface {v2}, Lcom/kwad/sdk/core/imageloader/core/imageaware/ImageAware;->isCollected()Z

    move-result v2

    if-eqz v2, :cond_16

    new-array v2, v0, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->memoryCacheKey:Ljava/lang/String;

    aput-object v3, v2, v1

    const-string v1, "ImageAware was collected by GC. Task is cancelled. [%s]"

    invoke-static {v1, v2}, Lcom/kwad/sdk/core/imageloader/utils/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_15
    return v0

    :cond_16
    move v0, v1

    goto :goto_15
.end method

.method private isViewReused()Z
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->engine:Lcom/kwad/sdk/core/imageloader/core/ImageLoaderEngine;

    iget-object v3, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->imageAware:Lcom/kwad/sdk/core/imageloader/core/imageaware/ImageAware;

    invoke-virtual {v2, v3}, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderEngine;->getLoadingUriForView(Lcom/kwad/sdk/core/imageloader/core/imageaware/ImageAware;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->memoryCacheKey:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_20

    new-array v2, v0, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->memoryCacheKey:Ljava/lang/String;

    aput-object v3, v2, v1

    const-string v1, "ImageAware is reused for another image. Task is cancelled. [%s]"

    invoke-static {v1, v2}, Lcom/kwad/sdk/core/imageloader/utils/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1f
    return v0

    :cond_20
    move v0, v1

    goto :goto_1f
.end method

.method private resizeAndSaveImage(II)Z
    .registers 13

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->configuration:Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration;

    iget-object v0, v0, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration;->diskCache:Lcom/kwad/sdk/core/imageloader/cache/disc/DiskCache;

    iget-object v1, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->uri:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/kwad/sdk/core/imageloader/cache/disc/DiskCache;->get(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_86

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_86

    new-instance v4, Lcom/kwad/sdk/core/imageloader/core/assist/ImageSize;

    invoke-direct {v4, p1, p2}, Lcom/kwad/sdk/core/imageloader/core/assist/ImageSize;-><init>(II)V

    new-instance v0, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v0}, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;-><init>()V

    iget-object v1, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->options:Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;->cloneFrom(Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;)Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    sget-object v1, Lcom/kwad/sdk/core/imageloader/core/assist/ImageScaleType;->IN_SAMPLE_INT:Lcom/kwad/sdk/core/imageloader/core/assist/ImageScaleType;

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;->imageScaleType(Lcom/kwad/sdk/core/imageloader/core/assist/ImageScaleType;)Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;->build()Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;

    move-result-object v7

    new-instance v0, Lcom/kwad/sdk/core/imageloader/core/decode/ImageDecodingInfo;

    iget-object v1, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->memoryCacheKey:Ljava/lang/String;

    sget-object v3, Lcom/kwad/sdk/core/imageloader/core/download/ImageDownloader$Scheme;->FILE:Lcom/kwad/sdk/core/imageloader/core/download/ImageDownloader$Scheme;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/kwad/sdk/core/imageloader/core/download/ImageDownloader$Scheme;->wrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->uri:Ljava/lang/String;

    sget-object v5, Lcom/kwad/sdk/core/imageloader/core/assist/ViewScaleType;->FIT_INSIDE:Lcom/kwad/sdk/core/imageloader/core/assist/ViewScaleType;

    invoke-direct {p0}, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->getDownloader()Lcom/kwad/sdk/core/imageloader/core/download/ImageDownloader;

    move-result-object v6

    invoke-direct/range {v0 .. v7}, Lcom/kwad/sdk/core/imageloader/core/decode/ImageDecodingInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kwad/sdk/core/imageloader/core/assist/ImageSize;Lcom/kwad/sdk/core/imageloader/core/assist/ViewScaleType;Lcom/kwad/sdk/core/imageloader/core/download/ImageDownloader;Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;)V

    iget-object v1, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->decoder:Lcom/kwad/sdk/core/imageloader/core/decode/ImageDecoder;

    invoke-interface {v1, v0}, Lcom/kwad/sdk/core/imageloader/core/decode/ImageDecoder;->decode(Lcom/kwad/sdk/core/imageloader/core/decode/ImageDecodingInfo;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_75

    iget-object v1, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->configuration:Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration;

    iget-object v1, v1, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration;->processorForDiskCache:Lcom/kwad/sdk/core/imageloader/core/process/BitmapProcessor;

    if-eqz v1, :cond_75

    new-array v1, v9, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->memoryCacheKey:Ljava/lang/String;

    aput-object v2, v1, v8

    const-string v2, "Process image before cache on disk [%s]"

    invoke-static {v2, v1}, Lcom/kwad/sdk/core/imageloader/utils/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->configuration:Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration;

    iget-object v1, v1, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration;->processorForDiskCache:Lcom/kwad/sdk/core/imageloader/core/process/BitmapProcessor;

    invoke-interface {v1, v0}, Lcom/kwad/sdk/core/imageloader/core/process/BitmapProcessor;->process(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_75

    new-array v1, v9, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->memoryCacheKey:Ljava/lang/String;

    aput-object v2, v1, v8

    const-string v2, "Bitmap processor for disk cache returned null [%s]"

    invoke-static {v2, v1}, Lcom/kwad/sdk/core/imageloader/utils/L;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_75
    move-object v1, v0

    if-eqz v1, :cond_86

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->configuration:Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration;

    iget-object v0, v0, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration;->diskCache:Lcom/kwad/sdk/core/imageloader/cache/disc/DiskCache;

    iget-object v2, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->uri:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Lcom/kwad/sdk/core/imageloader/cache/disc/DiskCache;->save(Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    move-result v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :goto_85
    return v0

    :cond_86
    move v0, v8

    goto :goto_85
.end method

.method static runTask(Ljava/lang/Runnable;ZLandroid/os/Handler;Lcom/kwad/sdk/core/imageloader/core/ImageLoaderEngine;)V
    .registers 4

    if-eqz p1, :cond_6

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :goto_5
    return-void

    :cond_6
    if-nez p2, :cond_c

    invoke-virtual {p3, p0}, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderEngine;->fireCallback(Ljava/lang/Runnable;)V

    goto :goto_5

    :cond_c
    invoke-virtual {p2, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_5
.end method

.method private tryCacheImageOnDisk()Z
    .registers 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->memoryCacheKey:Ljava/lang/String;

    aput-object v2, v0, v1

    const-string v2, "Cache image on disk [%s]"

    invoke-static {v2, v0}, Lcom/kwad/sdk/core/imageloader/utils/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_d
    invoke-direct {p0}, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->downloadImage()Z

    move-result v0

    if-eqz v0, :cond_2f

    iget-object v2, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->configuration:Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration;

    iget v2, v2, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration;->maxImageWidthForDiskCache:I

    iget-object v3, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->configuration:Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration;

    iget v3, v3, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration;->maxImageHeightForDiskCache:I
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_1b} :catch_30

    if-gtz v2, :cond_1f

    if-lez v3, :cond_2f

    :cond_1f
    const-string v4, "Resize image in disk cache [%s]"

    const/4 v5, 0x1

    :try_start_22
    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->memoryCacheKey:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/kwad/sdk/core/imageloader/utils/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0, v2, v3}, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->resizeAndSaveImage(II)Z
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_2f} :catch_30

    :cond_2f
    :goto_2f
    return v0

    :catch_30
    move-exception v0

    invoke-static {v0}, Lcom/kwad/sdk/core/imageloader/utils/L;->e(Ljava/lang/Throwable;)V

    move v0, v1

    goto :goto_2f
.end method

.method private tryLoadBitmap()Landroid/graphics/Bitmap;
    .registers 8

    const/4 v1, 0x0

    :try_start_1
    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->configuration:Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration;

    iget-object v0, v0, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration;->diskCache:Lcom/kwad/sdk/core/imageloader/cache/disc/DiskCache;

    iget-object v2, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->uri:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/kwad/sdk/core/imageloader/cache/disc/DiskCache;->get(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_d9

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_d9

    invoke-virtual {v0}, Ljava/io/File;->length()J
    :try_end_16
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_16} :catch_c9
    .catch Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask$TaskCancelledException; {:try_start_1 .. :try_end_16} :catch_c7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_16} :catch_ba
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_16} :catch_ad
    .catchall {:try_start_1 .. :try_end_16} :catchall_a0

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_d9

    const-string v2, "Load image from disk cache [%s]"

    const/4 v3, 0x1

    :try_start_20
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->memoryCacheKey:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/kwad/sdk/core/imageloader/utils/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v2, Lcom/kwad/sdk/core/imageloader/core/assist/LoadedFrom;->DISC_CACHE:Lcom/kwad/sdk/core/imageloader/core/assist/LoadedFrom;

    iput-object v2, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->loadedFrom:Lcom/kwad/sdk/core/imageloader/core/assist/LoadedFrom;

    invoke-direct {p0}, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->checkTaskNotActual()V

    sget-object v2, Lcom/kwad/sdk/core/imageloader/core/download/ImageDownloader$Scheme;->FILE:Lcom/kwad/sdk/core/imageloader/core/download/ImageDownloader$Scheme;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/kwad/sdk/core/imageloader/core/download/ImageDownloader$Scheme;->wrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->decodeImage(Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_3e
    .catch Ljava/lang/IllegalStateException; {:try_start_20 .. :try_end_3e} :catch_c9
    .catch Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask$TaskCancelledException; {:try_start_20 .. :try_end_3e} :catch_c7
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_3e} :catch_ba
    .catch Ljava/lang/OutOfMemoryError; {:try_start_20 .. :try_end_3e} :catch_ad
    .catchall {:try_start_20 .. :try_end_3e} :catchall_a0

    move-result-object v0

    :goto_3f
    if-eqz v0, :cond_4d

    :try_start_41
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-lez v2, :cond_4d

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I
    :try_end_4a
    .catch Ljava/lang/IllegalStateException; {:try_start_41 .. :try_end_4a} :catch_d1
    .catch Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask$TaskCancelledException; {:try_start_41 .. :try_end_4a} :catch_c7
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_4a} :catch_d3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_41 .. :try_end_4a} :catch_d5
    .catchall {:try_start_41 .. :try_end_4a} :catchall_d7

    move-result v2

    if-gtz v2, :cond_9f

    :cond_4d
    const-string v2, "Load image from network [%s]"

    const/4 v3, 0x1

    :try_start_50
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->memoryCacheKey:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/kwad/sdk/core/imageloader/utils/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v2, Lcom/kwad/sdk/core/imageloader/core/assist/LoadedFrom;->NETWORK:Lcom/kwad/sdk/core/imageloader/core/assist/LoadedFrom;

    iput-object v2, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->loadedFrom:Lcom/kwad/sdk/core/imageloader/core/assist/LoadedFrom;

    iget-object v2, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->uri:Ljava/lang/String;

    iget-object v3, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->options:Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;

    invoke-virtual {v3}, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;->isCacheOnDisk()Z

    move-result v3

    if-eqz v3, :cond_84

    invoke-direct {p0}, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->tryCacheImageOnDisk()Z

    move-result v3

    if-eqz v3, :cond_84

    iget-object v3, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->configuration:Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration;

    iget-object v3, v3, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration;->diskCache:Lcom/kwad/sdk/core/imageloader/cache/disc/DiskCache;

    iget-object v4, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->uri:Ljava/lang/String;

    invoke-interface {v3, v4}, Lcom/kwad/sdk/core/imageloader/cache/disc/DiskCache;->get(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_84

    sget-object v2, Lcom/kwad/sdk/core/imageloader/core/download/ImageDownloader$Scheme;->FILE:Lcom/kwad/sdk/core/imageloader/core/download/ImageDownloader$Scheme;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/kwad/sdk/core/imageloader/core/download/ImageDownloader$Scheme;->wrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_84
    invoke-direct {p0}, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->checkTaskNotActual()V

    invoke-direct {p0, v2}, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->decodeImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_99

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-lez v2, :cond_99

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-gtz v2, :cond_9f

    :cond_99
    sget-object v2, Lcom/kwad/sdk/core/imageloader/core/assist/FailReason$FailType;->DECODING_ERROR:Lcom/kwad/sdk/core/imageloader/core/assist/FailReason$FailType;

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->fireFailEvent(Lcom/kwad/sdk/core/imageloader/core/assist/FailReason$FailType;Ljava/lang/Throwable;)V
    :try_end_9f
    .catch Ljava/lang/IllegalStateException; {:try_start_50 .. :try_end_9f} :catch_d1
    .catch Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask$TaskCancelledException; {:try_start_50 .. :try_end_9f} :catch_c7
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_9f} :catch_d3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_50 .. :try_end_9f} :catch_d5
    .catchall {:try_start_50 .. :try_end_9f} :catchall_d7

    :cond_9f
    :goto_9f
    return-object v0

    :catchall_a0
    move-exception v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    :goto_a4
    invoke-static {v1}, Lcom/kwad/sdk/core/imageloader/utils/L;->e(Ljava/lang/Throwable;)V

    sget-object v2, Lcom/kwad/sdk/core/imageloader/core/assist/FailReason$FailType;->UNKNOWN:Lcom/kwad/sdk/core/imageloader/core/assist/FailReason$FailType;

    invoke-direct {p0, v2, v1}, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->fireFailEvent(Lcom/kwad/sdk/core/imageloader/core/assist/FailReason$FailType;Ljava/lang/Throwable;)V

    goto :goto_9f

    :catch_ad
    move-exception v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    :goto_b1
    invoke-static {v1}, Lcom/kwad/sdk/core/imageloader/utils/L;->e(Ljava/lang/Throwable;)V

    sget-object v2, Lcom/kwad/sdk/core/imageloader/core/assist/FailReason$FailType;->OUT_OF_MEMORY:Lcom/kwad/sdk/core/imageloader/core/assist/FailReason$FailType;

    invoke-direct {p0, v2, v1}, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->fireFailEvent(Lcom/kwad/sdk/core/imageloader/core/assist/FailReason$FailType;Ljava/lang/Throwable;)V

    goto :goto_9f

    :catch_ba
    move-exception v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    :goto_be
    invoke-static {v1}, Lcom/kwad/sdk/core/imageloader/utils/L;->e(Ljava/lang/Throwable;)V

    sget-object v2, Lcom/kwad/sdk/core/imageloader/core/assist/FailReason$FailType;->IO_ERROR:Lcom/kwad/sdk/core/imageloader/core/assist/FailReason$FailType;

    invoke-direct {p0, v2, v1}, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->fireFailEvent(Lcom/kwad/sdk/core/imageloader/core/assist/FailReason$FailType;Ljava/lang/Throwable;)V

    goto :goto_9f

    :catch_c7
    move-exception v0

    throw v0

    :catch_c9
    move-exception v0

    move-object v0, v1

    :goto_cb
    sget-object v2, Lcom/kwad/sdk/core/imageloader/core/assist/FailReason$FailType;->NETWORK_DENIED:Lcom/kwad/sdk/core/imageloader/core/assist/FailReason$FailType;

    invoke-direct {p0, v2, v1}, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->fireFailEvent(Lcom/kwad/sdk/core/imageloader/core/assist/FailReason$FailType;Ljava/lang/Throwable;)V

    goto :goto_9f

    :catch_d1
    move-exception v2

    goto :goto_cb

    :catch_d3
    move-exception v1

    goto :goto_be

    :catch_d5
    move-exception v1

    goto :goto_b1

    :catchall_d7
    move-exception v1

    goto :goto_a4

    :cond_d9
    move-object v0, v1

    goto/16 :goto_3f
.end method

.method private waitIfPaused()Z
    .registers 7

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->engine:Lcom/kwad/sdk/core/imageloader/core/ImageLoaderEngine;

    invoke-virtual {v1}, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderEngine;->getPause()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_3e

    iget-object v2, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->engine:Lcom/kwad/sdk/core/imageloader/core/ImageLoaderEngine;

    invoke-virtual {v2}, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderEngine;->getPauseLock()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_14
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_53

    move-result v1

    if-eqz v1, :cond_3d

    const-string v1, "ImageLoader is paused. Waiting...  [%s]"

    const/4 v3, 0x1

    :try_start_1d
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->memoryCacheKey:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Lcom/kwad/sdk/core/imageloader/utils/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_27
    .catchall {:try_start_1d .. :try_end_27} :catchall_53

    :try_start_27
    iget-object v1, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->engine:Lcom/kwad/sdk/core/imageloader/core/ImageLoaderEngine;

    invoke-virtual {v1}, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderEngine;->getPauseLock()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_30
    .catch Ljava/lang/InterruptedException; {:try_start_27 .. :try_end_30} :catch_43
    .catchall {:try_start_27 .. :try_end_30} :catchall_53

    const-string v0, ".. Resume loading [%s]"

    const/4 v1, 0x1

    :try_start_33
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->memoryCacheKey:Ljava/lang/String;

    aput-object v4, v1, v3

    invoke-static {v0, v1}, Lcom/kwad/sdk/core/imageloader/utils/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3d
    monitor-exit v2
    :try_end_3e
    .catchall {:try_start_33 .. :try_end_3e} :catchall_53

    :cond_3e
    invoke-direct {p0}, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->isTaskNotActual()Z

    move-result v0

    :goto_42
    return v0

    :catch_43
    move-exception v1

    const-string v1, "Task was interrupted [%s]"

    const/4 v3, 0x1

    :try_start_47
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->memoryCacheKey:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Lcom/kwad/sdk/core/imageloader/utils/L;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    monitor-exit v2

    goto :goto_42

    :catchall_53
    move-exception v0

    monitor-exit v2
    :try_end_55
    .catchall {:try_start_47 .. :try_end_55} :catchall_53

    throw v0
.end method


# virtual methods
.method getLoadingUri()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->uri:Ljava/lang/String;

    return-object v0
.end method

.method public onBytesCopied(II)Z
    .registers 4

    iget-boolean v0, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->syncLoading:Z

    if-nez v0, :cond_a

    invoke-direct {p0, p1, p2}, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->fireProgressEvent(II)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public run()V
    .registers 7

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->waitIfPaused()Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    invoke-direct {p0}, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->delayIfNeed()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->imageLoadingInfo:Lcom/kwad/sdk/core/imageloader/core/ImageLoadingInfo;

    iget-object v1, v0, Lcom/kwad/sdk/core/imageloader/core/ImageLoadingInfo;->loadFromUriLock:Ljava/util/concurrent/locks/ReentrantLock;

    new-array v0, v4, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->memoryCacheKey:Ljava/lang/String;

    aput-object v2, v0, v3

    const-string v2, "Start display image task [%s]"

    invoke-static {v2, v0}, Lcom/kwad/sdk/core/imageloader/utils/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->isLocked()Z

    move-result v0

    if-eqz v0, :cond_2f

    new-array v0, v4, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->memoryCacheKey:Ljava/lang/String;

    aput-object v2, v0, v3

    const-string v2, "Image already is loading. Waiting... [%s]"

    invoke-static {v2, v0}, Lcom/kwad/sdk/core/imageloader/utils/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2f
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_32
    invoke-direct {p0}, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->checkTaskNotActual()V

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->configuration:Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration;

    iget-object v0, v0, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration;->memoryCache:Lcom/kwad/sdk/core/imageloader/cache/memory/MemoryCache;

    iget-object v2, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->memoryCacheKey:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/kwad/sdk/core/imageloader/cache/memory/MemoryCache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_47

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-eqz v2, :cond_51

    :cond_47
    invoke-direct {p0}, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->tryLoadBitmap()Landroid/graphics/Bitmap;
    :try_end_4a
    .catch Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask$TaskCancelledException; {:try_start_32 .. :try_end_4a} :catch_107
    .catchall {:try_start_32 .. :try_end_4a} :catchall_110

    move-result-object v0

    if-nez v0, :cond_b1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_8

    :cond_51
    :try_start_51
    sget-object v2, Lcom/kwad/sdk/core/imageloader/core/assist/LoadedFrom;->MEMORY_CACHE:Lcom/kwad/sdk/core/imageloader/core/assist/LoadedFrom;

    iput-object v2, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->loadedFrom:Lcom/kwad/sdk/core/imageloader/core/assist/LoadedFrom;
    :try_end_55
    .catch Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask$TaskCancelledException; {:try_start_51 .. :try_end_55} :catch_107
    .catchall {:try_start_51 .. :try_end_55} :catchall_110

    const-string v2, "...Get cached bitmap from memory after waiting. [%s]"

    const/4 v3, 0x1

    :try_start_58
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->memoryCacheKey:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/kwad/sdk/core/imageloader/utils/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_62
    :goto_62
    if-eqz v0, :cond_92

    iget-object v2, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->options:Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;

    invoke-virtual {v2}, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;->shouldPostProcess()Z
    :try_end_69
    .catch Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask$TaskCancelledException; {:try_start_58 .. :try_end_69} :catch_107
    .catchall {:try_start_58 .. :try_end_69} :catchall_110

    move-result v2

    if-eqz v2, :cond_92

    const-string v2, "PostProcess image before displaying [%s]"

    const/4 v3, 0x1

    :try_start_6f
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->memoryCacheKey:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/kwad/sdk/core/imageloader/utils/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->options:Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;

    invoke-virtual {v2}, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;->getPostProcessor()Lcom/kwad/sdk/core/imageloader/core/process/BitmapProcessor;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/kwad/sdk/core/imageloader/core/process/BitmapProcessor;->process(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    :try_end_82
    .catch Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask$TaskCancelledException; {:try_start_6f .. :try_end_82} :catch_107
    .catchall {:try_start_6f .. :try_end_82} :catchall_110

    move-result-object v0

    if-nez v0, :cond_92

    const-string v2, "Post-processor returned null [%s]"

    const/4 v3, 0x1

    :try_start_88
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->memoryCacheKey:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/kwad/sdk/core/imageloader/utils/L;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_92
    invoke-direct {p0}, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->checkTaskNotActual()V

    invoke-direct {p0}, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->checkTaskInterrupted()V
    :try_end_98
    .catch Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask$TaskCancelledException; {:try_start_88 .. :try_end_98} :catch_107
    .catchall {:try_start_88 .. :try_end_98} :catchall_110

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    new-instance v1, Lcom/kwad/sdk/core/imageloader/core/DisplayBitmapTask;

    iget-object v2, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->imageLoadingInfo:Lcom/kwad/sdk/core/imageloader/core/ImageLoadingInfo;

    iget-object v3, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->engine:Lcom/kwad/sdk/core/imageloader/core/ImageLoaderEngine;

    iget-object v4, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->loadedFrom:Lcom/kwad/sdk/core/imageloader/core/assist/LoadedFrom;

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/kwad/sdk/core/imageloader/core/DisplayBitmapTask;-><init>(Landroid/graphics/Bitmap;Lcom/kwad/sdk/core/imageloader/core/ImageLoadingInfo;Lcom/kwad/sdk/core/imageloader/core/ImageLoaderEngine;Lcom/kwad/sdk/core/imageloader/core/assist/LoadedFrom;)V

    iget-boolean v0, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->syncLoading:Z

    iget-object v2, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->engine:Lcom/kwad/sdk/core/imageloader/core/ImageLoaderEngine;

    invoke-static {v1, v0, v2, v3}, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->runTask(Ljava/lang/Runnable;ZLandroid/os/Handler;Lcom/kwad/sdk/core/imageloader/core/ImageLoaderEngine;)V

    goto/16 :goto_8

    :cond_b1
    :try_start_b1
    invoke-direct {p0}, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->checkTaskNotActual()V

    invoke-direct {p0}, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->checkTaskInterrupted()V

    iget-object v2, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->options:Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;

    invoke-virtual {v2}, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;->shouldPreProcess()Z
    :try_end_bc
    .catch Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask$TaskCancelledException; {:try_start_b1 .. :try_end_bc} :catch_107
    .catchall {:try_start_b1 .. :try_end_bc} :catchall_110

    move-result v2

    if-eqz v2, :cond_e5

    const-string v2, "PreProcess image before caching in memory [%s]"

    const/4 v3, 0x1

    :try_start_c2
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->memoryCacheKey:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/kwad/sdk/core/imageloader/utils/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->options:Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;

    invoke-virtual {v2}, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;->getPreProcessor()Lcom/kwad/sdk/core/imageloader/core/process/BitmapProcessor;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/kwad/sdk/core/imageloader/core/process/BitmapProcessor;->process(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    :try_end_d5
    .catch Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask$TaskCancelledException; {:try_start_c2 .. :try_end_d5} :catch_107
    .catchall {:try_start_c2 .. :try_end_d5} :catchall_110

    move-result-object v0

    if-nez v0, :cond_e5

    const-string v2, "Pre-processor returned null [%s]"

    const/4 v3, 0x1

    :try_start_db
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->memoryCacheKey:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/kwad/sdk/core/imageloader/utils/L;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_e5
    if-eqz v0, :cond_62

    iget-object v2, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->options:Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;

    invoke-virtual {v2}, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;->isCacheInMemory()Z
    :try_end_ec
    .catch Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask$TaskCancelledException; {:try_start_db .. :try_end_ec} :catch_107
    .catchall {:try_start_db .. :try_end_ec} :catchall_110

    move-result v2

    if-eqz v2, :cond_62

    const-string v2, "Cache image in memory [%s]"

    const/4 v3, 0x1

    :try_start_f2
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->memoryCacheKey:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/kwad/sdk/core/imageloader/utils/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->configuration:Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration;

    iget-object v2, v2, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration;->memoryCache:Lcom/kwad/sdk/core/imageloader/cache/memory/MemoryCache;

    iget-object v3, p0, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->memoryCacheKey:Ljava/lang/String;

    invoke-interface {v2, v3, v0}, Lcom/kwad/sdk/core/imageloader/cache/memory/MemoryCache;->put(Ljava/lang/String;Landroid/graphics/Bitmap;)Z
    :try_end_105
    .catch Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask$TaskCancelledException; {:try_start_f2 .. :try_end_105} :catch_107
    .catchall {:try_start_f2 .. :try_end_105} :catchall_110

    goto/16 :goto_62

    :catch_107
    move-exception v0

    :try_start_108
    invoke-direct {p0}, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->fireCancelEvent()V
    :try_end_10b
    .catchall {:try_start_108 .. :try_end_10b} :catchall_110

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_8

    :catchall_110
    move-exception v0

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method
