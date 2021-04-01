.class public final Lcom/sigmob/wire/okio/HashingSource;
.super Lcom/sigmob/wire/okio/ForwardingSource;


# instance fields
.field private final messageDigest:Ljava/security/MessageDigest;


# direct methods
.method private constructor <init>(Lcom/sigmob/wire/okio/Source;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/sigmob/wire/okio/ForwardingSource;-><init>(Lcom/sigmob/wire/okio/Source;)V

    :try_start_3
    invoke-static {p2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/wire/okio/HashingSource;->messageDigest:Ljava/security/MessageDigest;
    :try_end_9
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_9} :catch_a

    return-void

    :catch_a
    move-exception v0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public static md5(Lcom/sigmob/wire/okio/Source;)Lcom/sigmob/wire/okio/HashingSource;
    .registers 3

    new-instance v0, Lcom/sigmob/wire/okio/HashingSource;

    const-string v1, "MD5"

    invoke-direct {v0, p0, v1}, Lcom/sigmob/wire/okio/HashingSource;-><init>(Lcom/sigmob/wire/okio/Source;Ljava/lang/String;)V

    return-object v0
.end method

.method public static sha1(Lcom/sigmob/wire/okio/Source;)Lcom/sigmob/wire/okio/HashingSource;
    .registers 3

    new-instance v0, Lcom/sigmob/wire/okio/HashingSource;

    const-string v1, "SHA-1"

    invoke-direct {v0, p0, v1}, Lcom/sigmob/wire/okio/HashingSource;-><init>(Lcom/sigmob/wire/okio/Source;Ljava/lang/String;)V

    return-object v0
.end method

.method public static sha256(Lcom/sigmob/wire/okio/Source;)Lcom/sigmob/wire/okio/HashingSource;
    .registers 3

    new-instance v0, Lcom/sigmob/wire/okio/HashingSource;

    const-string v1, "SHA-256"

    invoke-direct {v0, p0, v1}, Lcom/sigmob/wire/okio/HashingSource;-><init>(Lcom/sigmob/wire/okio/Source;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public hash()Lcom/sigmob/wire/okio/ByteString;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/wire/okio/HashingSource;->messageDigest:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/wire/okio/ByteString;->of([B)Lcom/sigmob/wire/okio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public read(Lcom/sigmob/wire/okio/Buffer;J)J
    .registers 14

    invoke-super {p0, p1, p2, p3}, Lcom/sigmob/wire/okio/ForwardingSource;->read(Lcom/sigmob/wire/okio/Buffer;J)J

    move-result-wide v6

    const-wide/16 v0, -0x1

    cmp-long v0, v6, v0

    if-eqz v0, :cond_42

    iget-wide v0, p1, Lcom/sigmob/wire/okio/Buffer;->size:J

    sub-long v4, v0, v6

    iget-wide v2, p1, Lcom/sigmob/wire/okio/Buffer;->size:J

    iget-object v0, p1, Lcom/sigmob/wire/okio/Buffer;->head:Lcom/sigmob/wire/okio/Segment;

    :goto_12
    iget-wide v8, p1, Lcom/sigmob/wire/okio/Buffer;->size:J

    sub-long/2addr v8, v6

    cmp-long v1, v2, v8

    if-lez v1, :cond_23

    iget-object v0, v0, Lcom/sigmob/wire/okio/Segment;->prev:Lcom/sigmob/wire/okio/Segment;

    iget v1, v0, Lcom/sigmob/wire/okio/Segment;->limit:I

    iget v8, v0, Lcom/sigmob/wire/okio/Segment;->pos:I

    sub-int/2addr v1, v8

    int-to-long v8, v1

    sub-long/2addr v2, v8

    goto :goto_12

    :cond_23
    :goto_23
    iget-wide v8, p1, Lcom/sigmob/wire/okio/Buffer;->size:J

    cmp-long v1, v2, v8

    if-gez v1, :cond_42

    iget v1, v0, Lcom/sigmob/wire/okio/Segment;->pos:I

    int-to-long v8, v1

    add-long/2addr v4, v8

    sub-long/2addr v4, v2

    long-to-int v1, v4

    iget-object v4, p0, Lcom/sigmob/wire/okio/HashingSource;->messageDigest:Ljava/security/MessageDigest;

    iget-object v5, v0, Lcom/sigmob/wire/okio/Segment;->data:[B

    iget v8, v0, Lcom/sigmob/wire/okio/Segment;->limit:I

    sub-int/2addr v8, v1

    invoke-virtual {v4, v5, v1, v8}, Ljava/security/MessageDigest;->update([BII)V

    iget v1, v0, Lcom/sigmob/wire/okio/Segment;->limit:I

    iget v4, v0, Lcom/sigmob/wire/okio/Segment;->pos:I

    sub-int/2addr v1, v4

    int-to-long v4, v1

    add-long/2addr v2, v4

    move-wide v4, v2

    goto :goto_23

    :cond_42
    return-wide v6
.end method
