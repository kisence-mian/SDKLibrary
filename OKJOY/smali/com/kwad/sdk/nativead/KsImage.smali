.class public Lcom/kwad/sdk/nativead/KsImage;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private height:I

.field private imageUrl:Ljava/lang/String;

.field private width:I


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/kwad/sdk/nativead/KsImage;->width:I

    iput p2, p0, Lcom/kwad/sdk/nativead/KsImage;->height:I

    iput-object p3, p0, Lcom/kwad/sdk/nativead/KsImage;->imageUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getHeight()I
    .registers 2

    iget v0, p0, Lcom/kwad/sdk/nativead/KsImage;->height:I

    return v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/nativead/KsImage;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .registers 2

    iget v0, p0, Lcom/kwad/sdk/nativead/KsImage;->width:I

    return v0
.end method

.method public isValid()Z
    .registers 2

    iget v0, p0, Lcom/kwad/sdk/nativead/KsImage;->width:I

    if-lez v0, :cond_12

    iget v0, p0, Lcom/kwad/sdk/nativead/KsImage;->height:I

    if-lez v0, :cond_12

    iget-object v0, p0, Lcom/kwad/sdk/nativead/KsImage;->imageUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method
