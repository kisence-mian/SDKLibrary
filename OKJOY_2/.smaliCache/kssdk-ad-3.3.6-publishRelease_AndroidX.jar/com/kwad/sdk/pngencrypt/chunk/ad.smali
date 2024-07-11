.class public Lcom/kwad/sdk/pngencrypt/chunk/ad;
.super Lcom/kwad/sdk/pngencrypt/chunk/aa;


# instance fields
.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:[I


# direct methods
.method public constructor <init>(Lcom/kwad/sdk/pngencrypt/k;)V
    .registers 3

    const-string v0, "tRNS"

    invoke-direct {p0, v0, p1}, Lcom/kwad/sdk/pngencrypt/chunk/aa;-><init>(Ljava/lang/String;Lcom/kwad/sdk/pngencrypt/k;)V

    const/4 p1, 0x0

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/kwad/sdk/pngencrypt/chunk/ad;->l:[I

    return-void
.end method


# virtual methods
.method public a(Lcom/kwad/sdk/pngencrypt/chunk/d;)V
    .registers 6

    iget-object v0, p0, Lcom/kwad/sdk/pngencrypt/chunk/ad;->e:Lcom/kwad/sdk/pngencrypt/k;

    iget-boolean v0, v0, Lcom/kwad/sdk/pngencrypt/k;->f:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    iget-object p1, p1, Lcom/kwad/sdk/pngencrypt/chunk/d;->d:[B

    invoke-static {p1, v1}, Lcom/kwad/sdk/pngencrypt/n;->b([BI)I

    move-result p1

    iput p1, p0, Lcom/kwad/sdk/pngencrypt/chunk/ad;->h:I

    goto :goto_46

    :cond_10
    iget-object v0, p0, Lcom/kwad/sdk/pngencrypt/chunk/ad;->e:Lcom/kwad/sdk/pngencrypt/k;

    iget-boolean v0, v0, Lcom/kwad/sdk/pngencrypt/k;->g:Z

    if-eqz v0, :cond_2c

    iget-object v0, p1, Lcom/kwad/sdk/pngencrypt/chunk/d;->d:[B

    array-length v0, v0

    new-array v2, v0, [I

    iput-object v2, p0, Lcom/kwad/sdk/pngencrypt/chunk/ad;->l:[I

    :goto_1d
    if-ge v1, v0, :cond_46

    iget-object v2, p0, Lcom/kwad/sdk/pngencrypt/chunk/ad;->l:[I

    iget-object v3, p1, Lcom/kwad/sdk/pngencrypt/chunk/d;->d:[B

    aget-byte v3, v3, v1

    and-int/lit16 v3, v3, 0xff

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    :cond_2c
    iget-object v0, p1, Lcom/kwad/sdk/pngencrypt/chunk/d;->d:[B

    invoke-static {v0, v1}, Lcom/kwad/sdk/pngencrypt/n;->b([BI)I

    move-result v0

    iput v0, p0, Lcom/kwad/sdk/pngencrypt/chunk/ad;->i:I

    iget-object v0, p1, Lcom/kwad/sdk/pngencrypt/chunk/d;->d:[B

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/kwad/sdk/pngencrypt/n;->b([BI)I

    move-result v0

    iput v0, p0, Lcom/kwad/sdk/pngencrypt/chunk/ad;->j:I

    iget-object p1, p1, Lcom/kwad/sdk/pngencrypt/chunk/d;->d:[B

    const/4 v0, 0x4

    invoke-static {p1, v0}, Lcom/kwad/sdk/pngencrypt/n;->b([BI)I

    move-result p1

    iput p1, p0, Lcom/kwad/sdk/pngencrypt/chunk/ad;->k:I

    :cond_46
    :goto_46
    return-void
.end method
