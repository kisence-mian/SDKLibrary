.class public Lcom/kwad/sdk/core/imageloader/core/decode/BaseImageDecoder$ExifInfo;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/core/imageloader/core/decode/BaseImageDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ExifInfo"
.end annotation


# instance fields
.field public final flipHorizontal:Z

.field public final rotation:I


# direct methods
.method protected constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/kwad/sdk/core/imageloader/core/decode/BaseImageDecoder$ExifInfo;->rotation:I

    iput-boolean v0, p0, Lcom/kwad/sdk/core/imageloader/core/decode/BaseImageDecoder$ExifInfo;->flipHorizontal:Z

    return-void
.end method

.method protected constructor <init>(IZ)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/kwad/sdk/core/imageloader/core/decode/BaseImageDecoder$ExifInfo;->rotation:I

    iput-boolean p2, p0, Lcom/kwad/sdk/core/imageloader/core/decode/BaseImageDecoder$ExifInfo;->flipHorizontal:Z

    return-void
.end method
