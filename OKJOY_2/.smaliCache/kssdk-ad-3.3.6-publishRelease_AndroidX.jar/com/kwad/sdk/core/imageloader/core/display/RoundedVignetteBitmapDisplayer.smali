.class public Lcom/kwad/sdk/core/imageloader/core/display/RoundedVignetteBitmapDisplayer;
.super Lcom/kwad/sdk/core/imageloader/core/display/RoundedBitmapDisplayer;


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
.method public display(Lcom/kwad/sdk/core/imageloader/core/decode/DecodedResult;Lcom/kwad/sdk/core/imageloader/core/imageaware/ImageAware;Lcom/kwad/sdk/core/imageloader/core/assist/LoadedFrom;)V
    .registers 6

    instance-of p3, p2, Lcom/kwad/sdk/core/imageloader/core/imageaware/ImageViewAware;

    if-eqz p3, :cond_13

    new-instance p3, Lcom/kwad/sdk/core/imageloader/core/display/RoundedVignetteBitmapDisplayer$RoundedVignetteDrawable;

    iget-object p1, p1, Lcom/kwad/sdk/core/imageloader/core/decode/DecodedResult;->mBitmap:Landroid/graphics/Bitmap;

    iget v0, p0, Lcom/kwad/sdk/core/imageloader/core/display/RoundedVignetteBitmapDisplayer;->cornerRadius:I

    iget v1, p0, Lcom/kwad/sdk/core/imageloader/core/display/RoundedVignetteBitmapDisplayer;->margin:I

    invoke-direct {p3, p1, v0, v1}, Lcom/kwad/sdk/core/imageloader/core/display/RoundedVignetteBitmapDisplayer$RoundedVignetteDrawable;-><init>(Landroid/graphics/Bitmap;II)V

    invoke-interface {p2, p3}, Lcom/kwad/sdk/core/imageloader/core/imageaware/ImageAware;->setImageDrawable(Landroid/graphics/drawable/Drawable;)Z

    return-void

    :cond_13
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "ImageAware should wrap ImageView. ImageViewAware is expected."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
