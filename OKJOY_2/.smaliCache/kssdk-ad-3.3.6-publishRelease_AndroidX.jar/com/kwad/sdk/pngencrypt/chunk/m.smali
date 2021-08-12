.class public Lcom/kwad/sdk/pngencrypt/chunk/m;
.super Lcom/kwad/sdk/pngencrypt/chunk/aa;


# instance fields
.field private h:[I


# direct methods
.method public constructor <init>(Lcom/kwad/sdk/pngencrypt/k;)V
    .registers 3

    const-string v0, "hIST"

    invoke-direct {p0, v0, p1}, Lcom/kwad/sdk/pngencrypt/chunk/aa;-><init>(Ljava/lang/String;Lcom/kwad/sdk/pngencrypt/k;)V

    const/4 p1, 0x0

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/kwad/sdk/pngencrypt/chunk/m;->h:[I

    return-void
.end method


# virtual methods
.method public a(Lcom/kwad/sdk/pngencrypt/chunk/d;)V
    .registers 6

    iget-object v0, p0, Lcom/kwad/sdk/pngencrypt/chunk/m;->e:Lcom/kwad/sdk/pngencrypt/k;

    iget-boolean v0, v0, Lcom/kwad/sdk/pngencrypt/k;->g:Z

    if-eqz v0, :cond_23

    iget-object v0, p1, Lcom/kwad/sdk/pngencrypt/chunk/d;->d:[B

    array-length v0, v0

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/kwad/sdk/pngencrypt/chunk/m;->h:[I

    const/4 v0, 0x0

    :goto_10
    iget-object v1, p0, Lcom/kwad/sdk/pngencrypt/chunk/m;->h:[I

    array-length v2, v1

    if-ge v0, v2, :cond_22

    iget-object v2, p1, Lcom/kwad/sdk/pngencrypt/chunk/d;->d:[B

    mul-int/lit8 v3, v0, 0x2

    invoke-static {v2, v3}, Lcom/kwad/sdk/pngencrypt/n;->b([BI)I

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_22
    return-void

    :cond_23
    new-instance p1, Lcom/kwad/sdk/pngencrypt/PngjException;

    const-string v0, "only indexed images accept a HIST chunk"

    invoke-direct {p1, v0}, Lcom/kwad/sdk/pngencrypt/PngjException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
