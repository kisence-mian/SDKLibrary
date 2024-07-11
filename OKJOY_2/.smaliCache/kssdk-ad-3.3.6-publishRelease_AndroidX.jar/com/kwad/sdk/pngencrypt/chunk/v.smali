.class public Lcom/kwad/sdk/pngencrypt/chunk/v;
.super Lcom/kwad/sdk/pngencrypt/chunk/aa;


# instance fields
.field private h:I

.field private i:[I


# direct methods
.method public constructor <init>(Lcom/kwad/sdk/pngencrypt/k;)V
    .registers 3

    const-string v0, "PLTE"

    invoke-direct {p0, v0, p1}, Lcom/kwad/sdk/pngencrypt/chunk/aa;-><init>(Ljava/lang/String;Lcom/kwad/sdk/pngencrypt/k;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/kwad/sdk/pngencrypt/chunk/v;->h:I

    return-void
.end method


# virtual methods
.method public a(IIII)V
    .registers 6

    iget-object v0, p0, Lcom/kwad/sdk/pngencrypt/chunk/v;->i:[I

    shl-int/lit8 p2, p2, 0x10

    shl-int/lit8 p3, p3, 0x8

    or-int/2addr p2, p3

    or-int/2addr p2, p4

    aput p2, v0, p1

    return-void
.end method

.method public a(Lcom/kwad/sdk/pngencrypt/chunk/d;)V
    .registers 8

    iget v0, p1, Lcom/kwad/sdk/pngencrypt/chunk/d;->a:I

    div-int/lit8 v0, v0, 0x3

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/pngencrypt/chunk/v;->b(I)V

    const/4 v0, 0x0

    move v1, v0

    :goto_9
    iget v2, p0, Lcom/kwad/sdk/pngencrypt/chunk/v;->h:I

    if-ge v0, v2, :cond_2c

    iget-object v2, p1, Lcom/kwad/sdk/pngencrypt/chunk/d;->d:[B

    add-int/lit8 v3, v1, 0x1

    aget-byte v1, v2, v1

    and-int/lit16 v1, v1, 0xff

    iget-object v2, p1, Lcom/kwad/sdk/pngencrypt/chunk/d;->d:[B

    add-int/lit8 v4, v3, 0x1

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    iget-object v3, p1, Lcom/kwad/sdk/pngencrypt/chunk/d;->d:[B

    add-int/lit8 v5, v4, 0x1

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/kwad/sdk/pngencrypt/chunk/v;->a(IIII)V

    add-int/lit8 v0, v0, 0x1

    move v1, v5

    goto :goto_9

    :cond_2c
    return-void
.end method

.method public b(I)V
    .registers 4

    iput p1, p0, Lcom/kwad/sdk/pngencrypt/chunk/v;->h:I

    const/4 v0, 0x1

    if-lt p1, v0, :cond_15

    const/16 v0, 0x100

    if-gt p1, v0, :cond_15

    iget-object v0, p0, Lcom/kwad/sdk/pngencrypt/chunk/v;->i:[I

    if-eqz v0, :cond_10

    array-length v0, v0

    if-eq v0, p1, :cond_14

    :cond_10
    new-array p1, p1, [I

    iput-object p1, p0, Lcom/kwad/sdk/pngencrypt/chunk/v;->i:[I

    :cond_14
    return-void

    :cond_15
    new-instance p1, Lcom/kwad/sdk/pngencrypt/PngjException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid pallette - nentries="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/kwad/sdk/pngencrypt/chunk/v;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/kwad/sdk/pngencrypt/PngjException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
