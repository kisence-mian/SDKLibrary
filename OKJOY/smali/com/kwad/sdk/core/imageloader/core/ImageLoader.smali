.class public Lcom/kwad/sdk/core/imageloader/core/ImageLoader;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/sdk/core/imageloader/core/ImageLoader$SyncImageLoadingListener;
    }
.end annotation


# static fields
.field private static final ERROR_INIT_CONFIG_WITH_NULL:Ljava/lang/String; = "ImageLoader configuration can not be initialized with null"

.field private static final ERROR_NOT_INIT:Ljava/lang/String; = "ImageLoader must be init with configuration before using"

.field private static final ERROR_WRONG_ARGUMENTS:Ljava/lang/String; = "Wrong arguments were passed to displayImage() method (ImageView reference must not be null)"

.field static final LOG_DESTROY:Ljava/lang/String; = "Destroy ImageLoader"

.field static final LOG_INIT_CONFIG:Ljava/lang/String; = "Initialize ImageLoader with configuration"

.field static final LOG_LOAD_IMAGE_FROM_MEMORY_CACHE:Ljava/lang/String; = "Load image from memory cache [%s]"

.field public static final TAG:Ljava/lang/String; = "ImageLoader"

.field private static final WARNING_RE_INIT_CONFIG:Ljava/lang/String; = "Try to initialize ImageLoader which had already been initialized before. To re-init ImageLoader with new configuration call ImageLoader.destroy() at first."

.field private static volatile instance:Lcom/kwad/sdk/core/imageloader/core/ImageLoader;


# instance fields
.field private configuration:Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration;

.field private defaultListener:Lcom/kwad/sdk/core/imageloader/core/listener/ImageLoadingListener;

.field private engine:Lcom/kwad/sdk/core/imageloader/core/ImageLoaderEngine;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method protected constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/kwad/sdk/core/imageloader/core/listener/SimpleImageLoadingListener;

    invoke-direct {v0}, Lcom/kwad/sdk/core/imageloader/core/listener/SimpleImageLoadingListener;-><init>()V

    iput-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/ImageLoader;->defaultListener:Lcom/kwad/sdk/core/imageloader/core/listener/ImageLoadingListener;

    return-void
.end method

.method private checkConfiguration()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/ImageLoader;->configuration:Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration;

    if-eqz v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ImageLoader must be init with configuration before using"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static defineHandler(Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;)Landroid/os/Handler;
    .registers 4

    invoke-virtual {p0}, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;->isSyncLoading()Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v0, 0x0

    :cond_b
    :goto_b
    return-object v0

    :cond_c
    if-nez v0, :cond_b

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_b

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    goto :goto_b
.end method

.method public static getInstance()Lcom/kwad/sdk/core/imageloader/core/ImageLoader;
    .registers 2

    sget-object v0, Lcom/kwad/sdk/core/imageloader/core/ImageLoader;->instance:Lcom/kwad/sdk/core/imageloader/core/ImageLoader;

    if-nez v0, :cond_13

    const-class v1, Lcom/kwad/sdk/core/imageloader/core/ImageLoader;

    monitor-enter v1

    :try_start_7
    sget-object v0, Lcom/kwad/sdk/core/imageloader/core/ImageLoader;->instance:Lcom/kwad/sdk/core/imageloader/core/ImageLoader;

    if-nez v0, :cond_12

    new-instance v0, Lcom/kwad/sdk/core/imageloader/core/ImageLoader;

    invoke-direct {v0}, Lcom/kwad/sdk/core/imageloader/core/ImageLoader;-><init>()V

    sput-object v0, Lcom/kwad/sdk/core/imageloader/core/ImageLoader;->instance:Lcom/kwad/sdk/core/imageloader/core/ImageLoader;

    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    :cond_13
    sget-object v0, Lcom/kwad/sdk/core/imageloader/core/ImageLoader;->instance:Lcom/kwad/sdk/core/imageloader/core/ImageLoader;

    return-object v0

    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method


# virtual methods
.method public cancelDisplayTask(Landroid/widget/ImageView;)V
    .registers 4

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/ImageLoader;->engine:Lcom/kwad/sdk/core/imageloader/core/ImageLoaderEngine;

    new-instance v1, Lcom/kwad/sdk/core/imageloader/core/imageaware/ImageViewAware;

    invoke-direct {v1, p1}, Lcom/kwad/sdk/core/imageloader/core/imageaware/ImageViewAware;-><init>(Landroid/widget/ImageView;)V

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderEngine;->cancelDisplayTaskFor(Lcom/kwad/sdk/core/imageloader/core/imageaware/ImageAware;)V

    return-void
.end method

