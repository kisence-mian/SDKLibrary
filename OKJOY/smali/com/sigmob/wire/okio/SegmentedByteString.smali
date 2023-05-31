.class final Lcom/sigmob/wire/okio/SegmentedByteString;
.super Lcom/sigmob/wire/okio/ByteString;


# instance fields
.field final transient directory:[I

.field final transient segments:[[B


# direct methods
.method constructor <init>(Lcom/sigmob/wire/okio/Buffer;I)V
    .registers 10

    const/4 v6, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sigmob/wire/okio/ByteString;-><init>([B)V

    iget-wide v0, p1, Lcom/sigmob/wire/okio/Buffer;->size:J

    const-wide/16 v2, 0x0

    int-to-long v4, p2

    invoke-static/range {v0 .. v5}, Lcom/sigmob/wire/okio/Util;->checkOffsetAndCount(JJJ)V

    iget-object v0, p1, Lcom/sigmob/wire/okio/Buffer;->head:Lcom/sigmob/wire/okio/Segment;

    move v1, v6

    move v2, v6

    :goto_11
    if-ge v2, p2, :cond_2c

    iget v3, v0, Lcom/sigmob/wire/okio/Segment;->limit:I

    iget v4, v0, Lcom/sigmob/wire/okio/Segment;->pos:I

    if-ne v3, v4, :cond_21

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "s.limit == s.pos"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_21
    iget v3, v0, Lcom/sigmob/wire/okio/Segment;->limit:I

    iget v4, v0, Lcom/sigmob/wire/okio/Segment;->pos:I

    sub-int/2addr v3, v4

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    iget-object v0, v0, Lcom/sigmob/wire/okio/Segment;->next:Lcom/sigmob/wire/okio/Segment;

    goto :goto_11

    :cond_2c
    new-array v0, v1, [[B

    iput-object v0, p0, Lcom/sigmob/wire/okio/SegmentedByteString;->segments:[[B

    mul-int/lit8 v0, v1, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sigmob/wire/okio/SegmentedByteString;->directory:[I

    iget-object v0, p1, Lcom/sigmob/wire/okio/Buffer;->head:Lcom/sigmob/wire/okio/Segment;

    move-object v1, v0

    move v2, v6

    :goto_3a
    if-ge v6, p2, :cond_62

    iget-object v0, p0, Lcom/sigmob/wire/okio/SegmentedByteString;->segments:[[B

    iget-object v3, v1, Lcom/sigmob/wire/okio/Segment;->data:[B

    aput-object v3, v0, v2

    iget v0, v1, Lcom/sigmob/wire/okio/Segment;->limit:I

    iget v3, v1, Lcom/sigmob/wire/okio/Segment;->pos:I

    sub-int/2addr v0, v3

    add-int/2addr v0, v6

    if-le v0, p2, :cond_4b

    move v0, p2

    :cond_4b
    iget-object v3, p0, Lcom/sigmob/wire/okio/SegmentedByteString;->directory:[I

    aput v0, v3, v2

    iget-object v3, p0, Lcom/sigmob/wire/okio/SegmentedByteString;->directory:[I

    iget-object v4, p0, Lcom/sigmob/wire/okio/SegmentedByteString;->segments:[[B

    array-length v4, v4

    add-int/2addr v4, v2

    iget v5, v1, Lcom/sigmob/wire/okio/Segment;->pos:I

    aput v5, v3, v4

    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/sigmob/wire/okio/Segment;->shared:Z

    add-int/lit8 v2, v2, 0x1

    iget-object v1, v1, Lcom/sigmob/wire/okio/Segment;->next:Lcom/sigmob/wire/okio/Segment;

    move v6, v0

    goto :goto_3a

    :cond_62
    return-void
.end method

.method private segment(I)I
    .registers 6

    iget-object v0, p0, Lcom/sigmob/wire/okio/SegmentedByteString;->directory:[I

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sigmob/wire/okio/SegmentedByteString;->segments:[[B

    array-length v2, v2

    add-int/lit8 v3, p1, 0x1

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->binarySearch([IIII)I

    move-result v0

    if-ltz v0, :cond_f

    :goto_e
    return v0

    :cond_f
    xor-int/lit8 v0, v0, -0x1

    goto :goto_e
.end method

.method private toByteString()Lcom/sigmob/wire/okio/ByteString;
    .registers 3

    new-instance v0, Lcom/sigmob/wire/okio/ByteString;

    invoke-virtual {p0}, Lcom/sigmob/wire/okio/SegmentedByteString;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sigmob/wire/okio/ByteString;-><init>([B)V

    return-object v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .registers 2

    invoke-direct {p0}, Lcom/sigmob/wire/okio/SegmentedByteString;->toByteString()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public asByteBuffer()Ljava/nio/ByteBuffer;
    .registers 2

    invoke-virtual {p0}, Lcom/sigmob/wire/okio/SegmentedByteString;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public base64()Ljava/lang/String;
    .registers 2

    invoke-direct {p0}, Lcom/sigmob/wire/okio/SegmentedByteString;->toByteString()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/wire/okio/ByteString;->base64()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public base64Url()Ljava/lang/String;
    .registers 2

    invoke-direct {p0}, Lcom/sigmob/wire/okio/SegmentedByteString;->toByteString()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/wire/okio/ByteString;->base64Url()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, p0, :cond_5

    :goto_4
    return v1

    :cond_5
    instance-of v0, p1, Lcom/sigmob/wire/okio/ByteString;

    if-eqz v0, :cond_25

    move-object v0, p1

    check-cast v0, Lcom/sigmob/wire/okio/ByteString;

    invoke-virtual {v0}, Lcom/sigmob/wire/okio/ByteString;->size()I

    move-result v0

    invoke-virtual {p0}, Lcom/sigmob/wire/okio/SegmentedByteString;->size()I

    move-result v3

    if-ne v0, v3, :cond_25

    check-cast p1, Lcom/sigmob/wire/okio/ByteString;

    invoke-virtual {p0}, Lcom/sigmob/wire/okio/SegmentedByteString;->size()I

    move-result v0

    invoke-virtual {p0, v2, p1, v2, v0}, Lcom/sigmob/wire/okio/SegmentedByteString;->rangeEquals(ILcom/sigmob/wire/okio/ByteString;II)Z

    move-result v0

    if-eqz v0, :cond_25

    move v0, v1

    :goto_23
    move v1, v0

    goto :goto_4

    :cond_25
    move v0, v2

    goto :goto_23
.end method

.method public getByte(I)B
    .registers 8

    iget-object v0, p0, Lcom/sigmob/wire/okio/SegmentedByteString;->directory:[I

    iget-object v1, p0, Lcom/sigmob/wire/okio/SegmentedByteString;->segments:[[B

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    int-to-long v0, v0

    int-to-long v2, p1

    const-wide/16 v4, 0x1

    invoke-static/range {v0 .. v5}, Lcom/sigmob/wire/okio/Util;->checkOffsetAndCount(JJJ)V

    invoke-direct {p0, p1}, Lcom/sigmob/wire/okio/SegmentedByteString;->segment(I)I

    move-result v1

    if-nez v1, :cond_29

    const/4 v0, 0x0

    :goto_17
    iget-object v2, p0, Lcom/sigmob/wire/okio/SegmentedByteString;->directory:[I

    iget-object v3, p0, Lcom/sigmob/wire/okio/SegmentedByteString;->segments:[[B

    array-length v3, v3

    add-int/2addr v3, v1

    aget v2, v2, v3

    iget-object v3, p0, Lcom/sigmob/wire/okio/SegmentedByteString;->segments:[[B

    aget-object v1, v3, v1

    sub-int v0, p1, v0

    add-int/2addr v0, v2

    aget-byte v0, v1, v0

    return v0

    :cond_29
    iget-object v0, p0, Lcom/sigmob/wire/okio/SegmentedByteString;->directory:[I

    add-int/lit8 v2, v1, -0x1

    aget v0, v0, v2

    goto :goto_17
.end method

.method public hashCode()I
    .registers 10

    const/4 v1, 0x0

    iget v0, p0, Lcom/sigmob/wire/okio/SegmentedByteString;->hashCode:I

    if-eqz v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x1

    iget-object v2, p0, Lcom/sigmob/wire/okio/SegmentedByteString;->segments:[[B

    array-length v5, v2

    move v2, v1

    move v3, v1

    :goto_c
    if-ge v2, v5, :cond_32

    iget-object v1, p0, Lcom/sigmob/wire/okio/SegmentedByteString;->segments:[[B

    aget-object v6, v1, v2

    iget-object v1, p0, Lcom/sigmob/wire/okio/SegmentedByteString;->directory:[I

    add-int v4, v5, v2

    aget v1, v1, v4

    iget-object v4, p0, Lcom/sigmob/wire/okio/SegmentedByteString;->directory:[I

    aget v4, v4, v2

    sub-int v3, v4, v3

    add-int/2addr v3, v1

    move v8, v1

    move v1, v0

    move v0, v8

    :goto_22
    if-ge v0, v3, :cond_2c

    mul-int/lit8 v1, v1, 0x1f

    aget-byte v7, v6, v0

    add-int/2addr v1, v7

    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    :cond_2c
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v3, v4

    move v0, v1

    goto :goto_c

    :cond_32
    iput v0, p0, Lcom/sigmob/wire/okio/SegmentedByteString;->hashCode:I

    goto :goto_5
.end method

.method public hex()Ljava/lang/String;
    .registers 2

    invoke-direct {p0}, Lcom/sigmob/wire/okio/SegmentedByteString;->toByteString()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/wire/okio/ByteString;->hex()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public indexOf([BI)I
    .registers 4

    invoke-direct {p0}, Lcom/sigmob/wire/okio/SegmentedByteString;->toByteString()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/sigmob/wire/okio/ByteString;->indexOf([BI)I

    move-result v0

    return v0
.end method

.method internalArray()[B
    .registers 2

    invoke-virtual {p0}, Lcom/sigmob/wire/okio/SegmentedByteString;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public lastIndexOf([BI)I
    .registers 4

    invoke-direct {p0}, Lcom/sigmob/wire/okio/SegmentedByteString;->toByteString()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/sigmob/wire/okio/ByteString;->lastIndexOf([BI)I

    move-result v0

    return v0
.end method

.method public md5()Lcom/sigmob/wire/okio/ByteString;
    .registers 2

    invoke-direct {p0}, Lcom/sigmob/wire/okio/SegmentedByteString;->toByteString()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/wire/okio/ByteString;->md5()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public rangeEquals(ILcom/sigmob/wire/okio/ByteString;II)Z
    .registers 11

    const/4 v1, 0x0

    if-ltz p1, :cond_a

    invoke-virtual {p0}, Lcom/sigmob/wire/okio/SegmentedByteString;->size()I

    move-result v0

    sub-int/2addr v0, p4

    if-le p1, v0, :cond_b

    :cond_a
    :goto_a
    return v1

    :cond_b
    invoke-direct {p0, p1}, Lcom/sigmob/wire/okio/SegmentedByteString;->segment(I)I

    move-result v0

    move v2, v0

    :goto_10
    if-lez p4, :cond_43

    if-nez v2, :cond_3c

    move v0, v1

    :goto_15
    iget-object v3, p0, Lcom/sigmob/wire/okio/SegmentedByteString;->directory:[I

    aget v3, v3, v2

    sub-int/2addr v3, v0

    add-int/2addr v3, v0

    sub-int/2addr v3, p1

    invoke-static {p4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget-object v4, p0, Lcom/sigmob/wire/okio/SegmentedByteString;->directory:[I

    iget-object v5, p0, Lcom/sigmob/wire/okio/SegmentedByteString;->segments:[[B

    array-length v5, v5

    add-int/2addr v5, v2

    aget v4, v4, v5

    sub-int v0, p1, v0

    add-int/2addr v0, v4

    iget-object v4, p0, Lcom/sigmob/wire/okio/SegmentedByteString;->segments:[[B

    aget-object v4, v4, v2

    invoke-virtual {p2, p3, v4, v0, v3}, Lcom/sigmob/wire/okio/ByteString;->rangeEquals(I[BII)Z

    move-result v0

    if-eqz v0, :cond_a

    add-int/2addr p1, v3

    add-int/2addr p3, v3

    sub-int/2addr p4, v3

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_10

    :cond_3c
    iget-object v0, p0, Lcom/sigmob/wire/okio/SegmentedByteString;->directory:[I

    add-int/lit8 v3, v2, -0x1

    aget v0, v0, v3

    goto :goto_15

    :cond_43
    const/4 v1, 0x1

    goto :goto_a
.end method

.method public rangeEquals(I[BII)Z
    .registers 11

    const/4 v1, 0x0

    if-ltz p1, :cond_10

    invoke-virtual {p0}, Lcom/sigmob/wire/okio/SegmentedByteString;->size()I

    move-result v0

    sub-int/2addr v0, p4

    if-gt p1, v0, :cond_10

    if-ltz p3, :cond_10

    array-length v0, p2

    sub-int/2addr v0, p4

    if-le p3, v0, :cond_11

    :cond_10
    :goto_10
    return v1

    :cond_11
    invoke-direct {p0, p1}, Lcom/sigmob/wire/okio/SegmentedByteString;->segment(I)I

    move-result v0

    move v2, v0

    :goto_16
    if-lez p4, :cond_49

    if-nez v2, :cond_42

    move v0, v1

    :goto_1b
    iget-object v3, p0, Lcom/sigmob/wire/okio/SegmentedByteString;->directory:[I

    aget v3, v3, v2

    sub-int/2addr v3, v0

    add-int/2addr v3, v0

    sub-int/2addr v3, p1

    invoke-static {p4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget-object v4, p0, Lcom/sigmob/wire/okio/SegmentedByteString;->directory:[I

    iget-object v5, p0, Lcom/sigmob/wire/okio/SegmentedByteString;->segments:[[B

    array-length v5, v5

    add-int/2addr v5, v2

    aget v4, v4, v5

    sub-int v0, p1, v0

    add-int/2addr v0, v4

    iget-object v4, p0, Lcom/sigmob/wire/okio/SegmentedByteString;->segments:[[B

    aget-object v4, v4, v2

    invoke-static {v4, v0, p2, p3, v3}, Lcom/sigmob/wire/okio/Util;->arrayRangeEquals([BI[BII)Z

    move-result v0

    if-eqz v0, :cond_10

    add-int/2addr p1, v3

    add-int/2addr p3, v3

    sub-int/2addr p4, v3

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_16

    :cond_42
    iget-object v0, p0, Lcom/sigmob/wire/okio/SegmentedByteString;->directory:[I

    add-int/lit8 v3, v2, -0x1

    aget v0, v0, v3

    goto :goto_1b

    :cond_49
    const/4 v1, 0x1

    goto :goto_10
.end method

.method public sha256()Lcom/sigmob/wire/okio/ByteString;
    .registers 2

    invoke-direct {p0}, Lcom/sigmob/wire/okio/SegmentedByteString;->toByteString()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/wire/okio/ByteString;->sha256()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .registers 3

    iget-object v0, p0, Lcom/sigmob/wire/okio/SegmentedByteString;->directory:[I

    iget-object v1, p0, Lcom/sigmob/wire/okio/SegmentedByteString;->segments:[[B

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    return v0
.end method

.method public substring(I)Lcom/sigmob/wire/okio/ByteString;
    .registers 3

    invoke-direct {p0}, Lcom/sigmob/wire/okio/SegmentedByteString;->toByteString()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sigmob/wire/okio/ByteString;->substring(I)Lcom/sigmob/wire/okio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public substring(II)Lcom/sigmob/wire/okio/ByteString;
    .registers 4

    invoke-direct {p0}, Lcom/sigmob/wire/okio/SegmentedByteString;->toByteString()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/sigmob/wire/okio/ByteString;->substring(II)Lcom/sigmob/wire/okio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public toAsciiLowercase()Lcom/sigmob/wire/okio/ByteString;
    .registers 2

    invoke-direct {p0}, Lcom/sigmob/wire/okio/SegmentedByteString;->toByteString()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/wire/okio/ByteString;->toAsciiLowercase()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public toAsciiUppercase()Lcom/sigmob/wire/okio/ByteString;
    .registers 2

    invoke-direct {p0}, Lcom/sigmob/wire/okio/SegmentedByteString;->toByteString()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/wire/okio/ByteString;->toAsciiUppercase()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public toByteArray()[B
    .registers 9

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sigmob/wire/okio/SegmentedByteString;->directory:[I

    iget-object v2, p0, Lcom/sigmob/wire/okio/SegmentedByteString;->segments:[[B

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    aget v1, v1, v2

    new-array v3, v1, [B

    iget-object v1, p0, Lcom/sigmob/wire/okio/SegmentedByteString;->segments:[[B

    array-length v4, v1

    move v1, v0

    :goto_10
    if-ge v0, v4, :cond_29

    iget-object v2, p0, Lcom/sigmob/wire/okio/SegmentedByteString;->directory:[I

    add-int v5, v4, v0

    aget v5, v2, v5

    iget-object v2, p0, Lcom/sigmob/wire/okio/SegmentedByteString;->directory:[I

    aget v2, v2, v0

    iget-object v6, p0, Lcom/sigmob/wire/okio/SegmentedByteString;->segments:[[B

    aget-object v6, v6, v0

    sub-int v7, v2, v1

    invoke-static {v6, v5, v3, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v0, 0x1

    move v1, v2

    goto :goto_10

    :cond_29
    return-object v3
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-direct {p0}, Lcom/sigmob/wire/okio/SegmentedByteString;->toByteString()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/wire/okio/ByteString;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public utf8()Ljava/lang/String;
    .registers 2

    invoke-direct {p0}, Lcom/sigmob/wire/okio/SegmentedByteString;->toByteString()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/wire/okio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method write(Lcom/sigmob/wire/okio/Buffer;)V
    .registers 10

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sigmob/wire/okio/SegmentedByteString;->segments:[[B

    array-length v3, v1

    move v1, v0

    :goto_5
    if-ge v0, v3, :cond_34

    iget-object v2, p0, Lcom/sigmob/wire/okio/SegmentedByteString;->directory:[I

    add-int v4, v3, v0

    aget v4, v2, v4

    iget-object v2, p0, Lcom/sigmob/wire/okio/SegmentedByteString;->directory:[I

    aget v2, v2, v0

    new-instance v5, Lcom/sigmob/wire/okio/Segment;

    iget-object v6, p0, Lcom/sigmob/wire/okio/SegmentedByteString;->segments:[[B

    aget-object v6, v6, v0

    add-int v7, v4, v2

    sub-int v1, v7, v1

    invoke-direct {v5, v6, v4, v1}, Lcom/sigmob/wire/okio/Segment;-><init>([BII)V

    iget-object v1, p1, Lcom/sigmob/wire/okio/Buffer;->head:Lcom/sigmob/wire/okio/Segment;

    if-nez v1, :cond_2c

    iput-object v5, v5, Lcom/sigmob/wire/okio/Segment;->prev:Lcom/sigmob/wire/okio/Segment;

    iput-object v5, v5, Lcom/sigmob/wire/okio/Segment;->next:Lcom/sigmob/wire/okio/Segment;

    iput-object v5, p1, Lcom/sigmob/wire/okio/Buffer;->head:Lcom/sigmob/wire/okio/Segment;

    :goto_28
    add-int/lit8 v0, v0, 0x1

    move v1, v2

    goto :goto_5

    :cond_2c
    iget-object v1, p1, Lcom/sigmob/wire/okio/Buffer;->head:Lcom/sigmob/wire/okio/Segment;

    iget-object v1, v1, Lcom/sigmob/wire/okio/Segment;->prev:Lcom/sigmob/wire/okio/Segment;

    invoke-virtual {v1, v5}, Lcom/sigmob/wire/okio/Segment;->push(Lcom/sigmob/wire/okio/Segment;)Lcom/sigmob/wire/okio/Segment;

    goto :goto_28

    :cond_34
    iget-wide v2, p1, Lcom/sigmob/wire/okio/Buffer;->size:J

    int-to-long v0, v1

    add-long/2addr v0, v2

    iput-wide v0, p1, Lcom/sigmob/wire/okio/Buffer;->size:J

    return-void
.end method

.method public write(Ljava/io/OutputStream;)V
    .registers 8

    const/4 v0, 0x0

    if-nez p1, :cond_b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "out == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    iget-object v1, p0, Lcom/sigmob/wire/okio/SegmentedByteString;->segments:[[B

    array-length v3, v1

    move v1, v0

    :goto_f
    if-ge v0, v3, :cond_28

    iget-object v2, p0, Lcom/sigmob/wire/okio/SegmentedByteString;->directory:[I

    add-int v4, v3, v0

    aget v4, v2, v4

    iget-object v2, p0, Lcom/sigmob/wire/okio/SegmentedByteString;->directory:[I

    aget v2, v2, v0

    iget-object v5, p0, Lcom/sigmob/wire/okio/SegmentedByteString;->segments:[[B

    aget-object v5, v5, v0

    sub-int v1, v2, v1

    invoke-virtual {p1, v5, v4, v1}, Ljava/io/OutputStream;->write([BII)V

    add-int/lit8 v0, v0, 0x1

    move v1, v2

    goto :goto_f

    :cond_28
    return-void
.end method
