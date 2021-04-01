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
    .registers 8

    :try_start_0
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    iget-object v0, p0, Lcom/sigmob/wire/okio/Buffer;->head:Lcom/sigmob/wire/okio/Segment;

    iget-object v0, v0, Lcom/sigmob/wire/okio/Segment;->data:[B

    iget-object v2, p0, Lcom/sigmob/wire/okio/Buffer;->head:Lcom/sigmob/wire/okio/Segment;

    iget v2, v2, Lcom/sigmob/wire/okio/Segment;->pos:I

    iget-object v3, p0, Lcom/sigmob/wire/okio/Buffer;->head:Lcom/sigmob/wire/okio/Segment;

    iget v3, v3, Lcom/sigmob/wire/okio/Segment;->limit:I

    iget-object v4, p0, Lcom/sigmob/wire/okio/Buffer;->head:Lcom/sigmob/wire/okio/Segment;

    iget v4, v4, Lcom/sigmob/wire/okio/Segment;->pos:I

    sub-int/2addr v3, v4

    invoke-virtual {v1, v0, v2, v3}, Ljava/security/MessageDigest;->update([BII)V

    iget-object v0, p0, Lcom/sigmob/wire/okio/Buffer;->head:Lcom/sigmob/wire/okio/Segment;

    iget-object v0, v0, Lcom/sigmob/wire/okio/Segment;->next:Lcom/sigmob/wire/okio/Segment;

    :goto_1c
    iget-object v2, p0, Lcom/sigmob/wire/okio/Buffer;->head:Lcom/sigmob/wire/okio/Segment;

    if-eq v0, v2, :cond_2f

    iget-object v2, v0, Lcom/sigmob/wire/okio/Segment;->data:[B

    iget v3, v0, Lcom/sigmob/wire/okio/Segment;->pos:I

    iget v4, v0, Lcom/sigmob/wire/okio/Segment;->limit:I

    iget v5, v0, Lcom/sigmob/wire/okio/Segment;->pos:I

    sub-int/2addr v4, v5

    invoke-virtual {v1, v2, v3, v4}, Ljava/security/MessageDigest;->update([BII)V

    iget-object v0, v0, Lcom/sigmob/wire/okio/Segment;->next:Lcom/sigmob/wire/okio/Segment;

    goto :goto_1c

    :cond_2f
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/wire/okio/ByteString;->of([B)Lcom/sigmob/wire/okio/ByteString;
    :try_end_36
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_36} :catch_38

    move-result-object v0

    return-object v0

    :catch_38
    move-exception v0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private rangeEquals(Lcom/sigmob/wire/okio/Segment;ILcom/sigmob/wire/okio/ByteString;II)Z
    .registers 12

    iget v1, p1, Lcom/sigmob/wire/okio/Segment;->limit:I

    iget-object v0, p1, Lcom/sigmob/wire/okio/Segment;->data:[B

    move v2, p2

    move-object v3, p1

    :goto_6
    if-ge p4, p5, :cond_21

    if-ne v2, v1, :cond_12

    iget-object v3, v3, Lcom/sigmob/wire/okio/Segment;->next:Lcom/sigmob/wire/okio/Segment;

    iget-object v0, v3, Lcom/sigmob/wire/okio/Segment;->data:[B

    iget v2, v3, Lcom/sigmob/wire/okio/Segment;->pos:I

    iget v1, v3, Lcom/sigmob/wire/okio/Segment;->limit:I

    :cond_12
    aget-byte v4, v0, v2

    invoke-virtual {p3, p4}, Lcom/sigmob/wire/okio/ByteString;->getByte(I)B

    move-result v5

    if-eq v4, v5, :cond_1c

    const/4 v0, 0x0

    :goto_1b
    return v0

    :cond_1c
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 p4, p4, 0x1

    goto :goto_6

    :cond_21
    const/4 v0, 0x1

    goto :goto_1b
.end method

.method private readFrom(Ljava/io/InputStream;JZ)V
    .registers 11

    if-nez p1, :cond_17

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "in == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    iget v2, v0, Lcom/sigmob/wire/okio/Segment;->limit:I

    add-int/2addr v2, v1

    iput v2, v0, Lcom/sigmob/wire/okio/Segment;->limit:I

    iget-wide v2, p0, Lcom/sigmob/wire/okio/Buffer;->size:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/sigmob/wire/okio/Buffer;->size:J

    int-to-long v0, v1

    sub-long/2addr p2, v0

    :cond_17
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gtz v0, :cond_1f

    if-eqz p4, :cond_3b

    :cond_1f
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sigmob/wire/okio/Buffer;->writableSegment(I)Lcom/sigmob/wire/okio/Segment;

    move-result-object v0

    iget v1, v0, Lcom/sigmob/wire/okio/Segment;->limit:I

    rsub-int v1, v1, 0x2000

    int-to-long v2, v1

    invoke-static {p2, p3, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v1, v2

    iget-object v2, v0, Lcom/sigmob/wire/okio/Segment;->data:[B

    iget v3, v0, Lcom/sigmob/wire/okio/Segment;->limit:I

    invoke-virtual {p1, v2, v3, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_a

    if-eqz p4, :cond_3c

    :cond_3b
    return-void

    :cond_3c
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
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
    .registers 7

    new-instance v1, Lcom/sigmob/wire/okio/Buffer;

    invoke-direct {v1}, Lcom/sigmob/wire/okio/Buffer;-><init>()V

    iget-wide v2, p0, Lcom/sigmob/wire/okio/Buffer;->size:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_f

    move-object v0, v1

    :goto_e
    return-object v0

    :cond_f
    new-instance v0, Lcom/sigmob/wire/okio/Segment;

    iget-object v2, p0, Lcom/sigmob/wire/okio/Buffer;->head:Lcom/sigmob/wire/okio/Segment;

    invoke-direct {v0, v2}, Lcom/sigmob/wire/okio/Segment;-><init>(Lcom/sigmob/wire/okio/Segment;)V

    iput-object v0, v1, Lcom/sigmob/wire/okio/Buffer;->head:Lcom/sigmob/wire/okio/Segment;

    iget-object v0, v1, Lcom/sigmob/wire/okio/Buffer;->head:Lcom/sigmob/wire/okio/Segment;

    iget-object v2, v1, Lcom/sigmob/wire/okio/Buffer;->head:Lcom/sigmob/wire/okio/Segment;

    iget-object v3, v1, Lcom/sigmob/wire/okio/Buffer;->head:Lcom/sigmob/wire/okio/Segment;

    iput-object v3, v2, Lcom/sigmob/wire/okio/Segment;->prev:Lcom/sigmob/wire/okio/Segment;

    iput-object v3, v0, Lcom/sigmob/wire/okio/Segment;->next:Lcom/sigmob/wire/okio/Segment;

    iget-object v0, p0, Lcom/sigmob/wire/okio/Buffer;->head:Lcom/sigmob/wire/okio/Segment;

    iget-object v0, v0, Lcom/sigmob/wire/okio/Segment;->next:Lcom/sigmob/wire/okio/Segment;

    :goto_26
    iget-object v2, p0, Lcom/sigmob/wire/okio/Buffer;->head:Lcom/sigmob/wire/okio/Segment;

    if-eq v0, v2, :cond_39

    iget-object v2, v1, Lcom/sigmob/wire/okio/Buffer;->head:Lcom/sigmob/wire/okio/Segment;

    iget-object v2, v2, Lcom/sigmob/wire/okio/Segment;->prev:Lcom/sigmob/wire/okio/Segment;

    new-instance v3, Lcom/sigmob/wire/okio/Segment;

    invoke-direct {v3, v0}, Lcom/sigmob/wire/okio/Segment;-><init>(Lcom/sigmob/wire/okio/Segment;)V

    invoke-virtual {v2, v3}, Lcom/sigmob/wire/okio/Segment;->push(Lcom/sigmob/wire/okio/Segment;)Lcom/sigmob/wire/okio/Segment;

    iget-object v0, v0, Lcom/sigmob/wire/okio/Segment;->next:Lcom/sigmob/wire/okio/Segment;

    goto :goto_26

    :cond_39
    iget-wide v2, p0, Lcom/sigmob/wire/okio/Buffer;->size:J

    iput-wide v2, v1, Lcom/sigmob/wire/okio/Buffer;->size:J

    move-object v0, v1

    goto :goto_e
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

    const-wide/16 v2, 0x0

    iget-wide v0, p0, Lcom/sigmob/wire/okio/Buffer;->size:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_a

    move-wide v0, v2

    :cond_9
    :goto_9
    return-wide v0

    :cond_a
    iget-object v2, p0, Lcom/sigmob/wire/okio/Buffer;->head:Lcom/sigmob/wire/okio/Segment;

    iget-object v2, v2, Lcom/sigmob/wire/okio/Segment;->prev:Lcom/sigmob/wire/okio/Segment;

    iget v3, v2, Lcom/sigmob/wire/okio/Segment;->limit:I

    const/16 v4, 0x2000

    if-ge v3, v4, :cond_9

    iget-boolean v3, v2, Lcom/sigmob/wire/okio/Segment;->owner:Z

    if-eqz v3, :cond_9

    iget v3, v2, Lcom/sigmob/wire/okio/Segment;->limit:I

    iget v2, v2, Lcom/sigmob/wire/okio/Segment;->pos:I

    sub-int v2, v3, v2

    int-to-long v2, v2

    sub-long/2addr v0, v2

    goto :goto_9
.end method

.method public copyTo(Lcom/sigmob/wire/okio/Buffer;JJ)Lcom/sigmob/wire/okio/Buffer;
    .registers 14

    const-wide/16 v6, 0x0

    if-nez p1, :cond_c

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "out == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iget-wide v0, p0, Lcom/sigmob/wire/okio/Buffer;->size:J

    move-wide v2, p2

    move-wide v4, p4

    invoke-static/range {v0 .. v5}, Lcom/sigmob/wire/okio/Util;->checkOffsetAndCount(JJJ)V

    cmp-long v0, p4, v6

    if-nez v0, :cond_18

    :cond_17
    return-object p0

    :cond_18
    iget-wide v0, p1, Lcom/sigmob/wire/okio/Buffer;->size:J

    add-long/2addr v0, p4

    iput-wide v0, p1, Lcom/sigmob/wire/okio/Buffer;->size:J

    iget-object v0, p0, Lcom/sigmob/wire/okio/Buffer;->head:Lcom/sigmob/wire/okio/Segment;

    :goto_1f
    iget v1, v0, Lcom/sigmob/wire/okio/Segment;->limit:I

    iget v2, v0, Lcom/sigmob/wire/okio/Segment;->pos:I

    sub-int/2addr v1, v2

    int-to-long v2, v1

    cmp-long v1, p2, v2

    if-ltz v1, :cond_33

    iget v1, v0, Lcom/sigmob/wire/okio/Segment;->limit:I

    iget v2, v0, Lcom/sigmob/wire/okio/Segment;->pos:I

    sub-int/2addr v1, v2

    int-to-long v2, v1

    sub-long/2addr p2, v2

    iget-object v0, v0, Lcom/sigmob/wire/okio/Segment;->next:Lcom/sigmob/wire/okio/Segment;

    goto :goto_1f

    :cond_33
    :goto_33
    cmp-long v1, p4, v6

    if-lez v1, :cond_17

    new-instance v1, Lcom/sigmob/wire/okio/Segment;

    invoke-direct {v1, v0}, Lcom/sigmob/wire/okio/Segment;-><init>(Lcom/sigmob/wire/okio/Segment;)V

    iget v2, v1, Lcom/sigmob/wire/okio/Segment;->pos:I

    int-to-long v2, v2

    add-long/2addr v2, p2

    long-to-int v2, v2

    iput v2, v1, Lcom/sigmob/wire/okio/Segment;->pos:I

    iget v2, v1, Lcom/sigmob/wire/okio/Segment;->pos:I

    long-to-int v3, p4

    add-int/2addr v2, v3

    iget v3, v1, Lcom/sigmob/wire/okio/Segment;->limit:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v1, Lcom/sigmob/wire/okio/Segment;->limit:I

    iget-object v2, p1, Lcom/sigmob/wire/okio/Buffer;->head:Lcom/sigmob/wire/okio/Segment;

    if-nez v2, :cond_65

    iput-object v1, v1, Lcom/sigmob/wire/okio/Segment;->prev:Lcom/sigmob/wire/okio/Segment;

    iput-object v1, v1, Lcom/sigmob/wire/okio/Segment;->next:Lcom/sigmob/wire/okio/Segment;

    iput-object v1, p1, Lcom/sigmob/wire/okio/Buffer;->head:Lcom/sigmob/wire/okio/Segment;

    :goto_59
    iget v2, v1, Lcom/sigmob/wire/okio/Segment;->limit:I

    iget v1, v1, Lcom/sigmob/wire/okio/Segment;->pos:I

    sub-int v1, v2, v1

    int-to-long v2, v1

    sub-long/2addr p4, v2

    iget-object v0, v0, Lcom/sigmob/wire/okio/Segment;->next:Lcom/sigmob/wire/okio/Segment;

    move-wide p2, v6

    goto :goto_33

    :cond_65
    iget-object v2, p1, Lcom/sigmob/wire/okio/Buffer;->head:Lcom/sigmob/wire/okio/Segment;

    iget-object v2, v2, Lcom/sigmob/wire/okio/Segment;->prev:Lcom/sigmob/wire/okio/Segment;

    invoke-virtual {v2, v1}, Lcom/sigmob/wire/okio/Segment;->push(Lcom/sigmob/wire/okio/Segment;)Lcom/sigmob/wire/okio/Segment;

    goto :goto_59
.end method

.method public copyTo(Ljava/io/OutputStream;)Lcom/sigmob/wire/okio/Buffer;
    .registers 8

    const-wide/16 v2, 0x0

    iget-wide v4, p0, Lcom/sigmob/wire/okio/Buffer;->size:J

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sigmob/wire/okio/Buffer;->copyTo(Ljava/io/OutputStream;JJ)Lcom/sigmob/wire/okio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public copyTo(Ljava/io/OutputStream;JJ)Lcom/sigmob/wire/okio/Buffer;
    .registers 14

    const-wide/16 v6, 0x0

    if-nez p1, :cond_c

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "out == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iget-wide v0, p0, Lcom/sigmob/wire/okio/Buffer;->size:J

    move-wide v2, p2

    move-wide v4, p4

    invoke-static/range {v0 .. v5}, Lcom/sigmob/wire/okio/Util;->checkOffsetAndCount(JJJ)V

    cmp-long v0, p4, v6

    if-nez v0, :cond_18

    :cond_17
    return-object p0

    :cond_18
    iget-object v0, p0, Lcom/sigmob/wire/okio/Buffer;->head:Lcom/sigmob/wire/okio/Segment;

    :goto_1a
    iget v1, v0, Lcom/sigmob/wire/okio/Segment;->limit:I

    iget v2, v0, Lcom/sigmob/wire/okio/Segment;->pos:I

    sub-int/2addr v1, v2

    int-to-long v2, v1

    cmp-long v1, p2, v2

    if-ltz v1, :cond_2e

    iget v1, v0, Lcom/sigmob/wire/okio/Segment;->limit:I

    iget v2, v0, Lcom/sigmob/wire/okio/Segment;->pos:I

    sub-int/2addr v1, v2

    int-to-long v2, v1

    sub-long/2addr p2, v2

    iget-object v0, v0, Lcom/sigmob/wire/okio/Segment;->next:Lcom/sigmob/wire/okio/Segment;

    goto :goto_1a

    :cond_2e
    :goto_2e
    cmp-long v1, p4, v6

    if-lez v1, :cond_17

    iget v1, v0, Lcom/sigmob/wire/okio/Segment;->pos:I

    int-to-long v2, v1

    add-long/2addr v2, p2

    long-to-int v1, v2

    iget v2, v0, Lcom/sigmob/wire/okio/Segment;->limit:I

    sub-int/2addr v2, v1

    int-to-long v2, v2

    invoke-static {v2, v3, p4, p5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v2, v2

    iget-object v3, v0, Lcom/sigmob/wire/okio/Segment;->data:[B

    invoke-virtual {p1, v3, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    int-to-long v2, v2

    sub-long/2addr p4, v2

    iget-object v0, v0, Lcom/sigmob/wire/okio/Segment;->next:Lcom/sigmob/wire/okio/Segment;

    move-wide p2, v6

    goto :goto_2e
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
    .registers 16

    const-wide/16 v0, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-ne p0, p1, :cond_8

    move v0, v6

    :goto_7
    return v0

    :cond_8
    instance-of v2, p1, Lcom/sigmob/wire/okio/Buffer;

    if-nez v2, :cond_e

    move v0, v7

    goto :goto_7

    :cond_e
    check-cast p1, Lcom/sigmob/wire/okio/Buffer;

    iget-wide v2, p0, Lcom/sigmob/wire/okio/Buffer;->size:J

    iget-wide v4, p1, Lcom/sigmob/wire/okio/Buffer;->size:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1a

    move v0, v7

    goto :goto_7

    :cond_1a
    iget-wide v2, p0, Lcom/sigmob/wire/okio/Buffer;->size:J

    cmp-long v2, v2, v0

    if-nez v2, :cond_22

    move v0, v6

    goto :goto_7

    :cond_22
    iget-object v5, p0, Lcom/sigmob/wire/okio/Buffer;->head:Lcom/sigmob/wire/okio/Segment;

    iget-object v4, p1, Lcom/sigmob/wire/okio/Buffer;->head:Lcom/sigmob/wire/okio/Segment;

    iget v3, v5, Lcom/sigmob/wire/okio/Segment;->pos:I

    iget v2, v4, Lcom/sigmob/wire/okio/Segment;->pos:I

    :goto_2a
    iget-wide v8, p0, Lcom/sigmob/wire/okio/Buffer;->size:J

    cmp-long v8, v0, v8

    if-gez v8, :cond_69

    iget v8, v5, Lcom/sigmob/wire/okio/Segment;->limit:I

    sub-int/2addr v8, v3

    iget v9, v4, Lcom/sigmob/wire/okio/Segment;->limit:I

    sub-int/2addr v9, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    int-to-long v10, v8

    move v8, v7

    :goto_3c
    int-to-long v12, v8

    cmp-long v9, v12, v10

    if-gez v9, :cond_57

    iget-object v12, v5, Lcom/sigmob/wire/okio/Segment;->data:[B

    add-int/lit8 v9, v3, 0x1

    aget-byte v12, v12, v3

    iget-object v13, v4, Lcom/sigmob/wire/okio/Segment;->data:[B

    add-int/lit8 v3, v2, 0x1

    aget-byte v2, v13, v2

    if-eq v12, v2, :cond_51

    move v0, v7

    goto :goto_7

    :cond_51
    add-int/lit8 v2, v8, 0x1

    move v8, v2

    move v2, v3

    move v3, v9

    goto :goto_3c

    :cond_57
    iget v8, v5, Lcom/sigmob/wire/okio/Segment;->limit:I

    if-ne v3, v8, :cond_5f

    iget-object v5, v5, Lcom/sigmob/wire/okio/Segment;->next:Lcom/sigmob/wire/okio/Segment;

    iget v3, v5, Lcom/sigmob/wire/okio/Segment;->pos:I

    :cond_5f
    iget v8, v4, Lcom/sigmob/wire/okio/Segment;->limit:I

    if-ne v2, v8, :cond_67

    iget-object v4, v4, Lcom/sigmob/wire/okio/Segment;->next:Lcom/sigmob/wire/okio/Segment;

    iget v2, v4, Lcom/sigmob/wire/okio/Segment;->pos:I

    :cond_67
    add-long/2addr v0, v10

    goto :goto_2a

    :cond_69
    move v0, v6

    goto :goto_7
.end method

.method public exhausted()Z
    .registers 5

    iget-wide v0, p0, Lcom/sigmob/wire/okio/Buffer;->size:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public flush()V
    .registers 1

    return-void
.end method

.method public getByte(J)B
    .registers 10

    iget-wide v0, p0, Lcom/sigmob/wire/okio/Buffer;->size:J

    const-wide/16 v4, 0x1

    move-wide v2, p1

    invoke-static/range {v0 .. v5}, Lcom/sigmob/wire/okio/Util;->checkOffsetAndCount(JJJ)V

    iget-object v0, p0, Lcom/sigmob/wire/okio/Buffer;->head:Lcom/sigmob/wire/okio/Segment;

    :goto_a
    iget v1, v0, Lcom/sigmob/wire/okio/Segment;->limit:I

    iget v2, v0, Lcom/sigmob/wire/okio/Segment;->pos:I

    sub-int/2addr v1, v2

    int-to-long v2, v1

    cmp-long v2, p1, v2

    if-gez v2, :cond_1d

    iget-object v1, v0, Lcom/sigmob/wire/okio/Segment;->data:[B

    iget v0, v0, Lcom/sigmob/wire/okio/Segment;->pos:I

    long-to-int v2, p1

    add-int/2addr v0, v2

    aget-byte v0, v1, v0

    return v0

    :cond_1d
    int-to-long v2, v1

    sub-long/2addr p1, v2

    iget-object v0, v0, Lcom/sigmob/wire/okio/Segment;->next:Lcom/sigmob/wire/okio/Segment;

    goto :goto_a
.end method

.method public hashCode()I
    .registers 6

    iget-object v1, p0, Lcom/sigmob/wire/okio/Buffer;->head:Lcom/sigmob/wire/okio/Segment;

    if-nez v1, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x1

    :cond_7
    iget v2, v1, Lcom/sigmob/wire/okio/Segment;->pos:I

    iget v4, v1, Lcom/sigmob/wire/okio/Segment;->limit:I

    :goto_b
    if-ge v2, v4, :cond_19

    mul-int/lit8 v0, v0, 0x1f

    iget-object v3, v1, Lcom/sigmob/wire/okio/Segment;->data:[B

    aget-byte v3, v3, v2

    add-int/2addr v3, v0

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v3

    goto :goto_b

    :cond_19
    iget-object v1, v1, Lcom/sigmob/wire/okio/Segment;->next:Lcom/sigmob/wire/okio/Segment;

    iget-object v2, p0, Lcom/sigmob/wire/okio/Buffer;->head:Lcom/sigmob/wire/okio/Segment;

    if-ne v1, v2, :cond_7

    goto :goto_5
.end method

.method public indexOf(B)J
    .registers 4

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/sigmob/wire/okio/Buffer;->indexOf(BJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public indexOf(BJ)J
    .registers 14

    const-wide/16 v0, 0x0

    const-wide/16 v6, -0x1

    cmp-long v2, p2, v0

    if-gez v2, :cond_10

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "fromIndex < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    iget-object v2, p0, Lcom/sigmob/wire/okio/Buffer;->head:Lcom/sigmob/wire/okio/Segment;

    if-nez v2, :cond_16

    move-wide v0, v6

    :goto_15
    return-wide v0

    :cond_16
    iget-wide v4, p0, Lcom/sigmob/wire/okio/Buffer;->size:J

    sub-long/2addr v4, p2

    cmp-long v3, v4, p2

    if-gez v3, :cond_2e

    iget-wide v0, p0, Lcom/sigmob/wire/okio/Buffer;->size:J

    move-object v4, v2

    :goto_20
    cmp-long v2, v0, p2

    if-lez v2, :cond_49

    iget-object v4, v4, Lcom/sigmob/wire/okio/Segment;->prev:Lcom/sigmob/wire/okio/Segment;

    iget v2, v4, Lcom/sigmob/wire/okio/Segment;->limit:I

    iget v3, v4, Lcom/sigmob/wire/okio/Segment;->pos:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    sub-long/2addr v0, v2

    goto :goto_20

    :cond_2e
    move-object v4, v2

    :goto_2f
    iget v2, v4, Lcom/sigmob/wire/okio/Segment;->limit:I

    iget v3, v4, Lcom/sigmob/wire/okio/Segment;->pos:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    add-long/2addr v2, v0

    cmp-long v5, v2, p2

    if-gez v5, :cond_49

    iget-object v0, v4, Lcom/sigmob/wire/okio/Segment;->next:Lcom/sigmob/wire/okio/Segment;

    move-object v4, v0

    move-wide v0, v2

    goto :goto_2f

    :cond_3f
    iget v2, v4, Lcom/sigmob/wire/okio/Segment;->limit:I

    iget v3, v4, Lcom/sigmob/wire/okio/Segment;->pos:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    add-long/2addr v0, v2

    iget-object v4, v4, Lcom/sigmob/wire/okio/Segment;->next:Lcom/sigmob/wire/okio/Segment;

    move-wide p2, v0

    :cond_49
    iget-wide v2, p0, Lcom/sigmob/wire/okio/Buffer;->size:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_68

    iget-object v3, v4, Lcom/sigmob/wire/okio/Segment;->data:[B

    iget v2, v4, Lcom/sigmob/wire/okio/Segment;->pos:I

    int-to-long v8, v2

    add-long/2addr v8, p2

    sub-long/2addr v8, v0

    long-to-int v2, v8

    iget v5, v4, Lcom/sigmob/wire/okio/Segment;->limit:I

    :goto_59
    if-ge v2, v5, :cond_3f

    aget-byte v8, v3, v2

    if-ne v8, p1, :cond_65

    iget v3, v4, Lcom/sigmob/wire/okio/Segment;->pos:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    add-long/2addr v0, v2

    goto :goto_15

    :cond_65
    add-int/lit8 v2, v2, 0x1

    goto :goto_59

    :cond_68
    move-wide v0, v6

    goto :goto_15
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

    invoke-virtual/range {p1 .. p1}, Lcom/sigmob/wire/okio/ByteString;->size()I

    move-result v2

    if-nez v2, :cond_e

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "bytes is empty"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_e
    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-gez v2, :cond_1c

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "fromIndex < 0"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sigmob/wire/okio/Buffer;->head:Lcom/sigmob/wire/okio/Segment;

    if-nez v4, :cond_25

    const-wide/16 v2, -0x1

    :goto_24
    return-wide v2

    :cond_25
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/sigmob/wire/okio/Buffer;->size:J

    sub-long v2, v2, p2

    cmp-long v2, v2, p2

    if-gez v2, :cond_42

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/sigmob/wire/okio/Buffer;->size:J

    move-object v6, v4

    :goto_34
    cmp-long v4, v2, p2

    if-lez v4, :cond_55

    iget-object v6, v6, Lcom/sigmob/wire/okio/Segment;->prev:Lcom/sigmob/wire/okio/Segment;

    iget v4, v6, Lcom/sigmob/wire/okio/Segment;->limit:I

    iget v5, v6, Lcom/sigmob/wire/okio/Segment;->pos:I

    sub-int/2addr v4, v5

    int-to-long v4, v4

    sub-long/2addr v2, v4

    goto :goto_34

    :cond_42
    const-wide/16 v2, 0x0

    move-object v6, v4

    :goto_45
    iget v4, v6, Lcom/sigmob/wire/okio/Segment;->limit:I

    iget v5, v6, Lcom/sigmob/wire/okio/Segment;->pos:I

    sub-int/2addr v4, v5

    int-to-long v4, v4

    add-long/2addr v4, v2

    cmp-long v7, v4, p2

    if-gez v7, :cond_55

    iget-object v2, v6, Lcom/sigmob/wire/okio/Segment;->next:Lcom/sigmob/wire/okio/Segment;

    move-object v6, v2

    move-wide v2, v4

    goto :goto_45

    :cond_55
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/sigmob/wire/okio/ByteString;->getByte(I)B

    move-result v9

    invoke-virtual/range {p1 .. p1}, Lcom/sigmob/wire/okio/ByteString;->size()I

    move-result v7

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/sigmob/wire/okio/Buffer;->size:J

    int-to-long v10, v7

    sub-long/2addr v4, v10

    const-wide/16 v10, 0x1

    add-long v12, v4, v10

    move-wide v10, v2

    move-object v3, v6

    :goto_6c
    cmp-long v2, v10, v12

    if-gez v2, :cond_b9

    iget-object v14, v3, Lcom/sigmob/wire/okio/Segment;->data:[B

    iget v2, v3, Lcom/sigmob/wire/okio/Segment;->limit:I

    int-to-long v4, v2

    iget v2, v3, Lcom/sigmob/wire/okio/Segment;->pos:I

    int-to-long v0, v2

    move-wide/from16 v16, v0

    add-long v16, v16, v12

    sub-long v16, v16, v10

    move-wide/from16 v0, v16

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v15, v4

    iget v2, v3, Lcom/sigmob/wire/okio/Segment;->pos:I

    int-to-long v4, v2

    add-long v4, v4, p2

    sub-long/2addr v4, v10

    long-to-int v2, v4

    move v8, v2

    :goto_8d
    if-ge v8, v15, :cond_ac

    aget-byte v2, v14, v8

    if-ne v2, v9, :cond_a8

    add-int/lit8 v4, v8, 0x1

    const/4 v6, 0x1

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    invoke-direct/range {v2 .. v7}, Lcom/sigmob/wire/okio/Buffer;->rangeEquals(Lcom/sigmob/wire/okio/Segment;ILcom/sigmob/wire/okio/ByteString;II)Z

    move-result v2

    if-eqz v2, :cond_a8

    iget v2, v3, Lcom/sigmob/wire/okio/Segment;->pos:I

    sub-int v2, v8, v2

    int-to-long v2, v2

    add-long/2addr v2, v10

    goto/16 :goto_24

    :cond_a8
    add-int/lit8 v2, v8, 0x1

    move v8, v2

    goto :goto_8d

    :cond_ac
    iget v2, v3, Lcom/sigmob/wire/okio/Segment;->limit:I

    iget v4, v3, Lcom/sigmob/wire/okio/Segment;->pos:I

    sub-int/2addr v2, v4

    int-to-long v4, v2

    add-long/2addr v4, v10

    iget-object v3, v3, Lcom/sigmob/wire/okio/Segment;->next:Lcom/sigmob/wire/okio/Segment;

    move-wide v10, v4

    move-wide/from16 p2, v4

    goto :goto_6c

    :cond_b9
    const-wide/16 v2, -0x1

    goto/16 :goto_24
.end method

.method public indexOfElement(Lcom/sigmob/wire/okio/ByteString;)J
    .registers 4

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/sigmob/wire/okio/Buffer;->indexOfElement(Lcom/sigmob/wire/okio/ByteString;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public indexOfElement(Lcom/sigmob/wire/okio/ByteString;J)J
    .registers 16

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gez v0, :cond_e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "fromIndex < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    iget-object v2, p0, Lcom/sigmob/wire/okio/Buffer;->head:Lcom/sigmob/wire/okio/Segment;

    if-nez v2, :cond_15

    const-wide/16 v0, -0x1

    :goto_14
    return-wide v0

    :cond_15
    iget-wide v0, p0, Lcom/sigmob/wire/okio/Buffer;->size:J

    sub-long/2addr v0, p2

    cmp-long v0, v0, p2

    if-gez v0, :cond_2d

    iget-wide v0, p0, Lcom/sigmob/wire/okio/Buffer;->size:J

    move-object v4, v2

    :goto_1f
    cmp-long v2, v0, p2

    if-lez v2, :cond_40

    iget-object v4, v4, Lcom/sigmob/wire/okio/Segment;->prev:Lcom/sigmob/wire/okio/Segment;

    iget v2, v4, Lcom/sigmob/wire/okio/Segment;->limit:I

    iget v3, v4, Lcom/sigmob/wire/okio/Segment;->pos:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    sub-long/2addr v0, v2

    goto :goto_1f

    :cond_2d
    const-wide/16 v0, 0x0

    move-object v4, v2

    :goto_30
    iget v2, v4, Lcom/sigmob/wire/okio/Segment;->limit:I

    iget v3, v4, Lcom/sigmob/wire/okio/Segment;->pos:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    add-long/2addr v2, v0

    cmp-long v5, v2, p2

    if-gez v5, :cond_40

    iget-object v0, v4, Lcom/sigmob/wire/okio/Segment;->next:Lcom/sigmob/wire/okio/Segment;

    move-object v4, v0

    move-wide v0, v2

    goto :goto_30

    :cond_40
    invoke-virtual {p1}, Lcom/sigmob/wire/okio/ByteString;->size()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_7d

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/sigmob/wire/okio/ByteString;->getByte(I)B

    move-result v3

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lcom/sigmob/wire/okio/ByteString;->getByte(I)B

    move-result v5

    :goto_51
    iget-wide v6, p0, Lcom/sigmob/wire/okio/Buffer;->size:J

    cmp-long v2, v0, v6

    if-gez v2, :cond_b8

    iget-object v6, v4, Lcom/sigmob/wire/okio/Segment;->data:[B

    iget v2, v4, Lcom/sigmob/wire/okio/Segment;->pos:I

    int-to-long v8, v2

    add-long/2addr v8, p2

    sub-long/2addr v8, v0

    long-to-int v2, v8

    iget v7, v4, Lcom/sigmob/wire/okio/Segment;->limit:I

    :goto_61
    if-ge v2, v7, :cond_72

    aget-byte v8, v6, v2

    if-eq v8, v3, :cond_69

    if-ne v8, v5, :cond_6f

    :cond_69
    iget v3, v4, Lcom/sigmob/wire/okio/Segment;->pos:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    add-long/2addr v0, v2

    goto :goto_14

    :cond_6f
    add-int/lit8 v2, v2, 0x1

    goto :goto_61

    :cond_72
    iget v2, v4, Lcom/sigmob/wire/okio/Segment;->limit:I

    iget v6, v4, Lcom/sigmob/wire/okio/Segment;->pos:I

    sub-int/2addr v2, v6

    int-to-long v6, v2

    add-long/2addr v0, v6

    iget-object v4, v4, Lcom/sigmob/wire/okio/Segment;->next:Lcom/sigmob/wire/okio/Segment;

    move-wide p2, v0

    goto :goto_51

    :cond_7d
    invoke-virtual {p1}, Lcom/sigmob/wire/okio/ByteString;->internalArray()[B

    move-result-object v5

    :goto_81
    iget-wide v2, p0, Lcom/sigmob/wire/okio/Buffer;->size:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_b8

    iget-object v6, v4, Lcom/sigmob/wire/okio/Segment;->data:[B

    iget v2, v4, Lcom/sigmob/wire/okio/Segment;->pos:I

    int-to-long v2, v2

    add-long/2addr v2, p2

    sub-long/2addr v2, v0

    long-to-int v2, v2

    iget v7, v4, Lcom/sigmob/wire/okio/Segment;->limit:I

    move v3, v2

    :goto_92
    if-ge v3, v7, :cond_ad

    aget-byte v8, v6, v3

    array-length v9, v5

    const/4 v2, 0x0

    :goto_98
    if-ge v2, v9, :cond_a9

    aget-byte v10, v5, v2

    if-ne v8, v10, :cond_a6

    iget v2, v4, Lcom/sigmob/wire/okio/Segment;->pos:I

    sub-int v2, v3, v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    goto/16 :goto_14

    :cond_a6
    add-int/lit8 v2, v2, 0x1

    goto :goto_98

    :cond_a9
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_92

    :cond_ad
    iget v2, v4, Lcom/sigmob/wire/okio/Segment;->limit:I

    iget v3, v4, Lcom/sigmob/wire/okio/Segment;->pos:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    add-long/2addr v0, v2

    iget-object v4, v4, Lcom/sigmob/wire/okio/Segment;->next:Lcom/sigmob/wire/okio/Segment;

    move-wide p2, v0

    goto :goto_81

    :cond_b8
    const-wide/16 v0, -0x1

    goto/16 :goto_14
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
    .registers 13

    const/4 v0, 0x0

    invoke-virtual {p3}, Lcom/sigmob/wire/okio/ByteString;->size()I

    move-result v2

    iget-wide v4, p0, Lcom/sigmob/wire/okio/Buffer;->size:J

    sub-long/2addr v4, p1

    int-to-long v6, v2

    cmp-long v1, v4, v6

    if-gez v1, :cond_e

    :cond_d
    :goto_d
    return v0

    :cond_e
    move v1, v0

    :goto_f
    if-ge v1, v2, :cond_20

    int-to-long v4, v1

    add-long/2addr v4, p1

    invoke-virtual {p0, v4, v5}, Lcom/sigmob/wire/okio/Buffer;->getByte(J)B

    move-result v3

    invoke-virtual {p3, v1}, Lcom/sigmob/wire/okio/ByteString;->getByte(I)B

    move-result v4

    if-ne v3, v4, :cond_d

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_20
    const/4 v0, 0x1

    goto :goto_d
.end method

.method public read([B)I
    .registers 4

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/sigmob/wire/okio/Buffer;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .registers 10

    array-length v0, p1

    int-to-long v0, v0

    int-to-long v2, p2

    int-to-long v4, p3

    invoke-static/range {v0 .. v5}, Lcom/sigmob/wire/okio/Util;->checkOffsetAndCount(JJJ)V

    iget-object v1, p0, Lcom/sigmob/wire/okio/Buffer;->head:Lcom/sigmob/wire/okio/Segment;

    if-nez v1, :cond_d

    const/4 v0, -0x1

    :cond_c
    :goto_c
    return v0

    :cond_d
    iget v0, v1, Lcom/sigmob/wire/okio/Segment;->limit:I

    iget v2, v1, Lcom/sigmob/wire/okio/Segment;->pos:I

    sub-int/2addr v0, v2

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v2, v1, Lcom/sigmob/wire/okio/Segment;->data:[B

    iget v3, v1, Lcom/sigmob/wire/okio/Segment;->pos:I

    invoke-static {v2, v3, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, v1, Lcom/sigmob/wire/okio/Segment;->pos:I

    add-int/2addr v2, v0

    iput v2, v1, Lcom/sigmob/wire/okio/Segment;->pos:I

    iget-wide v2, p0, Lcom/sigmob/wire/okio/Buffer;->size:J

    int-to-long v4, v0

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/sigmob/wire/okio/Buffer;->size:J

    iget v2, v1, Lcom/sigmob/wire/okio/Segment;->pos:I

    iget v3, v1, Lcom/sigmob/wire/okio/Segment;->limit:I

    if-ne v2, v3, :cond_c

    invoke-virtual {v1}, Lcom/sigmob/wire/okio/Segment;->pop()Lcom/sigmob/wire/okio/Segment;

    move-result-object v2

    iput-object v2, p0, Lcom/sigmob/wire/okio/Buffer;->head:Lcom/sigmob/wire/okio/Segment;

    invoke-static {v1}, Lcom/sigmob/wire/okio/SegmentPool;->recycle(Lcom/sigmob/wire/okio/Segment;)V

    goto :goto_c
.end method

.method public read(Lcom/sigmob/wire/okio/Buffer;J)J
    .registers 8

    const-wide/16 v2, 0x0

    if-nez p1, :cond_c

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sink == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    cmp-long v0, p2, v2

    if-gez v0, :cond_29

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "byteCount < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_29
    iget-wide v0, p0, Lcom/sigmob/wire/okio/Buffer;->size:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_32

    const-wide/16 p2, -0x1

    :goto_31
    return-wide p2

    :cond_32
    iget-wide v0, p0, Lcom/sigmob/wire/okio/Buffer;->size:J

    cmp-long v0, p2, v0

    if-lez v0, :cond_3a

    iget-wide p2, p0, Lcom/sigmob/wire/okio/Buffer;->size:J

    :cond_3a
    invoke-virtual {p1, p0, p2, p3}, Lcom/sigmob/wire/okio/Buffer;->write(Lcom/sigmob/wire/okio/Buffer;J)V

    goto :goto_31
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
    .registers 11

    iget-wide v0, p0, Lcom/sigmob/wire/okio/Buffer;->size:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_10

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "size == 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    iget-object v0, p0, Lcom/sigmob/wire/okio/Buffer;->head:Lcom/sigmob/wire/okio/Segment;

    iget v1, v0, Lcom/sigmob/wire/okio/Segment;->pos:I

    iget v2, v0, Lcom/sigmob/wire/okio/Segment;->limit:I

    iget-object v3, v0, Lcom/sigmob/wire/okio/Segment;->data:[B

    add-int/lit8 v4, v1, 0x1

    aget-byte v1, v3, v1

    iget-wide v6, p0, Lcom/sigmob/wire/okio/Buffer;->size:J

    const-wide/16 v8, 0x1

    sub-long/2addr v6, v8

    iput-wide v6, p0, Lcom/sigmob/wire/okio/Buffer;->size:J

    if-ne v4, v2, :cond_2f

    invoke-virtual {v0}, Lcom/sigmob/wire/okio/Segment;->pop()Lcom/sigmob/wire/okio/Segment;

    move-result-object v2

    iput-object v2, p0, Lcom/sigmob/wire/okio/Buffer;->head:Lcom/sigmob/wire/okio/Segment;

    invoke-static {v0}, Lcom/sigmob/wire/okio/SegmentPool;->recycle(Lcom/sigmob/wire/okio/Segment;)V

    :goto_2e
    return v1

    :cond_2f
    iput v4, v0, Lcom/sigmob/wire/okio/Segment;->pos:I

    goto :goto_2e
.end method

.method public readByteArray()[B
    .registers 3

    :try_start_0
    iget-wide v0, p0, Lcom/sigmob/wire/okio/Buffer;->size:J

    invoke-virtual {p0, v0, v1}, Lcom/sigmob/wire/okio/Buffer;->readByteArray(J)[B
    :try_end_5
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v0

    return-object v0

    :catch_7
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public readByteArray(J)[B
    .registers 10

    iget-wide v0, p0, Lcom/sigmob/wire/okio/Buffer;->size:J

    const-wide/16 v2, 0x0

    move-wide v4, p1

    invoke-static/range {v0 .. v5}, Lcom/sigmob/wire/okio/Util;->checkOffsetAndCount(JJJ)V

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p1, v0

    if-lez v0, :cond_28

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "byteCount > Integer.MAX_VALUE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_28
    long-to-int v0, p1

    new-array v0, v0, [B

    invoke-virtual {p0, v0}, Lcom/sigmob/wire/okio/Buffer;->readFully([B)V

    return-object v0
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
    .registers 6

    new-instance v0, Lcom/sigmob/wire/okio/ByteString;

    invoke-virtual {p0, p1, p2}, Lcom/sigmob/wire/okio/Buffer;->readByteArray(J)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sigmob/wire/okio/ByteString;-><init>([B)V

    return-object v0
.end method

.method public readDecimalLong()J
    .registers 21

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/sigmob/wire/okio/Buffer;->size:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_12

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "size == 0"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_12
    const-wide/16 v8, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    const-wide v10, -0xcccccccccccccccL

    const-wide/16 v2, -0x7

    :cond_1e
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sigmob/wire/okio/Buffer;->head:Lcom/sigmob/wire/okio/Segment;

    iget-object v13, v12, Lcom/sigmob/wire/okio/Segment;->data:[B

    iget v7, v12, Lcom/sigmob/wire/okio/Segment;->pos:I

    iget v14, v12, Lcom/sigmob/wire/okio/Segment;->limit:I

    :goto_28
    if-ge v7, v14, :cond_b8

    aget-byte v15, v13, v7

    const/16 v16, 0x30

    move/from16 v0, v16

    if-lt v15, v0, :cond_8a

    const/16 v16, 0x39

    move/from16 v0, v16

    if-gt v15, v0, :cond_8a

    rsub-int/lit8 v16, v15, 0x30

    cmp-long v17, v8, v10

    if-ltz v17, :cond_4b

    cmp-long v17, v8, v10

    if-nez v17, :cond_7a

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v18, v0

    cmp-long v17, v18, v2

    if-gez v17, :cond_7a

    :cond_4b
    new-instance v2, Lcom/sigmob/wire/okio/Buffer;

    invoke-direct {v2}, Lcom/sigmob/wire/okio/Buffer;-><init>()V

    invoke-virtual {v2, v8, v9}, Lcom/sigmob/wire/okio/Buffer;->writeDecimalLong(J)Lcom/sigmob/wire/okio/Buffer;

    move-result-object v2

    invoke-virtual {v2, v15}, Lcom/sigmob/wire/okio/Buffer;->writeByte(I)Lcom/sigmob/wire/okio/Buffer;

    move-result-object v2

    if-nez v5, :cond_5d

    invoke-virtual {v2}, Lcom/sigmob/wire/okio/Buffer;->readByte()B

    :cond_5d
    new-instance v3, Ljava/lang/NumberFormatException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Number too large: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/sigmob/wire/okio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_7a
    const-wide/16 v18, 0xa

    mul-long v8, v8, v18

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    add-long v8, v8, v16

    :goto_85
    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_28

    :cond_8a
    const/16 v16, 0x2d

    move/from16 v0, v16

    if-ne v15, v0, :cond_98

    if-nez v6, :cond_98

    const/4 v5, 0x1

    const-wide/16 v16, 0x1

    sub-long v2, v2, v16

    goto :goto_85

    :cond_98
    if-nez v6, :cond_b7

    new-instance v2, Ljava/lang/NumberFormatException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected leading [0-9] or \'-\' character but was 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v15}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_b7
    const/4 v4, 0x1

    :cond_b8
    if-ne v7, v14, :cond_da

    invoke-virtual {v12}, Lcom/sigmob/wire/okio/Segment;->pop()Lcom/sigmob/wire/okio/Segment;

    move-result-object v7

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/sigmob/wire/okio/Buffer;->head:Lcom/sigmob/wire/okio/Segment;

    invoke-static {v12}, Lcom/sigmob/wire/okio/SegmentPool;->recycle(Lcom/sigmob/wire/okio/Segment;)V

    :goto_c5
    if-nez v4, :cond_cd

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sigmob/wire/okio/Buffer;->head:Lcom/sigmob/wire/okio/Segment;

    if-nez v7, :cond_1e

    :cond_cd
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/sigmob/wire/okio/Buffer;->size:J

    int-to-long v6, v6

    sub-long/2addr v2, v6

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/sigmob/wire/okio/Buffer;->size:J

    if-eqz v5, :cond_dd

    :goto_d9
    return-wide v8

    :cond_da
    iput v7, v12, Lcom/sigmob/wire/okio/Segment;->pos:I

    goto :goto_c5

    :cond_dd
    neg-long v8, v8

    goto :goto_d9
.end method

.method public readFrom(Ljava/io/InputStream;)Lcom/sigmob/wire/okio/Buffer;
    .registers 5

    const-wide v0, 0x7fffffffffffffffL

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/sigmob/wire/okio/Buffer;->readFrom(Ljava/io/InputStream;JZ)V

    return-object p0
.end method

.method public readFrom(Ljava/io/InputStream;J)Lcom/sigmob/wire/okio/Buffer;
    .registers 8

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gez v0, :cond_1f

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "byteCount < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sigmob/wire/okio/Buffer;->readFrom(Ljava/io/InputStream;JZ)V

    return-object p0
.end method

.method public readFully(Lcom/sigmob/wire/okio/Buffer;J)V
    .registers 6

    iget-wide v0, p0, Lcom/sigmob/wire/okio/Buffer;->size:J

    cmp-long v0, v0, p2

    if-gez v0, :cond_11

    iget-wide v0, p0, Lcom/sigmob/wire/okio/Buffer;->size:J

    invoke-virtual {p1, p0, v0, v1}, Lcom/sigmob/wire/okio/Buffer;->write(Lcom/sigmob/wire/okio/Buffer;J)V

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_11
    invoke-virtual {p1, p0, p2, p3}, Lcom/sigmob/wire/okio/Buffer;->write(Lcom/sigmob/wire/okio/Buffer;J)V

    return-void
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

    if-ne v1, v2, :cond_13

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_13
    add-int/2addr v0, v1

    goto :goto_1

    :cond_15
    return-void
.end method

.method public readHexadecimalUnsignedLong()J
    .registers 19

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/sigmob/wire/okio/Buffer;->size:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_12

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "size == 0"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_12
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    :cond_16
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sigmob/wire/okio/Buffer;->head:Lcom/sigmob/wire/okio/Segment;

    iget-object v11, v10, Lcom/sigmob/wire/okio/Segment;->data:[B

    iget v6, v10, Lcom/sigmob/wire/okio/Segment;->pos:I

    iget v12, v10, Lcom/sigmob/wire/okio/Segment;->limit:I

    move v7, v6

    :goto_21
    if-ge v7, v12, :cond_9c

    aget-byte v8, v11, v7

    const/16 v6, 0x30

    if-lt v8, v6, :cond_62

    const/16 v6, 0x39

    if-gt v8, v6, :cond_62

    add-int/lit8 v6, v8, -0x30

    :goto_2f
    const-wide/high16 v14, -0x1000000000000000L    # -3.105036184601418E231

    and-long/2addr v14, v4

    const-wide/16 v16, 0x0

    cmp-long v9, v14, v16

    if-eqz v9, :cond_bd

    new-instance v2, Lcom/sigmob/wire/okio/Buffer;

    invoke-direct {v2}, Lcom/sigmob/wire/okio/Buffer;-><init>()V

    invoke-virtual {v2, v4, v5}, Lcom/sigmob/wire/okio/Buffer;->writeHexadecimalUnsignedLong(J)Lcom/sigmob/wire/okio/Buffer;

    move-result-object v2

    invoke-virtual {v2, v8}, Lcom/sigmob/wire/okio/Buffer;->writeByte(I)Lcom/sigmob/wire/okio/Buffer;

    move-result-object v2

    new-instance v3, Ljava/lang/NumberFormatException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Number too large: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/sigmob/wire/okio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_62
    const/16 v6, 0x61

    if-lt v8, v6, :cond_6f

    const/16 v6, 0x66

    if-gt v8, v6, :cond_6f

    add-int/lit8 v6, v8, -0x61

    add-int/lit8 v6, v6, 0xa

    goto :goto_2f

    :cond_6f
    const/16 v6, 0x41

    if-lt v8, v6, :cond_7c

    const/16 v6, 0x46

    if-gt v8, v6, :cond_7c

    add-int/lit8 v6, v8, -0x41

    add-int/lit8 v6, v6, 0xa

    goto :goto_2f

    :cond_7c
    if-nez v3, :cond_9b

    new-instance v2, Ljava/lang/NumberFormatException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected leading [0-9a-fA-F] character but was 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_9b
    const/4 v2, 0x1

    :cond_9c
    if-ne v7, v12, :cond_c9

    invoke-virtual {v10}, Lcom/sigmob/wire/okio/Segment;->pop()Lcom/sigmob/wire/okio/Segment;

    move-result-object v6

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/sigmob/wire/okio/Buffer;->head:Lcom/sigmob/wire/okio/Segment;

    invoke-static {v10}, Lcom/sigmob/wire/okio/SegmentPool;->recycle(Lcom/sigmob/wire/okio/Segment;)V

    :goto_a9
    if-nez v2, :cond_b1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sigmob/wire/okio/Buffer;->head:Lcom/sigmob/wire/okio/Segment;

    if-nez v6, :cond_16

    :cond_b1
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/sigmob/wire/okio/Buffer;->size:J

    int-to-long v2, v3

    sub-long v2, v6, v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/sigmob/wire/okio/Buffer;->size:J

    return-wide v4

    :cond_bd
    const/4 v8, 0x4

    shl-long/2addr v4, v8

    int-to-long v8, v6

    or-long/2addr v8, v4

    add-int/lit8 v4, v7, 0x1

    add-int/lit8 v3, v3, 0x1

    move v7, v4

    move-wide v4, v8

    goto/16 :goto_21

    :cond_c9
    iput v7, v10, Lcom/sigmob/wire/okio/Segment;->pos:I

    goto :goto_a9
.end method

.method public readInt()I
    .registers 11

    const-wide/16 v8, 0x4

    iget-wide v0, p0, Lcom/sigmob/wire/okio/Buffer;->size:J

    cmp-long v0, v0, v8

    if-gez v0, :cond_23

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

    :cond_23
    iget-object v1, p0, Lcom/sigmob/wire/okio/Buffer;->head:Lcom/sigmob/wire/okio/Segment;

    iget v0, v1, Lcom/sigmob/wire/okio/Segment;->pos:I

    iget v2, v1, Lcom/sigmob/wire/okio/Segment;->limit:I

    sub-int v3, v2, v0

    const/4 v4, 0x4

    if-ge v3, v4, :cond_50

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

    :goto_4f
    return v0

    :cond_50
    iget-object v3, v1, Lcom/sigmob/wire/okio/Segment;->data:[B

    add-int/lit8 v4, v0, 0x1

    aget-byte v0, v3, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v5, v4, 0x1

    aget-byte v4, v3, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v0, v4

    add-int/lit8 v4, v5, 0x1

    aget-byte v5, v3, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v0, v5

    add-int/lit8 v5, v4, 0x1

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v0, v3

    iget-wide v6, p0, Lcom/sigmob/wire/okio/Buffer;->size:J

    sub-long/2addr v6, v8

    iput-wide v6, p0, Lcom/sigmob/wire/okio/Buffer;->size:J

    if-ne v5, v2, :cond_84

    invoke-virtual {v1}, Lcom/sigmob/wire/okio/Segment;->pop()Lcom/sigmob/wire/okio/Segment;

    move-result-object v2

    iput-object v2, p0, Lcom/sigmob/wire/okio/Buffer;->head:Lcom/sigmob/wire/okio/Segment;

    invoke-static {v1}, Lcom/sigmob/wire/okio/SegmentPool;->recycle(Lcom/sigmob/wire/okio/Segment;)V

    goto :goto_4f

    :cond_84
    iput v5, v1, Lcom/sigmob/wire/okio/Segment;->pos:I

    goto :goto_4f
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
    .registers 13

    iget-wide v0, p0, Lcom/sigmob/wire/okio/Buffer;->size:J

    const-wide/16 v2, 0x8

    cmp-long v0, v0, v2

    if-gez v0, :cond_23

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

    :cond_23
    iget-object v2, p0, Lcom/sigmob/wire/okio/Buffer;->head:Lcom/sigmob/wire/okio/Segment;

    iget v0, v2, Lcom/sigmob/wire/okio/Segment;->pos:I

    iget v3, v2, Lcom/sigmob/wire/okio/Segment;->limit:I

    sub-int v1, v3, v0

    const/16 v4, 0x8

    if-ge v1, v4, :cond_4a

    invoke-virtual {p0}, Lcom/sigmob/wire/okio/Buffer;->readInt()I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    invoke-virtual {p0}, Lcom/sigmob/wire/okio/Buffer;->readInt()I

    move-result v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    :goto_49
    return-wide v0

    :cond_4a
    iget-object v1, v2, Lcom/sigmob/wire/okio/Segment;->data:[B

    add-int/lit8 v4, v0, 0x1

    aget-byte v0, v1, v0

    int-to-long v6, v0

    const-wide/16 v8, 0xff

    and-long/2addr v6, v8

    const/16 v0, 0x38

    shl-long/2addr v6, v0

    add-int/lit8 v0, v4, 0x1

    aget-byte v4, v1, v4

    int-to-long v4, v4

    const-wide/16 v8, 0xff

    and-long/2addr v4, v8

    const/16 v8, 0x30

    shl-long/2addr v4, v8

    or-long/2addr v4, v6

    add-int/lit8 v6, v0, 0x1

    aget-byte v0, v1, v0

    int-to-long v8, v0

    const-wide/16 v10, 0xff

    and-long/2addr v8, v10

    const/16 v0, 0x28

    shl-long/2addr v8, v0

    or-long/2addr v4, v8

    add-int/lit8 v0, v6, 0x1

    aget-byte v6, v1, v6

    int-to-long v6, v6

    const-wide/16 v8, 0xff

    and-long/2addr v6, v8

    const/16 v8, 0x20

    shl-long/2addr v6, v8

    or-long/2addr v4, v6

    add-int/lit8 v6, v0, 0x1

    aget-byte v0, v1, v0

    int-to-long v8, v0

    const-wide/16 v10, 0xff

    and-long/2addr v8, v10

    const/16 v0, 0x18

    shl-long/2addr v8, v0

    or-long/2addr v4, v8

    add-int/lit8 v0, v6, 0x1

    aget-byte v6, v1, v6

    int-to-long v6, v6

    const-wide/16 v8, 0xff

    and-long/2addr v6, v8

    const/16 v8, 0x10

    shl-long/2addr v6, v8

    or-long/2addr v4, v6

    add-int/lit8 v6, v0, 0x1

    aget-byte v0, v1, v0

    int-to-long v8, v0

    const-wide/16 v10, 0xff

    and-long/2addr v8, v10

    const/16 v0, 0x8

    shl-long/2addr v8, v0

    or-long/2addr v4, v8

    add-int/lit8 v7, v6, 0x1

    aget-byte v0, v1, v6

    int-to-long v0, v0

    const-wide/16 v8, 0xff

    and-long/2addr v0, v8

    or-long/2addr v0, v4

    iget-wide v4, p0, Lcom/sigmob/wire/okio/Buffer;->size:J

    const-wide/16 v8, 0x8

    sub-long/2addr v4, v8

    iput-wide v4, p0, Lcom/sigmob/wire/okio/Buffer;->size:J

    if-ne v7, v3, :cond_bb

    invoke-virtual {v2}, Lcom/sigmob/wire/okio/Segment;->pop()Lcom/sigmob/wire/okio/Segment;

    move-result-object v3

    iput-object v3, p0, Lcom/sigmob/wire/okio/Buffer;->head:Lcom/sigmob/wire/okio/Segment;

    invoke-static {v2}, Lcom/sigmob/wire/okio/SegmentPool;->recycle(Lcom/sigmob/wire/okio/Segment;)V

    goto :goto_49

    :cond_bb
    iput v7, v2, Lcom/sigmob/wire/okio/Segment;->pos:I

    goto :goto_49
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
    .registers 11

    const-wide/16 v8, 0x2

    iget-wide v0, p0, Lcom/sigmob/wire/okio/Buffer;->size:J

    cmp-long v0, v0, v8

    if-gez v0, :cond_23

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

    :cond_23
    iget-object v0, p0, Lcom/sigmob/wire/okio/Buffer;->head:Lcom/sigmob/wire/okio/Segment;

    iget v1, v0, Lcom/sigmob/wire/okio/Segment;->pos:I

    iget v2, v0, Lcom/sigmob/wire/okio/Segment;->limit:I

    sub-int v3, v2, v1

    const/4 v4, 0x2

    if-ge v3, v4, :cond_3f

    invoke-virtual {p0}, Lcom/sigmob/wire/okio/Buffer;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    invoke-virtual {p0}, Lcom/sigmob/wire/okio/Buffer;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    int-to-short v0, v0

    :goto_3e
    return v0

    :cond_3f
    iget-object v3, v0, Lcom/sigmob/wire/okio/Segment;->data:[B

    add-int/lit8 v4, v1, 0x1

    aget-byte v1, v3, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v5, v4, 0x1

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v1, v3

    iget-wide v6, p0, Lcom/sigmob/wire/okio/Buffer;->size:J

    sub-long/2addr v6, v8

    iput-wide v6, p0, Lcom/sigmob/wire/okio/Buffer;->size:J

    if-ne v5, v2, :cond_62

    invoke-virtual {v0}, Lcom/sigmob/wire/okio/Segment;->pop()Lcom/sigmob/wire/okio/Segment;

    move-result-object v2

    iput-object v2, p0, Lcom/sigmob/wire/okio/Buffer;->head:Lcom/sigmob/wire/okio/Segment;

    invoke-static {v0}, Lcom/sigmob/wire/okio/SegmentPool;->recycle(Lcom/sigmob/wire/okio/Segment;)V

    :goto_60
    int-to-short v0, v1

    goto :goto_3e

    :cond_62
    iput v5, v0, Lcom/sigmob/wire/okio/Segment;->pos:I

    goto :goto_60
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
    .registers 11

    const-wide/16 v2, 0x0

    iget-wide v0, p0, Lcom/sigmob/wire/okio/Buffer;->size:J

    move-wide v4, p1

    invoke-static/range {v0 .. v5}, Lcom/sigmob/wire/okio/Util;->checkOffsetAndCount(JJJ)V

    if-nez p3, :cond_12

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "charset == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p1, v0

    if-lez v0, :cond_32

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "byteCount > Integer.MAX_VALUE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_32
    cmp-long v0, p1, v2

    if-nez v0, :cond_39

    const-string v0, ""

    :cond_38
    :goto_38
    return-object v0

    :cond_39
    iget-object v1, p0, Lcom/sigmob/wire/okio/Buffer;->head:Lcom/sigmob/wire/okio/Segment;

    iget v0, v1, Lcom/sigmob/wire/okio/Segment;->pos:I

    int-to-long v2, v0

    add-long/2addr v2, p1

    iget v0, v1, Lcom/sigmob/wire/okio/Segment;->limit:I

    int-to-long v4, v0

    cmp-long v0, v2, v4

    if-lez v0, :cond_50

    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/sigmob/wire/okio/Buffer;->readByteArray(J)[B

    move-result-object v1

    invoke-direct {v0, v1, p3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_38

    :cond_50
    new-instance v0, Ljava/lang/String;

    iget-object v2, v1, Lcom/sigmob/wire/okio/Segment;->data:[B

    iget v3, v1, Lcom/sigmob/wire/okio/Segment;->pos:I

    long-to-int v4, p1

    invoke-direct {v0, v2, v3, v4, p3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iget v2, v1, Lcom/sigmob/wire/okio/Segment;->pos:I

    int-to-long v2, v2

    add-long/2addr v2, p1

    long-to-int v2, v2

    iput v2, v1, Lcom/sigmob/wire/okio/Segment;->pos:I

    iget-wide v2, p0, Lcom/sigmob/wire/okio/Buffer;->size:J

    sub-long/2addr v2, p1

    iput-wide v2, p0, Lcom/sigmob/wire/okio/Buffer;->size:J

    iget v2, v1, Lcom/sigmob/wire/okio/Segment;->pos:I

    iget v3, v1, Lcom/sigmob/wire/okio/Segment;->limit:I

    if-ne v2, v3, :cond_38

    invoke-virtual {v1}, Lcom/sigmob/wire/okio/Segment;->pop()Lcom/sigmob/wire/okio/Segment;

    move-result-object v2

    iput-object v2, p0, Lcom/sigmob/wire/okio/Buffer;->head:Lcom/sigmob/wire/okio/Segment;

    invoke-static {v1}, Lcom/sigmob/wire/okio/SegmentPool;->recycle(Lcom/sigmob/wire/okio/Segment;)V

    goto :goto_38
.end method

.method public readString(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .registers 4

    :try_start_0
    iget-wide v0, p0, Lcom/sigmob/wire/okio/Buffer;->size:J

    invoke-virtual {p0, v0, v1, p1}, Lcom/sigmob/wire/okio/Buffer;->readString(JLjava/nio/charset/Charset;)Ljava/lang/String;
    :try_end_5
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v0

    return-object v0

    :catch_7
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public readUtf8()Ljava/lang/String;
    .registers 4

    :try_start_0
    iget-wide v0, p0, Lcom/sigmob/wire/okio/Buffer;->size:J

    sget-object v2, Lcom/sigmob/wire/okio/Util;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0, v1, v2}, Lcom/sigmob/wire/okio/Buffer;->readString(JLjava/nio/charset/Charset;)Ljava/lang/String;
    :try_end_7
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v0

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

    move-result-object v0

    return-object v0
.end method

.method public readUtf8CodePoint()I
    .registers 14

    const-wide/16 v8, 0x0

    const/16 v1, 0x80

    const/4 v3, 0x1

    const v5, 0xfffd

    iget-wide v6, p0, Lcom/sigmob/wire/okio/Buffer;->size:J

    cmp-long v0, v6, v8

    if-nez v0, :cond_14

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_14
    invoke-virtual {p0, v8, v9}, Lcom/sigmob/wire/okio/Buffer;->getByte(J)B

    move-result v6

    and-int/lit16 v0, v6, 0x80

    if-nez v0, :cond_61

    and-int/lit8 v2, v6, 0x7f

    const/4 v0, 0x0

    move v4, v2

    move v2, v3

    :goto_21
    iget-wide v8, p0, Lcom/sigmob/wire/okio/Buffer;->size:J

    int-to-long v10, v2

    cmp-long v7, v8, v10

    if-gez v7, :cond_8d

    new-instance v0, Ljava/io/EOFException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "size < "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sigmob/wire/okio/Buffer;->size:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (to read code point prefixed 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_61
    and-int/lit16 v0, v6, 0xe0

    const/16 v2, 0xc0

    if-ne v0, v2, :cond_6e

    and-int/lit8 v2, v6, 0x1f

    const/4 v0, 0x2

    move v4, v2

    move v2, v0

    move v0, v1

    goto :goto_21

    :cond_6e
    and-int/lit16 v0, v6, 0xf0

    const/16 v2, 0xe0

    if-ne v0, v2, :cond_7a

    and-int/lit8 v4, v6, 0xf

    const/4 v2, 0x3

    const/16 v0, 0x800

    goto :goto_21

    :cond_7a
    and-int/lit16 v0, v6, 0xf8

    const/16 v2, 0xf0

    if-ne v0, v2, :cond_86

    and-int/lit8 v4, v6, 0x7

    const/4 v2, 0x4

    const/high16 v0, 0x10000

    goto :goto_21

    :cond_86
    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sigmob/wire/okio/Buffer;->skip(J)V

    move v0, v5

    :goto_8c
    return v0

    :cond_8d
    move v12, v3

    move v3, v4

    move v4, v12

    :goto_90
    if-ge v4, v2, :cond_ab

    int-to-long v6, v4

    invoke-virtual {p0, v6, v7}, Lcom/sigmob/wire/okio/Buffer;->getByte(J)B

    move-result v6

    and-int/lit16 v7, v6, 0xc0

    if-ne v7, v1, :cond_a5

    shl-int/lit8 v3, v3, 0x6

    and-int/lit8 v6, v6, 0x3f

    or-int/2addr v6, v3

    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move v3, v6

    goto :goto_90

    :cond_a5
    int-to-long v0, v4

    invoke-virtual {p0, v0, v1}, Lcom/sigmob/wire/okio/Buffer;->skip(J)V

    move v0, v5

    goto :goto_8c

    :cond_ab
    int-to-long v6, v2

    invoke-virtual {p0, v6, v7}, Lcom/sigmob/wire/okio/Buffer;->skip(J)V

    const v1, 0x10ffff

    if-le v3, v1, :cond_b6

    move v0, v5

    goto :goto_8c

    :cond_b6
    const v1, 0xd800

    if-lt v3, v1, :cond_c2

    const v1, 0xdfff

    if-gt v3, v1, :cond_c2

    move v0, v5

    goto :goto_8c

    :cond_c2
    if-ge v3, v0, :cond_c6

    move v0, v5

    goto :goto_8c

    :cond_c6
    move v0, v3

    goto :goto_8c
.end method

.method public readUtf8Line()Ljava/lang/String;
    .registers 5

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/sigmob/wire/okio/Buffer;->indexOf(B)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_1d

    iget-wide v0, p0, Lcom/sigmob/wire/okio/Buffer;->size:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1b

    iget-wide v0, p0, Lcom/sigmob/wire/okio/Buffer;->size:J

    invoke-virtual {p0, v0, v1}, Lcom/sigmob/wire/okio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object v0

    :goto_1a
    return-object v0

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1a

    :cond_1d
    invoke-virtual {p0, v0, v1}, Lcom/sigmob/wire/okio/Buffer;->readUtf8Line(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_1a
.end method

.method readUtf8Line(J)Ljava/lang/String;
    .registers 8

    const-wide/16 v2, 0x1

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_1e

    sub-long v0, p1, v2

    invoke-virtual {p0, v0, v1}, Lcom/sigmob/wire/okio/Buffer;->getByte(J)B

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_1e

    sub-long v0, p1, v2

    invoke-virtual {p0, v0, v1}, Lcom/sigmob/wire/okio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v2, 0x2

    invoke-virtual {p0, v2, v3}, Lcom/sigmob/wire/okio/Buffer;->skip(J)V

    :goto_1d
    return-object v0

    :cond_1e
    invoke-virtual {p0, p1, p2}, Lcom/sigmob/wire/okio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v3}, Lcom/sigmob/wire/okio/Buffer;->skip(J)V

    goto :goto_1d
.end method

.method public readUtf8LineStrict()Ljava/lang/String;
    .registers 9

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/sigmob/wire/okio/Buffer;->indexOf(B)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_54

    new-instance v1, Lcom/sigmob/wire/okio/Buffer;

    invoke-direct {v1}, Lcom/sigmob/wire/okio/Buffer;-><init>()V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x20

    iget-wide v6, p0, Lcom/sigmob/wire/okio/Buffer;->size:J

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/sigmob/wire/okio/Buffer;->copyTo(Lcom/sigmob/wire/okio/Buffer;JJ)Lcom/sigmob/wire/okio/Buffer;

    new-instance v0, Ljava/io/EOFException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\\n not found: size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sigmob/wire/okio/Buffer;->size()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " content="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/sigmob/wire/okio/Buffer;->readByteString()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/wire/okio/ByteString;->hex()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u2026"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_54
    invoke-virtual {p0, v0, v1}, Lcom/sigmob/wire/okio/Buffer;->readUtf8Line(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public request(J)Z
    .registers 6

    iget-wide v0, p0, Lcom/sigmob/wire/okio/Buffer;->size:J

    cmp-long v0, v0, p1

    if-ltz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public require(J)V
    .registers 6

    iget-wide v0, p0, Lcom/sigmob/wire/okio/Buffer;->size:J

    cmp-long v0, v0, p1

    if-gez v0, :cond_c

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_c
    return-void
.end method

.method segmentSizes()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sigmob/wire/okio/Buffer;->head:Lcom/sigmob/wire/okio/Segment;

    if-nez v0, :cond_9

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_8
    return-object v0

    :cond_9
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/sigmob/wire/okio/Buffer;->head:Lcom/sigmob/wire/okio/Segment;

    iget v0, v0, Lcom/sigmob/wire/okio/Segment;->limit:I

    iget-object v2, p0, Lcom/sigmob/wire/okio/Buffer;->head:Lcom/sigmob/wire/okio/Segment;

    iget v2, v2, Lcom/sigmob/wire/okio/Segment;->pos:I

    sub-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sigmob/wire/okio/Buffer;->head:Lcom/sigmob/wire/okio/Segment;

    iget-object v0, v0, Lcom/sigmob/wire/okio/Segment;->next:Lcom/sigmob/wire/okio/Segment;

    :goto_22
    iget-object v2, p0, Lcom/sigmob/wire/okio/Buffer;->head:Lcom/sigmob/wire/okio/Segment;

    if-eq v0, v2, :cond_35

    iget v2, v0, Lcom/sigmob/wire/okio/Segment;->limit:I

    iget v3, v0, Lcom/sigmob/wire/okio/Segment;->pos:I

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v0, Lcom/sigmob/wire/okio/Segment;->next:Lcom/sigmob/wire/okio/Segment;

    goto :goto_22

    :cond_35
    move-object v0, v1

    goto :goto_8
.end method

.method public select(Lcom/sigmob/wire/okio/Options;)I
    .registers 16

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/sigmob/wire/okio/Buffer;->head:Lcom/sigmob/wire/okio/Segment;

    if-nez v1, :cond_c

    sget-object v0, Lcom/sigmob/wire/okio/ByteString;->EMPTY:Lcom/sigmob/wire/okio/ByteString;

    invoke-virtual {p1, v0}, Lcom/sigmob/wire/okio/Options;->indexOf(Ljava/lang/Object;)I

    move-result v0

    :goto_b
    return v0

    :cond_c
    iget-object v7, p1, Lcom/sigmob/wire/okio/Options;->byteStrings:[Lcom/sigmob/wire/okio/ByteString;

    array-length v8, v7

    move v6, v4

    :goto_10
    if-ge v6, v8, :cond_40

    aget-object v3, v7, v6

    iget-wide v10, p0, Lcom/sigmob/wire/okio/Buffer;->size:J

    invoke-virtual {v3}, Lcom/sigmob/wire/okio/ByteString;->size()I

    move-result v0

    int-to-long v12, v0

    cmp-long v0, v10, v12

    if-ltz v0, :cond_3d

    iget v2, v1, Lcom/sigmob/wire/okio/Segment;->pos:I

    invoke-virtual {v3}, Lcom/sigmob/wire/okio/ByteString;->size()I

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/sigmob/wire/okio/Buffer;->rangeEquals(Lcom/sigmob/wire/okio/Segment;ILcom/sigmob/wire/okio/ByteString;II)Z

    move-result v0

    if-eqz v0, :cond_3d

    :try_start_2c
    invoke-virtual {v3}, Lcom/sigmob/wire/okio/ByteString;->size()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/sigmob/wire/okio/Buffer;->skip(J)V
    :try_end_34
    .catch Ljava/io/EOFException; {:try_start_2c .. :try_end_34} :catch_36

    move v0, v6

    goto :goto_b

    :catch_36
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :cond_3d
    add-int/lit8 v6, v6, 0x1

    goto :goto_10

    :cond_40
    const/4 v0, -0x1

    goto :goto_b
.end method

.method selectPrefix(Lcom/sigmob/wire/okio/Options;)I
    .registers 16

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/sigmob/wire/okio/Buffer;->head:Lcom/sigmob/wire/okio/Segment;

    iget-object v7, p1, Lcom/sigmob/wire/okio/Options;->byteStrings:[Lcom/sigmob/wire/okio/ByteString;

    array-length v8, v7

    move v6, v4

    :goto_7
    if-ge v6, v8, :cond_27

    aget-object v3, v7, v6

    iget-wide v10, p0, Lcom/sigmob/wire/okio/Buffer;->size:J

    invoke-virtual {v3}, Lcom/sigmob/wire/okio/ByteString;->size()I

    move-result v0

    int-to-long v12, v0

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    long-to-int v5, v10

    if-eqz v5, :cond_22

    iget v2, v1, Lcom/sigmob/wire/okio/Segment;->pos:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/sigmob/wire/okio/Buffer;->rangeEquals(Lcom/sigmob/wire/okio/Segment;ILcom/sigmob/wire/okio/ByteString;II)Z

    move-result v0

    if-eqz v0, :cond_24

    :cond_22
    move v0, v6

    :goto_23
    return v0

    :cond_24
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    :cond_27
    const/4 v0, -0x1

    goto :goto_23
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
    .registers 10

    :cond_0
    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_44

    iget-object v0, p0, Lcom/sigmob/wire/okio/Buffer;->head:Lcom/sigmob/wire/okio/Segment;

    if-nez v0, :cond_10

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_10
    iget-object v0, p0, Lcom/sigmob/wire/okio/Buffer;->head:Lcom/sigmob/wire/okio/Segment;

    iget v0, v0, Lcom/sigmob/wire/okio/Segment;->limit:I

    iget-object v1, p0, Lcom/sigmob/wire/okio/Buffer;->head:Lcom/sigmob/wire/okio/Segment;

    iget v1, v1, Lcom/sigmob/wire/okio/Segment;->pos:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    iget-wide v2, p0, Lcom/sigmob/wire/okio/Buffer;->size:J

    int-to-long v4, v0

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/sigmob/wire/okio/Buffer;->size:J

    int-to-long v2, v0

    sub-long/2addr p1, v2

    iget-object v1, p0, Lcom/sigmob/wire/okio/Buffer;->head:Lcom/sigmob/wire/okio/Segment;

    iget v2, v1, Lcom/sigmob/wire/okio/Segment;->pos:I

    add-int/2addr v0, v2

    iput v0, v1, Lcom/sigmob/wire/okio/Segment;->pos:I

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

    :cond_44
    return-void
.end method

.method public snapshot()Lcom/sigmob/wire/okio/ByteString;
    .registers 5

    iget-wide v0, p0, Lcom/sigmob/wire/okio/Buffer;->size:J

    const-wide/32 v2, 0x7fffffff

    cmp-long v0, v0, v2

    if-lez v0, :cond_24

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

    :cond_24
    iget-wide v0, p0, Lcom/sigmob/wire/okio/Buffer;->size:J

    long-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/sigmob/wire/okio/Buffer;->snapshot(I)Lcom/sigmob/wire/okio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public snapshot(I)Lcom/sigmob/wire/okio/ByteString;
    .registers 3

    if-nez p1, :cond_5

    sget-object v0, Lcom/sigmob/wire/okio/ByteString;->EMPTY:Lcom/sigmob/wire/okio/ByteString;

    :goto_4
    return-object v0

    :cond_5
    new-instance v0, Lcom/sigmob/wire/okio/SegmentedByteString;

    invoke-direct {v0, p0, p1}, Lcom/sigmob/wire/okio/SegmentedByteString;-><init>(Lcom/sigmob/wire/okio/Buffer;I)V

    goto :goto_4
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

    const/16 v2, 0x2000

    const/4 v0, 0x1

    if-lt p1, v0, :cond_7

    if-le p1, v2, :cond_d

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_d
    iget-object v0, p0, Lcom/sigmob/wire/okio/Buffer;->head:Lcom/sigmob/wire/okio/Segment;

    if-nez v0, :cond_22

    invoke-static {}, Lcom/sigmob/wire/okio/SegmentPool;->take()Lcom/sigmob/wire/okio/Segment;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/wire/okio/Buffer;->head:Lcom/sigmob/wire/okio/Segment;

    iget-object v1, p0, Lcom/sigmob/wire/okio/Buffer;->head:Lcom/sigmob/wire/okio/Segment;

    iget-object v2, p0, Lcom/sigmob/wire/okio/Buffer;->head:Lcom/sigmob/wire/okio/Segment;

    iget-object v0, p0, Lcom/sigmob/wire/okio/Buffer;->head:Lcom/sigmob/wire/okio/Segment;

    iput-object v0, v2, Lcom/sigmob/wire/okio/Segment;->prev:Lcom/sigmob/wire/okio/Segment;

    iput-object v0, v1, Lcom/sigmob/wire/okio/Segment;->next:Lcom/sigmob/wire/okio/Segment;

    :cond_21
    :goto_21
    return-object v0

    :cond_22
    iget-object v0, p0, Lcom/sigmob/wire/okio/Buffer;->head:Lcom/sigmob/wire/okio/Segment;

    iget-object v0, v0, Lcom/sigmob/wire/okio/Segment;->prev:Lcom/sigmob/wire/okio/Segment;

    iget v1, v0, Lcom/sigmob/wire/okio/Segment;->limit:I

    add-int/2addr v1, p1

    if-gt v1, v2, :cond_2f

    iget-boolean v1, v0, Lcom/sigmob/wire/okio/Segment;->owner:Z

    if-nez v1, :cond_21

    :cond_2f
    invoke-static {}, Lcom/sigmob/wire/okio/SegmentPool;->take()Lcom/sigmob/wire/okio/Segment;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sigmob/wire/okio/Segment;->push(Lcom/sigmob/wire/okio/Segment;)Lcom/sigmob/wire/okio/Segment;

    move-result-object v0

    goto :goto_21
.end method

.method public write(Lcom/sigmob/wire/okio/ByteString;)Lcom/sigmob/wire/okio/Buffer;
    .registers 4

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "byteString == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    invoke-virtual {p1, p0}, Lcom/sigmob/wire/okio/ByteString;->write(Lcom/sigmob/wire/okio/Buffer;)V

    return-object p0
.end method

.method public write([B)Lcom/sigmob/wire/okio/Buffer;
    .registers 4

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/sigmob/wire/okio/Buffer;->write([BII)Lcom/sigmob/wire/okio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public write([BII)Lcom/sigmob/wire/okio/Buffer;
    .registers 10

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    array-length v0, p1

    int-to-long v0, v0

    int-to-long v2, p2

    int-to-long v4, p3

    invoke-static/range {v0 .. v5}, Lcom/sigmob/wire/okio/Util;->checkOffsetAndCount(JJJ)V

    add-int v0, p2, p3

    :goto_13
    if-ge p2, v0, :cond_32

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sigmob/wire/okio/Buffer;->writableSegment(I)Lcom/sigmob/wire/okio/Segment;

    move-result-object v1

    sub-int v2, v0, p2

    iget v3, v1, Lcom/sigmob/wire/okio/Segment;->limit:I

    rsub-int v3, v3, 0x2000

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object v3, v1, Lcom/sigmob/wire/okio/Segment;->data:[B

    iget v4, v1, Lcom/sigmob/wire/okio/Segment;->limit:I

    invoke-static {p1, p2, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v2

    iget v3, v1, Lcom/sigmob/wire/okio/Segment;->limit:I

    add-int/2addr v2, v3

    iput v2, v1, Lcom/sigmob/wire/okio/Segment;->limit:I

    goto :goto_13

    :cond_32
    iget-wide v0, p0, Lcom/sigmob/wire/okio/Buffer;->size:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sigmob/wire/okio/Buffer;->size:J

    return-object p0
.end method

.method public bridge synthetic write(Lcom/sigmob/wire/okio/ByteString;)Lcom/sigmob/wire/okio/BufferedSink;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/sigmob/wire/okio/Buffer;->write(Lcom/sigmob/wire/okio/ByteString;)Lcom/sigmob/wire/okio/Buffer;

    move-result-object v0

    return-object v0
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

    if-nez v2, :cond_16

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_16
    sub-long/2addr p2, v0

    goto :goto_0

    :cond_18
    return-object p0
.end method

.method public bridge synthetic write([B)Lcom/sigmob/wire/okio/BufferedSink;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/sigmob/wire/okio/Buffer;->write([B)Lcom/sigmob/wire/okio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic write([BII)Lcom/sigmob/wire/okio/BufferedSink;
    .registers 5

    invoke-virtual {p0, p1, p2, p3}, Lcom/sigmob/wire/okio/Buffer;->write([BII)Lcom/sigmob/wire/okio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public write(Lcom/sigmob/wire/okio/Buffer;J)V
    .registers 12

    const-wide/16 v2, 0x0

    if-nez p1, :cond_c

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    if-ne p1, p0, :cond_16

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "source == this"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    iget-wide v0, p1, Lcom/sigmob/wire/okio/Buffer;->size:J

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lcom/sigmob/wire/okio/Util;->checkOffsetAndCount(JJJ)V

    :goto_1c
    cmp-long v0, p2, v2

    if-lez v0, :cond_5e

    iget-object v0, p1, Lcom/sigmob/wire/okio/Buffer;->head:Lcom/sigmob/wire/okio/Segment;

    iget v0, v0, Lcom/sigmob/wire/okio/Segment;->limit:I

    iget-object v1, p1, Lcom/sigmob/wire/okio/Buffer;->head:Lcom/sigmob/wire/okio/Segment;

    iget v1, v1, Lcom/sigmob/wire/okio/Segment;->pos:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    cmp-long v0, p2, v0

    if-gez v0, :cond_6e

    iget-object v0, p0, Lcom/sigmob/wire/okio/Buffer;->head:Lcom/sigmob/wire/okio/Segment;

    if-eqz v0, :cond_5f

    iget-object v0, p0, Lcom/sigmob/wire/okio/Buffer;->head:Lcom/sigmob/wire/okio/Segment;

    iget-object v0, v0, Lcom/sigmob/wire/okio/Segment;->prev:Lcom/sigmob/wire/okio/Segment;

    move-object v1, v0

    :goto_37
    if-eqz v1, :cond_65

    iget-boolean v0, v1, Lcom/sigmob/wire/okio/Segment;->owner:Z

    if-eqz v0, :cond_65

    iget v0, v1, Lcom/sigmob/wire/okio/Segment;->limit:I

    int-to-long v4, v0

    add-long/2addr v4, p2

    iget-boolean v0, v1, Lcom/sigmob/wire/okio/Segment;->shared:Z

    if-eqz v0, :cond_62

    const/4 v0, 0x0

    :goto_46
    int-to-long v6, v0

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x2000

    cmp-long v0, v4, v6

    if-gtz v0, :cond_65

    iget-object v0, p1, Lcom/sigmob/wire/okio/Buffer;->head:Lcom/sigmob/wire/okio/Segment;

    long-to-int v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/sigmob/wire/okio/Segment;->writeTo(Lcom/sigmob/wire/okio/Segment;I)V

    iget-wide v0, p1, Lcom/sigmob/wire/okio/Buffer;->size:J

    sub-long/2addr v0, p2

    iput-wide v0, p1, Lcom/sigmob/wire/okio/Buffer;->size:J

    iget-wide v0, p0, Lcom/sigmob/wire/okio/Buffer;->size:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Lcom/sigmob/wire/okio/Buffer;->size:J

    :cond_5e
    return-void

    :cond_5f
    const/4 v0, 0x0

    move-object v1, v0

    goto :goto_37

    :cond_62
    iget v0, v1, Lcom/sigmob/wire/okio/Segment;->pos:I

    goto :goto_46

    :cond_65
    iget-object v0, p1, Lcom/sigmob/wire/okio/Buffer;->head:Lcom/sigmob/wire/okio/Segment;

    long-to-int v1, p2

    invoke-virtual {v0, v1}, Lcom/sigmob/wire/okio/Segment;->split(I)Lcom/sigmob/wire/okio/Segment;

    move-result-object v0

    iput-object v0, p1, Lcom/sigmob/wire/okio/Buffer;->head:Lcom/sigmob/wire/okio/Segment;

    :cond_6e
    iget-object v0, p1, Lcom/sigmob/wire/okio/Buffer;->head:Lcom/sigmob/wire/okio/Segment;

    iget v1, v0, Lcom/sigmob/wire/okio/Segment;->limit:I

    iget v4, v0, Lcom/sigmob/wire/okio/Segment;->pos:I

    sub-int/2addr v1, v4

    int-to-long v4, v1

    invoke-virtual {v0}, Lcom/sigmob/wire/okio/Segment;->pop()Lcom/sigmob/wire/okio/Segment;

    move-result-object v1

    iput-object v1, p1, Lcom/sigmob/wire/okio/Buffer;->head:Lcom/sigmob/wire/okio/Segment;

    iget-object v1, p0, Lcom/sigmob/wire/okio/Buffer;->head:Lcom/sigmob/wire/okio/Segment;

    if-nez v1, :cond_98

    iput-object v0, p0, Lcom/sigmob/wire/okio/Buffer;->head:Lcom/sigmob/wire/okio/Segment;

    iget-object v0, p0, Lcom/sigmob/wire/okio/Buffer;->head:Lcom/sigmob/wire/okio/Segment;

    iget-object v1, p0, Lcom/sigmob/wire/okio/Buffer;->head:Lcom/sigmob/wire/okio/Segment;

    iget-object v6, p0, Lcom/sigmob/wire/okio/Buffer;->head:Lcom/sigmob/wire/okio/Segment;

    iput-object v6, v1, Lcom/sigmob/wire/okio/Segment;->prev:Lcom/sigmob/wire/okio/Segment;

    iput-object v6, v0, Lcom/sigmob/wire/okio/Segment;->next:Lcom/sigmob/wire/okio/Segment;

    :goto_8c
    iget-wide v0, p1, Lcom/sigmob/wire/okio/Buffer;->size:J

    sub-long/2addr v0, v4

    iput-wide v0, p1, Lcom/sigmob/wire/okio/Buffer;->size:J

    iget-wide v0, p0, Lcom/sigmob/wire/okio/Buffer;->size:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/sigmob/wire/okio/Buffer;->size:J

    sub-long/2addr p2, v4

    goto :goto_1c

    :cond_98
    iget-object v1, p0, Lcom/sigmob/wire/okio/Buffer;->head:Lcom/sigmob/wire/okio/Segment;

    iget-object v1, v1, Lcom/sigmob/wire/okio/Segment;->prev:Lcom/sigmob/wire/okio/Segment;

    invoke-virtual {v1, v0}, Lcom/sigmob/wire/okio/Segment;->push(Lcom/sigmob/wire/okio/Segment;)Lcom/sigmob/wire/okio/Segment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/wire/okio/Segment;->compact()V

    goto :goto_8c
.end method

.method public writeAll(Lcom/sigmob/wire/okio/Source;)J
    .registers 8

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    const-wide/16 v0, 0x0

    :goto_c
    const-wide/16 v2, 0x2000

    invoke-interface {p1, p0, v2, v3}, Lcom/sigmob/wire/okio/Source;->read(Lcom/sigmob/wire/okio/Buffer;J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-eqz v4, :cond_1a

    add-long/2addr v0, v2

    goto :goto_c

    :cond_1a
    return-wide v0
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

    int-to-byte v0, p1

    aput-byte v0, v1, v2

    iget-wide v0, p0, Lcom/sigmob/wire/okio/Buffer;->size:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sigmob/wire/okio/Buffer;->size:J

    return-object p0
.end method

.method public bridge synthetic writeByte(I)Lcom/sigmob/wire/okio/BufferedSink;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/sigmob/wire/okio/Buffer;->writeByte(I)Lcom/sigmob/wire/okio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public writeDecimalLong(J)Lcom/sigmob/wire/okio/Buffer;
    .registers 14

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_d

    const/16 v0, 0x30

    invoke-virtual {p0, v0}, Lcom/sigmob/wire/okio/Buffer;->writeByte(I)Lcom/sigmob/wire/okio/Buffer;

    move-result-object p0

    :goto_c
    return-object p0

    :cond_d
    const/4 v0, 0x0

    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-gez v1, :cond_121

    neg-long v2, p1

    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-gez v0, :cond_22

    const-string v0, "-9223372036854775808"

    invoke-virtual {p0, v0}, Lcom/sigmob/wire/okio/Buffer;->writeUtf8(Ljava/lang/String;)Lcom/sigmob/wire/okio/Buffer;

    move-result-object p0

    goto :goto_c

    :cond_22
    const/4 v0, 0x1

    move v4, v0

    :goto_24
    const-wide/32 v0, 0x5f5e100

    cmp-long v0, v2, v0

    if-gez v0, :cond_8c

    const-wide/16 v0, 0x2710

    cmp-long v0, v2, v0

    if-gez v0, :cond_6e

    const-wide/16 v0, 0x64

    cmp-long v0, v2, v0

    if-gez v0, :cond_64

    const-wide/16 v0, 0xa

    cmp-long v0, v2, v0

    if-gez v0, :cond_62

    const/4 v0, 0x1

    :goto_3e
    if-eqz v4, :cond_42

    add-int/lit8 v0, v0, 0x1

    :cond_42
    invoke-virtual {p0, v0}, Lcom/sigmob/wire/okio/Buffer;->writableSegment(I)Lcom/sigmob/wire/okio/Segment;

    move-result-object v5

    iget-object v6, v5, Lcom/sigmob/wire/okio/Segment;->data:[B

    iget v1, v5, Lcom/sigmob/wire/okio/Segment;->limit:I

    add-int/2addr v1, v0

    :goto_4b
    const-wide/16 v8, 0x0

    cmp-long v7, v2, v8

    if-eqz v7, :cond_10c

    const-wide/16 v8, 0xa

    rem-long v8, v2, v8

    long-to-int v7, v8

    add-int/lit8 v1, v1, -0x1

    sget-object v8, Lcom/sigmob/wire/okio/Buffer;->DIGITS:[B

    aget-byte v7, v8, v7

    aput-byte v7, v6, v1

    const-wide/16 v8, 0xa

    div-long/2addr v2, v8

    goto :goto_4b

    :cond_62
    const/4 v0, 0x2

    goto :goto_3e

    :cond_64
    const-wide/16 v0, 0x3e8

    cmp-long v0, v2, v0

    if-gez v0, :cond_6c

    const/4 v0, 0x3

    goto :goto_3e

    :cond_6c
    const/4 v0, 0x4

    goto :goto_3e

    :cond_6e
    const-wide/32 v0, 0xf4240

    cmp-long v0, v2, v0

    if-gez v0, :cond_80

    const-wide/32 v0, 0x186a0

    cmp-long v0, v2, v0

    if-gez v0, :cond_7e

    const/4 v0, 0x5

    goto :goto_3e

    :cond_7e
    const/4 v0, 0x6

    goto :goto_3e

    :cond_80
    const-wide/32 v0, 0x989680

    cmp-long v0, v2, v0

    if-gez v0, :cond_89

    const/4 v0, 0x7

    goto :goto_3e

    :cond_89
    const/16 v0, 0x8

    goto :goto_3e

    :cond_8c
    const-wide v0, 0xe8d4a51000L

    cmp-long v0, v2, v0

    if-gez v0, :cond_ba

    const-wide v0, 0x2540be400L

    cmp-long v0, v2, v0

    if-gez v0, :cond_ab

    const-wide/32 v0, 0x3b9aca00

    cmp-long v0, v2, v0

    if-gez v0, :cond_a8

    const/16 v0, 0x9

    goto :goto_3e

    :cond_a8
    const/16 v0, 0xa

    goto :goto_3e

    :cond_ab
    const-wide v0, 0x174876e800L

    cmp-long v0, v2, v0

    if-gez v0, :cond_b7

    const/16 v0, 0xb

    goto :goto_3e

    :cond_b7
    const/16 v0, 0xc

    goto :goto_3e

    :cond_ba
    const-wide v0, 0x38d7ea4c68000L

    cmp-long v0, v2, v0

    if-gez v0, :cond_e1

    const-wide v0, 0x9184e72a000L

    cmp-long v0, v2, v0

    if-gez v0, :cond_d0

    const/16 v0, 0xd

    goto/16 :goto_3e

    :cond_d0
    const-wide v0, 0x5af3107a4000L

    cmp-long v0, v2, v0

    if-gez v0, :cond_dd

    const/16 v0, 0xe

    goto/16 :goto_3e

    :cond_dd
    const/16 v0, 0xf

    goto/16 :goto_3e

    :cond_e1
    const-wide v0, 0x16345785d8a0000L

    cmp-long v0, v2, v0

    if-gez v0, :cond_fb

    const-wide v0, 0x2386f26fc10000L

    cmp-long v0, v2, v0

    if-gez v0, :cond_f7

    const/16 v0, 0x10

    goto/16 :goto_3e

    :cond_f7
    const/16 v0, 0x11

    goto/16 :goto_3e

    :cond_fb
    const-wide v0, 0xde0b6b3a7640000L

    cmp-long v0, v2, v0

    if-gez v0, :cond_108

    const/16 v0, 0x12

    goto/16 :goto_3e

    :cond_108
    const/16 v0, 0x13

    goto/16 :goto_3e

    :cond_10c
    if-eqz v4, :cond_114

    add-int/lit8 v1, v1, -0x1

    const/16 v2, 0x2d

    aput-byte v2, v6, v1

    :cond_114
    iget v1, v5, Lcom/sigmob/wire/okio/Segment;->limit:I

    add-int/2addr v1, v0

    iput v1, v5, Lcom/sigmob/wire/okio/Segment;->limit:I

    iget-wide v2, p0, Lcom/sigmob/wire/okio/Buffer;->size:J

    int-to-long v0, v0

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sigmob/wire/okio/Buffer;->size:J

    goto/16 :goto_c

    :cond_121
    move v4, v0

    move-wide v2, p1

    goto/16 :goto_24
.end method

.method public bridge synthetic writeDecimalLong(J)Lcom/sigmob/wire/okio/BufferedSink;
    .registers 4

    invoke-virtual {p0, p1, p2}, Lcom/sigmob/wire/okio/Buffer;->writeDecimalLong(J)Lcom/sigmob/wire/okio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public writeHexadecimalUnsignedLong(J)Lcom/sigmob/wire/okio/Buffer;
    .registers 12

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_d

    const/16 v0, 0x30

    invoke-virtual {p0, v0}, Lcom/sigmob/wire/okio/Buffer;->writeByte(I)Lcom/sigmob/wire/okio/Buffer;

    move-result-object p0

    :goto_c
    return-object p0

    :cond_d
    invoke-static {p1, p2}, Ljava/lang/Long;->highestOneBit(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Lcom/sigmob/wire/okio/Buffer;->writableSegment(I)Lcom/sigmob/wire/okio/Segment;

    move-result-object v2

    iget-object v3, v2, Lcom/sigmob/wire/okio/Segment;->data:[B

    iget v0, v2, Lcom/sigmob/wire/okio/Segment;->limit:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    iget v4, v2, Lcom/sigmob/wire/okio/Segment;->limit:I

    :goto_26
    if-lt v0, v4, :cond_37

    sget-object v5, Lcom/sigmob/wire/okio/Buffer;->DIGITS:[B

    const-wide/16 v6, 0xf

    and-long/2addr v6, p1

    long-to-int v6, v6

    aget-byte v5, v5, v6

    aput-byte v5, v3, v0

    const/4 v5, 0x4

    ushr-long/2addr p1, v5

    add-int/lit8 v0, v0, -0x1

    goto :goto_26

    :cond_37
    iget v0, v2, Lcom/sigmob/wire/okio/Segment;->limit:I

    add-int/2addr v0, v1

    iput v0, v2, Lcom/sigmob/wire/okio/Segment;->limit:I

    iget-wide v2, p0, Lcom/sigmob/wire/okio/Buffer;->size:J

    int-to-long v0, v1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sigmob/wire/okio/Buffer;->size:J

    goto :goto_c
.end method

.method public bridge synthetic writeHexadecimalUnsignedLong(J)Lcom/sigmob/wire/okio/BufferedSink;
    .registers 4

    invoke-virtual {p0, p1, p2}, Lcom/sigmob/wire/okio/Buffer;->writeHexadecimalUnsignedLong(J)Lcom/sigmob/wire/okio/Buffer;

    move-result-object v0

    return-object v0
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

    and-int/lit16 v4, p1, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    iput v2, v0, Lcom/sigmob/wire/okio/Segment;->limit:I

    iget-wide v0, p0, Lcom/sigmob/wire/okio/Buffer;->size:J

    const-wide/16 v2, 0x4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sigmob/wire/okio/Buffer;->size:J

    return-object p0
.end method

.method public bridge synthetic writeInt(I)Lcom/sigmob/wire/okio/BufferedSink;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/sigmob/wire/okio/Buffer;->writeInt(I)Lcom/sigmob/wire/okio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public writeIntLe(I)Lcom/sigmob/wire/okio/Buffer;
    .registers 3

    invoke-static {p1}, Lcom/sigmob/wire/okio/Util;->reverseBytesInt(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sigmob/wire/okio/Buffer;->writeInt(I)Lcom/sigmob/wire/okio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic writeIntLe(I)Lcom/sigmob/wire/okio/BufferedSink;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/sigmob/wire/okio/Buffer;->writeIntLe(I)Lcom/sigmob/wire/okio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public writeLong(J)Lcom/sigmob/wire/okio/Buffer;
    .registers 12

    const/16 v8, 0x8

    const-wide/16 v6, 0xff

    invoke-virtual {p0, v8}, Lcom/sigmob/wire/okio/Buffer;->writableSegment(I)Lcom/sigmob/wire/okio/Segment;

    move-result-object v0

    iget-object v1, v0, Lcom/sigmob/wire/okio/Segment;->data:[B

    iget v2, v0, Lcom/sigmob/wire/okio/Segment;->limit:I

    add-int/lit8 v3, v2, 0x1

    const/16 v4, 0x38

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    add-int/lit8 v2, v3, 0x1

    const/16 v4, 0x30

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    add-int/lit8 v3, v2, 0x1

    const/16 v4, 0x28

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    add-int/lit8 v2, v3, 0x1

    const/16 v4, 0x20

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    add-int/lit8 v3, v2, 0x1

    const/16 v4, 0x18

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    add-int/lit8 v2, v3, 0x1

    const/16 v4, 0x10

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    add-int/lit8 v3, v2, 0x1

    ushr-long v4, p1, v8

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    add-int/lit8 v2, v3, 0x1

    and-long v4, p1, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    iput v2, v0, Lcom/sigmob/wire/okio/Segment;->limit:I

    iget-wide v0, p0, Lcom/sigmob/wire/okio/Buffer;->size:J

    const-wide/16 v2, 0x8

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sigmob/wire/okio/Buffer;->size:J

    return-object p0
.end method

.method public bridge synthetic writeLong(J)Lcom/sigmob/wire/okio/BufferedSink;
    .registers 4

    invoke-virtual {p0, p1, p2}, Lcom/sigmob/wire/okio/Buffer;->writeLong(J)Lcom/sigmob/wire/okio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public writeLongLe(J)Lcom/sigmob/wire/okio/Buffer;
    .registers 6

    invoke-static {p1, p2}, Lcom/sigmob/wire/okio/Util;->reverseBytesLong(J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/sigmob/wire/okio/Buffer;->writeLong(J)Lcom/sigmob/wire/okio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic writeLongLe(J)Lcom/sigmob/wire/okio/BufferedSink;
    .registers 4

    invoke-virtual {p0, p1, p2}, Lcom/sigmob/wire/okio/Buffer;->writeLongLe(J)Lcom/sigmob/wire/okio/Buffer;

    move-result-object v0

    return-object v0
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

    and-int/lit16 v4, p1, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    iput v2, v0, Lcom/sigmob/wire/okio/Segment;->limit:I

    iget-wide v0, p0, Lcom/sigmob/wire/okio/Buffer;->size:J

    const-wide/16 v2, 0x2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sigmob/wire/okio/Buffer;->size:J

    return-object p0
.end method

.method public bridge synthetic writeShort(I)Lcom/sigmob/wire/okio/BufferedSink;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/sigmob/wire/okio/Buffer;->writeShort(I)Lcom/sigmob/wire/okio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public writeShortLe(I)Lcom/sigmob/wire/okio/Buffer;
    .registers 3

    int-to-short v0, p1

    invoke-static {v0}, Lcom/sigmob/wire/okio/Util;->reverseBytesShort(S)S

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sigmob/wire/okio/Buffer;->writeShort(I)Lcom/sigmob/wire/okio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic writeShortLe(I)Lcom/sigmob/wire/okio/BufferedSink;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/sigmob/wire/okio/Buffer;->writeShortLe(I)Lcom/sigmob/wire/okio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public writeString(Ljava/lang/String;IILjava/nio/charset/Charset;)Lcom/sigmob/wire/okio/Buffer;
    .registers 8

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "string == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    if-gez p2, :cond_25

    new-instance v0, Ljava/lang/IllegalAccessError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "beginIndex < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_25
    if-ge p3, p2, :cond_4a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "endIndex < beginIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " < "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4a
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le p3, v0, :cond_77

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "endIndex > string.length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_77
    if-nez p4, :cond_81

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "charset == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_81
    sget-object v0, Lcom/sigmob/wire/okio/Util;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p4, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8e

    invoke-virtual {p0, p1}, Lcom/sigmob/wire/okio/Buffer;->writeUtf8(Ljava/lang/String;)Lcom/sigmob/wire/okio/Buffer;

    move-result-object v0

    :goto_8d
    return-object v0

    :cond_8e
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const/4 v1, 0x0

    array-length v2, v0

    invoke-virtual {p0, v0, v1, v2}, Lcom/sigmob/wire/okio/Buffer;->write([BII)Lcom/sigmob/wire/okio/Buffer;

    move-result-object v0

    goto :goto_8d
.end method

.method public writeString(Ljava/lang/String;Ljava/nio/charset/Charset;)Lcom/sigmob/wire/okio/Buffer;
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/sigmob/wire/okio/Buffer;->writeString(Ljava/lang/String;IILjava/nio/charset/Charset;)Lcom/sigmob/wire/okio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic writeString(Ljava/lang/String;IILjava/nio/charset/Charset;)Lcom/sigmob/wire/okio/BufferedSink;
    .registers 6

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sigmob/wire/okio/Buffer;->writeString(Ljava/lang/String;IILjava/nio/charset/Charset;)Lcom/sigmob/wire/okio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic writeString(Ljava/lang/String;Ljava/nio/charset/Charset;)Lcom/sigmob/wire/okio/BufferedSink;
    .registers 4

    invoke-virtual {p0, p1, p2}, Lcom/sigmob/wire/okio/Buffer;->writeString(Ljava/lang/String;Ljava/nio/charset/Charset;)Lcom/sigmob/wire/okio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Ljava/io/OutputStream;)Lcom/sigmob/wire/okio/Buffer;
    .registers 4

    iget-wide v0, p0, Lcom/sigmob/wire/okio/Buffer;->size:J

    invoke-virtual {p0, p1, v0, v1}, Lcom/sigmob/wire/okio/Buffer;->writeTo(Ljava/io/OutputStream;J)Lcom/sigmob/wire/okio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Ljava/io/OutputStream;J)Lcom/sigmob/wire/okio/Buffer;
    .registers 12

    const-wide/16 v2, 0x0

    if-nez p1, :cond_c

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "out == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iget-wide v0, p0, Lcom/sigmob/wire/okio/Buffer;->size:J

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lcom/sigmob/wire/okio/Util;->checkOffsetAndCount(JJJ)V

    iget-object v1, p0, Lcom/sigmob/wire/okio/Buffer;->head:Lcom/sigmob/wire/okio/Segment;

    :goto_14
    cmp-long v0, p2, v2

    if-lez v0, :cond_48

    iget v0, v1, Lcom/sigmob/wire/okio/Segment;->limit:I

    iget v4, v1, Lcom/sigmob/wire/okio/Segment;->pos:I

    sub-int/2addr v0, v4

    int-to-long v4, v0

    invoke-static {p2, p3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v0, v4

    iget-object v4, v1, Lcom/sigmob/wire/okio/Segment;->data:[B

    iget v5, v1, Lcom/sigmob/wire/okio/Segment;->pos:I

    invoke-virtual {p1, v4, v5, v0}, Ljava/io/OutputStream;->write([BII)V

    iget v4, v1, Lcom/sigmob/wire/okio/Segment;->pos:I

    add-int/2addr v4, v0

    iput v4, v1, Lcom/sigmob/wire/okio/Segment;->pos:I

    iget-wide v4, p0, Lcom/sigmob/wire/okio/Buffer;->size:J

    int-to-long v6, v0

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lcom/sigmob/wire/okio/Buffer;->size:J

    int-to-long v4, v0

    sub-long/2addr p2, v4

    iget v0, v1, Lcom/sigmob/wire/okio/Segment;->pos:I

    iget v4, v1, Lcom/sigmob/wire/okio/Segment;->limit:I

    if-ne v0, v4, :cond_49

    invoke-virtual {v1}, Lcom/sigmob/wire/okio/Segment;->pop()Lcom/sigmob/wire/okio/Segment;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/wire/okio/Buffer;->head:Lcom/sigmob/wire/okio/Segment;

    invoke-static {v1}, Lcom/sigmob/wire/okio/SegmentPool;->recycle(Lcom/sigmob/wire/okio/Segment;)V

    :goto_46
    move-object v1, v0

    goto :goto_14

    :cond_48
    return-object p0

    :cond_49
    move-object v0, v1

    goto :goto_46
.end method

.method public writeUtf8(Ljava/lang/String;)Lcom/sigmob/wire/okio/Buffer;
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/sigmob/wire/okio/Buffer;->writeUtf8(Ljava/lang/String;II)Lcom/sigmob/wire/okio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public writeUtf8(Ljava/lang/String;II)Lcom/sigmob/wire/okio/Buffer;
    .registers 13

    const v8, 0xdfff

    const/16 v7, 0x80

    if-nez p1, :cond_f

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "string == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    if-gez p2, :cond_2a

    new-instance v0, Ljava/lang/IllegalAccessError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "beginIndex < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2a
    if-ge p3, p2, :cond_4f

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "endIndex < beginIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " < "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4f
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le p3, v0, :cond_90

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "endIndex > string.length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7c
    const/4 v0, 0x0

    :goto_7d
    const v2, 0xdbff

    if-gt v1, v2, :cond_89

    const v2, 0xdc00

    if-lt v0, v2, :cond_89

    if-le v0, v8, :cond_114

    :cond_89
    const/16 v0, 0x3f

    invoke-virtual {p0, v0}, Lcom/sigmob/wire/okio/Buffer;->writeByte(I)Lcom/sigmob/wire/okio/Buffer;

    add-int/lit8 p2, p2, 0x1

    :cond_90
    :goto_90
    if-ge p2, p3, :cond_145

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ge v1, v7, :cond_d2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sigmob/wire/okio/Buffer;->writableSegment(I)Lcom/sigmob/wire/okio/Segment;

    move-result-object v2

    iget-object v3, v2, Lcom/sigmob/wire/okio/Segment;->data:[B

    iget v0, v2, Lcom/sigmob/wire/okio/Segment;->limit:I

    sub-int v4, v0, p2

    rsub-int v0, v4, 0x2000

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    add-int/lit8 v0, p2, 0x1

    add-int v6, v4, p2

    int-to-byte v1, v1

    aput-byte v1, v3, v6

    :goto_b0
    if-ge v0, v5, :cond_b8

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-lt v6, v7, :cond_ca

    :cond_b8
    add-int v1, v0, v4

    iget v3, v2, Lcom/sigmob/wire/okio/Segment;->limit:I

    sub-int/2addr v1, v3

    iget v3, v2, Lcom/sigmob/wire/okio/Segment;->limit:I

    add-int/2addr v3, v1

    iput v3, v2, Lcom/sigmob/wire/okio/Segment;->limit:I

    iget-wide v2, p0, Lcom/sigmob/wire/okio/Buffer;->size:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/sigmob/wire/okio/Buffer;->size:J

    :goto_c8
    move p2, v0

    goto :goto_90

    :cond_ca
    add-int/lit8 v1, v0, 0x1

    add-int/2addr v0, v4

    int-to-byte v6, v6

    aput-byte v6, v3, v0

    move v0, v1

    goto :goto_b0

    :cond_d2
    const/16 v0, 0x800

    if-ge v1, v0, :cond_e7

    shr-int/lit8 v0, v1, 0x6

    or-int/lit16 v0, v0, 0xc0

    invoke-virtual {p0, v0}, Lcom/sigmob/wire/okio/Buffer;->writeByte(I)Lcom/sigmob/wire/okio/Buffer;

    and-int/lit8 v0, v1, 0x3f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lcom/sigmob/wire/okio/Buffer;->writeByte(I)Lcom/sigmob/wire/okio/Buffer;

    add-int/lit8 v0, p2, 0x1

    goto :goto_c8

    :cond_e7
    const v0, 0xd800

    if-lt v1, v0, :cond_ee

    if-le v1, v8, :cond_108

    :cond_ee
    shr-int/lit8 v0, v1, 0xc

    or-int/lit16 v0, v0, 0xe0

    invoke-virtual {p0, v0}, Lcom/sigmob/wire/okio/Buffer;->writeByte(I)Lcom/sigmob/wire/okio/Buffer;

    shr-int/lit8 v0, v1, 0x6

    and-int/lit8 v0, v0, 0x3f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lcom/sigmob/wire/okio/Buffer;->writeByte(I)Lcom/sigmob/wire/okio/Buffer;

    and-int/lit8 v0, v1, 0x3f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lcom/sigmob/wire/okio/Buffer;->writeByte(I)Lcom/sigmob/wire/okio/Buffer;

    add-int/lit8 v0, p2, 0x1

    goto :goto_c8

    :cond_108
    add-int/lit8 v0, p2, 0x1

    if-ge v0, p3, :cond_7c

    add-int/lit8 v0, p2, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto/16 :goto_7d

    :cond_114
    const/high16 v2, 0x10000

    const v3, -0xd801

    and-int/2addr v1, v3

    shl-int/lit8 v1, v1, 0xa

    const v3, -0xdc01

    and-int/2addr v0, v3

    or-int/2addr v0, v1

    add-int/2addr v0, v2

    shr-int/lit8 v1, v0, 0x12

    or-int/lit16 v1, v1, 0xf0

    invoke-virtual {p0, v1}, Lcom/sigmob/wire/okio/Buffer;->writeByte(I)Lcom/sigmob/wire/okio/Buffer;

    shr-int/lit8 v1, v0, 0xc

    and-int/lit8 v1, v1, 0x3f

    or-int/lit16 v1, v1, 0x80

    invoke-virtual {p0, v1}, Lcom/sigmob/wire/okio/Buffer;->writeByte(I)Lcom/sigmob/wire/okio/Buffer;

    shr-int/lit8 v1, v0, 0x6

    and-int/lit8 v1, v1, 0x3f

    or-int/lit16 v1, v1, 0x80

    invoke-virtual {p0, v1}, Lcom/sigmob/wire/okio/Buffer;->writeByte(I)Lcom/sigmob/wire/okio/Buffer;

    and-int/lit8 v0, v0, 0x3f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lcom/sigmob/wire/okio/Buffer;->writeByte(I)Lcom/sigmob/wire/okio/Buffer;

    add-int/lit8 v0, p2, 0x2

    goto :goto_c8

    :cond_145
    return-object p0
.end method

.method public bridge synthetic writeUtf8(Ljava/lang/String;)Lcom/sigmob/wire/okio/BufferedSink;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/sigmob/wire/okio/Buffer;->writeUtf8(Ljava/lang/String;)Lcom/sigmob/wire/okio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic writeUtf8(Ljava/lang/String;II)Lcom/sigmob/wire/okio/BufferedSink;
    .registers 5

    invoke-virtual {p0, p1, p2, p3}, Lcom/sigmob/wire/okio/Buffer;->writeUtf8(Ljava/lang/String;II)Lcom/sigmob/wire/okio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public writeUtf8CodePoint(I)Lcom/sigmob/wire/okio/Buffer;
    .registers 5

    const/16 v0, 0x80

    if-ge p1, v0, :cond_8

    invoke-virtual {p0, p1}, Lcom/sigmob/wire/okio/Buffer;->writeByte(I)Lcom/sigmob/wire/okio/Buffer;

    :goto_7
    return-object p0

    :cond_8
    const/16 v0, 0x800

    if-ge p1, v0, :cond_1b

    shr-int/lit8 v0, p1, 0x6

    or-int/lit16 v0, v0, 0xc0

    invoke-virtual {p0, v0}, Lcom/sigmob/wire/okio/Buffer;->writeByte(I)Lcom/sigmob/wire/okio/Buffer;

    and-int/lit8 v0, p1, 0x3f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lcom/sigmob/wire/okio/Buffer;->writeByte(I)Lcom/sigmob/wire/okio/Buffer;

    goto :goto_7

    :cond_1b
    const/high16 v0, 0x10000

    if-ge p1, v0, :cond_5e

    const v0, 0xd800

    if-lt p1, v0, :cond_46

    const v0, 0xdfff

    if-gt p1, v0, :cond_46

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected code point: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_46
    shr-int/lit8 v0, p1, 0xc

    or-int/lit16 v0, v0, 0xe0

    invoke-virtual {p0, v0}, Lcom/sigmob/wire/okio/Buffer;->writeByte(I)Lcom/sigmob/wire/okio/Buffer;

    shr-int/lit8 v0, p1, 0x6

    and-int/lit8 v0, v0, 0x3f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lcom/sigmob/wire/okio/Buffer;->writeByte(I)Lcom/sigmob/wire/okio/Buffer;

    and-int/lit8 v0, p1, 0x3f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lcom/sigmob/wire/okio/Buffer;->writeByte(I)Lcom/sigmob/wire/okio/Buffer;

    goto :goto_7

    :cond_5e
    const v0, 0x10ffff

    if-gt p1, v0, :cond_84

    shr-int/lit8 v0, p1, 0x12

    or-int/lit16 v0, v0, 0xf0

    invoke-virtual {p0, v0}, Lcom/sigmob/wire/okio/Buffer;->writeByte(I)Lcom/sigmob/wire/okio/Buffer;

    shr-int/lit8 v0, p1, 0xc

    and-int/lit8 v0, v0, 0x3f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lcom/sigmob/wire/okio/Buffer;->writeByte(I)Lcom/sigmob/wire/okio/Buffer;

    shr-int/lit8 v0, p1, 0x6

    and-int/lit8 v0, v0, 0x3f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lcom/sigmob/wire/okio/Buffer;->writeByte(I)Lcom/sigmob/wire/okio/Buffer;

    and-int/lit8 v0, p1, 0x3f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lcom/sigmob/wire/okio/Buffer;->writeByte(I)Lcom/sigmob/wire/okio/Buffer;

    goto :goto_7

    :cond_84
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected code point: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic writeUtf8CodePoint(I)Lcom/sigmob/wire/okio/BufferedSink;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/sigmob/wire/okio/Buffer;->writeUtf8CodePoint(I)Lcom/sigmob/wire/okio/Buffer;

    move-result-object v0

    return-object v0
.end method
