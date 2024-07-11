.class public final Lcom/sigmob/wire/okio/GzipSource;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/wire/okio/Source;


# static fields
.field private static final FCOMMENT:B = 0x4t

.field private static final FEXTRA:B = 0x2t

.field private static final FHCRC:B = 0x1t

.field private static final FNAME:B = 0x3t

.field private static final SECTION_BODY:B = 0x1t

.field private static final SECTION_DONE:B = 0x3t

.field private static final SECTION_HEADER:B = 0x0t

.field private static final SECTION_TRAILER:B = 0x2t


# instance fields
.field private final crc:Ljava/util/zip/CRC32;

.field private final inflater:Ljava/util/zip/Inflater;

.field private final inflaterSource:Lcom/sigmob/wire/okio/InflaterSource;

.field private section:I

.field private final source:Lcom/sigmob/wire/okio/BufferedSource;


# direct methods
.method public constructor <init>(Lcom/sigmob/wire/okio/Source;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sigmob/wire/okio/GzipSource;->section:I

    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v0, p0, Lcom/sigmob/wire/okio/GzipSource;->crc:Ljava/util/zip/CRC32;

    if-eqz p1, :cond_25

    new-instance v0, Ljava/util/zip/Inflater;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/zip/Inflater;-><init>(Z)V

    iput-object v0, p0, Lcom/sigmob/wire/okio/GzipSource;->inflater:Ljava/util/zip/Inflater;

    invoke-static {p1}, Lcom/sigmob/wire/okio/Okio;->buffer(Lcom/sigmob/wire/okio/Source;)Lcom/sigmob/wire/okio/BufferedSource;

    move-result-object p1

    iput-object p1, p0, Lcom/sigmob/wire/okio/GzipSource;->source:Lcom/sigmob/wire/okio/BufferedSource;

    new-instance v1, Lcom/sigmob/wire/okio/InflaterSource;

    invoke-direct {v1, p1, v0}, Lcom/sigmob/wire/okio/InflaterSource;-><init>(Lcom/sigmob/wire/okio/BufferedSource;Ljava/util/zip/Inflater;)V

    iput-object v1, p0, Lcom/sigmob/wire/okio/GzipSource;->inflaterSource:Lcom/sigmob/wire/okio/InflaterSource;

    return-void

    :cond_25
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "source == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private checkEqual(Ljava/lang/String;II)V
    .registers 7

    if-ne p3, p2, :cond_3

    return-void

    :cond_3
    new-instance v0, Ljava/io/IOException;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v1, p1

    const/4 p1, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, p1

    const-string p1, "%s: actual 0x%08x != expected 0x%08x"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private consumeHeader()V
    .registers 18

    move-object/from16 v6, p0

    iget-object v0, v6, Lcom/sigmob/wire/okio/GzipSource;->source:Lcom/sigmob/wire/okio/BufferedSource;

    const-wide/16 v1, 0xa

    invoke-interface {v0, v1, v2}, Lcom/sigmob/wire/okio/BufferedSource;->require(J)V

    iget-object v0, v6, Lcom/sigmob/wire/okio/GzipSource;->source:Lcom/sigmob/wire/okio/BufferedSource;

    invoke-interface {v0}, Lcom/sigmob/wire/okio/BufferedSource;->buffer()Lcom/sigmob/wire/okio/Buffer;

    move-result-object v0

    const-wide/16 v1, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/sigmob/wire/okio/Buffer;->getByte(J)B

    move-result v7

    shr-int/lit8 v0, v7, 0x1

    const/4 v8, 0x1

    and-int/2addr v0, v8

    const/4 v9, 0x0

    if-ne v0, v8, :cond_1e

    move v10, v8

    goto :goto_1f

    :cond_1e
    move v10, v9

    :goto_1f
    if-eqz v10, :cond_30

    iget-object v0, v6, Lcom/sigmob/wire/okio/GzipSource;->source:Lcom/sigmob/wire/okio/BufferedSource;

    invoke-interface {v0}, Lcom/sigmob/wire/okio/BufferedSource;->buffer()Lcom/sigmob/wire/okio/Buffer;

    move-result-object v1

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0xa

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/sigmob/wire/okio/GzipSource;->updateCrc(Lcom/sigmob/wire/okio/Buffer;JJ)V

    :cond_30
    iget-object v0, v6, Lcom/sigmob/wire/okio/GzipSource;->source:Lcom/sigmob/wire/okio/BufferedSource;

    invoke-interface {v0}, Lcom/sigmob/wire/okio/BufferedSource;->readShort()S

    move-result v0

    const/16 v1, 0x1f8b

    const-string v2, "ID1ID2"

    invoke-direct {v6, v2, v1, v0}, Lcom/sigmob/wire/okio/GzipSource;->checkEqual(Ljava/lang/String;II)V

    iget-object v0, v6, Lcom/sigmob/wire/okio/GzipSource;->source:Lcom/sigmob/wire/okio/BufferedSource;

    const-wide/16 v1, 0x8

    invoke-interface {v0, v1, v2}, Lcom/sigmob/wire/okio/BufferedSource;->skip(J)V

    shr-int/lit8 v0, v7, 0x2

    and-int/2addr v0, v8

    if-ne v0, v8, :cond_86

    iget-object v0, v6, Lcom/sigmob/wire/okio/GzipSource;->source:Lcom/sigmob/wire/okio/BufferedSource;

    const-wide/16 v1, 0x2

    invoke-interface {v0, v1, v2}, Lcom/sigmob/wire/okio/BufferedSource;->require(J)V

    if-eqz v10, :cond_61

    iget-object v0, v6, Lcom/sigmob/wire/okio/GzipSource;->source:Lcom/sigmob/wire/okio/BufferedSource;

    invoke-interface {v0}, Lcom/sigmob/wire/okio/BufferedSource;->buffer()Lcom/sigmob/wire/okio/Buffer;

    move-result-object v1

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x2

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/sigmob/wire/okio/GzipSource;->updateCrc(Lcom/sigmob/wire/okio/Buffer;JJ)V

    :cond_61
    iget-object v0, v6, Lcom/sigmob/wire/okio/GzipSource;->source:Lcom/sigmob/wire/okio/BufferedSource;

    invoke-interface {v0}, Lcom/sigmob/wire/okio/BufferedSource;->buffer()Lcom/sigmob/wire/okio/Buffer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/wire/okio/Buffer;->readShortLe()S

    move-result v0

    iget-object v1, v6, Lcom/sigmob/wire/okio/GzipSource;->source:Lcom/sigmob/wire/okio/BufferedSource;

    int-to-long v11, v0

    invoke-interface {v1, v11, v12}, Lcom/sigmob/wire/okio/BufferedSource;->require(J)V

    if-eqz v10, :cond_81

    iget-object v0, v6, Lcom/sigmob/wire/okio/GzipSource;->source:Lcom/sigmob/wire/okio/BufferedSource;

    invoke-interface {v0}, Lcom/sigmob/wire/okio/BufferedSource;->buffer()Lcom/sigmob/wire/okio/Buffer;

    move-result-object v1

    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    move-wide v4, v11

    invoke-direct/range {v0 .. v5}, Lcom/sigmob/wire/okio/GzipSource;->updateCrc(Lcom/sigmob/wire/okio/Buffer;JJ)V

    :cond_81
    iget-object v0, v6, Lcom/sigmob/wire/okio/GzipSource;->source:Lcom/sigmob/wire/okio/BufferedSource;

    invoke-interface {v0, v11, v12}, Lcom/sigmob/wire/okio/BufferedSource;->skip(J)V

    :cond_86
    shr-int/lit8 v0, v7, 0x3

    and-int/2addr v0, v8

    const-wide/16 v11, -0x1

    const-wide/16 v13, 0x1

    if-ne v0, v8, :cond_b8

    iget-object v0, v6, Lcom/sigmob/wire/okio/GzipSource;->source:Lcom/sigmob/wire/okio/BufferedSource;

    invoke-interface {v0, v9}, Lcom/sigmob/wire/okio/BufferedSource;->indexOf(B)J

    move-result-wide v15

    cmp-long v0, v15, v11

    if-eqz v0, :cond_b2

    if-eqz v10, :cond_aa

    iget-object v0, v6, Lcom/sigmob/wire/okio/GzipSource;->source:Lcom/sigmob/wire/okio/BufferedSource;

    invoke-interface {v0}, Lcom/sigmob/wire/okio/BufferedSource;->buffer()Lcom/sigmob/wire/okio/Buffer;

    move-result-object v1

    const-wide/16 v2, 0x0

    add-long v4, v15, v13

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/sigmob/wire/okio/GzipSource;->updateCrc(Lcom/sigmob/wire/okio/Buffer;JJ)V

    :cond_aa
    iget-object v0, v6, Lcom/sigmob/wire/okio/GzipSource;->source:Lcom/sigmob/wire/okio/BufferedSource;

    add-long v1, v15, v13

    invoke-interface {v0, v1, v2}, Lcom/sigmob/wire/okio/BufferedSource;->skip(J)V

    goto :goto_b8

    :cond_b2
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_b8
    :goto_b8
    shr-int/lit8 v0, v7, 0x4

    and-int/2addr v0, v8

    if-ne v0, v8, :cond_e5

    iget-object v0, v6, Lcom/sigmob/wire/okio/GzipSource;->source:Lcom/sigmob/wire/okio/BufferedSource;

    invoke-interface {v0, v9}, Lcom/sigmob/wire/okio/BufferedSource;->indexOf(B)J

    move-result-wide v7

    cmp-long v0, v7, v11

    if-eqz v0, :cond_df

    if-eqz v10, :cond_d8

    iget-object v0, v6, Lcom/sigmob/wire/okio/GzipSource;->source:Lcom/sigmob/wire/okio/BufferedSource;

    invoke-interface {v0}, Lcom/sigmob/wire/okio/BufferedSource;->buffer()Lcom/sigmob/wire/okio/Buffer;

    move-result-object v1

    const-wide/16 v2, 0x0

    add-long v4, v7, v13

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/sigmob/wire/okio/GzipSource;->updateCrc(Lcom/sigmob/wire/okio/Buffer;JJ)V

    :cond_d8
    iget-object v0, v6, Lcom/sigmob/wire/okio/GzipSource;->source:Lcom/sigmob/wire/okio/BufferedSource;

    add-long/2addr v7, v13

    invoke-interface {v0, v7, v8}, Lcom/sigmob/wire/okio/BufferedSource;->skip(J)V

    goto :goto_e5

    :cond_df
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_e5
    :goto_e5
    if-eqz v10, :cond_ff

    iget-object v0, v6, Lcom/sigmob/wire/okio/GzipSource;->source:Lcom/sigmob/wire/okio/BufferedSource;

    invoke-interface {v0}, Lcom/sigmob/wire/okio/BufferedSource;->readShortLe()S

    move-result v0

    iget-object v1, v6, Lcom/sigmob/wire/okio/GzipSource;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v1

    long-to-int v1, v1

    int-to-short v1, v1

    const-string v2, "FHCRC"

    invoke-direct {v6, v2, v0, v1}, Lcom/sigmob/wire/okio/GzipSource;->checkEqual(Ljava/lang/String;II)V

    iget-object v0, v6, Lcom/sigmob/wire/okio/GzipSource;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->reset()V

    :cond_ff
    return-void
.end method

.method private consumeTrailer()V
    .registers 4

    iget-object v0, p0, Lcom/sigmob/wire/okio/GzipSource;->source:Lcom/sigmob/wire/okio/BufferedSource;

    invoke-interface {v0}, Lcom/sigmob/wire/okio/BufferedSource;->readIntLe()I

    move-result v0

    iget-object v1, p0, Lcom/sigmob/wire/okio/GzipSource;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v1

    long-to-int v1, v1

    const-string v2, "CRC"

    invoke-direct {p0, v2, v0, v1}, Lcom/sigmob/wire/okio/GzipSource;->checkEqual(Ljava/lang/String;II)V

    iget-object v0, p0, Lcom/sigmob/wire/okio/GzipSource;->source:Lcom/sigmob/wire/okio/BufferedSource;

    invoke-interface {v0}, Lcom/sigmob/wire/okio/BufferedSource;->readIntLe()I

    move-result v0

    iget-object v1, p0, Lcom/sigmob/wire/okio/GzipSource;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v1}, Ljava/util/zip/Inflater;->getTotalOut()I

    move-result v1

    const-string v2, "ISIZE"

    invoke-direct {p0, v2, v0, v1}, Lcom/sigmob/wire/okio/GzipSource;->checkEqual(Ljava/lang/String;II)V

    return-void