.method public cancelDisplayTask(Lcom/kwad/sdk/core/imageloader/core/imageaware/ImageAware;)V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/ImageLoader;->engine:Lcom/kwad/sdk/core/imageloader/core/ImageLoaderEngine;

    invoke-virtual {v0, p1}, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderEngine;->cancelDisplayTaskFor(Lcom/kwad/sdk/core/imageloader/core/imageaware/ImageAware;)V

    return-void
.end method

.method public clearDiscCache()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/kwad/sdk/core/imageloader/core/ImageLoader;->clearDiskCache()V

    return-void
.end method

.method public clearDiskCache()V
    .registers 2

    invoke-direct {p0}, Lcom/kwad/sdk/core/imageloader/core/ImageLoader;->checkConfiguration()V

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/ImageLoader;->configuration:Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration;

    iget-object v0, v0, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration;->diskCache:Lcom/kwad/sdk/core/imageloader/cache/disc/DiskCache;

    invoke-interface {v0}, Lcom/kwad/sdk/core/imageloader/cache/disc/DiskCache;->clear()V

    return-void
.end method

.method public clearMemoryCache()V
    .registers 2

    invoke-direct {p0}, Lcom/kwad/sdk/core/imageloader/core/ImageLoader;->checkConfiguration()V

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/ImageLoader;->configuration:Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration;

    iget-object v0, v0, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration;->memoryCache:Lcom/kwad/sdk/core/imageloader/cache/memory/MemoryCache;

    invoke-interface {v0}, Lcom/kwad/sdk/core/imageloader/cache/memory/MemoryCache;->clear()V

    return-void
.end method

.method public denyNetworkDownloads(Z)V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/ImageLoader;->engine:Lcom/kwad/sdk/core/imageloader/core/ImageLoaderEngine;

    invoke-virtual {v0, p1}, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderEngine;->denyNetworkDownloads(Z)V

    return-void
.end method

.method public destroy()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/ImageLoader;->configuration:Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration;

    if-eqz v0, :cond_d

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Destroy ImageLoader"

    invoke-static {v1, v0}, Lcom/kwad/sdk/core/imageloader/utils/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_d
    invoke-virtual {p0}, Lcom/kwad/sdk/core/imageloader/core/ImageLoader;->stop()V

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/ImageLoader;->configuration:Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration;

    iget-object v0, v0, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration;->diskCache:Lcom/kwad/sdk/core/imageloader/cache/disc/DiskCache;

    invoke-interface {v0}, Lcom/kwad/sdk/core/imageloader/cache/disc/DiskCache;->close()V

    iput-object v2, p0, Lcom/kwad/sdk/core/imageloader/core/ImageLoader;->engine:Lcom/kwad/sdk/core/imageloader/core/ImageLoaderEngine;

    iput-object v2, p0, Lcom/kwad/sdk/core/imageloader/core/ImageLoader;->configuration:Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration;

    return-void
.end method

.method public displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V
    .registers 9

    const/4 v3, 0x0

    new-instance v2, Lcom/kwad/sdk/core/imageloader/core/imageaware/ImageViewAware;

    invoke-direct {v2, p2}, Lcom/kwad/sdk/core/imageloader/core/imageaware/ImageViewAware;-><init>(Landroid/widget/ImageView;)V

    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/kwad/sdk/core/imageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Lcom/kwad/sdk/core/imageloader/core/imageaware/ImageAware;Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;Lcom/kwad/sdk/core/imageloader/core/listener/ImageLoadingListener;Lcom/kwad/sdk/core/imageloader/core/listener/ImageLoadingProgressListener;)V

    return-void
.end method

.method public displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;)V
    .registers 10

    const/4 v4, 0x0

    new-instance v2, Lcom/kwad/sdk/core/imageloader/core/imageaware/ImageViewAware;

    invoke-direct {v2, p2}, Lcom/kwad/sdk/core/imageloader/core/imageaware/ImageViewAware;-><init>(Landroid/widget/ImageView;)V

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/kwad/sdk/core/imageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Lcom/kwad/sdk/core/imageloader/core/imageaware/ImageAware;Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;Lcom/kwad/sdk/core/imageloader/core/listener/ImageLoadingListener;Lcom/kwad/sdk/core/imageloader/core/listener/ImageLoadingProgressListener;)V

    return-void
.end method

.method public displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;Lcom/kwad/sdk/core/imageloader/core/listener/ImageLoadingListener;)V
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/kwad/sdk/core/imageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;Lcom/kwad/sdk/core/imageloader/core/listener/ImageLoadingListener;Lcom/kwad/sdk/core/imageloader/core/listener/ImageLoadingProgressListener;)V

    return-void
.end method

