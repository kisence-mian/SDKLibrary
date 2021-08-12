.class public final Lcom/kwad/sdk/core/imageloader/core/display/SimpleBitmapDisplayer;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwad/sdk/core/imageloader/core/display/BitmapDisplayer;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public display(Lcom/kwad/sdk/core/imageloader/core/decode/DecodedResult;Lcom/kwad/sdk/core/imageloader/core/imageaware/ImageAware;Lcom/kwad/sdk/core/imageloader/core/assist/LoadedFrom;)V
    .registers 4

    iget-object p1, p1, Lcom/kwad/sdk/core/imageloader/core/decode/DecodedResult;->mBitmap:Landroid/graphics/Bitmap;

    invoke-interface {p2, p1}, Lcom/kwad/sdk/core/imageloader/core/imageaware/ImageAware;->setImageBitmap(Landroid/graphics/Bitmap;)Z

    return-void
.end method
