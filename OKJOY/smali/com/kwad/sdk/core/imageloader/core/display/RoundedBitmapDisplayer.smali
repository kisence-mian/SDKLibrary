.class public Lcom/kwad/sdk/core/imageloader/core/display/RoundedBitmapDisplayer;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/kwad/sdk/core/imageloader/core/display/BitmapDisplayer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/sdk/core/imageloader/core/display/RoundedBitmapDisplayer$RoundedDrawable;
    }
.end annotation


# instance fields
.field protected final cornerRadius:I

.field protected final margin:I


# direct methods
.method public constructor <init>(I)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/kwad/sdk/core/imageloader/core/display/RoundedBitmapDisplayer;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/kwad/sdk/core/imageloader/core/display/RoundedBitmapDisplayer;->cornerRadius:I

    iput p2, p0, Lcom/kwad/sdk/core/imageloader/core/display/RoundedBitmapDisplayer;->margin:I

    return-void
.end method


# virtual methods
.method public display(Landroid/graphics/Bitmap;Lcom/kwad/sdk/core/imageloader/core/imageaware/ImageAware;Lcom/kwad/sdk/core/imageloader/core/assist/LoadedFrom;)V
    .registers 7

    instance-of v0, p2, Lcom/kwad/sdk/core/imageloader/core/imageaware/ImageViewAware;

    if-eqz v0, :cond_11

    new-instance v0, Lcom/kwad/sdk/core/imageloader/core/display/RoundedBitmapDisplayer$RoundedDrawable;

    iget v1, p0, Lcom/kwad/sdk/core/imageloader/core/display/RoundedBitmapDisplayer;->cornerRadius:I

    iget v2, p0, Lcom/kwad/sdk/core/imageloader/core/display/RoundedBitmapDisplayer;->margin:I

    invoke-direct {v0, p1, v1, v2}, Lcom/kwad/sdk/core/imageloader/core/display/RoundedBitmapDisplayer$RoundedDrawable;-><init>(Landroid/graphics/Bitmap;II)V

    invoke-interface {p2, v0}, Lcom/kwad/sdk/core/imageloader/core/imageaware/ImageAware;->setImageDrawable(Landroid/graphics/drawable/Drawable;)Z

    return-void

    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ImageAware should wrap ImageView. ImageViewAware is expected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
