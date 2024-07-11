.class public final Lcom/sigmob/wire/okio/HashingSource;
.super Lcom/sigmob/wire/okio/ForwardingSource;


# instance fields
.field private final messageDigest:Ljava/security/MessageDigest;


# direct methods
.method private constructor <init>(Lcom/sigmob/wire/okio/Source;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/sigmob/wire/okio/ForwardingSource;-><init>(Lcom/sigmob/wire/okio/Source;)V

    :try_start_3
    invoke-static {p2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    iput-object p1, p0, Lcom/sigmob/wire/okio/HashingSource;->messageDigest:Ljava/security/MessageDigest;
    :try_end_9
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_9} :catch_a

    return-void

    :catch_a
    move-exception p1

    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
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
    .registers 11

    invoke-super {p0, p1, p2, p3}, Lcom/sigmob/wire/okio/ForwardingSource;->read(Lcom/sigmob/wire/okio/Buffer;J)J

    move-result-wide p2

    const-wide/16 v0, -0x1

    cmp-long v0, p2, v0

    if-eqz v0, :cond_41

    iget-wide v0, p1, Lcom/sigmob/wire/okio/Buffer;->size:J

    sub-long/2addr v0, p2

    iget-wide v2, p1, Lcom/sigmob/wire/okio/Buffer;->size:J

    iget-object v4, p1, Lcom/sigmob/wire/okio/Buffer;->head:Lcom/sigmob/wire/okio/Segment;

    :goto_11
    iget-wide v5, p1, Lcom/sigmob/wire/okio/Buffer;->size:J

    sub-long/2addr v5, p2

    cmp-long v5, v2, v5

    if-lez v5, :cond_22

    iget-object v4, v4, Lcom/sigmob/wire/okio/Segment;->prev:Lcom/sigmob/wire/okio/Segment;

    iget v5, v4, Lcom/sigmob/wire/okio/Segment;->limit:I

    iget v6, v4, Lcom/sigmob/wire/okio/Segment;->pos:I

    sub-int/2addr v5, v6

    int-to-long v5, v5

    sub-long/2addr v2, v5

    goto :goto_11

    :cond_22
    :goto_22
    iget-wide v5, p1, Lcom/sigmob/wire/okio/Buffer;->size:J

    cmp-long v5, v2, v5

    if-gez v5, :cond_41

    iget v5, v4, Lcom/sigmob/wire/okio/Segment;->pos:I

    int-to-long v5, v5

    add-long/2addr v5, v0

    sub-long/2addr v5, v2

    long-to-int v0, v5

    iget-object v1, p0, Lcom/sigmob/wire/okio/HashingSource;->messageDigest:Ljava/security/MessageDigest;

    iget-object v5, v4, Lcom/sigmob/wire/okio/Segment;->data:[B

    iget v6, v4, Lcom/sigmob/wire/okio/Segment;->limit:I

    sub-int/2addr v6, v0

    invoke-virtual {v1, v5, v0, v6}, Ljava/security/MessageDigest;->update([BII)V

    iget v0, v4, Lcom/sigmob/wire/okio/Segment;->limit:I

    iget v1, v4, Lcom/sigmob/wire/okio/Segment;->pos:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    add-long/2addr v2, v0

    move-wide v0, v2

    goto :goto_22

    :cond_41
    return-wide p2
.end method
