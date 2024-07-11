.class public Lcom/kwad/sdk/pngencrypt/j;
.super Lcom/kwad/sdk/pngencrypt/DeflatedChunksSet;


# instance fields
.field protected g:[B

.field protected h:[B

.field protected final i:Lcom/kwad/sdk/pngencrypt/k;

.field protected final j:Lcom/kwad/sdk/pngencrypt/e;

.field final k:Lcom/kwad/sdk/pngencrypt/p;

.field protected l:[I


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLcom/kwad/sdk/pngencrypt/k;Lcom/kwad/sdk/pngencrypt/e;)V
    .registers 12

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/kwad/sdk/pngencrypt/j;-><init>(Ljava/lang/String;ZLcom/kwad/sdk/pngencrypt/k;Lcom/kwad/sdk/pngencrypt/e;Ljava/util/zip/Inflater;[B)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLcom/kwad/sdk/pngencrypt/k;Lcom/kwad/sdk/pngencrypt/e;Ljava/util/zip/Inflater;[B)V
    .registers 15

    if-eqz p4, :cond_7

    invoke-virtual {p4}, Lcom/kwad/sdk/pngencrypt/e;->h()I

    move-result v0

    goto :goto_9

    :cond_7
    iget v0, p3, Lcom/kwad/sdk/pngencrypt/k;->k:I

    :goto_9
    add-int/lit8 v0, v0, 0x1

    move v4, v0

    iget v0, p3, Lcom/kwad/sdk/pngencrypt/k;->k:I

    add-int/lit8 v5, v0, 0x1

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/kwad/sdk/pngencrypt/DeflatedChunksSet;-><init>(Ljava/lang/String;ZIILjava/util/zip/Inflater;[B)V

    const/4 p1, 0x5

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/kwad/sdk/pngencrypt/j;->l:[I

    iput-object p3, p0, Lcom/kwad/sdk/pngencrypt/j;->i:Lcom/kwad/sdk/pngencrypt/k;

    iput-object p4, p0, Lcom/kwad/sdk/pngencrypt/j;->j:Lcom/kwad/sdk/pngencrypt/e;

    new-instance p1, Lcom/kwad/sdk/pngencrypt/p;

    invoke-direct {p1, p3, p4}, Lcom/kwad/sdk/pngencrypt/p;-><init>(Lcom/kwad/sdk/pngencrypt/k;Lcom/kwad/sdk/pngencrypt/e;)V

    iput-object p1, p0, Lcom/kwad/sdk/pngencrypt/j;->k:Lcom/kwad/sdk/pngencrypt/p;

    const-string p1, "PNG_ENCRYPT"

    const-string p2, "Creating IDAT set "

    invoke-static {p1, p2}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private c(I)V
    .registers 8

    iget-object v0, p0, Lcom/kwad/sdk/pngencrypt/j;->i:Lcom/kwad/sdk/pngencrypt/k;

    iget v0, v0, Lcom/kwad/sdk/pngencrypt/k;->j:I

    const/4 v1, 0x1

    rsub-int/lit8 v0, v0, 0x1

    :goto_7
    if-gt v1, p1, :cond_2b

    if-lez v0, :cond_12

    iget-object v2, p0, Lcom/kwad/sdk/pngencrypt/j;->g:[B

    aget-byte v2, v2, v0

    and-int/lit16 v2, v2, 0xff

    goto :goto_13

    :cond_12
    const/4 v2, 0x0

    :goto_13
    iget-object v3, p0, Lcom/kwad/sdk/pngencrypt/j;->g:[B

    iget-object v4, p0, Lcom/kwad/sdk/pngencrypt/j;->a:[B

    aget-byte v4, v4, v1

    iget-object v5, p0, Lcom/kwad/sdk/pngencrypt/j;->h:[B

    aget-byte v5, v5, v1

    and-int/lit16 v5, v5, 0xff

    add-int/2addr v2, v5

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v4, v2

    int-to-byte v2, v4

    aput-byte v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_2b
    return-void
.end method

.method private d(I)V
    .registers 5

    const/4 v0, 0x1

    :goto_1
    if-gt v0, p1, :cond_e

    iget-object v1, p0, Lcom/kwad/sdk/pngencrypt/j;->g:[B

    iget-object v2, p0, Lcom/kwad/sdk/pngencrypt/j;->a:[B

    aget-byte v2, v2, v0

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_e
    return-void
.end method

.method private e(I)V
    .registers 9

    iget-object v0, p0, Lcom/kwad/sdk/pngencrypt/j;->i:Lcom/kwad/sdk/pngencrypt/k;

    iget v0, v0, Lcom/kwad/sdk/pngencrypt/k;->j:I

    const/4 v1, 0x1

    rsub-int/lit8 v0, v0, 0x1

    :goto_7
    if-gt v1, p1, :cond_35

    const/4 v2, 0x0

    if-lez v0, :cond_13

    iget-object v3, p0, Lcom/kwad/sdk/pngencrypt/j;->g:[B

    aget-byte v3, v3, v0

    and-int/lit16 v3, v3, 0xff

    goto :goto_14

    :cond_13
    move v3, v2

    :goto_14
    if-lez v0, :cond_1c

    iget-object v2, p0, Lcom/kwad/sdk/pngencrypt/j;->h:[B

    aget-byte v2, v2, v0

    and-int/lit16 v2, v2, 0xff

    :cond_1c
    iget-object v4, p0, Lcom/kwad/sdk/pngencrypt/j;->g:[B

    iget-object v5, p0, Lcom/kwad/sdk/pngencrypt/j;->a:[B

    aget-byte v5, v5, v1

    iget-object v6, p0, Lcom/kwad/sdk/pngencrypt/j;->h:[B

    aget-byte v6, v6, v1

    and-int/lit16 v6, v6, 0xff

    invoke-static {v3, v6, v2}, Lcom/kwad/sdk/pngencrypt/n;->a(III)I

    move-result v2

    add-int/2addr v5, v2

    int-to-byte v2, v5

    aput-byte v2, v4, v1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_35
    return-void
.end method

.method private f(I)V
    .registers 8

    const/4 v0, 0x1

    move v1, v0

    :goto_2
    iget-object v2, p0, Lcom/kwad/sdk/pngencrypt/j;->i:Lcom/kwad/sdk/pngencrypt/k;

    iget v2, v2, Lcom/kwad/sdk/pngencrypt/k;->j:I

    if-gt v1, v2, :cond_13

    iget-object v2, p0, Lcom/kwad/sdk/pngencrypt/j;->g:[B

    iget-object v3, p0, Lcom/kwad/sdk/pngencrypt/j;->a:[B

    aget-byte v3, v3, v1

    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_13
    iget-object v1, p0, Lcom/kwad/sdk/pngencrypt/j;->i:Lcom/kwad/sdk/pngencrypt/k;

    iget v1, v1, Lcom/kwad/sdk/pngencrypt/k;->j:I

    add-int/2addr v1, v0

    move v2, v0

    :goto_19
    if-gt v1, p1, :cond_2d

    iget-object v3, p0, Lcom/kwad/sdk/pngencrypt/j;->g:[B

    iget-object v4, p0, Lcom/kwad/sdk/pngencrypt/j;->a:[B

    aget-byte v4, v4, v1

    iget-object v5, p0, Lcom/kwad/sdk/pngencrypt/j;->g:[B

    aget-byte v5, v5, v2

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v2, v0

    goto :goto_19

    :cond_2d
    return-void
.end method

.method private g(I)V
    .registers 6

    const/4 v0, 0x1

    :goto_1
    if-gt v0, p1, :cond_14

    iget-object v1, p0, Lcom/kwad/sdk/pngencrypt/j;->g:[B

    iget-object v2, p0, Lcom/kwad/sdk/pngencrypt/j;->a:[B

    aget-byte v2, v2, v0

    iget-object v3, p0, Lcom/kwad/sdk/pngencrypt/j;->h:[B

    aget-byte v3, v3, v0

    add-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_14
    return-void
.end method


# virtual methods
.method protected a()V
    .registers 4

    invoke-super {p0}, Lcom/kwad/sdk/pngencrypt/DeflatedChunksSet;->a()V

    iget-object v0, p0, Lcom/kwad/sdk/pngencrypt/j;->k:Lcom/kwad/sdk/pngencrypt/p;

    invoke-virtual {p0}, Lcom/kwad/sdk/pngencrypt/j;->h()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/pngencrypt/p;->a(I)V

    invoke-virtual {p0}, Lcom/kwad/sdk/pngencrypt/j;->i()V

    iget-object v0, p0, Lcom/kwad/sdk/pngencrypt/j;->k:Lcom/kwad/sdk/pngencrypt/p;

    iget-object v1, p0, Lcom/kwad/sdk/pngencrypt/j;->g:[B

    iget v2, v0, Lcom/kwad/sdk/pngencrypt/p;->m:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/kwad/sdk/pngencrypt/p;->a([BI)V

    return-void
.end method

.method protected b()I
    .registers 2

    invoke-virtual {p0}, Lcom/kwad/sdk/pngencrypt/j;->j()I

    move-result v0

    return v0
.end method

.method protected b(I)V
    .registers 8

    iget-object v0, p0, Lcom/kwad/sdk/pngencrypt/j;->g:[B

    if-eqz v0, :cond_a

    array-length v0, v0

    iget-object v1, p0, Lcom/kwad/sdk/pngencrypt/j;->a:[B

    array-length v1, v1

    if-ge v0, v1, :cond_18

    :cond_a
    iget-object v0, p0, Lcom/kwad/sdk/pngencrypt/j;->a:[B

    array-length v0, v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/kwad/sdk/pngencrypt/j;->g:[B

    iget-object v0, p0, Lcom/kwad/sdk/pngencrypt/j;->a:[B

    array-length v0, v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/kwad/sdk/pngencrypt/j;->h:[B

    :cond_18
    iget-object v0, p0, Lcom/kwad/sdk/pngencrypt/j;->k:Lcom/kwad/sdk/pngencrypt/p;

    iget v0, v0, Lcom/kwad/sdk/pngencrypt/p;->j:I

    const/4 v1, 0x0

    if-nez v0, :cond_24

    iget-object v0, p0, Lcom/kwad/sdk/pngencrypt/j;->g:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    :cond_24
    iget-object v0, p0, Lcom/kwad/sdk/pngencrypt/j;->g:[B

    iget-object v2, p0, Lcom/kwad/sdk/pngencrypt/j;->h:[B

    iput-object v2, p0, Lcom/kwad/sdk/pngencrypt/j;->g:[B

    iput-object v0, p0, Lcom/kwad/sdk/pngencrypt/j;->h:[B

    iget-object v0, p0, Lcom/kwad/sdk/pngencrypt/j;->a:[B

    aget-byte v0, v0, v1

    invoke-static {v0}, Lcom/kwad/sdk/pngencrypt/FilterType;->isValidStandard(I)Z

    move-result v2

    const-string v3, "Filter type "

    if-eqz v2, :cond_88

    invoke-static {v0}, Lcom/kwad/sdk/pngencrypt/FilterType;->getByVal(I)Lcom/kwad/sdk/pngencrypt/FilterType;

    move-result-object v2

    iget-object v4, p0, Lcom/kwad/sdk/pngencrypt/j;->l:[I

    aget v5, v4, v0

    add-int/lit8 v5, v5, 0x1

    aput v5, v4, v0

    iget-object v4, p0, Lcom/kwad/sdk/pngencrypt/j;->g:[B

    iget-object v5, p0, Lcom/kwad/sdk/pngencrypt/j;->a:[B

    aget-byte v5, v5, v1

    aput-byte v5, v4, v1

    sget-object v1, Lcom/kwad/sdk/pngencrypt/j$1;->a:[I

    invoke-virtual {v2}, Lcom/kwad/sdk/pngencrypt/FilterType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_a6

    new-instance p1, Lcom/kwad/sdk/pngencrypt/PngjException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " not implemented"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/kwad/sdk/pngencrypt/PngjException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_74
    invoke-direct {p0, p1}, Lcom/kwad/sdk/pngencrypt/j;->e(I)V

    goto :goto_87

    :pswitch_78
    invoke-direct {p0, p1}, Lcom/kwad/sdk/pngencrypt/j;->c(I)V

    goto :goto_87

    :pswitch_7c
    invoke-direct {p0, p1}, Lcom/kwad/sdk/pngencrypt/j;->g(I)V

    goto :goto_87

    :pswitch_80
    invoke-direct {p0, p1}, Lcom/kwad/sdk/pngencrypt/j;->f(I)V

    goto :goto_87

    :pswitch_84
    invoke-direct {p0, p1}, Lcom/kwad/sdk/pngencrypt/j;->d(I)V

    :goto_87
    return-void

    :cond_88
    new-instance p1, Lcom/kwad/sdk/pngencrypt/PngjException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " invalid"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/kwad/sdk/pngencrypt/PngjException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :pswitch_data_a6
    .packed-switch 0x1
        :pswitch_84
        :pswitch_80
        :pswitch_7c
        :pswitch_78
        :pswitch_74
    .end packed-switch
.end method

.method protected c()V
    .registers 1

    invoke-super {p0}, Lcom/kwad/sdk/pngencrypt/DeflatedChunksSet;->c()V

    return-void
.end method

.method public f()V
    .registers 2

    invoke-super {p0}, Lcom/kwad/sdk/pngencrypt/DeflatedChunksSet;->f()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kwad/sdk/pngencrypt/j;->g:[B

    iput-object v0, p0, Lcom/kwad/sdk/pngencrypt/j;->h:[B

    return-void
.end method

.method public i()V
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/pngencrypt/j;->k:Lcom/kwad/sdk/pngencrypt/p;

    iget v0, v0, Lcom/kwad/sdk/pngencrypt/p;->m:I

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/pngencrypt/j;->b(I)V

    return-void
.end method

.method public j()I
    .registers 4

    iget-object v0, p0, Lcom/kwad/sdk/pngencrypt/j;->j:Lcom/kwad/sdk/pngencrypt/e;

    const/4 v1, 0x0

    if-nez v0, :cond_19

    invoke-virtual {p0}, Lcom/kwad/sdk/pngencrypt/j;->h()I

    move-result v0

    iget-object v2, p0, Lcom/kwad/sdk/pngencrypt/j;->i:Lcom/kwad/sdk/pngencrypt/k;

    iget v2, v2, Lcom/kwad/sdk/pngencrypt/k;->b:I

    add-int/lit8 v2, v2, -0x1

    if-lt v0, v2, :cond_12

    goto :goto_26

    :cond_12
    iget-object v0, p0, Lcom/kwad/sdk/pngencrypt/j;->i:Lcom/kwad/sdk/pngencrypt/k;

    iget v0, v0, Lcom/kwad/sdk/pngencrypt/k;->k:I

    :goto_16
    add-int/lit8 v1, v0, 0x1

    goto :goto_26

    :cond_19
    invoke-virtual {v0}, Lcom/kwad/sdk/pngencrypt/e;->a()Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/kwad/sdk/pngencrypt/j;->j:Lcom/kwad/sdk/pngencrypt/e;

    invoke-virtual {v0}, Lcom/kwad/sdk/pngencrypt/e;->h()I

    move-result v0

    goto :goto_16

    :cond_26
    :goto_26
    iget-boolean v0, p0, Lcom/kwad/sdk/pngencrypt/j;->c:Z

    if-nez v0, :cond_2d

    invoke-virtual {p0, v1}, Lcom/kwad/sdk/pngencrypt/j;->a(I)V

    :cond_2d
    return v1
.end method