.method public displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;Lcom/kwad/sdk/core/imageloader/core/listener/ImageLoadingListener;Lcom/kwad/sdk/core/imageloader/core/listener/ImageLoadingProgressListener;)V
    .registers 12

    new-instance v2, Lcom/kwad/sdk/core/imageloader/core/imageaware/ImageViewAware;

    invoke-direct {v2, p2}, Lcom/kwad/sdk/core/imageloader/core/imageaware/ImageViewAware;-><init>(Landroid/widget/ImageView;)V

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/kwad/sdk/core/imageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Lcom/kwad/sdk/core/imageloader/core/imageaware/ImageAware;Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;Lcom/kwad/sdk/core/imageloader/core/listener/ImageLoadingListener;Lcom/kwad/sdk/core/imageloader/core/listener/ImageLoadingProgressListener;)V

    return-void
.end method

.method public displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/kwad/sdk/core/imageloader/core/assist/ImageSize;)V
    .registers 11

    const/4 v3, 0x0

    new-instance v2, Lcom/kwad/sdk/core/imageloader/core/imageaware/ImageViewAware;

    invoke-direct {v2, p2}, Lcom/kwad/sdk/core/imageloader/core/imageaware/ImageViewAware;-><init>(Landroid/widget/ImageView;)V

    move-object v0, p0

    move-object v1, p1

    move-object v4, p3

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v0 .. v6}, Lcom/kwad/sdk/core/imageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Lcom/kwad/sdk/core/imageloader/core/imageaware/ImageAware;Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;Lcom/kwad/sdk/core/imageloader/core/assist/ImageSize;Lcom/kwad/sdk/core/imageloader/core/listener/ImageLoadingListener;Lcom/kwad/sdk/core/imageloader/core/listener/ImageLoadingProgressListener;)V

    return-void
.end method

.method public displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/kwad/sdk/core/imageloader/core/listener/ImageLoadingListener;)V
    .registers 10

    const/4 v3, 0x0

    new-instance v2, Lcom/kwad/sdk/core/imageloader/core/imageaware/ImageViewAware;

    invoke-direct {v2, p2}, Lcom/kwad/sdk/core/imageloader/core/imageaware/ImageViewAware;-><init>(Landroid/widget/ImageView;)V

    move-object v0, p0

    move-object v1, p1

    move-object v4, p3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/kwad/sdk/core/imageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Lcom/kwad/sdk/core/imageloader/core/imageaware/ImageAware;Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;Lcom/kwad/sdk/core/imageloader/core/listener/ImageLoadingListener;Lcom/kwad/sdk/core/imageloader/core/listener/ImageLoadingProgressListener;)V

    return-void
.end method

.method public displayImage(Ljava/lang/String;Lcom/kwad/sdk/core/imageloader/core/imageaware/ImageAware;)V
    .registers 9

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/kwad/sdk/core/imageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Lcom/kwad/sdk/core/imageloader/core/imageaware/ImageAware;Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;Lcom/kwad/sdk/core/imageloader/core/listener/ImageLoadingListener;Lcom/kwad/sdk/core/imageloader/core/listener/ImageLoadingProgressListener;)V

    return-void
.end method

.method public displayImage(Ljava/lang/String;Lcom/kwad/sdk/core/imageloader/core/imageaware/ImageAware;Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;)V
    .registers 10

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/kwad/sdk/core/imageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Lcom/kwad/sdk/core/imageloader/core/imageaware/ImageAware;Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;Lcom/kwad/sdk/core/imageloader/core/listener/ImageLoadingListener;Lcom/kwad/sdk/core/imageloader/core/listener/ImageLoadingProgressListener;)V

    return-void
.end method

