.class public Lcom/kwad/sdk/core/imageloader/core/decode/DecodedResult;
.super Ljava/lang/Object;


# instance fields
.field public mBitmap:Landroid/graphics/Bitmap;

.field public mFrameSequence:Lcom/kwad/sdk/glide/framesequence/FrameSequence;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getByteSize()I
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/decode/DecodedResult;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v0

    iget-object v1, p0, Lcom/kwad/sdk/core/imageloader/core/decode/DecodedResult;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    return v0

    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method public isDecoded()Z
    .registers 5

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/decode/DecodedResult;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_e

    move v0, v1

    goto :goto_f

    :cond_e
    move v0, v2

    :goto_f
    iget-object v3, p0, Lcom/kwad/sdk/core/imageloader/core/decode/DecodedResult;->mFrameSequence:Lcom/kwad/sdk/glide/framesequence/FrameSequence;

    if-eqz v3, :cond_15

    move v3, v1

    goto :goto_16

    :cond_15
    move v3, v2

    :goto_16
    if-nez v0, :cond_1c

    if-eqz v3, :cond_1b

    goto :goto_1c

    :cond_1b
    move v1, v2

    :cond_1c
    :goto_1c
    return v1
.end method
