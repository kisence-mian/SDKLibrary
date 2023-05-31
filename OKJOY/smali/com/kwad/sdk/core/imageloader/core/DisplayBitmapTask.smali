.class final Lcom/kwad/sdk/core/imageloader/core/DisplayBitmapTask;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final LOG_DISPLAY_IMAGE_IN_IMAGEAWARE:Ljava/lang/String; = "Display image in ImageAware (loaded from %1$s) [%2$s]"

.field private static final LOG_TASK_CANCELLED_IMAGEAWARE_COLLECTED:Ljava/lang/String; = "ImageAware was collected by GC. Task is cancelled. [%s]"

.field private static final LOG_TASK_CANCELLED_IMAGEAWARE_REUSED:Ljava/lang/String; = "ImageAware is reused for another image. Task is cancelled. [%s]"


# instance fields
.field private final bitmap:Landroid/graphics/Bitmap;

.field private final displayer:Lcom/kwad/sdk/core/imageloader/core/display/BitmapDisplayer;

.field private final engine:Lcom/kwad/sdk/core/imageloader/core/ImageLoaderEngine;

.field private final imageAware:Lcom/kwad/sdk/core/imageloader/core/imageaware/ImageAware;

.field private final imageUri:Ljava/lang/String;

.field private final listener:Lcom/kwad/sdk/core/imageloader/core/listener/ImageLoadingListener;

.field private final loadedFrom:Lcom/kwad/sdk/core/imageloader/core/assist/LoadedFrom;

.field private final memoryCacheKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Lcom/kwad/sdk/core/imageloader/core/ImageLoadingInfo;Lcom/kwad/sdk/core/imageloader/core/ImageLoaderEngine;Lcom/kwad/sdk/core/imageloader/core/assist/LoadedFrom;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kwad/sdk/core/imageloader/core/DisplayBitmapTask;->bitmap:Landroid/graphics/Bitmap;

    iget-object v0, p2, Lcom/kwad/sdk/core/imageloader/core/ImageLoadingInfo;->uri:Ljava/lang/String;

    iput-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/DisplayBitmapTask;->imageUri:Ljava/lang/String;

    iget-object v0, p2, Lcom/kwad/sdk/core/imageloader/core/ImageLoadingInfo;->imageAware:Lcom/kwad/sdk/core/imageloader/core/imageaware/ImageAware;

    iput-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/DisplayBitmapTask;->imageAware:Lcom/kwad/sdk/core/imageloader/core/imageaware/ImageAware;

    iget-object v0, p2, Lcom/kwad/sdk/core/imageloader/core/ImageLoadingInfo;->memoryCacheKey:Ljava/lang/String;

    iput-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/DisplayBitmapTask;->memoryCacheKey:Ljava/lang/String;

    iget-object v0, p2, Lcom/kwad/sdk/core/imageloader/core/ImageLoadingInfo;->options:Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;

    invoke-virtual {v0}, Lcom/kwad/sdk/core/imageloader/core/DisplayImageOptions;->getDisplayer()Lcom/kwad/sdk/core/imageloader/core/display/BitmapDisplayer;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/DisplayBitmapTask;->displayer:Lcom/kwad/sdk/core/imageloader/core/display/BitmapDisplayer;

    iget-object v0, p2, Lcom/kwad/sdk/core/imageloader/core/ImageLoadingInfo;->listener:Lcom/kwad/sdk/core/imageloader/core/listener/ImageLoadingListener;

    iput-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/DisplayBitmapTask;->listener:Lcom/kwad/sdk/core/imageloader/core/listener/ImageLoadingListener;

    iput-object p3, p0, Lcom/kwad/sdk/core/imageloader/core/DisplayBitmapTask;->engine:Lcom/kwad/sdk/core/imageloader/core/ImageLoaderEngine;

    iput-object p4, p0, Lcom/kwad/sdk/core/imageloader/core/DisplayBitmapTask;->loadedFrom:Lcom/kwad/sdk/core/imageloader/core/assist/LoadedFrom;

    return-void
.end method

