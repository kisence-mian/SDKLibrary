.class public Lcom/kwad/sdk/core/imageloader/core/assist/ImageSize;
.super Ljava/lang/Object;


# static fields
.field private static final SEPARATOR:Ljava/lang/String; = "x"

.field private static final TO_STRING_MAX_LENGHT:I = 0x9


# instance fields
.field private final height:I

.field private final width:I


# direct methods
.method public constructor <init>(II)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/kwad/sdk/core/imageloader/core/assist/ImageSize;->width:I

    iput p2, p0, Lcom/kwad/sdk/core/imageloader/core/assist/ImageSize;->height:I

    return-void
.end method

.method public constructor <init>(III)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    rem-int/lit16 p3, p3, 0xb4

    if-nez p3, :cond_c

    iput p1, p0, Lcom/kwad/sdk/core/imageloader/core/assist/ImageSize;->width:I

    iput p2, p0, Lcom/kwad/sdk/core/imageloader/core/assist/ImageSize;->height:I

    goto :goto_10

    :cond_c
    iput p2, p0, Lcom/kwad/sdk/core/imageloader/core/assist/ImageSize;->width:I

    iput p1, p0, Lcom/kwad/sdk/core/imageloader/core/assist/ImageSize;->height:I

    :goto_10
    return-void
.end method


# virtual methods
.method public getHeight()I
    .registers 2

    iget v0, p0, Lcom/kwad/sdk/core/imageloader/core/assist/ImageSize;->height:I

    return v0
.end method

.method public getWidth()I
    .registers 2

    iget v0, p0, Lcom/kwad/sdk/core/imageloader/core/assist/ImageSize;->width:I

    return v0
.end method

.method public scale(F)Lcom/kwad/sdk/core/imageloader/core/assist/ImageSize;
    .registers 5

    new-instance v0, Lcom/kwad/sdk/core/imageloader/core/assist/ImageSize;

    iget v1, p0, Lcom/kwad/sdk/core/imageloader/core/assist/ImageSize;->width:I

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    iget v2, p0, Lcom/kwad/sdk/core/imageloader/core/assist/ImageSize;->height:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int p1, v2

    invoke-direct {v0, v1, p1}, Lcom/kwad/sdk/core/imageloader/core/assist/ImageSize;-><init>(II)V

    return-object v0
.end method

.method public scaleDown(I)Lcom/kwad/sdk/core/imageloader/core/assist/ImageSize;
    .registers 5

    new-instance v0, Lcom/kwad/sdk/core/imageloader/core/assist/ImageSize;

    iget v1, p0, Lcom/kwad/sdk/core/imageloader/core/assist/ImageSize;->width:I

    div-int/2addr v1, p1

    iget v2, p0, Lcom/kwad/sdk/core/imageloader/core/assist/ImageSize;->height:I

    div-int/2addr v2, p1

    invoke-direct {v0, v1, v2}, Lcom/kwad/sdk/core/imageloader/core/assist/ImageSize;-><init>(II)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget v1, p0, Lcom/kwad/sdk/core/imageloader/core/assist/ImageSize;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/kwad/sdk/core/imageloader/core/assist/ImageSize;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