.method public displayImage(Ljava/lang/String;Lcom/kwad/sdk/core/imageloader/core/imageaware/ImageAware;Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;Lcom/kwad/sdk/core/imageloader/core/assist/ImageSize;Lcom/kwad/sdk/core/imageloader/core/listener/ImageLoadingListener;Lcom/kwad/sdk/core/imageloader/core/listener/ImageLoadingProgressListener;)V
    .registers 17

    invoke-direct {p0}, Lcom/kwad/sdk/core/imageloader/core/ImageLoader;->checkConfiguration()V

    if-eqz p2, :cond_100

    if-nez p5, :cond_10e

    iget-object v6, p0, Lcom/kwad/sdk/core/imageloader/core/ImageLoader;->defaultListener:Lcom/kwad/sdk/core/imageloader/core/listener/ImageLoadingListener;

    :goto_9
    if-nez p3, :cond_10b

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/ImageLoader;->configuration:Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration;

    iget-object v5, v0, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration;->defaultDisplayImageOptions:Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;

    :goto_f
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_40

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/ImageLoader;->engine:Lcom/kwad/sdk/core/imageloader/core/ImageLoaderEngine;

    invoke-virtual {v0, p2}, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderEngine;->cancelDisplayTaskFor(Lcom/kwad/sdk/core/imageloader/core/imageaware/ImageAware;)V

    invoke-interface {p2}, Lcom/kwad/sdk/core/imageloader/core/imageaware/ImageAware;->getWrappedView()Landroid/view/View;

    move-result-object v0

    invoke-interface {v6, p1, v0}, Lcom/kwad/sdk/core/imageloader/core/listener/ImageLoadingListener;->onLoadingStarted(Ljava/lang/String;Landroid/view/View;)V

    invoke-virtual {v5}, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;->shouldShowImageForEmptyUri()Z

    move-result v0

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/ImageLoader;->configuration:Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration;

    iget-object v0, v0, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration;->resources:Landroid/content/res/Resources;

    invoke-virtual {v5, v0}, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;->getImageForEmptyUri(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/kwad/sdk/core/imageloader/core/imageaware/ImageAware;->setImageDrawable(Landroid/graphics/drawable/Drawable;)Z

    :goto_32
    invoke-interface {p2}, Lcom/kwad/sdk/core/imageloader/core/imageaware/ImageAware;->getWrappedView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v6, p1, v0, v1}, Lcom/kwad/sdk/core/imageloader/core/listener/ImageLoadingListener;->onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V

    :goto_3a
    return-void

    :cond_3b
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Lcom/kwad/sdk/core/imageloader/core/imageaware/ImageAware;->setImageDrawable(Landroid/graphics/drawable/Drawable;)Z

    goto :goto_32

    :cond_40
    if-nez p4, :cond_108

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/ImageLoader;->configuration:Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration;

    invoke-virtual {v0}, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration;->getMaxImageSize()Lcom/kwad/sdk/core/imageloader/core/assist/ImageSize;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/kwad/sdk/core/imageloader/utils/ImageSizeUtils;->defineTargetSizeForView(Lcom/kwad/sdk/core/imageloader/core/imageaware/ImageAware;Lcom/kwad/sdk/core/imageloader/core/assist/ImageSize;)Lcom/kwad/sdk/core/imageloader/core/assist/ImageSize;

    move-result-object v3

    :goto_4c
    invoke-static {p1, v3}, Lcom/kwad/sdk/core/imageloader/utils/MemoryCacheUtils;->generateKey(Ljava/lang/String;Lcom/kwad/sdk/core/imageloader/core/assist/ImageSize;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/ImageLoader;->engine:Lcom/kwad/sdk/core/imageloader/core/ImageLoaderEngine;

    invoke-virtual {v0, p2, v4}, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderEngine;->prepareDisplayTaskFor(Lcom/kwad/sdk/core/imageloader/core/imageaware/ImageAware;Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/kwad/sdk/core/imageloader/core/imageaware/ImageAware;->getWrappedView()Landroid/view/View;

    move-result-object v0

    invoke-interface {v6, p1, v0}, Lcom/kwad/sdk/core/imageloader/core/listener/ImageLoadingListener;->onLoadingStarted(Ljava/lang/String;Landroid/view/View;)V

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/ImageLoader;->configuration:Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration;

    iget-object v0, v0, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration;->memoryCache:Lcom/kwad/sdk/core/imageloader/cache/memory/MemoryCache;

    invoke-interface {v0, v4}, Lcom/kwad/sdk/core/imageloader/cache/memory/MemoryCache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v9

    if-eqz v9, :cond_b8

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_b8

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v4, v0, v1

    const-string v1, "Load image from memory cache [%s]"

    invoke-static {v1, v0}, Lcom/kwad/sdk/core/imageloader/utils/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5}, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;->shouldPostProcess()Z

    move-result v0

    if-eqz v0, :cond_a7

    new-instance v0, Lcom/kwad/sdk/core/imageloader/core/ImageLoadingInfo;

    iget-object v1, p0, Lcom/kwad/sdk/core/imageloader/core/ImageLoader;->engine:Lcom/kwad/sdk/core/imageloader/core/ImageLoaderEngine;

    invoke-virtual {v1, p1}, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderEngine;->getLockForUri(Ljava/lang/String;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v8

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v8}, Lcom/kwad/sdk/core/imageloader/core/ImageLoadingInfo;-><init>(Ljava/lang/String;Lcom/kwad/sdk/core/imageloader/core/imageaware/ImageAware;Lcom/kwad/sdk/core/imageloader/core/assist/ImageSize;Ljava/lang/String;Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;Lcom/kwad/sdk/core/imageloader/core/listener/ImageLoadingListener;Lcom/kwad/sdk/core/imageloader/core/listener/ImageLoadingProgressListener;Ljava/util/concurrent/locks/ReentrantLock;)V

    new-instance v1, Lcom/kwad/sdk/core/imageloader/core/ProcessAndDisplayImageTask;

    iget-object v2, p0, Lcom/kwad/sdk/core/imageloader/core/ImageLoader;->engine:Lcom/kwad/sdk/core/imageloader/core/ImageLoaderEngine;

    invoke-static {v5}, Lcom/kwad/sdk/core/imageloader/core/ImageLoader;->defineHandler(Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;)Landroid/os/Handler;

    move-result-object v3

    invoke-direct {v1, v2, v9, v0, v3}, Lcom/kwad/sdk/core/imageloader/core/ProcessAndDisplayImageTask;-><init>(Lcom/kwad/sdk/core/imageloader/core/ImageLoaderEngine;Landroid/graphics/Bitmap;Lcom/kwad/sdk/core/imageloader/core/ImageLoadingInfo;Landroid/os/Handler;)V

    invoke-virtual {v5}, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;->isSyncLoading()Z

    move-result v0

    if-eqz v0, :cond_a1

    invoke-virtual {v1}, Lcom/kwad/sdk/core/imageloader/core/ProcessAndDisplayImageTask;->run()V

    goto :goto_3a

    :cond_a1
    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/ImageLoader;->engine:Lcom/kwad/sdk/core/imageloader/core/ImageLoaderEngine;

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderEngine;->submit(Lcom/kwad/sdk/core/imageloader/core/ProcessAndDisplayImageTask;)V

    goto :goto_3a

    :cond_a7
    invoke-virtual {v5}, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;->getDisplayer()Lcom/kwad/sdk/core/imageloader/core/display/BitmapDisplayer;

    move-result-object v0

    sget-object v1, Lcom/kwad/sdk/core/imageloader/core/assist/LoadedFrom;->MEMORY_CACHE:Lcom/kwad/sdk/core/imageloader/core/assist/LoadedFrom;

    invoke-interface {v0, v9, p2, v1}, Lcom/kwad/sdk/core/imageloader/core/display/BitmapDisplayer;->display(Landroid/graphics/Bitmap;Lcom/kwad/sdk/core/imageloader/core/imageaware/ImageAware;Lcom/kwad/sdk/core/imageloader/core/assist/LoadedFrom;)V

    invoke-interface {p2}, Lcom/kwad/sdk/core/imageloader/core/imageaware/ImageAware;->getWrappedView()Landroid/view/View;

    move-result-object v0

    invoke-interface {v6, p1, v0, v9}, Lcom/kwad/sdk/core/imageloader/core/listener/ImageLoadingListener;->onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V

    goto :goto_3a

    :cond_b8
    invoke-virtual {v5}, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;->shouldShowImageOnLoading()Z

    move-result v0

    if-eqz v0, :cond_ee

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/ImageLoader;->configuration:Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration;

    iget-object v0, v0, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration;->resources:Landroid/content/res/Resources;

    invoke-virtual {v5, v0}, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;->getImageOnLoading(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/kwad/sdk/core/imageloader/core/imageaware/ImageAware;->setImageDrawable(Landroid/graphics/drawable/Drawable;)Z

    :cond_c9
    :goto_c9
    new-instance v0, Lcom/kwad/sdk/core/imageloader/core/ImageLoadingInfo;

    iget-object v1, p0, Lcom/kwad/sdk/core/imageloader/core/ImageLoader;->engine:Lcom/kwad/sdk/core/imageloader/core/ImageLoaderEngine;

    invoke-virtual {v1, p1}, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderEngine;->getLockForUri(Ljava/lang/String;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v8

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v8}, Lcom/kwad/sdk/core/imageloader/core/ImageLoadingInfo;-><init>(Ljava/lang/String;Lcom/kwad/sdk/core/imageloader/core/imageaware/ImageAware;Lcom/kwad/sdk/core/imageloader/core/assist/ImageSize;Ljava/lang/String;Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;Lcom/kwad/sdk/core/imageloader/core/listener/ImageLoadingListener;Lcom/kwad/sdk/core/imageloader/core/listener/ImageLoadingProgressListener;Ljava/util/concurrent/locks/ReentrantLock;)V

    new-instance v1, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;

    iget-object v2, p0, Lcom/kwad/sdk/core/imageloader/core/ImageLoader;->engine:Lcom/kwad/sdk/core/imageloader/core/ImageLoaderEngine;

    invoke-static {v5}, Lcom/kwad/sdk/core/imageloader/core/ImageLoader;->defineHandler(Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;)Landroid/os/Handler;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;-><init>(Lcom/kwad/sdk/core/imageloader/core/ImageLoaderEngine;Lcom/kwad/sdk/core/imageloader/core/ImageLoadingInfo;Landroid/os/Handler;)V

    invoke-virtual {v5}, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;->isSyncLoading()Z

    move-result v0

    if-eqz v0, :cond_f9

    invoke-virtual {v1}, Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;->run()V

    goto/16 :goto_3a

    :cond_ee
    invoke-virtual {v5}, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;->isResetViewBeforeLoading()Z

    move-result v0

    if-eqz v0, :cond_c9

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Lcom/kwad/sdk/core/imageloader/core/imageaware/ImageAware;->setImageDrawable(Landroid/graphics/drawable/Drawable;)Z

    goto :goto_c9

    :cond_f9
    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/ImageLoader;->engine:Lcom/kwad/sdk/core/imageloader/core/ImageLoaderEngine;

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderEngine;->submit(Lcom/kwad/sdk/core/imageloader/core/LoadAndDisplayImageTask;)V

    goto/16 :goto_3a

    :cond_100
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Wrong arguments were passed to displayImage() method (ImageView reference must not be null)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_108
    move-object v3, p4

    goto/16 :goto_4c

    :cond_10b
    move-object v5, p3

    goto/16 :goto_f

    :cond_10e
    move-object v6, p5

    goto/16 :goto_9
.end method

.method public displayImage(Ljava/lang/String;Lcom/kwad/sdk/core/imageloader/core/imageaware/ImageAware;Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;Lcom/kwad/sdk/core/imageloader/core/listener/ImageLoadingListener;)V
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/kwad/sdk/core/imageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Lcom/kwad/sdk/core/imageloader/core/imageaware/ImageAware;Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;Lcom/kwad/sdk/core/imageloader/core/listener/ImageLoadingListener;Lcom/kwad/sdk/core/imageloader/core/listener/ImageLoadingProgressListener;)V

    return-void
.end method

.method public displayImage(Ljava/lang/String;Lcom/kwad/sdk/core/imageloader/core/imageaware/ImageAware;Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;Lcom/kwad/sdk/core/imageloader/core/listener/ImageLoadingListener;Lcom/kwad/sdk/core/imageloader/core/listener/ImageLoadingProgressListener;)V
    .registers 13

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/kwad/sdk/core/imageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Lcom/kwad/sdk/core/imageloader/core/imageaware/ImageAware;Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;Lcom/kwad/sdk/core/imageloader/core/assist/ImageSize;Lcom/kwad/sdk/core/imageloader/core/listener/ImageLoadingListener;Lcom/kwad/sdk/core/imageloader/core/listener/ImageLoadingProgressListener;)V

    return-void
