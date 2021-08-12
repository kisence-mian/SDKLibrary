.class public abstract Lcom/kwad/sdk/pngencrypt/chunk/aa;
.super Lcom/kwad/sdk/pngencrypt/chunk/PngChunk;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Lcom/kwad/sdk/pngencrypt/k;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/kwad/sdk/pngencrypt/chunk/PngChunk;-><init>(Ljava/lang/String;Lcom/kwad/sdk/pngencrypt/k;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    return v1

    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    return v1

    :cond_13
    check-cast p1, Lcom/kwad/sdk/pngencrypt/chunk/aa;

    iget-object v2, p0, Lcom/kwad/sdk/pngencrypt/chunk/aa;->a:Ljava/lang/String;

    if-nez v2, :cond_1e

    iget-object p1, p1, Lcom/kwad/sdk/pngencrypt/chunk/aa;->a:Ljava/lang/String;

    if-eqz p1, :cond_29

    return v1

    :cond_1e
    iget-object v2, p0, Lcom/kwad/sdk/pngencrypt/chunk/aa;->a:Ljava/lang/String;

    iget-object p1, p1, Lcom/kwad/sdk/pngencrypt/chunk/aa;->a:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_29

    return v1

    :cond_29
    return v0
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/pngencrypt/chunk/aa;->a:Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    iget-object v0, p0, Lcom/kwad/sdk/pngencrypt/chunk/aa;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_c
    const/16 v1, 0x1f

    add-int/2addr v1, v0

    return v1
.end method
