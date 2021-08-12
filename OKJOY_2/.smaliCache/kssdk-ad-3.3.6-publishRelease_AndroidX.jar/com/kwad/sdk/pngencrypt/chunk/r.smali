.class public Lcom/kwad/sdk/pngencrypt/chunk/r;
.super Lcom/kwad/sdk/pngencrypt/chunk/ae;


# instance fields
.field private j:Z

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/kwad/sdk/pngencrypt/k;)V
    .registers 3

    const-string v0, "iTXt"

    invoke-direct {p0, v0, p1}, Lcom/kwad/sdk/pngencrypt/chunk/ae;-><init>(Ljava/lang/String;Lcom/kwad/sdk/pngencrypt/k;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/kwad/sdk/pngencrypt/chunk/r;->j:Z

    const-string p1, ""

    iput-object p1, p0, Lcom/kwad/sdk/pngencrypt/chunk/r;->k:Ljava/lang/String;

    iput-object p1, p0, Lcom/kwad/sdk/pngencrypt/chunk/r;->l:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Lcom/kwad/sdk/pngencrypt/chunk/d;)V
    .registers 10

    const/4 v0, 0x3

    new-array v1, v0, [I

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_6
    iget-object v5, p1, Lcom/kwad/sdk/pngencrypt/chunk/d;->d:[B

    array-length v5, v5

    const/4 v6, 0x1

    if-ge v3, v5, :cond_20

    iget-object v5, p1, Lcom/kwad/sdk/pngencrypt/chunk/d;->d:[B

    aget-byte v5, v5, v3

    if-eqz v5, :cond_13

    goto :goto_1e

    :cond_13
    aput v3, v1, v4

    add-int/lit8 v4, v4, 0x1

    if-ne v4, v6, :cond_1b

    add-int/lit8 v3, v3, 0x2

    :cond_1b
    if-ne v4, v0, :cond_1e

    goto :goto_20

    :cond_1e
    :goto_1e
    add-int/2addr v3, v6

    goto :goto_6

    :cond_20
    :goto_20
    if-eq v4, v0, :cond_2c

    new-instance v0, Lcom/kwad/sdk/pngencrypt/PngjException;

    const-string v3, "Bad formed PngChunkITXT chunk"

    invoke-direct {v0, v3}, Lcom/kwad/sdk/pngencrypt/PngjException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/Throwable;)V

    :cond_2c
    iget-object v0, p1, Lcom/kwad/sdk/pngencrypt/chunk/d;->d:[B

    aget v3, v1, v2

    invoke-static {v0, v2, v3}, Lcom/kwad/sdk/pngencrypt/chunk/b;->a([BII)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/pngencrypt/chunk/r;->h:Ljava/lang/String;

    aget v0, v1, v2

    add-int/2addr v0, v6

    iget-object v3, p1, Lcom/kwad/sdk/pngencrypt/chunk/d;->d:[B

    aget-byte v3, v3, v0

    if-nez v3, :cond_41

    move v3, v2

    goto :goto_42

    :cond_41
    move v3, v6

    :goto_42
    iput-boolean v3, p0, Lcom/kwad/sdk/pngencrypt/chunk/r;->j:Z

    add-int/2addr v0, v6

    if-eqz v3, :cond_57

    iget-object v3, p1, Lcom/kwad/sdk/pngencrypt/chunk/d;->d:[B

    aget-byte v3, v3, v0

    if-eqz v3, :cond_57

    new-instance v3, Lcom/kwad/sdk/pngencrypt/PngjException;

    const-string v4, "Bad formed PngChunkITXT chunk - bad compression method "

    invoke-direct {v3, v4}, Lcom/kwad/sdk/pngencrypt/PngjException;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/Throwable;)V

    :cond_57
    iget-object v3, p1, Lcom/kwad/sdk/pngencrypt/chunk/d;->d:[B

    aget v4, v1, v6

    sub-int/2addr v4, v0

    invoke-static {v3, v0, v4}, Lcom/kwad/sdk/pngencrypt/chunk/b;->a([BII)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/pngencrypt/chunk/r;->k:Ljava/lang/String;

    iget-object v0, p1, Lcom/kwad/sdk/pngencrypt/chunk/d;->d:[B

    aget v3, v1, v6

    add-int/2addr v3, v6

    const/4 v4, 0x2

    aget v5, v1, v4

    aget v7, v1, v6

    sub-int/2addr v5, v7

    sub-int/2addr v5, v6

    invoke-static {v0, v3, v5}, Lcom/kwad/sdk/pngencrypt/chunk/b;->b([BII)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/pngencrypt/chunk/r;->l:Ljava/lang/String;

    aget v0, v1, v4

    add-int/2addr v0, v6

    iget-boolean v1, p0, Lcom/kwad/sdk/pngencrypt/chunk/r;->j:Z

    if-eqz v1, :cond_8a

    iget-object v1, p1, Lcom/kwad/sdk/pngencrypt/chunk/d;->d:[B

    iget-object p1, p1, Lcom/kwad/sdk/pngencrypt/chunk/d;->d:[B

    array-length p1, p1

    sub-int/2addr p1, v0

    invoke-static {v1, v0, p1, v2}, Lcom/kwad/sdk/pngencrypt/chunk/b;->a([BIIZ)[B

    move-result-object p1

    invoke-static {p1}, Lcom/kwad/sdk/pngencrypt/chunk/b;->b([B)Ljava/lang/String;

    move-result-object p1

    goto :goto_94

    :cond_8a
    iget-object v1, p1, Lcom/kwad/sdk/pngencrypt/chunk/d;->d:[B

    iget-object p1, p1, Lcom/kwad/sdk/pngencrypt/chunk/d;->d:[B

    array-length p1, p1

    sub-int/2addr p1, v0

    invoke-static {v1, v0, p1}, Lcom/kwad/sdk/pngencrypt/chunk/b;->b([BII)Ljava/lang/String;

    move-result-object p1

    :goto_94
    iput-object p1, p0, Lcom/kwad/sdk/pngencrypt/chunk/r;->i:Ljava/lang/String;

    return-void
.end method
