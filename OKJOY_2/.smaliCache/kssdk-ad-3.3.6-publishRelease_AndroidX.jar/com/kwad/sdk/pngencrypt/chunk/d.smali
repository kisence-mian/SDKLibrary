.class public Lcom/kwad/sdk/pngencrypt/chunk/d;
.super Ljava/lang/Object;


# instance fields
.field public final a:I

.field public final b:[B

.field public final c:Ljava/lang/String;

.field public d:[B

.field public e:[B

.field private f:J

.field private g:Ljava/util/zip/CRC32;


# direct methods
.method public constructor <init>(ILjava/lang/String;Z)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kwad/sdk/pngencrypt/chunk/d;->d:[B

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/kwad/sdk/pngencrypt/chunk/d;->f:J

    const/4 v0, 0x4

    new-array v1, v0, [B

    iput-object v1, p0, Lcom/kwad/sdk/pngencrypt/chunk/d;->e:[B

    iput p1, p0, Lcom/kwad/sdk/pngencrypt/chunk/d;->a:I

    iput-object p2, p0, Lcom/kwad/sdk/pngencrypt/chunk/d;->c:Ljava/lang/String;

    invoke-static {p2}, Lcom/kwad/sdk/pngencrypt/chunk/b;->a(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/kwad/sdk/pngencrypt/chunk/d;->b:[B

    const/4 p1, 0x0

    :goto_1a
    if-ge p1, v0, :cond_54

    iget-object v1, p0, Lcom/kwad/sdk/pngencrypt/chunk/d;->b:[B

    aget-byte v2, v1, p1

    const/16 v3, 0x41

    if-lt v2, v3, :cond_36

    aget-byte v2, v1, p1

    const/16 v3, 0x7a

    if-gt v2, v3, :cond_36

    aget-byte v2, v1, p1

    const/16 v3, 0x5a

    if-le v2, v3, :cond_51

    aget-byte v1, v1, p1

    const/16 v2, 0x61

    if-ge v1, v2, :cond_51

    :cond_36
    new-instance v1, Lcom/kwad/sdk/pngencrypt/PngjException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad id chunk: must be ascii letters "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/kwad/sdk/pngencrypt/PngjException;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/Throwable;)V

    :cond_51
    add-int/lit8 p1, p1, 0x1

    goto :goto_1a

    :cond_54
    if-eqz p3, :cond_59

    invoke-virtual {p0}, Lcom/kwad/sdk/pngencrypt/chunk/d;->a()V

    :cond_59
    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/pngencrypt/chunk/d;->d:[B

    if-eqz v0, :cond_9

    array-length v0, v0

    iget v1, p0, Lcom/kwad/sdk/pngencrypt/chunk/d;->a:I

    if-ge v0, v1, :cond_f

    :cond_9
    iget v0, p0, Lcom/kwad/sdk/pngencrypt/chunk/d;->a:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/kwad/sdk/pngencrypt/chunk/d;->d:[B

    :cond_f
    return-void
.end method

.method public a(J)V
    .registers 3

    iput-wide p1, p0, Lcom/kwad/sdk/pngencrypt/chunk/d;->f:J

    return-void
.end method

.method public a(Z)V
    .registers 8

    iget-object v0, p0, Lcom/kwad/sdk/pngencrypt/chunk/d;->g:Ljava/util/zip/CRC32;

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v0

    long-to-int v0, v0

    iget-object v1, p0, Lcom/kwad/sdk/pngencrypt/chunk/d;->e:[B

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/kwad/sdk/pngencrypt/n;->c([BI)I

    move-result v1

    if-eq v0, v1, :cond_44

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/kwad/sdk/pngencrypt/chunk/d;->c:Ljava/lang/String;

    aput-object v4, v3, v2

    const/4 v2, 0x1

    iget-wide v4, p0, Lcom/kwad/sdk/pngencrypt/chunk/d;->f:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v2

    const/4 v2, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v2

    const/4 v1, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v1

    const-string v0, "Bad CRC in chunk: %s (offset:%d). Expected:%x Got:%x"

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_3f

    new-instance p1, Lcom/kwad/sdk/pngencrypt/PngjException;

    invoke-direct {p1, v0}, Lcom/kwad/sdk/pngencrypt/PngjException;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/Throwable;)V

    goto :goto_44

    :cond_3f
    const-string p1, "PNG_ENCRYPT"

    invoke-static {p1, v0}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_44
    :goto_44
    return-void
.end method

.method public a([BII)V
    .registers 5

    iget-object v0, p0, Lcom/kwad/sdk/pngencrypt/chunk/d;->g:Ljava/util/zip/CRC32;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v0, p0, Lcom/kwad/sdk/pngencrypt/chunk/d;->g:Ljava/util/zip/CRC32;

    :cond_b
    iget-object v0, p0, Lcom/kwad/sdk/pngencrypt/chunk/d;->g:Ljava/util/zip/CRC32;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/zip/CRC32;->update([BII)V

    return-void
.end method

.method b()Ljava/io/ByteArrayInputStream;
    .registers 3

    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/kwad/sdk/pngencrypt/chunk/d;->d:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.method public c()J
    .registers 3

    iget-wide v0, p0, Lcom/kwad/sdk/pngencrypt/chunk/d;->f:J

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8

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
    check-cast p1, Lcom/kwad/sdk/pngencrypt/chunk/d;

    iget-object v2, p0, Lcom/kwad/sdk/pngencrypt/chunk/d;->c:Ljava/lang/String;

    if-nez v2, :cond_1e

    iget-object v2, p1, Lcom/kwad/sdk/pngencrypt/chunk/d;->c:Ljava/lang/String;

    if-eqz v2, :cond_27

    return v1

    :cond_1e
    iget-object v3, p1, Lcom/kwad/sdk/pngencrypt/chunk/d;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27

    return v1

    :cond_27
    iget-wide v2, p0, Lcom/kwad/sdk/pngencrypt/chunk/d;->f:J

    iget-wide v4, p1, Lcom/kwad/sdk/pngencrypt/chunk/d;->f:J

    cmp-long p1, v2, v4

    if-eqz p1, :cond_30

    return v1

    :cond_30
    return v0
.end method

.method public hashCode()I
    .registers 6

    iget-object v0, p0, Lcom/kwad/sdk/pngencrypt/chunk/d;->c:Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_a
    const/16 v1, 0x1f

    add-int/2addr v0, v1

    mul-int/2addr v0, v1

    iget-wide v1, p0, Lcom/kwad/sdk/pngencrypt/chunk/d;->f:J

    const/16 v3, 0x20

    ushr-long v3, v1, v3

    xor-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "chunkid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/pngencrypt/chunk/d;->b:[B

    invoke-static {v1}, Lcom/kwad/sdk/pngencrypt/chunk/b;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " len="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/kwad/sdk/pngencrypt/chunk/d;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
