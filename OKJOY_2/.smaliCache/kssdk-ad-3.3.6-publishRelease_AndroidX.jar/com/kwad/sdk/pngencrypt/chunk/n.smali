.class public Lcom/kwad/sdk/pngencrypt/chunk/n;
.super Lcom/kwad/sdk/pngencrypt/chunk/aa;


# instance fields
.field private h:Ljava/lang/String;

.field private i:[B


# direct methods
.method public constructor <init>(Lcom/kwad/sdk/pngencrypt/k;)V
    .registers 3

    const-string v0, "iCCP"

    invoke-direct {p0, v0, p1}, Lcom/kwad/sdk/pngencrypt/chunk/aa;-><init>(Ljava/lang/String;Lcom/kwad/sdk/pngencrypt/k;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/kwad/sdk/pngencrypt/chunk/d;)V
    .registers 6

    iget-object v0, p1, Lcom/kwad/sdk/pngencrypt/chunk/d;->d:[B

    invoke-static {v0}, Lcom/kwad/sdk/pngencrypt/chunk/b;->c([B)I

    move-result v0

    iget-object v1, p1, Lcom/kwad/sdk/pngencrypt/chunk/d;->d:[B

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/kwad/sdk/pngencrypt/chunk/b;->a([BII)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kwad/sdk/pngencrypt/chunk/n;->h:Ljava/lang/String;

    iget-object v1, p1, Lcom/kwad/sdk/pngencrypt/chunk/d;->d:[B

    add-int/lit8 v3, v0, 0x1

    aget-byte v1, v1, v3

    and-int/lit16 v1, v1, 0xff

    if-nez v1, :cond_2b

    iget-object v1, p1, Lcom/kwad/sdk/pngencrypt/chunk/d;->d:[B

    array-length v1, v1

    add-int/lit8 v0, v0, 0x2

    sub-int/2addr v1, v0

    new-array v3, v1, [B

    iput-object v3, p0, Lcom/kwad/sdk/pngencrypt/chunk/n;->i:[B

    iget-object p1, p1, Lcom/kwad/sdk/pngencrypt/chunk/d;->d:[B

    iget-object v3, p0, Lcom/kwad/sdk/pngencrypt/chunk/n;->i:[B

    invoke-static {p1, v0, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    :cond_2b
    new-instance p1, Lcom/kwad/sdk/pngencrypt/PngjException;

    const-string v0, "bad compression for ChunkTypeICCP"

    invoke-direct {p1, v0}, Lcom/kwad/sdk/pngencrypt/PngjException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