.method private isViewWasReused()Z
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/DisplayBitmapTask;->engine:Lcom/kwad/sdk/core/imageloader/core/ImageLoaderEngine;

    iget-object v1, p0, Lcom/kwad/sdk/core/imageloader/core/DisplayBitmapTask;->imageAware:Lcom/kwad/sdk/core/imageloader/core/imageaware/ImageAware;

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderEngine;->getLoadingUriForView(Lcom/kwad/sdk/core/imageloader/core/imageaware/ImageAware;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/core/imageloader/core/DisplayBitmapTask;->memoryCacheKey:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method


# virtual methods
.method public run()V
    .registers 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/DisplayBitmapTask;->imageAware:Lcom/kwad/sdk/core/imageloader/core/imageaware/ImageAware;

    invoke-interface {v0}, Lcom/kwad/sdk/core/imageloader/core/imageaware/ImageAware;->isCollected()Z

    move-result v0

    if-eqz v0, :cond_23

    new-array v0, v3, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/kwad/sdk/core/imageloader/core/DisplayBitmapTask;->memoryCacheKey:Ljava/lang/String;

    aput-object v1, v0, v2

    const-string v1, "ImageAware was collected by GC. Task is cancelled. [%s]"

    invoke-static {v1, v0}, Lcom/kwad/sdk/core/imageloader/utils/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/DisplayBitmapTask;->listener:Lcom/kwad/sdk/core/imageloader/core/listener/ImageLoadingListener;

    iget-object v1, p0, Lcom/kwad/sdk/core/imageloader/core/DisplayBitmapTask;->imageUri:Ljava/lang/String;

    iget-object v2, p0, Lcom/kwad/sdk/core/imageloader/core/DisplayBitmapTask;->imageAware:Lcom/kwad/sdk/core/imageloader/core/imageaware/ImageAware;

    invoke-interface {v2}, Lcom/kwad/sdk/core/imageloader/core/imageaware/ImageAware;->getWrappedView()Landroid/view/View;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/kwad/sdk/core/imageloader/core/listener/ImageLoadingListener;->onLoadingCancelled(Ljava/lang/String;Landroid/view/View;)V

    :goto_22
    return-void

    :cond_23
    invoke-direct {p0}, Lcom/kwad/sdk/core/imageloader/core/DisplayBitmapTask;->isViewWasReused()Z

    move-result v0

    if-eqz v0, :cond_42

    new-array v0, v3, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/kwad/sdk/core/imageloader/core/DisplayBitmapTask;->memoryCacheKey:Ljava/lang/String;

    aput-object v1, v0, v2

    const-string v1, "ImageAware is reused for another image. Task is cancelled. [%s]"

    invoke-static {v1, v0}, Lcom/kwad/sdk/core/imageloader/utils/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/DisplayBitmapTask;->listener:Lcom/kwad/sdk/core/imageloader/core/listener/ImageLoadingListener;

    iget-object v1, p0, Lcom/kwad/sdk/core/imageloader/core/DisplayBitmapTask;->imageUri:Ljava/lang/String;

    iget-object v2, p0, Lcom/kwad/sdk/core/imageloader/core/DisplayBitmapTask;->imageAware:Lcom/kwad/sdk/core/imageloader/core/imageaware/ImageAware;

    invoke-interface {v2}, Lcom/kwad/sdk/core/imageloader/core/imageaware/ImageAware;->getWrappedView()Landroid/view/View;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/kwad/sdk/core/imageloader/core/listener/ImageLoadingListener;->onLoadingCancelled(Ljava/lang/String;Landroid/view/View;)V

    goto :goto_22

    :cond_42
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/kwad/sdk/core/imageloader/core/DisplayBitmapTask;->loadedFrom:Lcom/kwad/sdk/core/imageloader/core/assist/LoadedFrom;

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/kwad/sdk/core/imageloader/core/DisplayBitmapTask;->memoryCacheKey:Ljava/lang/String;

    aput-object v1, v0, v3

    const-string v1, "Display image in ImageAware (loaded from %1$s) [%2$s]"

    invoke-static {v1, v0}, Lcom/kwad/sdk/core/imageloader/utils/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/DisplayBitmapTask;->displayer:Lcom/kwad/sdk/core/imageloader/core/display/BitmapDisplayer;

    iget-object v1, p0, Lcom/kwad/sdk/core/imageloader/core/DisplayBitmapTask;->bitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/kwad/sdk/core/imageloader/core/DisplayBitmapTask;->imageAware:Lcom/kwad/sdk/core/imageloader/core/imageaware/ImageAware;

    iget-object v3, p0, Lcom/kwad/sdk/core/imageloader/core/DisplayBitmapTask;->loadedFrom:Lcom/kwad/sdk/core/imageloader/core/assist/LoadedFrom;

    invoke-interface {v0, v1, v2, v3}, Lcom/kwad/sdk/core/imageloader/core/display/BitmapDisplayer;->display(Landroid/graphics/Bitmap;Lcom/kwad/sdk/core/imageloader/core/imageaware/ImageAware;Lcom/kwad/sdk/core/imageloader/core/assist/LoadedFrom;)V

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/DisplayBitmapTask;->engine:Lcom/kwad/sdk/core/imageloader/core/ImageLoaderEngine;

    iget-object v1, p0, Lcom/kwad/sdk/core/imageloader/core/DisplayBitmapTask;->imageAware:Lcom/kwad/sdk/core/imageloader/core/imageaware/ImageAware;

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderEngine;->cancelDisplayTaskFor(Lcom/kwad/sdk/core/imageloader/core/imageaware/ImageAware;)V

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/DisplayBitmapTask;->listener:Lcom/kwad/sdk/core/imageloader/core/listener/ImageLoadingListener;

    iget-object v1, p0, Lcom/kwad/sdk/core/imageloader/core/DisplayBitmapTask;->imageUri:Ljava/lang/String;

    iget-object v2, p0, Lcom/kwad/sdk/core/imageloader/core/DisplayBitmapTask;->imageAware:Lcom/kwad/sdk/core/imageloader/core/imageaware/ImageAware;

    invoke-interface {v2}, Lcom/kwad/sdk/core/imageloader/core/imageaware/ImageAware;->getWrappedView()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/kwad/sdk/core/imageloader/core/DisplayBitmapTask;->bitmap:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1, v2, v3}, Lcom/kwad/sdk/core/imageloader/core/listener/ImageLoadingListener;->onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V

    goto :goto_22
.end method
