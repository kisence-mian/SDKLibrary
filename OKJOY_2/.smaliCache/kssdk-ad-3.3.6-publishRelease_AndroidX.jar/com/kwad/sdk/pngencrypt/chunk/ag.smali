.class public Lcom/kwad/sdk/pngencrypt/chunk/ag;
.super Lcom/kwad/sdk/pngencrypt/chunk/ae;


# direct methods
.method public constructor <init>(Lcom/kwad/sdk/pngencrypt/k;)V
    .registers 3

    const-string v0, "zTXt"

    invoke-direct {p0, v0, p1}, Lcom/kwad/sdk/pngencrypt/chunk/ae;-><init>(Ljava/lang/String;Lcom/kwad/sdk/pngencrypt/k;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/kwad/sdk/pngencrypt/chunk/d;)V
    .registers 6

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v2, p1, Lcom/kwad/sdk/pngencrypt/chunk/d;->d:[B

    array-length v2, v2

    if-ge v1, v2, :cond_10

    iget-object v2, p1, Lcom/kwad/sdk/pngencrypt/chunk/d;->d:[B

    aget-byte v2, v2, v1

    if-eqz v2, :cond_11

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_10
    const/4 v1, -0x1

    :cond_11
    if-ltz v1, :cond_1a

    iget-object v2, p1, Lcom/kwad/sdk/pngencrypt/chunk/d;->d:[B

    array-length v2, v2

    add-int/lit8 v2, v2, -0x2

    if-le v1, v2, :cond_24

    :cond_1a
    new-instance v2, Lcom/kwad/sdk/pngencrypt/PngjException;

    const-string v3, "bad zTXt chunk: no separator found"

    invoke-direct {v2, v3}, Lcom/kwad/sdk/pngencrypt/PngjException;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/Throwable;)V

    :cond_24
    iget-object v2, p1, Lcom/kwad/sdk/pngencrypt/chunk/d;->d:[B

    invoke-static {v2, v0, v1}, Lcom/kwad/sdk/pngencrypt/chunk/b;->a([BII)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/kwad/sdk/pngencrypt/chunk/ag;->h:Ljava/lang/String;

    iget-object v2, p1, Lcom/kwad/sdk/pngencrypt/chunk/d;->d:[B

    add-int/lit8 v3, v1, 0x1

    aget-byte v2, v2, v3

    if-eqz v2, :cond_3e

    new-instance v2, Lcom/kwad/sdk/pngencrypt/PngjException;

    const-string v3, "bad zTXt chunk: unknown compression method"

    invoke-direct {v2, v3}, Lcom/kwad/sdk/pngencrypt/PngjException;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/Throwable;)V

    :cond_3e
    iget-object v2, p1, Lcom/kwad/sdk/pngencrypt/chunk/d;->d:[B

    add-int/lit8 v3, v1, 0x2

    iget-object p1, p1, Lcom/kwad/sdk/pngencrypt/chunk/d;->d:[B

    array-length p1, p1

    sub-int/2addr p1, v1

    add-int/lit8 p1, p1, -0x2

    invoke-static {v2, v3, p1, v0}, Lcom/kwad/sdk/pngencrypt/chunk/b;->a([BIIZ)[B

    move-result-object p1

    invoke-static {p1}, Lcom/kwad/sdk/pngencrypt/chunk/b;->a([B)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kwad/sdk/pngencrypt/chunk/ag;->i:Ljava/lang/String;

    return-void
.end method
