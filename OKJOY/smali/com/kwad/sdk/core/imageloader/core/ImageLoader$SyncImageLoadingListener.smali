.class Lcom/kwad/sdk/core/imageloader/core/ImageLoader$SyncImageLoadingListener;
.super Lcom/kwad/sdk/core/imageloader/core/listener/SimpleImageLoadingListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/core/imageloader/core/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SyncImageLoadingListener"
.end annotation


# instance fields
.field private loadedImage:Landroid/graphics/Bitmap;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/kwad/sdk/core/imageloader/core/listener/SimpleImageLoadingListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/kwad/sdk/core/imageloader/core/ImageLoader$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/kwad/sdk/core/imageloader/core/ImageLoader$SyncImageLoadingListener;-><init>()V

    return-void
.end method


# virtual methods
.method public getLoadedBitmap()Landroid/graphics/Bitmap;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/ImageLoader$SyncImageLoadingListener;->loadedImage:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .registers 4

    iput-object p3, p0, Lcom/kwad/sdk/core/imageloader/core/ImageLoader$SyncImageLoadingListener;->loadedImage:Landroid/graphics/Bitmap;

    return-void
.end method
