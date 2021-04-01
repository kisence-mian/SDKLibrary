.class public Lcom/kwad/sdk/core/imageloader/core/imageaware/NonViewAware;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/kwad/sdk/core/imageloader/core/imageaware/ImageAware;


# instance fields
.field protected final imageSize:Lcom/kwad/sdk/core/imageloader/core/assist/ImageSize;

.field protected final imageUri:Ljava/lang/String;

.field protected final scaleType:Lcom/kwad/sdk/core/imageloader/core/assist/ViewScaleType;


# direct methods
.method public constructor <init>(Lcom/kwad/sdk/core/imageloader/core/assist/ImageSize;Lcom/kwad/sdk/core/imageloader/core/assist/ViewScaleType;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/kwad/sdk/core/imageloader/core/imageaware/NonViewAware;-><init>(Ljava/lang/String;Lcom/kwad/sdk/core/imageloader/core/assist/ImageSize;Lcom/kwad/sdk/core/imageloader/core/assist/ViewScaleType;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/kwad/sdk/core/imageloader/core/assist/ImageSize;Lcom/kwad/sdk/core/imageloader/core/assist/ViewScaleType;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_16

    if-eqz p3, :cond_e

    iput-object p1, p0, Lcom/kwad/sdk/core/imageloader/core/imageaware/NonViewAware;->imageUri:Ljava/lang/String;

    iput-object p2, p0, Lcom/kwad/sdk/core/imageloader/core/imageaware/NonViewAware;->imageSize:Lcom/kwad/sdk/core/imageloader/core/assist/ImageSize;

    iput-object p3, p0, Lcom/kwad/sdk/core/imageloader/core/imageaware/NonViewAware;->scaleType:Lcom/kwad/sdk/core/imageloader/core/assist/ViewScaleType;

    return-void

    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "scaleType must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "imageSize must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getHeight()I
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/imageaware/NonViewAware;->imageSize:Lcom/kwad/sdk/core/imageloader/core/assist/ImageSize;

    invoke-virtual {v0}, Lcom/kwad/sdk/core/imageloader/core/assist/ImageSize;->getHeight()I

    move-result v0

    return v0
.end method

.method public getId()I
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/imageaware/NonViewAware;->imageUri:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_c
    return v0

    :cond_d
    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/imageaware/NonViewAware;->imageUri:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_c
.end method

.method public getScaleType()Lcom/kwad/sdk/core/imageloader/core/assist/ViewScaleType;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/imageaware/NonViewAware;->scaleType:Lcom/kwad/sdk/core/imageloader/core/assist/ViewScaleType;

    return-object v0
.end method

.method public getWidth()I
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/imageaware/NonViewAware;->imageSize:Lcom/kwad/sdk/core/imageloader/core/assist/ImageSize;

    invoke-virtual {v0}, Lcom/kwad/sdk/core/imageloader/core/assist/ImageSize;->getWidth()I

    move-result v0

    return v0
.end method

.method public getWrappedView()Landroid/view/View;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public isCollected()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)Z
    .registers 3

    const/4 v0, 0x1

    return v0
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 3

    const/4 v0, 0x1

    return v0
.end method
