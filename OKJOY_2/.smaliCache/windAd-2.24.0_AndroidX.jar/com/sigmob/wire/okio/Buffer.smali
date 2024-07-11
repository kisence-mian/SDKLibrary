.class public final Lcom/sigmob/wire/okio/Buffer;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/wire/okio/BufferedSink;
.implements Lcom/sigmob/wire/okio/BufferedSource;
.implements Ljava/lang/Cloneable;


# static fields
.field private static final DIGITS:[B

.field static final REPLACEMENT_CHARACTER:I = 0xfffd


# instance fields
.field head:Lcom/sigmob/wire/okio/Segment;

.field size:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/sigmob/wire/okio/Buffer;->DIGITS:[B

    return-void

    :array_a
    .array-data 1
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private digest(Ljava/lang/String;)Lcom/sigmob/wire/okio/ByteString;
    .registers 7

    :try_start_0
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    iget-object v0, p0, Lcom/sigmob/wire/okio/Buffer;->head:Lcom/sigmob/wire/okio/Segment;

    iget-object v0, v0, Lcom/sigmob/wire/okio/Segment;->data:[B

    iget-object v1, p0, Lcom/sigmob/wire/okio/Buffer;->head:Lcom/sigmob/wire/okio/Segment;

    iget v1, v1, Lcom/sigmob/wire/okio/Segment;->pos:I

    iget-object v2, p0, Lcom/sigmob/wire/okio/Buffer;->head:Lcom/sigmob/wire/okio/Segment;

    iget v2, v2, Lcom/sigmob/wire/okio/Segment;->limit:I

    iget-object v3, p0, Lcom/sigmob/wire/okio/Buffer;->head:Lcom/sigmob/wire/okio/Segment;

    iget v3, v3, Lcom/sigmob/wire/okio/Segment;->pos:I

    sub-int/2addr v2, v3

    invoke-virtual {p1, v0, v1, v2}, Ljava/security/MessageDigest;->update([BII)V

    iget-object v0, p0, Lcom/sigmob/wire/okio/Buffer;->head:Lcom/sigmob/wire/okio/Segment;

    :goto_1a
    iget-object v0, v0, Lcom/sigmob/wire/okio/Segment;->next:Lcom/sigmob/wire/okio/Segment;

    iget-object v1, p0, Lcom/sigmob/wire/okio/Buffer;->head:Lcom/sigmob/wire/okio/Segment;

    if-eq v0, v1, :cond_2d

    iget-object v1, v0, Lcom/sigmob/wire/okio/Segment;->data:[B

    iget v2, v0, Lcom/sigmob/wire/okio/Segment;->pos:I

    iget v3, v0, Lcom/sigmob/wire/okio/Segment;->limit:I

    iget v4, v0, Lcom/sigmob/wire/okio/Segment;->pos:I

    sub-int/2addr v3, v4

    invoke-virtual {p1, v1, v2, v3}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_1a

    :cond_2d
    invoke-virtual {p1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1

    invoke-static {p1}, Lcom/sigmob/wire/okio/ByteString;->of([B)Lcom/sigmob/wire/okio/ByteString;

    move-result-object p1
    :try_end_35
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_35} :catch_36

    return-object p1

    :catch_36
    move-exception p1

    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method private rangeEquals(Lcom/sigmob/wire/okio/Segment;ILcom/sigmob/wire/okio/ByteString;II)Z
    .registers 11

    iget v0, p1, Lcom/sigmob/wire/okio/Segment;->limit:I

    iget-object v1, p1, Lcom/sigmob/wire/okio/Segment;->data:[B

    :goto_4
    if-ge p4, p5, :cond_23

    if-ne p2, v0, :cond_14

    iget-object p1, p1, Lcom/sigmob/wire/okio/Segment;->next:Lcom/sigmob/wire/okio/Segment;

    iget-object p2, p1, Lcom/sigmob/wire/okio/Segment;->data:[B

    iget v0, p1, Lcom/sigmob/wire/okio/Segment;->pos:I

    iget v1, p1, Lcom/sigmob/wire/okio/Segment;->limit:I

    move v4, v1

    move-object v1, p2

    move p2, v0

    move v0, v4

    :cond_14
    aget-byte v2, v1, p2

    invoke-virtual {p3, p4}, Lcom/sigmob/wire/okio/ByteString;->getByte(I)B

    move-result v3

    if-eq v2, v3, :cond_1e

    const/4 p1, 0x0

    return p1

    :cond_1e
    add-int/lit8 p2, p2, 0x1

    add-int/lit8 p4, p4, 0x1

    goto :goto_4

    :cond_23
    const/4 p1, 0x1

    return p1
.end method

.method private readFrom(Ljava/io/InputStream;JZ)V
    .registers 9

    if-eqz p1, :cond_3c

    :goto_2
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gtz v0, :cond_c

    if-eqz p4, :cond_b

    goto :goto_c

    :cond_b
    return-void

    :cond_c
    :goto_c
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sigmob/wire/okio/Buffer;->writableSegment(I)Lcom/sigmob/wire/okio/Segment;

    move-result-object v0

    iget v1, v0, Lcom/sigmob/wire/okio/Segment;->limit:I

    rsub-int v1, v1, 0x2000

    int-to-long v1, v1

    invoke-static {p2, p3, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v1, v1

    iget-object v2, v0, Lcom/sigmob/wire/okio/Segment;->data:[B

    iget v3, v0, Lcom/sigmob/wire/okio/Segment;->limit:I

    invoke-virtual {p1, v2, v3, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2f

    if-eqz p4, :cond_29

    return-void

    :cond_29
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_2f
    iget v2, v0, Lcom/sigmob/wire/okio/Segment;->limit:I

    add-int/2addr v2, v1

    iput v2, v0, Lcom/sigmob/wire/okio/Segment;->limit:I

    iget-wide v2, p0, Lcom/sigmob/wire/okio/Buffer;->size:J

    int-to-long v0, v1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/sigmob/wire/okio/Buffer;->size:J

    sub-long/2addr p2, v0

    goto :goto_2

    :cond_3c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "in == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public buffer()Lcom/sigmob/wire/okio/Buffer;
    .registers 1

    return-object p0
.end method

.method public clear()V
    .registers 3

    :try_start_0
    iget-wide v0, p0, Lcom/sigmob/wire/okio/Buffer;->size:J

    invoke-virtual {p0, v0, v1}, Lcom/sigmob/wire/okio/Buffer;->skip(J)V
    :try_end_5
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public clone()Lcom/sigmob/wire/okio/Buffer;
    .registers 6

    new-instance v0, Lcom/sigmob/wire/okio/Buffer;

    invoke-direct {v0}, Lcom/sigmob/wire/okio/Buffer;-><init>()V

    iget-wide v1, p0, Lcom/sigmob/wire/okio/Buffer;->size:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_e

    return-object v0

    :cond_e
    new-instance v1, Lcom/sigmob/wire/okio/Segment;

    iget-object v2, p0, Lcom/sigmob/wire/okio/Buffer;->head:Lcom/sigmob/wire/okio/Segment;

    invoke-direct {v1, v2}, Lcom/sigmob/wire/okio/Segment;-><init>(Lcom/sigmob/wire/okio/Segment;)V

    iput-object v1, v0, Lcom/sigmob/wire/okio/Buffer;->head:Lcom/sigmob/wire/okio/Segment;

    iput-object v1, v1, Lcom/sigmob/wire/okio/Segment;->prev:Lcom/sigmob/wire/okio/Segment;

    iput-object v1, v1, Lcom/sigmob/wire/okio/Segment;->next:Lcom/sigmob/wire/okio/Segment;

    iget-object v1, p0, Lcom/sigmob/wire/okio/Buffer;->head:Lcom/sigmob/wire/okio/Segment;

    :goto_1d
    iget-object v1, v1, Lcom/sigmob/wire/okio/Segment;->next:Lcom/sigmob/wire/okio/Segment;

    iget-object v2, p0, Lcom/sigmob/wire/okio/Buffer;->head:Lcom/sigmob/wire/okio/Segment;

    if-eq v1, v2, :cond_30

    iget-object v2, v0, Lcom/sigmob/wire/okio/Buffer;->head:Lcom/sigmob/wire/okio/Segment;

    iget-object v2, v2, Lcom/sigmob/wire/okio/Segment;->prev:Lcom/sigmob/wire/okio/Segment;

    new-instance v3, Lcom/sigmob/wire/okio/Segment;

    invoke-direct {v3, v1}, Lcom/sigmob/wire/okio/Segment;-><init>(Lcom/sigmob/wire/okio/Segment;)V

    invoke-virtual {v2, v3}, Lcom/sigmob/wire/okio/Segment;->push(Lcom/sigmob/wire/okio/Segment;)Lcom/sigmob/wire/okio/Segment;

    goto :goto_1d

    :cond_30
    iget-wide v1, p0, Lcom/sigmob/wire/okio/Buffer;->size:J

    iput-wide v1, v0, Lcom/sigmob/wire/okio/Buffer;->size:J

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/sigmob/wire/okio/Buffer;->clone()Lcom/sigmob/wire/okio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .registers 1

    return-void
.end method

.method public completeSegmentByteCount()J
    .registers 6

    iget-wide v0, p0, Lcom/sigmob/wire/okio/Buffer;->size:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_9

    return-wide v2

    :cond_9
    iget-object v2, p0, Lcom/sigmob/wire/okio/Buffer;->head:Lcom/sigmob/wire/okio/Segment;

    iget-object v2, v2, Lcom/sigmob/wire/okio/Segment;->prev:Lcom/sigmob/wire/okio/Segment;

    iget v3, v2, Lcom/sigmob/wire/okio/Segment;->limit:I

    const/16 v4, 0x2000

    if-ge v3, v4, :cond_1e

    iget-boolean v3, v2, Lcom/sigmob/wire/okio/Segment;->owner:Z

    if-eqz v3, :cond_1e

    iget v3, v2, Lcom/sigmob/wire/okio/Segment;->limit:I

    iget v2, v2, Lcom/sigmob/wire/okio/Segment;->pos:I

    sub-int/2addr v3, v2

    int-to-long v2, v3

    sub-long/2addr v0, v2

    :cond_1e
    return-wide v0
.end method

.method public copyTo(Lcom/sigmob/wire/okio/Buffer;JJ)Lcom/sigmob/wire/okio/Buffer;
    .registers 12

    if-eqz p1, :cond_63

    iget-wide v0, p0, Lcom/sigmob/wire/okio/Buffer;->size:J

    move-wide v2, p2

    move-wide v4, p4

    invoke-static/range {v0 .. v5}, Lcom/sigmob/wire/okio/Util;->checkOffsetAndCount(JJJ)V

    const-wide/16 v0, 0x0

    cmp-long v2, p4, v0

    if-nez v2, :cond_10

    return-object p0

    :cond_10
    iget-wide v2, p1, Lcom/sigmob/wire/okio/Buffer;->size:J

    add-long/2addr v2, p4

    iput-wide v2, p1, Lcom/sigmob/wire/okio/Buffer;->size:J

    iget-object v2, p0, Lcom/sigmob/wire/okio/Buffer;->head:Lcom/sigmob/wire/okio/Segment;

    :goto_17
    iget v3, v2, Lcom/sigmob/wire/okio/Segment;->limit:I

    iget v4, v2, Lcom/sigmob/wire/okio/Segment;->pos:I

    sub-int/2addr v3, v4

    int-to-long v3, v3

    cmp-long v3, p2, v3

    if-ltz v3, :cond_2b

    iget v3, v2, Lcom/sigmob/wire/okio/Segment;->limit:I

    iget v4, v2, Lcom/sigmob/wire/okio/Segment;->pos:I

    sub-int/2addr v3, v4

    int-to-long v3, v3

    sub-long/2addr p2, v3

    iget-object v2, v2, Lcom/sigmob/wire/okio/Segment;->next:Lcom/sigmob/wire/okio/Segment;

    goto :goto_17

    :cond_2b
    :goto_2b
    cmp-long v3, p4, v0

    if-lez v3, :cond_62

    new-instance v3, Lcom/sigmob/wire/okio/Segment;

    invoke-direct {v3, v2}, Lcom/sigmob/wire/okio/Segment;-><init>(Lcom/sigmob/wire/okio/Segment;)V

    iget v4, v3, Lcom/sigmob/wire/okio/Segment;->pos:I

    int-to-long v4, v4

    add-long/2addr v4, p2

    long-to-int p2, v4

    iput p2, v3, Lcom/sigmob/wire/okio/Segment;->pos:I

    iget p2, v3, Lcom/sigmob/wire/okio/Segment;->pos:I

    long-to-int p3, p4

    add-int/2addr p2, p3

    iget p3, v3, Lcom/sigmob/wire/okio/Segment;->limit:I

    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p2

    iput p2, v3, Lcom/sigmob/wire/okio/Segment;->limit:I

    iget-object p2, p1, Lcom/sigmob/wire/okio/Buffer;->head:Lcom/sigmob/wire/okio/Segment;

    if-nez p2, :cond_52

    iput-object v3, v3, Lcom/sigmob/wire/okio/Segment;->prev:Lcom/sigmob/wire/okio/Segment;

    iput-object v3, v3, Lcom/sigmob/wire/okio/Segment;->next:Lcom/sigmob/wire/okio/Segment;

    iput-object v3, p1, Lcom/sigmob/wire/okio/Buffer;->head:Lcom/sigmob/wire/okio/Segment;

    goto :goto_57

    :cond_52
    iget-object p2, p2, Lcom/sigmob/wire/okio/Segment;->prev:Lcom/sigmob/wire/okio/Segment;

    invoke-virtual {p2, v3}, Lcom/sigmob/wire/okio/Segment;->push(Lcom/sigmob/wire/okio/Segment;)Lcom/sigmob/wire/okio/Segment;

    :goto_57
    iget p2, v3, Lcom/sigmob/wire/okio/Segment;->limit:I

    iget p3, v3, Lcom/sigmob/wire/okio/Segment;->pos:I

    sub-int/2addr p2, p3

    int-to-long p2, p2

    sub-long/2addr p4, p2

    iget-object v2, v2, Lcom/sigmob/wire/okio/Segment;->next:Lcom/sigmob/wire/okio/Segment;

    move-wide p2, v0

    goto :goto_2b

    :cond_62
    return-object p0

    :cond_63
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "out == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public copyTo(Ljava/io/OutputStream;)Lcom/sigmob/wire/okio/Buffer;
    .registers 8

    iget-wide v4, p0, Lcom/sigmob/wire/okio/Buffer;->size:J

    const-wide/16 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sigmob/wire/okio/Buffer;->copyTo(Ljava/io/OutputStream;JJ)Lcom/sigmob/wire/okio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public copyTo(Ljava/io/OutputStream;JJ)Lcom/sigmob/wire/okio/Buffer;
    .registers 12

    if-eqz p1, :cond_44

    iget-wide v0, p0, Lcom/sigmob/wire/okio/Buffer;->size:J

    move-wide v2, p2

    move-wide v4, p4

    invoke-static/range {v0 .. v5}, Lcom/sigmob/wire/okio/Util;->checkOffsetAndCount(JJJ)V

    const-wide/16 v0, 0x0

    cmp-long v2, p4, v0

    if-nez v2, :cond_10

    return-object p0

    :cond_10
    iget-object v2, p0, Lcom/sigmob/wire/okio/Buffer;->head:Lcom/sigmob/wire/okio/Segment;

    :goto_12
    iget v3, v2, Lcom/sigmob/wire/okio/Segment;->limit:I

    iget v4, v2, Lcom/sigmob/wire/okio/Segment;->pos:I

    sub-int/2addr v3, v4

    int-to-long v3, v3

    cmp-long v3, p2, v3

    if-ltz v3, :cond_26

    iget v3, v2, Lcom/sigmob/wire/okio/Segment;->limit:I

    iget v4, v2, Lcom/sigmob/wire/okio/Segment;->pos:I

    sub-int/2addr v3, v4

    int-to-long v3, v3

    sub-long/2addr p2, v3

    iget-object v2, v2, Lcom/sigmob/wire/okio/Segment;->next:Lcom/sigmob/wire/okio/Segment;

    goto :goto_12

    :cond_26
    :goto_26
    cmp-long v3, p4, v0

    if-lez v3, :cond_43

    iget v3, v2, Lcom/sigmob/wire/okio/Segment;->pos:I

    int-to-long v3, v3

    add-long/2addr v3, p2

    long-to-int p2, v3

    iget p3, v2, Lcom/sigmob/wire/okio/Segment;->limit:I

    sub-int/2addr p3, p2

    int-to-long v3, p3

    invoke-static {v3, v4, p4, p5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    long-to-int p3, v3

    iget-object v3, v2, Lcom/sigmob/wire/okio/Segment;->data:[B

    invoke-virtual {p1, v3, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    int-to-long p2, p3

    sub-long/2addr p4, p2

    iget-object v2, v2, Lcom/sigmob/wire/okio/Segment;->next:Lcom/sigmob/wire/okio/Segment;

    move-wide p2, v0

    goto :goto_26

    :cond_43
    return-object p0

    :cond_44
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "out == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public emit()Lcom/sigmob/wire/okio/BufferedSink;
    .registers 1

    return-object p0
.end method

.method public emitCompleteSegments()Lcom/sigmob/wire/okio/Buffer;
    .registers 1

    return-object p0
.end method

.method public bridge synthetic emitCompleteSegments()Lcom/sigmob/wire/okio/BufferedSink;
    .registers 2

    invoke-virtual {p0}, Lcom/sigmob/wire/okio/Buffer;->emitCompleteSegments()Lcom/sigmob/wire/okio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 15

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/sigmob/wire/okio/Buffer;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/sigmob/wire/okio/Buffer;

    iget-wide v3, p0, Lcom/sigmob/wire/okio/Buffer;->size:J

    iget-wide v5, p1, Lcom/sigmob/wire/okio/Buffer;->size:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_15

    return v2

    :cond_15
    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-nez v1, :cond_1c

    return v0

    :cond_1c
    iget-object v1, p0, Lcom/sigmob/wire/okio/Buffer;->head:Lcom/sigmob/wire/okio/Segment;

    iget-object p1, p1, Lcom/sigmob/wire/okio/Buffer;->head:Lcom/sigmob/wire/okio/Segment;

    iget v3, v1, Lcom/sigmob/wire/okio/Segment;->pos:I

    iget v4, p1, Lcom/sigmob/wire/okio/Segment;->pos:I

    :goto_24
    iget-wide v7, p0, Lcom/sigmob/wire/okio/Buffer;->size:J

    cmp-long v7, v5, v7

    if-gez v7, :cond_61

    iget v7, v1, Lcom/sigmob/wire/okio/Segment;->limit:I

    sub-int/2addr v7, v3

    iget v8, p1, Lcom/sigmob/wire/okio/Segment;->limit:I

    sub-int/2addr v8, v4

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    int-to-long v7, v7

    move v9, v2

    :goto_36
    int-to-long v10, v9

    cmp-long v10, v10, v7

    if-gez v10, :cond_4f

    iget-object v10, v1, Lcom/sigmob/wire/okio/Segment;->data:[B

    add-int/lit8 v11, v3, 0x1

    aget-byte v3, v10, v3

    iget-object v10, p1, Lcom/sigmob/wire/okio/Segment;->data:[B

    add-int/lit8 v12, v4, 0x1

    aget-byte v4, v10, v4

    if-eq v3, v4, :cond_4a

    return v2

    :cond_4a
    add-int/lit8 v9, v9, 0x1

    move v3, v11

    move v4, v12

    goto :goto_36

    :cond_4f
    iget v9, v1, Lcom/sigmob/wire/okio/Segment;->limit:I

    if-ne v3, v9, :cond_57

    iget-object v1, v1, Lcom/sigmob/wire/okio/Segment;->next:Lcom/sigmob/wire/okio/Segment;

    iget v3, v1, Lcom/sigmob/wire/okio/Segment;->pos:I

    :cond_57
    iget v9, p1, Lcom/sigmob/wire/okio/Segment;->limit:I

    if-ne v4, v9, :cond_5f

    iget-object p1, p1, Lcom/sigmob/wire/okio/Segment;->next:Lcom/sigmob/wire/okio/Segment;

    iget v4, p1, Lcom/sigmob/wire/okio/Segment;->pos:I

    :cond_5f
    add-long/2addr v5, v7

    goto :goto_24

    :cond_61
    return v0
.end method

.method public exhausted()Z
    .registers 5

    iget-wide v0, p0, Lcom/sigmob/wire/okio/Buffer;->size:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public flush()V
    .registers 1

    return-void
.end method

.method public getByte(J)B
    .registers 9

    iget-wide v0, p0, Lcom/sigmob/wire/okio/Buffer;->size:J

    const-wide/16 v4, 0x1

    move-wide v2, p1

    invoke-static/range {v0 .. v5}, Lcom/sigmob/wire/okio/Util;->checkOffsetAndCount(JJJ)V

    iget-object v0, p0, Lcom/sigmob/wire/okio/Buffer;->head:Lcom/sigmob/wire/okio/Segment;

    :goto_a
    iget v1, v0, Lcom/sigmob/wire/okio/Segment;->limit:I

    iget v2, v0, Lcom/sigmob/wire/okio/Segment;->pos:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    cmp-long v3, p1, v1

    if-gez v3, :cond_1d

    iget-object v1, v0, Lcom/sigmob/wire/okio/Segment;->data:[B

    iget v0, v0, Lcom/sigmob/wire/okio/Segment;->pos:I

    long-to-int p1, p1

    add-int/2addr v0, p1

    aget-byte p1, v1, v0

    return p1

    :cond_1d
    sub-long/2addr p1, v1

    iget-object v0, v0, Lcom/sigmob/wire/okio/Segment;->next:Lcom/sigmob/wire/okio/Segment;

    goto :goto_a
.end method

.method public hashCode()I
    .registers 6

    iget-object v0, p0, Lcom/sigmob/wire/okio/Buffer;->head:Lcom/sigmob/wire/okio/Segment;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    const/4 v1, 0x1

    :cond_7
    iget v2, v0, Lcom/sigmob/wire/okio/Segment;->pos:I

    iget v3, v0, Lcom/sigmob/wire/okio/Segment;->limit:I

    :goto_b
    if-ge v2, v3, :cond_17

    mul-int/lit8 v1, v1, 0x1f

    iget-object v4, v0, Lcom/sigmob/wire/okio/Segment;->data:[B

    aget-byte v4, v4, v2

    add-int/2addr v1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_17
    iget-object v0, v0, Lcom/sigmob/wire/okio/Segment;->next:Lcom/sigmob/wire/okio/Segment;

    iget-object v2, p0, Lcom/sigmob/wire/okio/Buffer;->head:Lcom/sigmob/wire/okio/Segment;

    if-ne v0, v2, :cond_7

    return v1
.end method

.method public indexOf(B)J
    .registers 4

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/sigmob/wire/okio/Buffer;->indexOf(BJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public indexOf(BJ)J
    .registers 13

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_5e

    iget-object v2, p0, Lcom/sigmob/wire/okio/Buffer;->head:Lcom/sigmob/wire/okio/Segment;

    const-wide/16 v3, -0x1

    if-nez v2, :cond_d

    return-wide v3

    :cond_d
    iget-wide v5, p0, Lcom/sigmob/wire/okio/Buffer;->size:J

    sub-long v7, v5, p2

    cmp-long v7, v7, p2

    if-gez v7, :cond_23

    :goto_15
    cmp-long v0, v5, p2

    if-lez v0, :cond_33

    iget-object v2, v2, Lcom/sigmob/wire/okio/Segment;->prev:Lcom/sigmob/wire/okio/Segment;

    iget v0, v2, Lcom/sigmob/wire/okio/Segment;->limit:I

    iget v1, v2, Lcom/sigmob/wire/okio/Segment;->pos:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    sub-long/2addr v5, v0

    goto :goto_15

    :cond_23
    :goto_23
    iget v5, v2, Lcom/sigmob/wire/okio/Segment;->limit:I

    iget v6, v2, Lcom/sigmob/wire/okio/Segment;->pos:I

    sub-int/2addr v5, v6

    int-to-long v5, v5

    add-long/2addr v5, v0

    cmp-long v7, v5, p2

    if-gez v7, :cond_32

    iget-object v2, v2, Lcom/sigmob/wire/okio/Segment;->next:Lcom/sigmob/wire/okio/Segment;

    move-wide v0, v5

    goto :goto_23

    :cond_32
    move-wide v5, v0

    :cond_33
    :goto_33
    iget-wide v0, p0, Lcom/sigmob/wire/okio/Buffer;->size:J

    cmp-long v0, v5, v0

    if-gez v0, :cond_5d

    iget-object v0, v2, Lcom/sigmob/wire/okio/Segment;->data:[B

    iget v1, v2, Lcom/sigmob/wire/okio/Segment;->pos:I

    int-to-long v7, v1

    add-long/2addr v7, p2

    sub-long/2addr v7, v5

    long-to-int p2, v7

    iget p3, v2, Lcom/sigmob/wire/okio/Segment;->limit:I

    :goto_43
    if-ge p2, p3, :cond_52

    aget-byte v1, v0, p2

    if-ne v1, p1, :cond_4f

    iget p1, v2, Lcom/sigmob/wire/okio/Segment;->pos:I

    sub-int/2addr p2, p1

    int-to-long p1, p2

    add-long/2addr p1, v5

    return-wide p1

    :cond_4f
    add-int/lit8 p2, p2, 0x1

    goto :goto_43

    :cond_52
    iget p2, v2, Lcom/sigmob/wire/okio/Segment;->limit:I

    iget p3, v2, Lcom/sigmob/wire/okio/Segment;->pos:I

    sub-int/2addr p2, p3

    int-to-long p2, p2

    add-long/2addr v5, p2

    iget-object v2, v2, Lcom/sigmob/wire/okio/Segment;->next:Lcom/sigmob/wire/okio/Segment;

    move-wide p2, v5

    goto :goto_33

    :cond_5d
    return-wide v3

    :cond_5e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "fromIndex < 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public indexOf(Lcom/sigmob/wire/okio/ByteString;)J
    .registers 4

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/sigmob/wire/okio/Buffer;->indexOf(Lcom/sigmob/wire/okio/ByteString;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public indexOf(Lcom/sigmob/wire/okio/ByteString;J)J
    .registers 22

    move-object/from16 v6, p0

    invoke-virtual/range {p1 .. p1}, Lcom/sigmob/wire/okio/ByteString;->size()I

    move-result v0

    if-eqz v0, :cond_a6

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_9e

    iget-object v2, v6, Lcom/sigmob/wire/okio/Buffer;->head:Lcom/sigmob/wire/okio/Segment;

    const-wide/16 v7, -0x1

    if-nez v2, :cond_15

    return-wide v7

    :cond_15
    iget-wide v3, v6, Lcom/sigmob/wire/okio/Buffer;->size:J

    sub-long v9, v3, p2

    cmp-long v5, v9, p2

    if-gez v5, :cond_2b

    :goto_1d
    cmp-long v0, v3, p2

    if-lez v0, :cond_3b

    iget-object v2, v2, Lcom/sigmob/wire/okio/Segment;->prev:Lcom/sigmob/wire/okio/Segment;

    iget v0, v2, Lcom/sigmob/wire/okio/Segment;->limit:I

    iget v1, v2, Lcom/sigmob/wire/okio/Segment;->pos:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    sub-long/2addr v3, v0

    goto :goto_1d

    :cond_2b
    :goto_2b
    iget v3, v2, Lcom/sigmob/wire/okio/Segment;->limit:I

    iget v4, v2, Lcom/sigmob/wire/okio/Segment;->pos:I

    sub-int/2addr v3, v4

    int-to-long v3, v3

    add-long/2addr v3, v0

    cmp-long v5, v3, p2

    if-gez v5, :cond_3a

    iget-object v2, v2, Lcom/sigmob/wire/okio/Segment;->next:Lcom/sigmob/wire/okio/Segment;

    move-wide v0, v3

    goto :goto_2b

    :cond_3a
    move-wide v3, v0

    :cond_3b
    const/4 v0, 0x0

    move-object/from16 v9, p1

    invoke-virtual {v9, v0}, Lcom/sigmob/wire/okio/ByteString;->getByte(I)B

    move-result v10

    invoke-virtual/range {p1 .. p1}, Lcom/sigmob/wire/okio/ByteString;->size()I

    move-result v11

    iget-wide v0, v6, Lcom/sigmob/wire/okio/Buffer;->size:J

    int-to-long v12, v11

    sub-long/2addr v0, v12

    const-wide/16 v12, 0x1

    add-long/2addr v12, v0

    move-wide/from16 v0, p2

    move-object v14, v2

    move-wide v15, v3

    :goto_51
    cmp-long v2, v15, v12

    if-gez v2, :cond_9c

    iget-object v5, v14, Lcom/sigmob/wire/okio/Segment;->data:[B

    iget v2, v14, Lcom/sigmob/wire/okio/Segment;->limit:I

    int-to-long v2, v2

    iget v4, v14, Lcom/sigmob/wire/okio/Segment;->pos:I

    int-to-long v7, v4

    add-long/2addr v7, v12

    sub-long/2addr v7, v15

    invoke-static {v2, v3, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v7, v2

    iget v2, v14, Lcom/sigmob/wire/okio/Segment;->pos:I

    int-to-long v2, v2

    add-long/2addr v2, v0

    sub-long/2addr v2, v15

    long-to-int v0, v2

    move v8, v0

    :goto_6b
    if-ge v8, v7, :cond_8f

    aget-byte v0, v5, v8

    if-ne v0, v10, :cond_88

    add-int/lit8 v2, v8, 0x1

    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object v1, v14

    move-object/from16 v3, p1

    move-object/from16 v17, v5

    move v5, v11

    invoke-direct/range {v0 .. v5}, Lcom/sigmob/wire/okio/Buffer;->rangeEquals(Lcom/sigmob/wire/okio/Segment;ILcom/sigmob/wire/okio/ByteString;II)Z

    move-result v0

    if-eqz v0, :cond_8a

    iget v0, v14, Lcom/sigmob/wire/okio/Segment;->pos:I

    sub-int/2addr v8, v0

    int-to-long v0, v8

    add-long/2addr v0, v15

    return-wide v0

    :cond_88
    move-object/from16 v17, v5

    :cond_8a
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v5, v17

    goto :goto_6b

    :cond_8f
    iget v0, v14, Lcom/sigmob/wire/okio/Segment;->limit:I

    iget v1, v14, Lcom/sigmob/wire/okio/Segment;->pos:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    add-long/2addr v15, v0

    iget-object v14, v14, Lcom/sigmob/wire/okio/Segment;->next:Lcom/sigmob/wire/okio/Segment;

    move-wide v0, v15

    const-wide/16 v7, -0x1

    goto :goto_51

    :cond_9c
    move-wide v0, v7

    return-wide v0

    :cond_9e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "fromIndex < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bytes is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public indexOfElement(Lcom/sigmob/wire/okio/ByteString;)J
    .registers 4

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/sigmob/wire/okio/Buffer;->indexOfElement(Lcom/sigmob/wire/okio/ByteString;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public indexOfElement(Lcom/sigmob/wire/okio/ByteString;J)J
    .registers 15

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_a4

    iget-object v2, p0, Lcom/sigmob/wire/okio/Buffer;->head:Lcom/sigmob/wire/okio/Segment;

    const-wide/16 v3, -0x1

    if-nez v2, :cond_d

    return-wide v3

    :cond_d
    iget-wide v5, p0, Lcom/sigmob/wire/okio/Buffer;->size:J

    sub-long v7, v5, p2

    cmp-long v7, v7, p2

    if-gez v7, :cond_23

    :goto_15
    cmp-long v0, v5, p2

    if-lez v0, :cond_33

    iget-object v2, v2, Lcom/sigmob/wire/okio/Segment;->prev:Lcom/sigmob/wire/okio/Segment;

    iget v0, v2, Lcom/sigmob/wire/okio/Segment;->limit:I

    iget v1, v2, Lcom/sigmob/wire/okio/Segment;->pos:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    sub-long/2addr v5, v0

    goto :goto_15

    :cond_23
    :goto_23
    iget v5, v2, Lcom/sigmob/wire/okio/Segment;->limit:I

    iget v6, v2, Lcom/sigmob/wire/okio/Segment;->pos:I

    sub-int/2addr v5, v6

    int-to-long v5, v5

    add-long/2addr v5, v0

    cmp-long v7, v5, p2

    if-gez v7, :cond_32

    iget-object v2, v2, Lcom/sigmob/wire/okio/Segment;->next:Lcom/sigmob/wire/okio/Segment;

    move-wide v0, v5

    goto :goto_23

    :cond_32
    move-wide v5, v0

    :cond_33
    invoke-virtual {p1}, Lcom/sigmob/wire/okio/ByteString;->size()I

    move-result v0

    const/4 v1, 0x2

    const/4 v7, 0x0

    if-ne v0, v1, :cond_71

    invoke-virtual {p1, v7}, Lcom/sigmob/wire/okio/ByteString;->getByte(I)B

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/sigmob/wire/okio/ByteString;->getByte(I)B

    move-result p1

    :goto_44
    iget-wide v7, p0, Lcom/sigmob/wire/okio/Buffer;->size:J

    cmp-long v1, v5, v7

    if-gez v1, :cond_a3

    iget-object v1, v2, Lcom/sigmob/wire/okio/Segment;->data:[B

    iget v7, v2, Lcom/sigmob/wire/okio/Segment;->pos:I

    int-to-long v7, v7

    add-long/2addr v7, p2

    sub-long/2addr v7, v5

    long-to-int p2, v7

    iget p3, v2, Lcom/sigmob/wire/okio/Segment;->limit:I

    :goto_54
    if-ge p2, p3, :cond_66

    aget-byte v7, v1, p2

    if-eq v7, v0, :cond_60

    if-ne v7, p1, :cond_5d

    goto :goto_60

    :cond_5d
    add-int/lit8 p2, p2, 0x1

    goto :goto_54

    :cond_60
    :goto_60
    iget p1, v2, Lcom/sigmob/wire/okio/Segment;->pos:I

    sub-int/2addr p2, p1

    int-to-long p1, p2

    add-long/2addr p1, v5

    return-wide p1

    :cond_66
    iget p2, v2, Lcom/sigmob/wire/okio/Segment;->limit:I

    iget p3, v2, Lcom/sigmob/wire/okio/Segment;->pos:I

    sub-int/2addr p2, p3

    int-to-long p2, p2

    add-long/2addr v5, p2

    iget-object v2, v2, Lcom/sigmob/wire/okio/Segment;->next:Lcom/sigmob/wire/okio/Segment;

    move-wide p2, v5

    goto :goto_44

    :cond_71
    invoke-virtual {p1}, Lcom/sigmob/wire/okio/ByteString;->internalArray()[B

    move-result-object p1

    :goto_75
    iget-wide v0, p0, Lcom/sigmob/wire/okio/Buffer;->size:J

    cmp-long v0, v5, v0

    if-gez v0, :cond_a3

    iget-object v0, v2, Lcom/sigmob/wire/okio/Segment;->data:[B

    iget v1, v2, Lcom/sigmob/wire/okio/Segment;->pos:I

    int-to-long v8, v1

    add-long/2addr v8, p2

    sub-long/2addr v8, v5

    long-to-int p2, v8

    iget p3, v2, Lcom/sigmob/wire/okio/Segment;->limit:I

    :goto_85
    if-ge p2, p3, :cond_98

    aget-byte v1, v0, p2

    array-length v8, p1

    move v9, v7

    :goto_8b
    if-ge v9, v8, :cond_95

    aget-byte v10, p1, v9

    if-ne v1, v10, :cond_92

    goto :goto_60

    :cond_92
    add-int/lit8 v9, v9, 0x1

    goto :goto_8b

    :cond_95
    add-int/lit8 p2, p2, 0x1

    goto :goto_85

    :cond_98
    iget p2, v2, Lcom/sigmob/wire/okio/Segment;->limit:I

    iget p3, v2, Lcom/sigmob/wire/okio/Segment;->pos:I

    sub-int/2addr p2, p3

    int-to-long p2, p2

    add-long/2addr v5, p2

    iget-object v2, v2, Lcom/sigmob/wire/okio/Segment;->next:Lcom/sigmob/wire/okio/Segment;

    move-wide p2, v5

    goto :goto_75

    :cond_a3
    return-wide v3

    :cond_a4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "fromIndex < 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public inputStream()Ljava/io/InputStream;
    .registers 2

    new-instance v0, Lcom/sigmob/wire/okio/Buffer$2;

    invoke-direct {v0, p0}, Lcom/sigmob/wire/okio/Buffer$2;-><init>(Lcom/sigmob/wire/okio/Buffer;)V

    return-object v0
.end method

.method public md5()Lcom/sigmob/wire/okio/ByteString;
    .registers 2

    const-string v0, "MD5"

    invoke-direct {p0, v0}, Lcom/sigmob/wire/okio/Buffer;->digest(Ljava/lang/String;)Lcom/sigmob/wire/okio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public outputStream()Ljava/io/OutputStream;
    .registers 2

    new-instance v0, Lcom/sigmob/wire/okio/Buffer$1;

    invoke-direct {v0, p0}, Lcom/sigmob/wire/okio/Buffer$1;-><init>(Lcom/sigmob/wire/okio/Buffer;)V

    return-object v0
.end method

.method rangeEquals(JLcom/sigmob/wire/okio/ByteString;)Z
    .registers 9

    invoke-virtual {p3}, Lcom/sigmob/wire/okio/ByteString;->size()I

    move-result v0

    iget-wide v1, p0, Lcom/sigmob/wire/okio/Buffer;->size:J

    sub-long/2addr v1, p1

    int-to-long v3, v0

    cmp-long v1, v1, v3

    const/4 v2, 0x0

    if-gez v1, :cond_e

    return v2

    :cond_e
    move v1, v2

    :goto_f
    if-ge v1, v0, :cond_21

    int-to-long v3, v1

    add-long/2addr v3, p1

    invoke-virtual {p0, v3, v4}, Lcom/sigmob/wire/okio/Buffer;->getByte(J)B

    move-result v3

    invoke-virtual {p3, v1}, Lcom/sigmob/wire/okio/ByteString;->getByte(I)B

    move-result v4

    if-eq v3, v4, :cond_1e

    return v2

    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_21
    const/4 p1, 0x1

    return p1
.end method

.method public read([B)I
    .registers 4

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/sigmob/wire/okio/Buffer;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .registers 11

    array-length v0, p1

    int-to-long v1, v0

    int-to-long v3, p2

    int-to-long v5, p3

    invoke-static/range {v1 .. v6}, Lcom/sigmob/wire/okio/Util;->checkOffsetAndCount(JJJ)V

    iget-object v0, p0, Lcom/sigmob/wire/okio/Buffer;->head:Lcom/sigmob/wire/okio/Segment;

    if-nez v0, :cond_d

    const/4 p1, -0x1

    return p1

    :cond_d
    iget v1, v0, Lcom/sigmob/wire/okio/Segment;->limit:I

    iget v2, v0, Lcom/sigmob/wire/okio/Segment;->pos:I

    sub-int/2addr v1, v2

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    iget-object v1, v0, Lcom/sigmob/wire/okio/Segment;->data:[B

    iget v2, v0, Lcom/sigmob/wire/okio/Segment;->pos:I

    invoke-static {v1, v2, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, v0, Lcom/sigmob/wire/okio/Segment;->pos:I

    add-int/2addr p1, p3

    iput p1, v0, Lcom/sigmob/wire/okio/Segment;->pos:I

    iget-wide p1, p0, Lcom/sigmob/wire/okio/Buffer;->size:J

    int-to-long v1, p3

    sub-long/2addr p1, v1

    iput-wide p1, p0, Lcom/sigmob/wire/okio/Buffer;->size:J

    iget p1, v0, Lcom/sigmob/wire/okio/Segment;->pos:I

    iget p2, v0, Lcom/sigmob/wire/okio/Segment;->limit:I

    if-ne p1, p2, :cond_37

    invoke-virtual {v0}, Lcom/sigmob/wire/okio/Segment;->pop()Lcom/sigmob/wire/okio/Segment;

    move-result-object p1

    iput-object p1, p0, Lcom/sigmob/wire/okio/Buffer;->head:Lcom/sigmob/wire/okio/Segment;

    invoke-static {v0}, Lcom/sigmob/wire/okio/SegmentPool;->recycle(Lcom/sigmob/wire/okio/Segment;)V

    :cond_37
    return p3
.end method

.method public read(Lcom/sigmob/wire/okio/Buffer;J)J
    .registers 8

    if-eqz p1, :cond_33

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_1a

    iget-wide v2, p0, Lcom/sigmob/wire/okio/Buffer;->size:J

    cmp-long v0, v2, v0

    if-nez v0, :cond_11

    const-wide/16 p1, -0x1

    return-wide p1

    :cond_11
    cmp-long v0, p2, v2

    if-lez v0, :cond_16

    move-wide p2, v2

    :cond_16
    invoke-virtual {p1, p0, p2, p3}, Lcom/sigmob/wire/okio/Buffer;->write(Lcom/sigmob/wire/okio/Buffer;J)V

    return-wide p2

    :cond_1a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "byteCount < 0: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_33
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "sink == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public readAll(Lcom/sigmob/wire/okio/Sink;)J
    .registers 6

    iget-wide v0, p0, Lcom/sigmob/wire/okio/Buffer;->size:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_b

    invoke-interface {p1, p0, v0, v1}, Lcom/sigmob/wire/okio/Sink;->write(Lcom/sigmob/wire/okio/Buffer;J)V

    :cond_b
    return-wide v0
.end method

.method public readByte()B
    .registers 10

    iget-wide v0, p0, Lcom/sigmob/wire/okio/Buffer;->size:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/sigmob/wire/okio/Buffer;->head:Lcom/sigmob/wire/okio/Segment;

    iget v1, v0, Lcom/sigmob/wire/okio/Segment;->pos:I

    iget v2, v0, Lcom/sigmob/wire/okio/Segment;->limit:I

    iget-object v3, v0, Lcom/sigmob/wire/okio/Segment;->data:[B

    add-int/lit8 v4, v1, 0x1

    aget-byte v1, v3, v1

    iget-wide v5, p0, Lcom/sigmob/wire/okio/Buffer;->size:J

    const-wide/16 v7, 0x1

    sub-long/2addr v5, v7

    iput-wide v5, p0, Lcom/sigmob/wire/okio/Buffer;->size:J

    if-ne v4, v2, :cond_27

    invoke-virtual {v0}, Lcom/sigmob/wire/okio/Segment;->pop()Lcom/sigmob/wire/okio/Segment;

    move-result-object v2

    iput-object v2, p0, Lcom/sigmob/wire/okio/Buffer;->head:Lcom/sigmob/wire/okio/Segment;

    invoke-static {v0}, Lcom/sigmob/wire/okio/SegmentPool;->recycle(Lcom/sigmob/wire/okio/Segment;)V

    goto :goto_29

    :cond_27
    iput v4, v0, Lcom/sigmob/wire/okio/Segment;->pos:I

    :goto_29
    return v1

    :cond_2a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "size == 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readByteArray()[B
    .registers 3

    :try_start_0
    iget-wide v0, p0, Lcom/sigmob/wire/okio/Buffer;->size:J

    invoke-virtual {p0, v0, v1}, Lcom/sigmob/wire/okio/Buffer;->readByteArray(J)[B

    move-result-object v0
    :try_end_6
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public readByteArray(J)[B
    .registers 9

    iget-wide v0, p0, Lcom/sigmob/wire/okio/Buffer;->size:J

    const-wide/16 v2, 0x0

    move-wide v4, p1

    invoke-static/range {v0 .. v5}, Lcom/sigmob/wire/okio/Util;->checkOffsetAndCount(JJJ)V

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p1, v0

    if-gtz v0, :cond_16

    long-to-int p1, p1

    new-array p1, p1, [B

    invoke-virtual {p0, p1}, Lcom/sigmob/wire/okio/Buffer;->readFully([B)V

    return-object p1

    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "byteCount > Integer.MAX_VALUE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readByteString()Lcom/sigmob/wire/okio/ByteString;
    .registers 3

    new-instance v0, Lcom/sigmob/wire/okio/ByteString;

    invoke-virtual {p0}, Lcom/sigmob/wire/okio/Buffer;->readByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sigmob/wire/okio/ByteString;-><init>([B)V

    return-object v0
.end method

.method public readByteString(J)Lcom/sigmob/wire/okio/ByteString;
    .registers 4

    new-instance v0, Lcom/sigmob/wire/okio/ByteString;

    invoke-virtual {p0, p1, p2}, Lcom/sigmob/wire/okio/Buffer;->readByteArray(J)[B

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/sigmob/wire/okio/ByteString;-><init>([B)V

    return-object v0
.end method

.method public readDecimalLong()J
    .registers 18

    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/sigmob/wire/okio/Buffer;->size:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_c7

    const-wide v1, -0xcccccccccccccccL

    const-wide/16 v5, -0x7

    const/4 v7, 0x0

    move v8, v7

    move v9, v8

    :goto_14
    iget-object v10, v0, Lcom/sigmob/wire/okio/Buffer;->head:Lcom/sigmob/wire/okio/Segment;

    iget-object v11, v10, Lcom/sigmob/wire/okio/Segment;->data:[B

    iget v12, v10, Lcom/sigmob/wire/okio/Segment;->pos:I

    iget v13, v10, Lcom/sigmob/wire/okio/Segment;->limit:I

    :goto_1c
    if-ge v12, v13, :cond_a0

    aget-byte v15, v11, v12

    const/16 v14, 0x30

    if-lt v15, v14, :cond_6b

    const/16 v14, 0x39

    if-gt v15, v14, :cond_6b

    rsub-int/lit8 v14, v15, 0x30

    cmp-long v16, v3, v1

    if-ltz v16, :cond_3c

    if-nez v16, :cond_36

    int-to-long v1, v14

    cmp-long v1, v1, v5

    if-gez v1, :cond_36

    goto :goto_3c

    :cond_36
    const-wide/16 v1, 0xa

    mul-long/2addr v3, v1

    int-to-long v1, v14

    add-long/2addr v3, v1

    goto :goto_75

    :cond_3c
    :goto_3c
    new-instance v1, Lcom/sigmob/wire/okio/Buffer;

    invoke-direct {v1}, Lcom/sigmob/wire/okio/Buffer;-><init>()V

    invoke-virtual {v1, v3, v4}, Lcom/sigmob/wire/okio/Buffer;->writeDecimalLong(J)Lcom/sigmob/wire/okio/Buffer;

    move-result-object v1

    invoke-virtual {v1, v15}, Lcom/sigmob/wire/okio/Buffer;->writeByte(I)Lcom/sigmob/wire/okio/Buffer;

    move-result-object v1

    if-nez v8, :cond_4e

    invoke-virtual {v1}, Lcom/sigmob/wire/okio/Buffer;->readByte()B

    :cond_4e
    new-instance v2, Ljava/lang/NumberFormatException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Number too large: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/sigmob/wire/okio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_6b
    const/16 v1, 0x2d

    if-ne v15, v1, :cond_7f

    if-nez v7, :cond_7f

    const-wide/16 v1, 0x1

    sub-long/2addr v5, v1

    const/4 v8, 0x1

    :goto_75
    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v7, v7, 0x1

    const-wide v1, -0xcccccccccccccccL

    goto :goto_1c

    :cond_7f
    if-eqz v7, :cond_83

    const/4 v9, 0x1

    goto :goto_a0

    :cond_83
    new-instance v1, Ljava/lang/NumberFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected leading [0-9] or \'-\' character but was 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v15}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_a0
    :goto_a0
    if-ne v12, v13, :cond_ac

    invoke-virtual {v10}, Lcom/sigmob/wire/okio/Segment;->pop()Lcom/sigmob/wire/okio/Segment;

    move-result-object v1

    iput-object v1, v0, Lcom/sigmob/wire/okio/Buffer;->head:Lcom/sigmob/wire/okio/Segment;

    invoke-static {v10}, Lcom/sigmob/wire/okio/SegmentPool;->recycle(Lcom/sigmob/wire/okio/Segment;)V

    goto :goto_ae

    :cond_ac
    iput v12, v10, Lcom/sigmob/wire/okio/Segment;->pos:I

    :goto_ae
    if-nez v9, :cond_bc

    iget-object v1, v0, Lcom/sigmob/wire/okio/Buffer;->head:Lcom/sigmob/wire/okio/Segment;

    if-nez v1, :cond_b5

    goto :goto_bc

    :cond_b5
    const-wide v1, -0xcccccccccccccccL

    goto/16 :goto_14

    :cond_bc
    :goto_bc
    iget-wide v1, v0, Lcom/sigmob/wire/okio/Buffer;->size:J

    int-to-long v5, v7

    sub-long/2addr v1, v5

    iput-wide v1, v0, Lcom/sigmob/wire/okio/Buffer;->size:J

    if-eqz v8, :cond_c5

    goto :goto_c6

    :cond_c5
    neg-long v3, v3

    :goto_c6
    return-wide v3

    :cond_c7
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "size == 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public readFrom(Ljava/io/InputStream;)Lcom/sigmob/wire/okio/Buffer;
    .registers 5

    const-wide v0, 0x7fffffffffffffffL

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/sigmob/wire/okio/Buffer;->readFrom(Ljava/io/InputStream;JZ)V

    return-object p0
.end method

.method public readFrom(Ljava/io/InputStream;J)Lcom/sigmob/wire/okio/Buffer;
    .registers 6

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_b

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sigmob/wire/okio/Buffer;->readFrom(Ljava/io/InputStream;JZ)V

    return-object p0

    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "byteCount < 0: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public readFully(Lcom/sigmob/wire/okio/Buffer;J)V
    .registers 7

    iget-wide v0, p0, Lcom/sigmob/wire/okio/Buffer;->size:J

    cmp-long v2, v0, p2

    if-ltz v2, :cond_a

    invoke-virtual {p1, p0, p2, p3}, Lcom/sigmob/wire/okio/Buffer;->write(Lcom/sigmob/wire/okio/Buffer;J)V

    return-void

    :cond_a
    invoke-virtual {p1, p0, v0, v1}, Lcom/sigmob/wire/okio/Buffer;->write(Lcom/sigmob/wire/okio/Buffer;J)V

    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1
.end method

.method public readFully([B)V
    .registers 5

    const/4 v0, 0x0

    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_15

    array-length v1, p1

    sub-int/2addr v1, v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/sigmob/wire/okio/Buffer;->read([BII)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_f

    add-int/2addr v0, v1

    goto :goto_1

    :cond_f
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_15
    return-void
.end method

.method public readHexadecimalUnsignedLong()J
    .registers 15

    iget-wide v0, p0, Lcom/sigmob/wire/okio/Buffer;->size:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_b0

    const/4 v0, 0x0

    move v1, v0

    move-wide v4, v2

    :cond_b
    iget-object v6, p0, Lcom/sigmob/wire/okio/Buffer;->head:Lcom/sigmob/wire/okio/Segment;

    iget-object v7, v6, Lcom/sigmob/wire/okio/Segment;->data:[B

    iget v8, v6, Lcom/sigmob/wire/okio/Segment;->pos:I

    iget v9, v6, Lcom/sigmob/wire/okio/Segment;->limit:I

    :goto_13
    if-ge v8, v9, :cond_95

    aget-byte v10, v7, v8

    const/16 v11, 0x30

    if-lt v10, v11, :cond_22

    const/16 v11, 0x39

    if-gt v10, v11, :cond_22

    add-int/lit8 v11, v10, -0x30

    goto :goto_3a

    :cond_22
    const/16 v11, 0x61

    if-lt v10, v11, :cond_2f

    const/16 v11, 0x66

    if-gt v10, v11, :cond_2f

    add-int/lit8 v11, v10, -0x61

    :goto_2c
    add-int/lit8 v11, v11, 0xa

    goto :goto_3a

    :cond_2f
    const/16 v11, 0x41

    if-lt v10, v11, :cond_74

    const/16 v11, 0x46

    if-gt v10, v11, :cond_74

    add-int/lit8 v11, v10, -0x41

    goto :goto_2c

    :goto_3a
    const-wide/high16 v12, -0x1000000000000000L    # -3.105036184601418E231

    and-long/2addr v12, v4

    cmp-long v12, v12, v2

    if-nez v12, :cond_4a

    const/4 v10, 0x4

    shl-long/2addr v4, v10

    int-to-long v10, v11

    or-long/2addr v4, v10

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    :cond_4a
    new-instance v0, Lcom/sigmob/wire/okio/Buffer;

    invoke-direct {v0}, Lcom/sigmob/wire/okio/Buffer;-><init>()V

    invoke-virtual {v0, v4, v5}, Lcom/sigmob/wire/okio/Buffer;->writeHexadecimalUnsignedLong(J)Lcom/sigmob/wire/okio/Buffer;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/sigmob/wire/okio/Buffer;->writeByte(I)Lcom/sigmob/wire/okio/Buffer;

    move-result-object v0

    new-instance v1, Ljava/lang/NumberFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Number too large: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sigmob/wire/okio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_74
    if-eqz v0, :cond_78

    const/4 v1, 0x1

    goto :goto_95

    :cond_78
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected leading [0-9a-fA-F] character but was 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_95
    :goto_95
    if-ne v8, v9, :cond_a1

    invoke-virtual {v6}, Lcom/sigmob/wire/okio/Segment;->pop()Lcom/sigmob/wire/okio/Segment;

    move-result-object v7

    iput-object v7, p0, Lcom/sigmob/wire/okio/Buffer;->head:Lcom/sigmob/wire/okio/Segment;

    invoke-static {v6}, Lcom/sigmob/wire/okio/SegmentPool;->recycle(Lcom/sigmob/wire/okio/Segment;)V

    goto :goto_a3

    :cond_a1
    iput v8, v6, Lcom/sigmob/wire/okio/Segment;->pos:I

    :goto_a3
    if-nez v1, :cond_a9

    iget-object v6, p0, Lcom/sigmob/wire/okio/Buffer;->head:Lcom/sigmob/wire/okio/Segment;

    if-nez v6, :cond_b

    :cond_a9
    iget-wide v1, p0, Lcom/sigmob/wire/okio/Buffer;->size:J

    int-to-long v6, v0

    sub-long/2addr v1, v6

    iput-wide v1, p0, Lcom/sigmob/wire/okio/Buffer;->size:J

    return-wide v4

    :cond_b0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "size == 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readInt()I
    .registers 9

    iget-wide v0, p0, Lcom/sigmob/wire/okio/Buffer;->size:J

    const-wide/16 v2, 0x4

    cmp-long v0, v0, v2

    if-ltz v0, :cond_6c

    iget-object v0, p0, Lcom/sigmob/wire/okio/Buffer;->head:Lcom/sigmob/wire/okio/Segment;

    iget v1, v0, Lcom/sigmob/wire/okio/Segment;->pos:I

    iget v4, v0, Lcom/sigmob/wire/okio/Segment;->limit:I

    sub-int v5, v4, v1

    const/4 v6, 0x4

    if-ge v5, v6, :cond_35

    invoke-virtual {p0}, Lcom/sigmob/wire/okio/Buffer;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    invoke-virtual {p0}, Lcom/sigmob/wire/okio/Buffer;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/sigmob/wire/okio/Buffer;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/sigmob/wire/okio/Buffer;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0

    :cond_35
    iget-object v5, v0, Lcom/sigmob/wire/okio/Segment;->data:[B

    add-int/lit8 v6, v1, 0x1

    aget-byte v1, v5, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    add-int/lit8 v7, v6, 0x1

    aget-byte v6, v5, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v1, v6

    add-int/lit8 v6, v7, 0x1

    aget-byte v7, v5, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v1, v7

    add-int/lit8 v7, v6, 0x1

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v1, v5

    iget-wide v5, p0, Lcom/sigmob/wire/okio/Buffer;->size:J

    sub-long/2addr v5, v2

    iput-wide v5, p0, Lcom/sigmob/wire/okio/Buffer;->size:J

    if-ne v7, v4, :cond_69

    invoke-virtual {v0}, Lcom/sigmob/wire/okio/Segment;->pop()Lcom/sigmob/wire/okio/Segment;

    move-result-object v2

    iput-object v2, p0, Lcom/sigmob/wire/okio/Buffer;->head:Lcom/sigmob/wire/okio/Segment;

    invoke-static {v0}, Lcom/sigmob/wire/okio/SegmentPool;->recycle(Lcom/sigmob/wire/okio/Segment;)V

    goto :goto_6b

    :cond_69
    iput v7, v0, Lcom/sigmob/wire/okio/Segment;->pos:I

    :goto_6b
    return v1

    :cond_6c
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "size < 4: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sigmob/wire/okio/Buffer;->size:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readIntLe()I
    .registers 2

    invoke-virtual {p0}, Lcom/sigmob/wire/okio/Buffer;->readInt()I

    move-result v0

    invoke-static {v0}, Lcom/sigmob/wire/okio/Util;->reverseBytesInt(I)I

    move-result v0

    return v0
.end method

.method public readLong()J
    .registers 16

    iget-wide v0, p0, Lcom/sigmob/wire/okio/Buffer;->size:J

    const-wide/16 v2, 0x8

    cmp-long v0, v0, v2

    if-ltz v0, :cond_8c

    iget-object v0, p0, Lcom/sigmob/wire/okio/Buffer;->head:Lcom/sigmob/wire/okio/Segment;

    iget v1, v0, Lcom/sigmob/wire/okio/Segment;->pos:I

    iget v4, v0, Lcom/sigmob/wire/okio/Segment;->limit:I

    sub-int v5, v4, v1

    const/16 v6, 0x20

    const/16 v7, 0x8

    if-ge v5, v7, :cond_2a

    invoke-virtual {p0}, Lcom/sigmob/wire/okio/Buffer;->readInt()I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    shl-long/2addr v0, v6

    invoke-virtual {p0}, Lcom/sigmob/wire/okio/Buffer;->readInt()I

    move-result v4

    int-to-long v4, v4

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0

    :cond_2a
    iget-object v5, v0, Lcom/sigmob/wire/okio/Segment;->data:[B

    add-int/lit8 v8, v1, 0x1

    aget-byte v1, v5, v1

    int-to-long v9, v1

    const-wide/16 v11, 0xff

    and-long/2addr v9, v11

    const/16 v1, 0x38

    shl-long/2addr v9, v1

    add-int/lit8 v1, v8, 0x1

    aget-byte v8, v5, v8

    int-to-long v13, v8

    and-long/2addr v13, v11

    const/16 v8, 0x30

    shl-long/2addr v13, v8

    or-long v8, v9, v13

    add-int/lit8 v10, v1, 0x1

    aget-byte v1, v5, v1

    int-to-long v13, v1

    and-long/2addr v13, v11

    const/16 v1, 0x28

    shl-long/2addr v13, v1

    or-long/2addr v8, v13

    add-int/lit8 v1, v10, 0x1

    aget-byte v10, v5, v10

    int-to-long v13, v10

    and-long/2addr v13, v11

    shl-long/2addr v13, v6

    or-long/2addr v8, v13

    add-int/lit8 v6, v1, 0x1

    aget-byte v1, v5, v1

    int-to-long v13, v1

    and-long/2addr v13, v11

    const/16 v1, 0x18

    shl-long/2addr v13, v1

    or-long/2addr v8, v13

    add-int/lit8 v1, v6, 0x1

    aget-byte v6, v5, v6

    int-to-long v13, v6

    and-long/2addr v13, v11

    const/16 v6, 0x10

    shl-long/2addr v13, v6

    or-long/2addr v8, v13

    add-int/lit8 v6, v1, 0x1

    aget-byte v1, v5, v1

    int-to-long v13, v1

    and-long/2addr v13, v11

    shl-long/2addr v13, v7

    or-long v7, v8, v13

    add-int/lit8 v1, v6, 0x1

    aget-byte v5, v5, v6

    int-to-long v5, v5

    and-long/2addr v5, v11

    or-long/2addr v5, v7

    iget-wide v7, p0, Lcom/sigmob/wire/okio/Buffer;->size:J

    sub-long/2addr v7, v2

    iput-wide v7, p0, Lcom/sigmob/wire/okio/Buffer;->size:J

    if-ne v1, v4, :cond_89

    invoke-virtual {v0}, Lcom/sigmob/wire/okio/Segment;->pop()Lcom/sigmob/wire/okio/Segment;

    move-result-object v1

    iput-object v1, p0, Lcom/sigmob/wire/okio/Buffer;->head:Lcom/sigmob/wire/okio/Segment;

    invoke-static {v0}, Lcom/sigmob/wire/okio/SegmentPool;->recycle(Lcom/sigmob/wire/okio/Segment;)V

    goto :goto_8b

    :cond_89
    iput v1, v0, Lcom/sigmob/wire/okio/Segment;->pos:I

    :goto_8b
    return-wide v5

    :cond_8c
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "size < 8: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sigmob/wire/okio/Buffer;->size:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readLongLe()J
    .registers 3

    invoke-virtual {p0}, Lcom/sigmob/wire/okio/Buffer;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/sigmob/wire/okio/Util;->reverseBytesLong(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public readShort()S
    .registers 9

    iget-wide v0, p0, Lcom/sigmob/wire/okio/Buffer;->size:J

    const-wide/16 v2, 0x2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_4a

    iget-object v0, p0, Lcom/sigmob/wire/okio/Buffer;->head:Lcom/sigmob/wire/okio/Segment;

    iget v1, v0, Lcom/sigmob/wire/okio/Segment;->pos:I

    iget v4, v0, Lcom/sigmob/wire/okio/Segment;->limit:I

    sub-int v5, v4, v1

    const/4 v6, 0x2

    if-ge v5, v6, :cond_24

    invoke-virtual {p0}, Lcom/sigmob/wire/okio/Buffer;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    invoke-virtual {p0}, Lcom/sigmob/wire/okio/Buffer;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0

    :cond_24
    iget-object v5, v0, Lcom/sigmob/wire/okio/Segment;->data:[B

    add-int/lit8 v6, v1, 0x1

    aget-byte v1, v5, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v7, v6, 0x1

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v1, v5

    iget-wide v5, p0, Lcom/sigmob/wire/okio/Buffer;->size:J

    sub-long/2addr v5, v2

    iput-wide v5, p0, Lcom/sigmob/wire/okio/Buffer;->size:J

    if-ne v7, v4, :cond_46

    invoke-virtual {v0}, Lcom/sigmob/wire/okio/Segment;->pop()Lcom/sigmob/wire/okio/Segment;

    move-result-object v2

    iput-object v2, p0, Lcom/sigmob/wire/okio/Buffer;->head:Lcom/sigmob/wire/okio/Segment;

    invoke-static {v0}, Lcom/sigmob/wire/okio/SegmentPool;->recycle(Lcom/sigmob/wire/okio/Segment;)V

    goto :goto_48

    :cond_46
    iput v7, v0, Lcom/sigmob/wire/okio/Segment;->pos:I

    :goto_48
    int-to-short v0, v1

    return v0

    :cond_4a
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "size < 2: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sigmob/wire/okio/Buffer;->size:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readShortLe()S
    .registers 2

    invoke-virtual {p0}, Lcom/sigmob/wire/okio/Buffer;->readShort()S

    move-result v0

    invoke-static {v0}, Lcom/sigmob/wire/okio/Util;->reverseBytesShort(S)S

    move-result v0

    return v0
.end method

.method public readString(JLjava/nio/charset/Charset;)Ljava/lang/String;
    .registers 10

    iget-wide v0, p0, Lcom/sigmob/wire/okio/Buffer;->size:J

    const-wide/16 v2, 0x0

    move-wide v4, p1

    invoke-static/range {v0 .. v5}, Lcom/sigmob/wire/okio/Util;->checkOffsetAndCount(JJJ)V

    if-eqz p3, :cond_70

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p1, v0

    if-gtz v0, :cond_57

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_1a

    const-string p1, ""

    return-object p1

    :cond_1a
    iget-object v0, p0, Lcom/sigmob/wire/okio/Buffer;->head:Lcom/sigmob/wire/okio/Segment;

    iget v1, v0, Lcom/sigmob/wire/okio/Segment;->pos:I

    int-to-long v1, v1

    add-long/2addr v1, p1

    iget v3, v0, Lcom/sigmob/wire/okio/Segment;->limit:I

    int-to-long v3, v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_31

    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/sigmob/wire/okio/Buffer;->readByteArray(J)[B

    move-result-object p1

    invoke-direct {v0, p1, p3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0

    :cond_31
    new-instance v1, Ljava/lang/String;

    iget-object v2, v0, Lcom/sigmob/wire/okio/Segment;->data:[B

    iget v3, v0, Lcom/sigmob/wire/okio/Segment;->pos:I

    long-to-int v4, p1

    invoke-direct {v1, v2, v3, v4, p3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iget p3, v0, Lcom/sigmob/wire/okio/Segment;->pos:I

    int-to-long v2, p3

    add-long/2addr v2, p1

    long-to-int p3, v2

    iput p3, v0, Lcom/sigmob/wire/okio/Segment;->pos:I

    iget-wide v2, p0, Lcom/sigmob/wire/okio/Buffer;->size:J

    sub-long/2addr v2, p1

    iput-wide v2, p0, Lcom/sigmob/wire/okio/Buffer;->size:J

    iget p1, v0, Lcom/sigmob/wire/okio/Segment;->pos:I

    iget p2, v0, Lcom/sigmob/wire/okio/Segment;->limit:I

    if-ne p1, p2, :cond_56

    invoke-virtual {v0}, Lcom/sigmob/wire/okio/Segment;->pop()Lcom/sigmob/wire/okio/Segment;

    move-result-object p1

    iput-object p1, p0, Lcom/sigmob/wire/okio/Buffer;->head:Lcom/sigmob/wire/okio/Segment;

    invoke-static {v0}, Lcom/sigmob/wire/okio/SegmentPool;->recycle(Lcom/sigmob/wire/okio/Segment;)V

    :cond_56
    return-object v1

    :cond_57
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "byteCount > Integer.MAX_VALUE: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3

    :cond_70
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "charset == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public readString(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .registers 4

    :try_start_0
    iget-wide v0, p0, Lcom/sigmob/wire/okio/Buffer;->size:J

    invoke-virtual {p0, v0, v1, p1}, Lcom/sigmob/wire/okio/Buffer;->readString(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1
    :try_end_6
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_6} :catch_7

    return-object p1

    :catch_7
    move-exception p1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public readUtf8()Ljava/lang/String;
    .registers 4

    :try_start_0
    iget-wide v0, p0, Lcom/sigmob/wire/okio/Buffer;->size:J

    sget-object v2, Lcom/sigmob/wire/okio/Util;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0, v1, v2}, Lcom/sigmob/wire/okio/Buffer;->readString(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0
    :try_end_8
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    :catch_9
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public readUtf8(J)Ljava/lang/String;
    .registers 4

    sget-object v0, Lcom/sigmob/wire/okio/Util;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1, p2, v0}, Lcom/sigmob/wire/okio/Buffer;->readString(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public readUtf8CodePoint()I
    .registers 13

    iget-wide v0, p0, Lcom/sigmob/wire/okio/Buffer;->size:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_b3

    invoke-virtual {p0, v2, v3}, Lcom/sigmob/wire/okio/Buffer;->getByte(J)B

    move-result v0

    and-int/lit16 v1, v0, 0x80

    const/4 v2, 0x1

    const/16 v3, 0x80

    const v4, 0xfffd

    if-nez v1, :cond_1c

    and-int/lit8 v1, v0, 0x7f

    const/4 v5, 0x0

    move v6, v5

    move v5, v2

    goto :goto_3e

    :cond_1c
    and-int/lit16 v1, v0, 0xe0

    const/16 v5, 0xc0

    if-ne v1, v5, :cond_27

    and-int/lit8 v1, v0, 0x1f

    const/4 v5, 0x2

    move v6, v3

    goto :goto_3e

    :cond_27
    and-int/lit16 v1, v0, 0xf0

    const/16 v5, 0xe0

    if-ne v1, v5, :cond_33

    and-int/lit8 v1, v0, 0xf

    const/4 v5, 0x3

    const/16 v6, 0x800

    goto :goto_3e

    :cond_33
    and-int/lit16 v1, v0, 0xf8

    const/16 v5, 0xf0

    if-ne v1, v5, :cond_ad

    and-int/lit8 v1, v0, 0x7

    const/4 v5, 0x4

    const/high16 v6, 0x10000

    :goto_3e
    iget-wide v7, p0, Lcom/sigmob/wire/okio/Buffer;->size:J

    int-to-long v9, v5

    cmp-long v7, v7, v9

    if-ltz v7, :cond_74

    :goto_45
    if-ge v2, v5, :cond_5c

    int-to-long v7, v2

    invoke-virtual {p0, v7, v8}, Lcom/sigmob/wire/okio/Buffer;->getByte(J)B

    move-result v0

    and-int/lit16 v11, v0, 0xc0

    if-ne v11, v3, :cond_58

    shl-int/lit8 v1, v1, 0x6

    and-int/lit8 v0, v0, 0x3f

    or-int/2addr v1, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_45

    :cond_58
    invoke-virtual {p0, v7, v8}, Lcom/sigmob/wire/okio/Buffer;->skip(J)V

    return v4

    :cond_5c
    invoke-virtual {p0, v9, v10}, Lcom/sigmob/wire/okio/Buffer;->skip(J)V

    const v0, 0x10ffff

    if-le v1, v0, :cond_65

    return v4

    :cond_65
    const v0, 0xd800

    if-lt v1, v0, :cond_70

    const v0, 0xdfff

    if-gt v1, v0, :cond_70

    return v4

    :cond_70
    if-ge v1, v6, :cond_73

    return v4

    :cond_73
    return v1

    :cond_74
    new-instance v1, Ljava/io/EOFException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "size < "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/sigmob/wire/okio/Buffer;->size:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (to read code point prefixed 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_ad
    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sigmob/wire/okio/Buffer;->skip(J)V

    return v4

    :cond_b3
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public readUtf8Line()Ljava/lang/String;
    .registers 5

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/sigmob/wire/okio/Buffer;->indexOf(B)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_1b

    iget-wide v0, p0, Lcom/sigmob/wire/okio/Buffer;->size:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_19

    invoke-virtual {p0, v0, v1}, Lcom/sigmob/wire/okio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_1a

    :cond_19
    const/4 v0, 0x0

    :goto_1a
    return-object v0

    :cond_1b
    invoke-virtual {p0, v0, v1}, Lcom/sigmob/wire/okio/Buffer;->readUtf8Line(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method readUtf8Line(J)Ljava/lang/String;
    .registers 9

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    const-wide/16 v1, 0x1

    if-lez v0, :cond_1c

    sub-long v3, p1, v1

    invoke-virtual {p0, v3, v4}, Lcom/sigmob/wire/okio/Buffer;->getByte(J)B

    move-result v0

    const/16 v5, 0xd

    if-ne v0, v5, :cond_1c

    invoke-virtual {p0, v3, v4}, Lcom/sigmob/wire/okio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object p1

    const-wide/16 v0, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/sigmob/wire/okio/Buffer;->skip(J)V

    return-object p1

    :cond_1c
    invoke-virtual {p0, p1, p2}, Lcom/sigmob/wire/okio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, v2}, Lcom/sigmob/wire/okio/Buffer;->skip(J)V

    return-object p1
.end method

.method public readUtf8LineStrict()Ljava/lang/String;
    .registers 8

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/sigmob/wire/okio/Buffer;->indexOf(B)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_11

    invoke-virtual {p0, v0, v1}, Lcom/sigmob/wire/okio/Buffer;->readUtf8Line(J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_11
    new-instance v0, Lcom/sigmob/wire/okio/Buffer;

    invoke-direct {v0}, Lcom/sigmob/wire/okio/Buffer;-><init>()V

    const-wide/16 v3, 0x0

    const-wide/16 v1, 0x20

    iget-wide v5, p0, Lcom/sigmob/wire/okio/Buffer;->size:J

    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    move-object v1, p0

    move-object v2, v0

    invoke-virtual/range {v1 .. v6}, Lcom/sigmob/wire/okio/Buffer;->copyTo(Lcom/sigmob/wire/okio/Buffer;JJ)Lcom/sigmob/wire/okio/Buffer;

    new-instance v1, Ljava/io/EOFException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\\n not found: size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sigmob/wire/okio/Buffer;->size()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " content="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sigmob/wire/okio/Buffer;->readByteString()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/wire/okio/ByteString;->hex()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\u2026"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public request(J)Z
    .registers 5

    iget-wide v0, p0, Lcom/sigmob/wire/okio/Buffer;->size:J

    cmp-long p1, v0, p1

    if-ltz p1, :cond_8

    const/4 p1, 0x1

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    return p1
.end method

.method public require(J)V
    .registers 5

    iget-wide v0, p0, Lcom/sigmob/wire/okio/Buffer;->size:J

    cmp-long p1, v0, p1

    if-ltz p1, :cond_7

    return-void

    :cond_7
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1
.end method

.method segmentSizes()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sigmob/wire/okio/Buffer;->head:Lcom/sigmob/wire/okio/Segment;

    if-nez v0, :cond_9

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/sigmob/wire/okio/Buffer;->head:Lcom/sigmob/wire/okio/Segment;

    iget v1, v1, Lcom/sigmob/wire/okio/Segment;->limit:I

    iget-object v2, p0, Lcom/sigmob/wire/okio/Buffer;->head:Lcom/sigmob/wire/okio/Segment;

    iget v2, v2, Lcom/sigmob/wire/okio/Segment;->pos:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/sigmob/wire/okio/Buffer;->head:Lcom/sigmob/wire/okio/Segment;

    :goto_20
    iget-object v1, v1, Lcom/sigmob/wire/okio/Segment;->next:Lcom/sigmob/wire/okio/Segment;

    iget-object v2, p0, Lcom/sigmob/wire/okio/Buffer;->head:Lcom/sigmob/wire/okio/Segment;

    if-eq v1, v2, :cond_33

    iget v2, v1, Lcom/sigmob/wire/okio/Segment;->limit:I

    iget v3, v1, Lcom/sigmob/wire/okio/Segment;->pos:I

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_20

    :cond_33
    return-object v0
.end method

.method public select(Lcom/sigmob/wire/okio/Options;)I
    .registers 12

    iget-object v6, p0, Lcom/sigmob/wire/okio/Buffer;->head:Lcom/sigmob/wire/okio/Segment;

    if-nez v6, :cond_b

    sget-object v0, Lcom/sigmob/wire/okio/ByteString;->EMPTY:Lcom/sigmob/wire/okio/ByteString;

    invoke-virtual {p1, v0}, Lcom/sigmob/wire/okio/Options;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1

    :cond_b
    iget-object p1, p1, Lcom/sigmob/wire/okio/Options;->byteStrings:[Lcom/sigmob/wire/okio/ByteString;

    const/4 v0, 0x0

    array-length v7, p1

    move v8, v0

    :goto_10
    if-ge v8, v7, :cond_42

    aget-object v9, p1, v8

    iget-wide v0, p0, Lcom/sigmob/wire/okio/Buffer;->size:J

    invoke-virtual {v9}, Lcom/sigmob/wire/okio/ByteString;->size()I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_3f

    iget v2, v6, Lcom/sigmob/wire/okio/Segment;->pos:I

    const/4 v4, 0x0

    invoke-virtual {v9}, Lcom/sigmob/wire/okio/ByteString;->size()I

    move-result v5

    move-object v0, p0

    move-object v1, v6

    move-object v3, v9

    invoke-direct/range {v0 .. v5}, Lcom/sigmob/wire/okio/Buffer;->rangeEquals(Lcom/sigmob/wire/okio/Segment;ILcom/sigmob/wire/okio/ByteString;II)Z

    move-result v0

    if-eqz v0, :cond_3f

    :try_start_2f
    invoke-virtual {v9}, Lcom/sigmob/wire/okio/ByteString;->size()I

    move-result p1

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/sigmob/wire/okio/Buffer;->skip(J)V
    :try_end_37
    .catch Ljava/io/EOFException; {:try_start_2f .. :try_end_37} :catch_38

    return v8

    :catch_38
    move-exception p1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_3f
    add-int/lit8 v8, v8, 0x1

    goto :goto_10

    :cond_42
    const/4 p1, -0x1

    return p1
.end method

.method selectPrefix(Lcom/sigmob/wire/okio/Options;)I
    .registers 11

    iget-object v6, p0, Lcom/sigmob/wire/okio/Buffer;->head:Lcom/sigmob/wire/okio/Segment;

    iget-object p1, p1, Lcom/sigmob/wire/okio/Options;->byteStrings:[Lcom/sigmob/wire/okio/ByteString;

    array-length v7, p1

    const/4 v0, 0x0

    move v8, v0

    :goto_7
    if-ge v8, v7, :cond_29

    aget-object v3, p1, v8

    iget-wide v0, p0, Lcom/sigmob/wire/okio/Buffer;->size:J

    invoke-virtual {v3}, Lcom/sigmob/wire/okio/ByteString;->size()I

    move-result v2

    int-to-long v4, v2

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v5, v0

    if-eqz v5, :cond_28

    iget v2, v6, Lcom/sigmob/wire/okio/Segment;->pos:I

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, v6

    invoke-direct/range {v0 .. v5}, Lcom/sigmob/wire/okio/Buffer;->rangeEquals(Lcom/sigmob/wire/okio/Segment;ILcom/sigmob/wire/okio/ByteString;II)Z

    move-result v0

    if-eqz v0, :cond_25

    goto :goto_28

    :cond_25
    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    :cond_28
    :goto_28
    return v8

    :cond_29
    const/4 p1, -0x1

    return p1
.end method

.method public sha1()Lcom/sigmob/wire/okio/ByteString;
    .registers 2

    const-string v0, "SHA-1"

    invoke-direct {p0, v0}, Lcom/sigmob/wire/okio/Buffer;->digest(Ljava/lang/String;)Lcom/sigmob/wire/okio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public sha256()Lcom/sigmob/wire/okio/ByteString;
    .registers 2

    const-string v0, "SHA-256"

    invoke-direct {p0, v0}, Lcom/sigmob/wire/okio/Buffer;->digest(Ljava/lang/String;)Lcom/sigmob/wire/okio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public size()J
    .registers 3

    iget-wide v0, p0, Lcom/sigmob/wire/okio/Buffer;->size:J

    return-wide v0
.end method

.method public skip(J)V
    .registers 8

    :cond_0
    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_41

    iget-object v0, p0, Lcom/sigmob/wire/okio/Buffer;->head:Lcom/sigmob/wire/okio/Segment;

    if-eqz v0, :cond_3b

    iget v0, v0, Lcom/sigmob/wire/okio/Segment;->limit:I

    iget-object v1, p0, Lcom/sigmob/wire/okio/Buffer;->head:Lcom/sigmob/wire/okio/Segment;

    iget v1, v1, Lcom/sigmob/wire/okio/Segment;->pos:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    iget-wide v1, p0, Lcom/sigmob/wire/okio/Buffer;->size:J

    int-to-long v3, v0

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/sigmob/wire/okio/Buffer;->size:J

    sub-long/2addr p1, v3

    iget-object v1, p0, Lcom/sigmob/wire/okio/Buffer;->head:Lcom/sigmob/wire/okio/Segment;

    iget v2, v1, Lcom/sigmob/wire/okio/Segment;->pos:I

    add-int/2addr v2, v0

    iput v2, v1, Lcom/sigmob/wire/okio/Segment;->pos:I

    iget-object v0, p0, Lcom/sigmob/wire/okio/Buffer;->head:Lcom/sigmob/wire/okio/Segment;

    iget v0, v0, Lcom/sigmob/wire/okio/Segment;->pos:I

    iget-object v1, p0, Lcom/sigmob/wire/okio/Buffer;->head:Lcom/sigmob/wire/okio/Segment;

    iget v1, v1, Lcom/sigmob/wire/okio/Segment;->limit:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sigmob/wire/okio/Buffer;->head:Lcom/sigmob/wire/okio/Segment;

    invoke-virtual {v0}, Lcom/sigmob/wire/okio/Segment;->pop()Lcom/sigmob/wire/okio/Segment;

    move-result-object v1

    iput-object v1, p0, Lcom/sigmob/wire/okio/Buffer;->head:Lcom/sigmob/wire/okio/Segment;

    invoke-static {v0}, Lcom/sigmob/wire/okio/SegmentPool;->recycle(Lcom/sigmob/wire/okio/Segment;)V

    goto :goto_0

    :cond_3b
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_41
    return-void
.end method

.method public snapshot()Lcom/sigmob/wire/okio/ByteString;
    .registers 5

    iget-wide v0, p0, Lcom/sigmob/wire/okio/Buffer;->size:J

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-gtz v2, :cond_f

    long-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/sigmob/wire/okio/Buffer;->snapshot(I)Lcom/sigmob/wire/okio/ByteString;

    move-result-object v0

    return-object v0

    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "size > Integer.MAX_VALUE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sigmob/wire/okio/Buffer;->size:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public snapshot(I)Lcom/sigmob/wire/okio/ByteString;
    .registers 3

    if-nez p1, :cond_5

    sget-object p1, Lcom/sigmob/wire/okio/ByteString;->EMPTY:Lcom/sigmob/wire/okio/ByteString;

    return-object p1

    :cond_5
    new-instance v0, Lcom/sigmob/wire/okio/SegmentedByteString;

    invoke-direct {v0, p0, p1}, Lcom/sigmob/wire/okio/SegmentedByteString;-><init>(Lcom/sigmob/wire/okio/Buffer;I)V

    return-object v0
.end method

.method public timeout()Lcom/sigmob/wire/okio/Timeout;
    .registers 2

    sget-object v0, Lcom/sigmob/wire/okio/Timeout;->NONE:Lcom/sigmob/wire/okio/Timeout;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/sigmob/wire/okio/Buffer;->snapshot()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/wire/okio/ByteString;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method writableSegment(I)Lcom/sigmob/wire/okio/Segment;
    .registers 5

    const/4 v0, 0x1

    if-lt p1, v0, :cond_2a

    const/16 v0, 0x2000

    if-gt p1, v0, :cond_2a

    iget-object v1, p0, Lcom/sigmob/wire/okio/Buffer;->head:Lcom/sigmob/wire/okio/Segment;

    if-nez v1, :cond_16

    invoke-static {}, Lcom/sigmob/wire/okio/SegmentPool;->take()Lcom/sigmob/wire/okio/Segment;

    move-result-object p1

    iput-object p1, p0, Lcom/sigmob/wire/okio/Buffer;->head:Lcom/sigmob/wire/okio/Segment;

    iput-object p1, p1, Lcom/sigmob/wire/okio/Segment;->prev:Lcom/sigmob/wire/okio/Segment;

    iput-object p1, p1, Lcom/sigmob/wire/okio/Segment;->next:Lcom/sigmob/wire/okio/Segment;

    return-object p1

    :cond_16
    iget-object v1, v1, Lcom/sigmob/wire/okio/Segment;->prev:Lcom/sigmob/wire/okio/Segment;

    iget v2, v1, Lcom/sigmob/wire/okio/Segment;->limit:I

    add-int/2addr v2, p1

    if-gt v2, v0, :cond_21

    iget-boolean p1, v1, Lcom/sigmob/wire/okio/Segment;->owner:Z

    if-nez p1, :cond_29

    :cond_21
    invoke-static {}, Lcom/sigmob/wire/okio/SegmentPool;->take()Lcom/sigmob/wire/okio/Segment;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/sigmob/wire/okio/Segment;->push(Lcom/sigmob/wire/okio/Segment;)Lcom/sigmob/wire/okio/Segment;

    move-result-object v1

    :cond_29
    return-object v1

    :cond_2a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public write(Lcom/sigmob/wire/okio/ByteString;)Lcom/sigmob/wire/okio/Buffer;
    .registers 3

    if-eqz p1, :cond_6

    invoke-virtual {p1, p0}, Lcom/sigmob/wire/okio/ByteString;->write(Lcom/sigmob/wire/okio/Buffer;)V

    return-object p0

    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "byteString == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public write([B)Lcom/sigmob/wire/okio/Buffer;
    .registers 4

    if-eqz p1, :cond_9

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/sigmob/wire/okio/Buffer;->write([BII)Lcom/sigmob/wire/okio/Buffer;

    move-result-object p1

    return-object p1

    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "source == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public write([BII)Lcom/sigmob/wire/okio/Buffer;
    .registers 13

    if-eqz p1, :cond_30

    array-length v0, p1

    int-to-long v1, v0

    int-to-long v3, p2

    int-to-long v7, p3

    move-wide v5, v7

    invoke-static/range {v1 .. v6}, Lcom/sigmob/wire/okio/Util;->checkOffsetAndCount(JJJ)V

    add-int/2addr p3, p2

    :goto_b
    if-ge p2, p3, :cond_2a

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sigmob/wire/okio/Buffer;->writableSegment(I)Lcom/sigmob/wire/okio/Segment;

    move-result-object v0

    sub-int v1, p3, p2

    iget v2, v0, Lcom/sigmob/wire/okio/Segment;->limit:I

    rsub-int v2, v2, 0x2000

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v2, v0, Lcom/sigmob/wire/okio/Segment;->data:[B

    iget v3, v0, Lcom/sigmob/wire/okio/Segment;->limit:I

    invoke-static {p1, p2, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v1

    iget v2, v0, Lcom/sigmob/wire/okio/Segment;->limit:I

    add-int/2addr v2, v1

    iput v2, v0, Lcom/sigmob/wire/okio/Segment;->limit:I

    goto :goto_b

    :cond_2a
    iget-wide p1, p0, Lcom/sigmob/wire/okio/Buffer;->size:J

    add-long/2addr p1, v7

    iput-wide p1, p0, Lcom/sigmob/wire/okio/Buffer;->size:J

    return-object p0

    :cond_30
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "source == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic write(Lcom/sigmob/wire/okio/ByteString;)Lcom/sigmob/wire/okio/BufferedSink;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/sigmob/wire/okio/Buffer;->write(Lcom/sigmob/wire/okio/ByteString;)Lcom/sigmob/wire/okio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public write(Lcom/sigmob/wire/okio/Source;J)Lcom/sigmob/wire/okio/BufferedSink;
    .registers 8

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_18

    invoke-interface {p1, p0, p2, p3}, Lcom/sigmob/wire/okio/Source;->read(Lcom/sigmob/wire/okio/Buffer;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_12

    sub-long/2addr p2, v0

    goto :goto_0

    :cond_12
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_18
    return-object p0
.end method

.method public bridge synthetic write([B)Lcom/sigmob/wire/okio/BufferedSink;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/sigmob/wire/okio/Buffer;->write([B)Lcom/sigmob/wire/okio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic write([BII)Lcom/sigmob/wire/okio/BufferedSink;
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/sigmob/wire/okio/Buffer;->write([BII)Lcom/sigmob/wire/okio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public write(Lcom/sigmob/wire/okio/Buffer;J)V
    .registers 10

    if-eqz p1, :cond_93

    if-eq p1, p0, :cond_8b

    iget-wide v0, p1, Lcom/sigmob/wire/okio/Buffer;->size:J

    const-wide/16 v2, 0x0

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lcom/sigmob/wire/okio/Util;->checkOffsetAndCount(JJJ)V

    :goto_c
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_8a

    iget-object v0, p1, Lcom/sigmob/wire/okio/Buffer;->head:Lcom/sigmob/wire/okio/Segment;

    iget v0, v0, Lcom/sigmob/wire/okio/Segment;->limit:I

    iget-object v1, p1, Lcom/sigmob/wire/okio/Buffer;->head:Lcom/sigmob/wire/okio/Segment;

    iget v1, v1, Lcom/sigmob/wire/okio/Segment;->pos:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    cmp-long v0, p2, v0

    if-gez v0, :cond_5c

    iget-object v0, p0, Lcom/sigmob/wire/okio/Buffer;->head:Lcom/sigmob/wire/okio/Segment;

    if-eqz v0, :cond_27

    iget-object v0, v0, Lcom/sigmob/wire/okio/Segment;->prev:Lcom/sigmob/wire/okio/Segment;

    goto :goto_28

    :cond_27
    const/4 v0, 0x0

    :goto_28
    if-eqz v0, :cond_53

    iget-boolean v1, v0, Lcom/sigmob/wire/okio/Segment;->owner:Z

    if-eqz v1, :cond_53

    iget v1, v0, Lcom/sigmob/wire/okio/Segment;->limit:I

    int-to-long v1, v1

    add-long/2addr v1, p2

    iget-boolean v3, v0, Lcom/sigmob/wire/okio/Segment;->shared:Z

    if-eqz v3, :cond_38

    const/4 v3, 0x0

    goto :goto_3a

    :cond_38
    iget v3, v0, Lcom/sigmob/wire/okio/Segment;->pos:I

    :goto_3a
    int-to-long v3, v3

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x2000

    cmp-long v1, v1, v3

    if-gtz v1, :cond_53

    iget-object v1, p1, Lcom/sigmob/wire/okio/Buffer;->head:Lcom/sigmob/wire/okio/Segment;

    long-to-int v2, p2

    invoke-virtual {v1, v0, v2}, Lcom/sigmob/wire/okio/Segment;->writeTo(Lcom/sigmob/wire/okio/Segment;I)V

    iget-wide v0, p1, Lcom/sigmob/wire/okio/Buffer;->size:J

    sub-long/2addr v0, p2

    iput-wide v0, p1, Lcom/sigmob/wire/okio/Buffer;->size:J

    iget-wide v0, p0, Lcom/sigmob/wire/okio/Buffer;->size:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Lcom/sigmob/wire/okio/Buffer;->size:J

    return-void

    :cond_53
    iget-object v0, p1, Lcom/sigmob/wire/okio/Buffer;->head:Lcom/sigmob/wire/okio/Segment;

    long-to-int v1, p2

    invoke-virtual {v0, v1}, Lcom/sigmob/wire/okio/Segment;->split(I)Lcom/sigmob/wire/okio/Segment;

    move-result-object v0

    iput-object v0, p1, Lcom/sigmob/wire/okio/Buffer;->head:Lcom/sigmob/wire/okio/Segment;

    :cond_5c
    iget-object v0, p1, Lcom/sigmob/wire/okio/Buffer;->head:Lcom/sigmob/wire/okio/Segment;

    iget v1, v0, Lcom/sigmob/wire/okio/Segment;->limit:I

    iget v2, v0, Lcom/sigmob/wire/okio/Segment;->pos:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    invoke-virtual {v0}, Lcom/sigmob/wire/okio/Segment;->pop()Lcom/sigmob/wire/okio/Segment;

    move-result-object v3

    iput-object v3, p1, Lcom/sigmob/wire/okio/Buffer;->head:Lcom/sigmob/wire/okio/Segment;

    iget-object v3, p0, Lcom/sigmob/wire/okio/Buffer;->head:Lcom/sigmob/wire/okio/Segment;

    if-nez v3, :cond_75

    iput-object v0, p0, Lcom/sigmob/wire/okio/Buffer;->head:Lcom/sigmob/wire/okio/Segment;

    iput-object v0, v0, Lcom/sigmob/wire/okio/Segment;->prev:Lcom/sigmob/wire/okio/Segment;

    iput-object v0, v0, Lcom/sigmob/wire/okio/Segment;->next:Lcom/sigmob/wire/okio/Segment;

    goto :goto_7e

    :cond_75
    iget-object v3, v3, Lcom/sigmob/wire/okio/Segment;->prev:Lcom/sigmob/wire/okio/Segment;

    invoke-virtual {v3, v0}, Lcom/sigmob/wire/okio/Segment;->push(Lcom/sigmob/wire/okio/Segment;)Lcom/sigmob/wire/okio/Segment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/wire/okio/Segment;->compact()V

    :goto_7e
    iget-wide v3, p1, Lcom/sigmob/wire/okio/Buffer;->size:J

    sub-long/2addr v3, v1

    iput-wide v3, p1, Lcom/sigmob/wire/okio/Buffer;->size:J

    iget-wide v3, p0, Lcom/sigmob/wire/okio/Buffer;->size:J

    add-long/2addr v3, v1

    iput-wide v3, p0, Lcom/sigmob/wire/okio/Buffer;->size:J

    sub-long/2addr p2, v1

    goto :goto_c

    :cond_8a
    return-void

    :cond_8b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "source == this"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_93
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "source == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeAll(Lcom/sigmob/wire/okio/Source;)J
    .registers 8

    if-eqz p1, :cond_13

    const-wide/16 v0, 0x0

    :goto_4
    const-wide/16 v2, 0x2000

    invoke-interface {p1, p0, v2, v3}, Lcom/sigmob/wire/okio/Source;->read(Lcom/sigmob/wire/okio/Buffer;J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-eqz v4, :cond_12

    add-long/2addr v0, v2

    goto :goto_4

    :cond_12
    return-wide v0

    :cond_13
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "source == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeByte(I)Lcom/sigmob/wire/okio/Buffer;
    .registers 6

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sigmob/wire/okio/Buffer;->writableSegment(I)Lcom/sigmob/wire/okio/Segment;

    move-result-object v0

    iget-object v1, v0, Lcom/sigmob/wire/okio/Segment;->data:[B

    iget v2, v0, Lcom/sigmob/wire/okio/Segment;->limit:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v0, Lcom/sigmob/wire/okio/Segment;->limit:I

    int-to-byte p1, p1

    aput-byte p1, v1, v2

    iget-wide v0, p0, Lcom/sigmob/wire/okio/Buffer;->size:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sigmob/wire/okio/Buffer;->size:J

    return-object p0
.end method

.method public bridge synthetic writeByte(I)Lcom/sigmob/wire/okio/BufferedSink;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/sigmob/wire/okio/Buffer;->writeByte(I)Lcom/sigmob/wire/okio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public writeDecimalLong(J)Lcom/sigmob/wire/okio/Buffer;
    .registers 14

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_d

    const/16 p1, 0x30

    invoke-virtual {p0, p1}, Lcom/sigmob/wire/okio/Buffer;->writeByte(I)Lcom/sigmob/wire/okio/Buffer;

    move-result-object p1

    return-object p1

    :cond_d
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-gez v2, :cond_1e

    neg-long p1, p1

    cmp-long v2, p1, v0

    if-gez v2, :cond_1d

    const-string p1, "-9223372036854775808"

    invoke-virtual {p0, p1}, Lcom/sigmob/wire/okio/Buffer;->writeUtf8(Ljava/lang/String;)Lcom/sigmob/wire/okio/Buffer;

    move-result-object p1

    return-object p1

    :cond_1d
    move v3, v4

    :cond_1e
    const-wide/32 v5, 0x5f5e100

    cmp-long v2, p1, v5

    const-wide/16 v5, 0xa

    if-gez v2, :cond_6a

    const-wide/16 v7, 0x2710

    cmp-long v2, p1, v7

    if-gez v2, :cond_48

    const-wide/16 v7, 0x64

    cmp-long v2, p1, v7

    if-gez v2, :cond_3c

    cmp-long v2, p1, v5

    if-gez v2, :cond_39

    goto/16 :goto_e2

    :cond_39
    const/4 v4, 0x2

    goto/16 :goto_e2

    :cond_3c
    const-wide/16 v7, 0x3e8

    cmp-long v2, p1, v7

    if-gez v2, :cond_45

    const/4 v4, 0x3

    goto/16 :goto_e2

    :cond_45
    const/4 v4, 0x4

    goto/16 :goto_e2

    :cond_48
    const-wide/32 v7, 0xf4240

    cmp-long v2, p1, v7

    if-gez v2, :cond_5c

    const-wide/32 v7, 0x186a0

    cmp-long v2, p1, v7

    if-gez v2, :cond_59

    const/4 v4, 0x5

    goto/16 :goto_e2

    :cond_59
    const/4 v4, 0x6

    goto/16 :goto_e2

    :cond_5c
    const-wide/32 v7, 0x989680

    cmp-long v2, p1, v7

    if-gez v2, :cond_66

    const/4 v4, 0x7

    goto/16 :goto_e2

    :cond_66
    const/16 v4, 0x8

    goto/16 :goto_e2

    :cond_6a
    const-wide v7, 0xe8d4a51000L

    cmp-long v2, p1, v7

    if-gez v2, :cond_98

    const-wide v7, 0x2540be400L

    cmp-long v2, p1, v7

    if-gez v2, :cond_89

    const-wide/32 v7, 0x3b9aca00

    cmp-long v2, p1, v7

    if-gez v2, :cond_86

    const/16 v4, 0x9

    goto :goto_e2

    :cond_86
    const/16 v4, 0xa

    goto :goto_e2

    :cond_89
    const-wide v7, 0x174876e800L

    cmp-long v2, p1, v7

    if-gez v2, :cond_95

    const/16 v4, 0xb

    goto :goto_e2

    :cond_95
    const/16 v4, 0xc

    goto :goto_e2

    :cond_98
    const-wide v7, 0x38d7ea4c68000L

    cmp-long v2, p1, v7

    if-gez v2, :cond_bc

    const-wide v7, 0x9184e72a000L

    cmp-long v2, p1, v7

    if-gez v2, :cond_ad

    const/16 v4, 0xd

    goto :goto_e2

    :cond_ad
    const-wide v7, 0x5af3107a4000L

    cmp-long v2, p1, v7

    if-gez v2, :cond_b9

    const/16 v4, 0xe

    goto :goto_e2

    :cond_b9
    const/16 v4, 0xf

    goto :goto_e2

    :cond_bc
    const-wide v7, 0x16345785d8a0000L

    cmp-long v2, p1, v7

    if-gez v2, :cond_d4

    const-wide v7, 0x2386f26fc10000L

    cmp-long v2, p1, v7

    if-gez v2, :cond_d1

    const/16 v4, 0x10

    goto :goto_e2

    :cond_d1
    const/16 v4, 0x11

    goto :goto_e2

    :cond_d4
    const-wide v7, 0xde0b6b3a7640000L

    cmp-long v2, p1, v7

    if-gez v2, :cond_e0

    const/16 v4, 0x12

    goto :goto_e2

    :cond_e0
    const/16 v4, 0x13

    :goto_e2
    if-eqz v3, :cond_e6

    add-int/lit8 v4, v4, 0x1

    :cond_e6
    invoke-virtual {p0, v4}, Lcom/sigmob/wire/okio/Buffer;->writableSegment(I)Lcom/sigmob/wire/okio/Segment;

    move-result-object v2

    iget-object v7, v2, Lcom/sigmob/wire/okio/Segment;->data:[B

    iget v8, v2, Lcom/sigmob/wire/okio/Segment;->limit:I

    add-int/2addr v8, v4

    :goto_ef
    cmp-long v9, p1, v0

    if-eqz v9, :cond_100

    rem-long v9, p1, v5

    long-to-int v9, v9

    add-int/lit8 v8, v8, -0x1

    sget-object v10, Lcom/sigmob/wire/okio/Buffer;->DIGITS:[B

    aget-byte v9, v10, v9

    aput-byte v9, v7, v8

    div-long/2addr p1, v5

    goto :goto_ef

    :cond_100
    if-eqz v3, :cond_108

    add-int/lit8 v8, v8, -0x1

    const/16 p1, 0x2d

    aput-byte p1, v7, v8

    :cond_108
    iget p1, v2, Lcom/sigmob/wire/okio/Segment;->limit:I

    add-int/2addr p1, v4

    iput p1, v2, Lcom/sigmob/wire/okio/Segment;->limit:I

    iget-wide p1, p0, Lcom/sigmob/wire/okio/Buffer;->size:J

    int-to-long v0, v4

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/sigmob/wire/okio/Buffer;->size:J

    return-object p0
.end method

.method public bridge synthetic writeDecimalLong(J)Lcom/sigmob/wire/okio/BufferedSink;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/sigmob/wire/okio/Buffer;->writeDecimalLong(J)Lcom/sigmob/wire/okio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public writeHexadecimalUnsignedLong(J)Lcom/sigmob/wire/okio/Buffer;
    .registers 12

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_d

    const/16 p1, 0x30

    invoke-virtual {p0, p1}, Lcom/sigmob/wire/okio/Buffer;->writeByte(I)Lcom/sigmob/wire/okio/Buffer;

    move-result-object p1

    return-object p1

    :cond_d
    invoke-static {p1, p2}, Ljava/lang/Long;->highestOneBit(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v0

    const/4 v1, 0x4

    div-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sigmob/wire/okio/Buffer;->writableSegment(I)Lcom/sigmob/wire/okio/Segment;

    move-result-object v2

    iget-object v3, v2, Lcom/sigmob/wire/okio/Segment;->data:[B

    iget v4, v2, Lcom/sigmob/wire/okio/Segment;->limit:I

    add-int/2addr v4, v0

    add-int/lit8 v4, v4, -0x1

    iget v5, v2, Lcom/sigmob/wire/okio/Segment;->limit:I

    :goto_26
    if-lt v4, v5, :cond_36

    sget-object v6, Lcom/sigmob/wire/okio/Buffer;->DIGITS:[B

    const-wide/16 v7, 0xf

    and-long/2addr v7, p1

    long-to-int v7, v7

    aget-byte v6, v6, v7

    aput-byte v6, v3, v4

    ushr-long/2addr p1, v1

    add-int/lit8 v4, v4, -0x1

    goto :goto_26

    :cond_36
    iget p1, v2, Lcom/sigmob/wire/okio/Segment;->limit:I

    add-int/2addr p1, v0

    iput p1, v2, Lcom/sigmob/wire/okio/Segment;->limit:I

    iget-wide p1, p0, Lcom/sigmob/wire/okio/Buffer;->size:J

    int-to-long v0, v0

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/sigmob/wire/okio/Buffer;->size:J

    return-object p0
.end method

.method public bridge synthetic writeHexadecimalUnsignedLong(J)Lcom/sigmob/wire/okio/BufferedSink;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/sigmob/wire/okio/Buffer;->writeHexadecimalUnsignedLong(J)Lcom/sigmob/wire/okio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public writeInt(I)Lcom/sigmob/wire/okio/Buffer;
    .registers 7

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/sigmob/wire/okio/Buffer;->writableSegment(I)Lcom/sigmob/wire/okio/Segment;

    move-result-object v0

    iget-object v1, v0, Lcom/sigmob/wire/okio/Segment;->data:[B

    iget v2, v0, Lcom/sigmob/wire/okio/Segment;->limit:I

    add-int/lit8 v3, v2, 0x1

    ushr-int/lit8 v4, p1, 0x18

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    add-int/lit8 v2, v3, 0x1

    ushr-int/lit8 v4, p1, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    add-int/lit8 v3, v2, 0x1

    ushr-int/lit8 v4, p1, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    add-int/lit8 v2, v3, 0x1

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    aput-byte p1, v1, v3

    iput v2, v0, Lcom/sigmob/wire/okio/Segment;->limit:I

    iget-wide v0, p0, Lcom/sigmob/wire/okio/Buffer;->size:J

    const-wide/16 v2, 0x4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sigmob/wire/okio/Buffer;->size:J

    return-object p0
.end method

.method public bridge synthetic writeInt(I)Lcom/sigmob/wire/okio/BufferedSink;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/sigmob/wire/okio/Buffer;->writeInt(I)Lcom/sigmob/wire/okio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public writeIntLe(I)Lcom/sigmob/wire/okio/Buffer;
    .registers 2

    invoke-static {p1}, Lcom/sigmob/wire/okio/Util;->reverseBytesInt(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sigmob/wire/okio/Buffer;->writeInt(I)Lcom/sigmob/wire/okio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic writeIntLe(I)Lcom/sigmob/wire/okio/BufferedSink;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/sigmob/wire/okio/Buffer;->writeIntLe(I)Lcom/sigmob/wire/okio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public writeLong(J)Lcom/sigmob/wire/okio/Buffer;
    .registers 12

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/sigmob/wire/okio/Buffer;->writableSegment(I)Lcom/sigmob/wire/okio/Segment;

    move-result-object v1

    iget-object v2, v1, Lcom/sigmob/wire/okio/Segment;->data:[B

    iget v3, v1, Lcom/sigmob/wire/okio/Segment;->limit:I

    add-int/lit8 v4, v3, 0x1

    const/16 v5, 0x38

    ushr-long v5, p1, v5

    const-wide/16 v7, 0xff

    and-long/2addr v5, v7

    long-to-int v5, v5

    int-to-byte v5, v5

    aput-byte v5, v2, v3

    add-int/lit8 v3, v4, 0x1

    const/16 v5, 0x30

    ushr-long v5, p1, v5

    and-long/2addr v5, v7

    long-to-int v5, v5

    int-to-byte v5, v5

    aput-byte v5, v2, v4

    add-int/lit8 v4, v3, 0x1

    const/16 v5, 0x28

    ushr-long v5, p1, v5

    and-long/2addr v5, v7

    long-to-int v5, v5

    int-to-byte v5, v5

    aput-byte v5, v2, v3

    add-int/lit8 v3, v4, 0x1

    const/16 v5, 0x20

    ushr-long v5, p1, v5

    and-long/2addr v5, v7

    long-to-int v5, v5

    int-to-byte v5, v5

    aput-byte v5, v2, v4

    add-int/lit8 v4, v3, 0x1

    const/16 v5, 0x18

    ushr-long v5, p1, v5

    and-long/2addr v5, v7

    long-to-int v5, v5

    int-to-byte v5, v5

    aput-byte v5, v2, v3

    add-int/lit8 v3, v4, 0x1

    const/16 v5, 0x10

    ushr-long v5, p1, v5

    and-long/2addr v5, v7

    long-to-int v5, v5

    int-to-byte v5, v5

    aput-byte v5, v2, v4

    add-int/lit8 v4, v3, 0x1

    ushr-long v5, p1, v0

    and-long/2addr v5, v7

    long-to-int v0, v5

    int-to-byte v0, v0

    aput-byte v0, v2, v3

    add-int/lit8 v0, v4, 0x1

    and-long/2addr p1, v7

    long-to-int p1, p1

    int-to-byte p1, p1

    aput-byte p1, v2, v4

    iput v0, v1, Lcom/sigmob/wire/okio/Segment;->limit:I

    iget-wide p1, p0, Lcom/sigmob/wire/okio/Buffer;->size:J

    const-wide/16 v0, 0x8

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/sigmob/wire/okio/Buffer;->size:J

    return-object p0
.end method

.method public bridge synthetic writeLong(J)Lcom/sigmob/wire/okio/BufferedSink;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/sigmob/wire/okio/Buffer;->writeLong(J)Lcom/sigmob/wire/okio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public writeLongLe(J)Lcom/sigmob/wire/okio/Buffer;
    .registers 3

    invoke-static {p1, p2}, Lcom/sigmob/wire/okio/Util;->reverseBytesLong(J)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/sigmob/wire/okio/Buffer;->writeLong(J)Lcom/sigmob/wire/okio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic writeLongLe(J)Lcom/sigmob/wire/okio/BufferedSink;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/sigmob/wire/okio/Buffer;->writeLongLe(J)Lcom/sigmob/wire/okio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public writeShort(I)Lcom/sigmob/wire/okio/Buffer;
    .registers 7

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/sigmob/wire/okio/Buffer;->writableSegment(I)Lcom/sigmob/wire/okio/Segment;

    move-result-object v0

    iget-object v1, v0, Lcom/sigmob/wire/okio/Segment;->data:[B

    iget v2, v0, Lcom/sigmob/wire/okio/Segment;->limit:I

    add-int/lit8 v3, v2, 0x1

    ushr-int/lit8 v4, p1, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    add-int/lit8 v2, v3, 0x1

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    aput-byte p1, v1, v3

    iput v2, v0, Lcom/sigmob/wire/okio/Segment;->limit:I

    iget-wide v0, p0, Lcom/sigmob/wire/okio/Buffer;->size:J

    const-wide/16 v2, 0x2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sigmob/wire/okio/Buffer;->size:J

    return-object p0
.end method

.method public bridge synthetic writeShort(I)Lcom/sigmob/wire/okio/BufferedSink;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/sigmob/wire/okio/Buffer;->writeShort(I)Lcom/sigmob/wire/okio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public writeShortLe(I)Lcom/sigmob/wire/okio/Buffer;
    .registers 2

    int-to-short p1, p1

    invoke-static {p1}, Lcom/sigmob/wire/okio/Util;->reverseBytesShort(S)S

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sigmob/wire/okio/Buffer;->writeShort(I)Lcom/sigmob/wire/okio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic writeShortLe(I)Lcom/sigmob/wire/okio/BufferedSink;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/sigmob/wire/okio/Buffer;->writeShortLe(I)Lcom/sigmob/wire/okio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public writeString(Ljava/lang/String;IILjava/nio/charset/Charset;)Lcom/sigmob/wire/okio/Buffer;
    .registers 6

    if-eqz p1, :cond_95

    if-ltz p2, :cond_7c

    if-lt p3, p2, :cond_59

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gt p3, v0, :cond_32

    if-eqz p4, :cond_2a

    sget-object v0, Lcom/sigmob/wire/okio/Util;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p4, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-virtual {p0, p1}, Lcom/sigmob/wire/okio/Buffer;->writeUtf8(Ljava/lang/String;)Lcom/sigmob/wire/okio/Buffer;

    move-result-object p1

    return-object p1

    :cond_1b
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const/4 p2, 0x0

    array-length p3, p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/sigmob/wire/okio/Buffer;->write([BII)Lcom/sigmob/wire/okio/Buffer;

    move-result-object p1

    return-object p1

    :cond_2a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "charset == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_32
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "endIndex > string.length: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p4, " > "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_59
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "endIndex < beginIndex: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p4, " < "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7c
    new-instance p1, Ljava/lang/IllegalAccessError;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "beginIndex < 0: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_95
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "string == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeString(Ljava/lang/String;Ljava/nio/charset/Charset;)Lcom/sigmob/wire/okio/Buffer;
    .registers 5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0, p2}, Lcom/sigmob/wire/okio/Buffer;->writeString(Ljava/lang/String;IILjava/nio/charset/Charset;)Lcom/sigmob/wire/okio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic writeString(Ljava/lang/String;IILjava/nio/charset/Charset;)Lcom/sigmob/wire/okio/BufferedSink;
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sigmob/wire/okio/Buffer;->writeString(Ljava/lang/String;IILjava/nio/charset/Charset;)Lcom/sigmob/wire/okio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic writeString(Ljava/lang/String;Ljava/nio/charset/Charset;)Lcom/sigmob/wire/okio/BufferedSink;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/sigmob/wire/okio/Buffer;->writeString(Ljava/lang/String;Ljava/nio/charset/Charset;)Lcom/sigmob/wire/okio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public writeTo(Ljava/io/OutputStream;)Lcom/sigmob/wire/okio/Buffer;
    .registers 4

    iget-wide v0, p0, Lcom/sigmob/wire/okio/Buffer;->size:J

    invoke-virtual {p0, p1, v0, v1}, Lcom/sigmob/wire/okio/Buffer;->writeTo(Ljava/io/OutputStream;J)Lcom/sigmob/wire/okio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public writeTo(Ljava/io/OutputStream;J)Lcom/sigmob/wire/okio/Buffer;
    .registers 10

    if-eqz p1, :cond_42

    iget-wide v0, p0, Lcom/sigmob/wire/okio/Buffer;->size:J

    const-wide/16 v2, 0x0

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lcom/sigmob/wire/okio/Util;->checkOffsetAndCount(JJJ)V

    iget-object v0, p0, Lcom/sigmob/wire/okio/Buffer;->head:Lcom/sigmob/wire/okio/Segment;

    :cond_c
    :goto_c
    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-lez v1, :cond_41

    iget v1, v0, Lcom/sigmob/wire/okio/Segment;->limit:I

    iget v2, v0, Lcom/sigmob/wire/okio/Segment;->pos:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    invoke-static {p2, p3, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v1, v1

    iget-object v2, v0, Lcom/sigmob/wire/okio/Segment;->data:[B

    iget v3, v0, Lcom/sigmob/wire/okio/Segment;->pos:I

    invoke-virtual {p1, v2, v3, v1}, Ljava/io/OutputStream;->write([BII)V

    iget v2, v0, Lcom/sigmob/wire/okio/Segment;->pos:I

    add-int/2addr v2, v1

    iput v2, v0, Lcom/sigmob/wire/okio/Segment;->pos:I

    iget-wide v2, p0, Lcom/sigmob/wire/okio/Buffer;->size:J

    int-to-long v4, v1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/sigmob/wire/okio/Buffer;->size:J

    sub-long/2addr p2, v4

    iget v1, v0, Lcom/sigmob/wire/okio/Segment;->pos:I

    iget v2, v0, Lcom/sigmob/wire/okio/Segment;->limit:I

    if-ne v1, v2, :cond_c

    invoke-virtual {v0}, Lcom/sigmob/wire/okio/Segment;->pop()Lcom/sigmob/wire/okio/Segment;

    move-result-object v1

    iput-object v1, p0, Lcom/sigmob/wire/okio/Buffer;->head:Lcom/sigmob/wire/okio/Segment;

    invoke-static {v0}, Lcom/sigmob/wire/okio/SegmentPool;->recycle(Lcom/sigmob/wire/okio/Segment;)V

    move-object v0, v1

    goto :goto_c

    :cond_41
    return-object p0

    :cond_42
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "out == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeUtf8(Ljava/lang/String;)Lcom/sigmob/wire/okio/Buffer;
    .registers 4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/sigmob/wire/okio/Buffer;->writeUtf8(Ljava/lang/String;II)Lcom/sigmob/wire/okio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public writeUtf8(Ljava/lang/String;II)Lcom/sigmob/wire/okio/Buffer;
    .registers 11

    if-eqz p1, :cond_128

    if-ltz p2, :cond_10f

    if-lt p3, p2, :cond_ec

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gt p3, v0, :cond_c5

    :goto_c
    if-ge p2, p3, :cond_c4

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x80

    if-ge v0, v1, :cond_4e

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/sigmob/wire/okio/Buffer;->writableSegment(I)Lcom/sigmob/wire/okio/Segment;

    move-result-object v2

    iget-object v3, v2, Lcom/sigmob/wire/okio/Segment;->data:[B

    iget v4, v2, Lcom/sigmob/wire/okio/Segment;->limit:I

    sub-int/2addr v4, p2

    rsub-int v5, v4, 0x2000

    invoke-static {p3, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    add-int/lit8 v6, p2, 0x1

    add-int/2addr p2, v4

    int-to-byte v0, v0

    aput-byte v0, v3, p2

    :goto_2c
    if-ge v6, v5, :cond_3d

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result p2

    if-lt p2, v1, :cond_35

    goto :goto_3d

    :cond_35
    add-int/lit8 v0, v6, 0x1

    add-int/2addr v6, v4

    int-to-byte p2, p2

    aput-byte p2, v3, v6

    move v6, v0

    goto :goto_2c

    :cond_3d
    :goto_3d
    add-int/2addr v4, v6

    iget p2, v2, Lcom/sigmob/wire/okio/Segment;->limit:I

    sub-int/2addr v4, p2

    iget p2, v2, Lcom/sigmob/wire/okio/Segment;->limit:I

    add-int/2addr p2, v4

    iput p2, v2, Lcom/sigmob/wire/okio/Segment;->limit:I

    iget-wide v0, p0, Lcom/sigmob/wire/okio/Buffer;->size:J

    int-to-long v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sigmob/wire/okio/Buffer;->size:J

    move p2, v6

    goto :goto_c

    :cond_4e
    const/16 v2, 0x800

    if-ge v0, v2, :cond_62

    shr-int/lit8 v2, v0, 0x6

    or-int/lit16 v2, v2, 0xc0

    :goto_56
    invoke-virtual {p0, v2}, Lcom/sigmob/wire/okio/Buffer;->writeByte(I)Lcom/sigmob/wire/okio/Buffer;

    and-int/lit8 v0, v0, 0x3f

    or-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/sigmob/wire/okio/Buffer;->writeByte(I)Lcom/sigmob/wire/okio/Buffer;

    add-int/lit8 p2, p2, 0x1

    goto :goto_c

    :cond_62
    const v2, 0xd800

    const/16 v3, 0x3f

    if-lt v0, v2, :cond_b8

    const v2, 0xdfff

    if-le v0, v2, :cond_6f

    goto :goto_b8

    :cond_6f
    add-int/lit8 v4, p2, 0x1

    if-ge v4, p3, :cond_78

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    goto :goto_79

    :cond_78
    const/4 v5, 0x0

    :goto_79
    const v6, 0xdbff

    if-gt v0, v6, :cond_b2

    const v6, 0xdc00

    if-lt v5, v6, :cond_b2

    if-le v5, v2, :cond_86

    goto :goto_b2

    :cond_86
    const/high16 v2, 0x10000

    const v4, -0xd801

    and-int/2addr v0, v4

    shl-int/lit8 v0, v0, 0xa

    const v4, -0xdc01

    and-int/2addr v4, v5

    or-int/2addr v0, v4

    add-int/2addr v0, v2

    shr-int/lit8 v2, v0, 0x12

    or-int/lit16 v2, v2, 0xf0

    invoke-virtual {p0, v2}, Lcom/sigmob/wire/okio/Buffer;->writeByte(I)Lcom/sigmob/wire/okio/Buffer;

    shr-int/lit8 v2, v0, 0xc

    and-int/2addr v2, v3

    or-int/2addr v2, v1

    invoke-virtual {p0, v2}, Lcom/sigmob/wire/okio/Buffer;->writeByte(I)Lcom/sigmob/wire/okio/Buffer;

    shr-int/lit8 v2, v0, 0x6

    and-int/2addr v2, v3

    or-int/2addr v2, v1

    invoke-virtual {p0, v2}, Lcom/sigmob/wire/okio/Buffer;->writeByte(I)Lcom/sigmob/wire/okio/Buffer;

    and-int/2addr v0, v3

    or-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/sigmob/wire/okio/Buffer;->writeByte(I)Lcom/sigmob/wire/okio/Buffer;

    add-int/lit8 p2, p2, 0x2

    goto/16 :goto_c

    :cond_b2
    :goto_b2
    invoke-virtual {p0, v3}, Lcom/sigmob/wire/okio/Buffer;->writeByte(I)Lcom/sigmob/wire/okio/Buffer;

    move p2, v4

    goto/16 :goto_c

    :cond_b8
    :goto_b8
    shr-int/lit8 v2, v0, 0xc

    or-int/lit16 v2, v2, 0xe0

    invoke-virtual {p0, v2}, Lcom/sigmob/wire/okio/Buffer;->writeByte(I)Lcom/sigmob/wire/okio/Buffer;

    shr-int/lit8 v2, v0, 0x6

    and-int/2addr v2, v3

    or-int/2addr v2, v1

    goto :goto_56

    :cond_c4
    return-object p0

    :cond_c5
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "endIndex > string.length: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, " > "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_ec
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "endIndex < beginIndex: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, " < "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_10f
    new-instance p1, Ljava/lang/IllegalAccessError;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "beginIndex < 0: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_128
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "string == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic writeUtf8(Ljava/lang/String;)Lcom/sigmob/wire/okio/BufferedSink;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/sigmob/wire/okio/Buffer;->writeUtf8(Ljava/lang/String;)Lcom/sigmob/wire/okio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic writeUtf8(Ljava/lang/String;II)Lcom/sigmob/wire/okio/BufferedSink;
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/sigmob/wire/okio/Buffer;->writeUtf8(Ljava/lang/String;II)Lcom/sigmob/wire/okio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public writeUtf8CodePoint(I)Lcom/sigmob/wire/okio/Buffer;
    .registers 5

    const/16 v0, 0x80

    if-ge p1, v0, :cond_8

    :goto_4
    invoke-virtual {p0, p1}, Lcom/sigmob/wire/okio/Buffer;->writeByte(I)Lcom/sigmob/wire/okio/Buffer;

    goto :goto_62

    :cond_8
    const/16 v1, 0x800

    if-ge p1, v1, :cond_17

    shr-int/lit8 v1, p1, 0x6

    or-int/lit16 v1, v1, 0xc0

    :goto_10
    invoke-virtual {p0, v1}, Lcom/sigmob/wire/okio/Buffer;->writeByte(I)Lcom/sigmob/wire/okio/Buffer;

    and-int/lit8 p1, p1, 0x3f

    or-int/2addr p1, v0

    goto :goto_4

    :cond_17
    const/high16 v1, 0x10000

    const-string v2, "Unexpected code point: "

    if-ge p1, v1, :cond_48

    const v1, 0xd800

    if-lt p1, v1, :cond_43

    const v1, 0xdfff

    if-le p1, v1, :cond_28

    goto :goto_43

    :cond_28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_43
    :goto_43
    shr-int/lit8 v1, p1, 0xc

    or-int/lit16 v1, v1, 0xe0

    goto :goto_59

    :cond_48
    const v1, 0x10ffff

    if-gt p1, v1, :cond_63

    shr-int/lit8 v1, p1, 0x12

    or-int/lit16 v1, v1, 0xf0

    invoke-virtual {p0, v1}, Lcom/sigmob/wire/okio/Buffer;->writeByte(I)Lcom/sigmob/wire/okio/Buffer;

    shr-int/lit8 v1, p1, 0xc

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v1, v0

    :goto_59
    invoke-virtual {p0, v1}, Lcom/sigmob/wire/okio/Buffer;->writeByte(I)Lcom/sigmob/wire/okio/Buffer;

    shr-int/lit8 v1, p1, 0x6

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v1, v0

    goto :goto_10

    :goto_62
    return-object p0

    :cond_63
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic writeUtf8CodePoint(I)Lcom/sigmob/wire/okio/BufferedSink;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/sigmob/wire/okio/Buffer;->writeUtf8CodePoint(I)Lcom/sigmob/wire/okio/Buffer;

    move-result-object p1

    return-object p1
.end method