.end method

.method public displayImage(Ljava/lang/String;Lcom/kwad/sdk/core/imageloader/core/imageaware/ImageAware;Lcom/kwad/sdk/core/imageloader/core/listener/ImageLoadingListener;)V
    .registers 10

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/kwad/sdk/core/imageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Lcom/kwad/sdk/core/imageloader/core/imageaware/ImageAware;Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;Lcom/kwad/sdk/core/imageloader/core/listener/ImageLoadingListener;Lcom/kwad/sdk/core/imageloader/core/listener/ImageLoadingProgressListener;)V

    return-void
.end method

.method public getDiscCache()Lcom/kwad/sdk/core/imageloader/cache/disc/DiskCache;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/kwad/sdk/core/imageloader/core/ImageLoader;->getDiskCache()Lcom/kwad/sdk/core/imageloader/cache/disc/DiskCache;

    move-result-object v0

    return-object v0
.end method

.method public getDiskCache()Lcom/kwad/sdk/core/imageloader/cache/disc/DiskCache;
    .registers 2

    invoke-direct {p0}, Lcom/kwad/sdk/core/imageloader/core/ImageLoader;->checkConfiguration()V

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/ImageLoader;->configuration:Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration;

    iget-object v0, v0, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration;->diskCache:Lcom/kwad/sdk/core/imageloader/cache/disc/DiskCache;

    return-object v0