.end method

.method private updateCrc(Lcom/sigmob/wire/okio/Buffer;JJ)V
    .registers 10

    iget-object p1, p1, Lcom/sigmob/wire/okio/Buffer;->head:Lcom/sigmob/wire/okio/Segment;

    :goto_2
    iget v0, p1, Lcom/sigmob/wire/okio/Segment;->limit:I

    iget v1, p1, Lcom/sigmob/wire/okio/Segment;->pos:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_16

    iget v0, p1, Lcom/sigmob/wire/okio/Segment;->limit:I

    iget v1, p1, Lcom/sigmob/wire/okio/Segment;->pos:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    sub-long/2addr p2, v0

    iget-object p1, p1, Lcom/sigmob/wire/okio/Segment;->next:Lcom/sigmob/wire/okio/Segment;

    goto :goto_2

    :cond_16
    const-wide/16 v0, 0x0

    :goto_18
    cmp-long v2, p4, v0

    if-lez v2, :cond_37

    iget v2, p1, Lcom/sigmob/wire/okio/Segment;->pos:I

    int-to-long v2, v2

    add-long/2addr v2, p2

    long-to-int p2, v2

    iget p3, p1, Lcom/sigmob/wire/okio/Segment;->limit:I

    sub-int/2addr p3, p2

    int-to-long v2, p3

    invoke-static {v2, v3, p4, p5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int p3, v2

    iget-object v2, p0, Lcom/sigmob/wire/okio/GzipSource;->crc:Ljava/util/zip/CRC32;

    iget-object v3, p1, Lcom/sigmob/wire/okio/Segment;->data:[B

    invoke-virtual {v2, v3, p2, p3}, Ljava/util/zip/CRC32;->update([BII)V

    int-to-long p2, p3

    sub-long/2addr p4, p2

    iget-object p1, p1, Lcom/sigmob/wire/okio/Segment;->next:Lcom/sigmob/wire/okio/Segment;

    move-wide p2, v0

    goto :goto_18

    :cond_37
    return-void
.end method


# virtual methods
.method public close()V
    .registers 2

    iget-object v0, p0, Lcom/sigmob/wire/okio/GzipSource;->inflaterSource:Lcom/sigmob/wire/okio/InflaterSource;

    invoke-virtual {v0}, Lcom/sigmob/wire/okio/InflaterSource;->close()V

    return-void
.end method

.method public read(Lcom/sigmob/wire/okio/Buffer;J)J
    .registers 15

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_4b

    if-nez v2, :cond_9

    return-wide v0

    :cond_9
    iget v0, p0, Lcom/sigmob/wire/okio/GzipSource;->section:I

    const/4 v1, 0x1

    if-nez v0, :cond_13

    invoke-direct {p0}, Lcom/sigmob/wire/okio/GzipSource;->consumeHeader()V

    iput v1, p0, Lcom/sigmob/wire/okio/GzipSource;->section:I

    :cond_13
    iget v0, p0, Lcom/sigmob/wire/okio/GzipSource;->section:I

    const-wide/16 v2, -0x1

    const/4 v4, 0x2

    if-ne v0, v1, :cond_2f

    iget-wide v7, p1, Lcom/sigmob/wire/okio/Buffer;->size:J

    iget-object v0, p0, Lcom/sigmob/wire/okio/GzipSource;->inflaterSource:Lcom/sigmob/wire/okio/InflaterSource;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sigmob/wire/okio/InflaterSource;->read(Lcom/sigmob/wire/okio/Buffer;J)J

    move-result-wide p2

    cmp-long v0, p2, v2

    if-eqz v0, :cond_2d

    move-object v5, p0

    move-object v6, p1

    move-wide v9, p2

    invoke-direct/range {v5 .. v10}, Lcom/sigmob/wire/okio/GzipSource;->updateCrc(Lcom/sigmob/wire/okio/Buffer;JJ)V

    return-wide p2

    :cond_2d
    iput v4, p0, Lcom/sigmob/wire/okio/GzipSource;->section:I

    :cond_2f
    iget p1, p0, Lcom/sigmob/wire/okio/GzipSource;->section:I

    if-ne p1, v4, :cond_4a

    invoke-direct {p0}, Lcom/sigmob/wire/okio/GzipSource;->consumeTrailer()V

    const/4 p1, 0x3

    iput p1, p0, Lcom/sigmob/wire/okio/GzipSource;->section:I

    iget-object p1, p0, Lcom/sigmob/wire/okio/GzipSource;->source:Lcom/sigmob/wire/okio/BufferedSource;

    invoke-interface {p1}, Lcom/sigmob/wire/okio/BufferedSource;->exhausted()Z

    move-result p1

    if-eqz p1, :cond_42

    goto :goto_4a

    :cond_42
    new-instance p1, Ljava/io/IOException;

    const-string p2, "gzip finished without exhausting source"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4a
    :goto_4a
    return-wide v2

    :cond_4b
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

.method public timeout()Lcom/sigmob/wire/okio/Timeout;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/wire/okio/GzipSource;->source:Lcom/sigmob/wire/okio/BufferedSource;

    invoke-interface {v0}, Lcom/sigmob/wire/okio/BufferedSource;->timeout()Lcom/sigmob/wire/okio/Timeout;

    move-result-object v0

    return-object v0
.end method
