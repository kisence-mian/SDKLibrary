.class public Lcom/kwad/sdk/core/imageloader/core/display/RoundedVignetteBitmapDisplayer;
.super Lcom/kwad/sdk/core/imageloader/core/display/RoundedBitmapDisplayer;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/sdk/core/imageloader/core/display/RoundedVignetteBitmapDisplayer$RoundedVignetteDrawable;
    }
.end annotation


# direct methods
.method public constructor <init>(II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/kwad/sdk/core/imageloader/core/display/RoundedBitmapDisplayer;-><init>(II)V

    return-void
.end method


# virtual methods
.method public display(Landroid/graphics/Bitmap;Lcom/kwad/sdk/core/imageloader/core/imageaware/ImageAware;Lcom/kwad/sdk/core/imageloader/core/assist/LoadedFrom;)V
    .registers 7

    instance-of v0, p2, Lcom/kwad/sdk/core/imageloader/core/imageaware/ImageViewAware;

    if-eqz v0, :cond_11

    new-instance v0, Lcom/kwad/sdk/core/imageloader/core/display/RoundedVignetteBitmapDisplayer$RoundedVignetteDrawable;

    iget v1, p0, Lcom/kwad/sdk/core/imageloader/core/display/RoundedBitmapDisplayer;->cornerRadius:I

    iget v2, p0, Lcom/kwad/sdk/core/imageloader/core/display/RoundedBitmapDisplayer;->margin:I

    invoke-direct {v0, p1, v1, v2}, Lcom/kwad/sdk/core/imageloader/core/display/RoundedVignetteBitmapDisplayer$RoundedVignetteDrawable;-><init>(Landroid/graphics/Bitmap;II)V

    invoke-interface {p2, v0}, Lcom/kwad/sdk/core/imageloader/core/imageaware/ImageAware;->setImageDrawable(Landroid/graphics/drawable/Drawable;)Z

    return-void

    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ImageAware should wrap ImageView. ImageViewAware is expected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