.end method

.method public getLoadingUriForView(Landroid/widget/ImageView;)Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/ImageLoader;->engine:Lcom/kwad/sdk/core/imageloader/core/ImageLoaderEngine;

    new-instance v1, Lcom/kwad/sdk/core/imageloader/core/imageaware/ImageViewAware;

    invoke-direct {v1, p1}, Lcom/kwad/sdk/core/imageloader/core/imageaware/ImageViewAware;-><init>(Landroid/widget/ImageView;)V

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderEngine;->getLoadingUriForView(Lcom/kwad/sdk/core/imageloader/core/imageaware/ImageAware;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLoadingUriForView(Lcom/kwad/sdk/core/imageloader/core/imageaware/ImageAware;)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/ImageLoader;->engine:Lcom/kwad/sdk/core/imageloader/core/ImageLoaderEngine;

    invoke-virtual {v0, p1}, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderEngine;->getLoadingUriForView(Lcom/kwad/sdk/core/imageloader/core/imageaware/ImageAware;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMemoryCache()Lcom/kwad/sdk/core/imageloader/cache/memory/MemoryCache;
    .registers 2

    invoke-direct {p0}, Lcom/kwad/sdk/core/imageloader/core/ImageLoader;->checkConfiguration()V

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/ImageLoader;->configuration:Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration;

    iget-object v0, v0, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration;->memoryCache:Lcom/kwad/sdk/core/imageloader/cache/memory/MemoryCache;

    return-object v0
.end method

.method public handleSlowNetwork(Z)V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/ImageLoader;->engine:Lcom/kwad/sdk/core/imageloader/core/ImageLoaderEngine;

    invoke-virtual {v0, p1}, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderEngine;->handleSlowNetwork(Z)V

    return-void
.end method

.method public declared-synchronized init(Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration;)V
    .registers 4

    monitor-enter p0

    if-eqz p1, :cond_26

    :try_start_3
    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/ImageLoader;->configuration:Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration;

    if-nez v0, :cond_1a

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Initialize ImageLoader with configuration"

    invoke-static {v1, v0}, Lcom/kwad/sdk/core/imageloader/utils/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderEngine;

    invoke-direct {v0, p1}, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderEngine;-><init>(Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration;)V

    iput-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/ImageLoader;->engine:Lcom/kwad/sdk/core/imageloader/core/ImageLoaderEngine;

    iput-object p1, p0, Lcom/kwad/sdk/core/imageloader/core/ImageLoader;->configuration:Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration;
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_23

    :goto_18
    monitor-exit p0

    return-void

    :cond_1a
    const/4 v0, 0x0

    :try_start_1b
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Try to initialize ImageLoader which had already been initialized before. To re-init ImageLoader with new configuration call ImageLoader.destroy() at first."

    invoke-static {v1, v0}, Lcom/kwad/sdk/core/imageloader/utils/L;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_22
    .catchall {:try_start_1b .. :try_end_22} :catchall_23

    goto :goto_18

    :catchall_23
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_26
    :try_start_26
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ImageLoader configuration can not be initialized with null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2e
    .catchall {:try_start_26 .. :try_end_2e} :catchall_23
.end method

.method public isInited()Z
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/ImageLoader;->configuration:Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public loadImage(Ljava/lang/String;Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;Lcom/kwad/sdk/core/imageloader/core/listener/ImageLoadingListener;)V
    .registers 10

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/kwad/sdk/core/imageloader/core/ImageLoader;->loadImage(Ljava/lang/String;Lcom/kwad/sdk/core/imageloader/core/assist/ImageSize;Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;Lcom/kwad/sdk/core/imageloader/core/listener/ImageLoadingListener;Lcom/kwad/sdk/core/imageloader/core/listener/ImageLoadingProgressListener;)V

    return-void
.end method

.method public loadImage(Ljava/lang/String;Lcom/kwad/sdk/core/imageloader/core/assist/ImageSize;Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;Lcom/kwad/sdk/core/imageloader/core/listener/ImageLoadingListener;)V
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/kwad/sdk/core/imageloader/core/ImageLoader;->loadImage(Ljava/lang/String;Lcom/kwad/sdk/core/imageloader/core/assist/ImageSize;Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;Lcom/kwad/sdk/core/imageloader/core/listener/ImageLoadingListener;Lcom/kwad/sdk/core/imageloader/core/listener/ImageLoadingProgressListener;)V

    return-void
.end method

.method public loadImage(Ljava/lang/String;Lcom/kwad/sdk/core/imageloader/core/assist/ImageSize;Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;Lcom/kwad/sdk/core/imageloader/core/listener/ImageLoadingListener;Lcom/kwad/sdk/core/imageloader/core/listener/ImageLoadingProgressListener;)V
    .registers 12

    invoke-direct {p0}, Lcom/kwad/sdk/core/imageloader/core/ImageLoader;->checkConfiguration()V

    if-nez p2, :cond_b

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/ImageLoader;->configuration:Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration;

    invoke-virtual {v0}, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration;->getMaxImageSize()Lcom/kwad/sdk/core/imageloader/core/assist/ImageSize;

    move-result-object p2

    :cond_b
    if-nez p3, :cond_20

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/ImageLoader;->configuration:Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration;

    iget-object v3, v0, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration;->defaultDisplayImageOptions:Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;

    :goto_11
    new-instance v2, Lcom/kwad/sdk/core/imageloader/core/imageaware/NonViewAware;

    sget-object v0, Lcom/kwad/sdk/core/imageloader/core/assist/ViewScaleType;->CROP:Lcom/kwad/sdk/core/imageloader/core/assist/ViewScaleType;

    invoke-direct {v2, p1, p2, v0}, Lcom/kwad/sdk/core/imageloader/core/imageaware/NonViewAware;-><init>(Ljava/lang/String;Lcom/kwad/sdk/core/imageloader/core/assist/ImageSize;Lcom/kwad/sdk/core/imageloader/core/assist/ViewScaleType;)V

    move-object v0, p0

    move-object v1, p1

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/kwad/sdk/core/imageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Lcom/kwad/sdk/core/imageloader/core/imageaware/ImageAware;Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;Lcom/kwad/sdk/core/imageloader/core/listener/ImageLoadingListener;Lcom/kwad/sdk/core/imageloader/core/listener/ImageLoadingProgressListener;)V

    return-void

    :cond_20
    move-object v3, p3

    goto :goto_11
.end method

.method public loadImage(Ljava/lang/String;Lcom/kwad/sdk/core/imageloader/core/assist/ImageSize;Lcom/kwad/sdk/core/imageloader/core/listener/ImageLoadingListener;)V
    .registers 10

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/kwad/sdk/core/imageloader/core/ImageLoader;->loadImage(Ljava/lang/String;Lcom/kwad/sdk/core/imageloader/core/assist/ImageSize;Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;Lcom/kwad/sdk/core/imageloader/core/listener/ImageLoadingListener;Lcom/kwad/sdk/core/imageloader/core/listener/ImageLoadingProgressListener;)V

    return-void
.end method

.method public loadImage(Ljava/lang/String;Lcom/kwad/sdk/core/imageloader/core/listener/ImageLoadingListener;)V
    .registers 9

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    move-object v4, p2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/kwad/sdk/core/imageloader/core/ImageLoader;->loadImage(Ljava/lang/String;Lcom/kwad/sdk/core/imageloader/core/assist/ImageSize;Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;Lcom/kwad/sdk/core/imageloader/core/listener/ImageLoadingListener;Lcom/kwad/sdk/core/imageloader/core/listener/ImageLoadingProgressListener;)V

    return-void
.end method

.method public loadImageSync(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/kwad/sdk/core/imageloader/core/ImageLoader;->loadImageSync(Ljava/lang/String;Lcom/kwad/sdk/core/imageloader/core/assist/ImageSize;Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public loadImageSync(Ljava/lang/String;Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;)Landroid/graphics/Bitmap;
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/kwad/sdk/core/imageloader/core/ImageLoader;->loadImageSync(Ljava/lang/String;Lcom/kwad/sdk/core/imageloader/core/assist/ImageSize;Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public loadImageSync(Ljava/lang/String;Lcom/kwad/sdk/core/imageloader/core/assist/ImageSize;)Landroid/graphics/Bitmap;
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/kwad/sdk/core/imageloader/core/ImageLoader;->loadImageSync(Ljava/lang/String;Lcom/kwad/sdk/core/imageloader/core/assist/ImageSize;Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public loadImageSync(Ljava/lang/String;Lcom/kwad/sdk/core/imageloader/core/assist/ImageSize;Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;)Landroid/graphics/Bitmap;
    .registers 7

    if-nez p3, :cond_6

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/ImageLoader;->configuration:Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration;

    iget-object p3, v0, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration;->defaultDisplayImageOptions:Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;

    :cond_6
    new-instance v0, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v0}, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;-><init>()V

    invoke-virtual {v0, p3}, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;->cloneFrom(Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;)Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;->syncLoading(Z)Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions$Builder;->build()Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;

    move-result-object v0

    new-instance v1, Lcom/kwad/sdk/core/imageloader/core/ImageLoader$SyncImageLoadingListener;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/kwad/sdk/core/imageloader/core/ImageLoader$SyncImageLoadingListener;-><init>(Lcom/kwad/sdk/core/imageloader/core/ImageLoader$1;)V

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/kwad/sdk/core/imageloader/core/ImageLoader;->loadImage(Ljava/lang/String;Lcom/kwad/sdk/core/imageloader/core/assist/ImageSize;Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;Lcom/kwad/sdk/core/imageloader/core/listener/ImageLoadingListener;)V

    invoke-virtual {v1}, Lcom/kwad/sdk/core/imageloader/core/ImageLoader$SyncImageLoadingListener;->getLoadedBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public pause()V
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/ImageLoader;->engine:Lcom/kwad/sdk/core/imageloader/core/ImageLoaderEngine;

    invoke-virtual {v0}, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderEngine;->pause()V

    return-void
.end method

.method public resume()V
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/ImageLoader;->engine:Lcom/kwad/sdk/core/imageloader/core/ImageLoaderEngine;

    invoke-virtual {v0}, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderEngine;->resume()V

    return-void
.end method

.method public setDefaultLoadingListener(Lcom/kwad/sdk/core/imageloader/core/listener/ImageLoadingListener;)V
    .registers 2

    if-nez p1, :cond_7

    new-instance p1, Lcom/kwad/sdk/core/imageloader/core/listener/SimpleImageLoadingListener;

    invoke-direct {p1}, Lcom/kwad/sdk/core/imageloader/core/listener/SimpleImageLoadingListener;-><init>()V

    :cond_7
    iput-object p1, p0, Lcom/kwad/sdk/core/imageloader/core/ImageLoader;->defaultListener:Lcom/kwad/sdk/core/imageloader/core/listener/ImageLoadingListener;

    return-void
.end method

.method public stop()V
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/ImageLoader;->engine:Lcom/kwad/sdk/core/imageloader/core/ImageLoaderEngine;

    invoke-virtual {v0}, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderEngine;->stop()V

    return-void
.end method
