.class Lcom/ssjj/fnsdk/core/p;
.super Ljava/io/ByteArrayOutputStream;


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/core/LruDiskCache$b;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/core/LruDiskCache$b;I)V
    .registers 3

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/p;->a:Lcom/ssjj/fnsdk/core/LruDiskCache$b;

    invoke-direct {p0, p2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 6

    iget v0, p0, Lcom/ssjj/fnsdk/core/p;->count:I

    if-lez v0, :cond_15

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/p;->buf:[B

    iget v1, p0, Lcom/ssjj/fnsdk/core/p;->count:I

    add-int/lit8 v1, v1, -0x1

    aget-byte v0, v0, v1

    const/16 v1, 0xd

    if-ne v0, v1, :cond_15

    iget v0, p0, Lcom/ssjj/fnsdk/core/p;->count:I

    add-int/lit8 v0, v0, -0x1

    goto :goto_17

    :cond_15
    iget v0, p0, Lcom/ssjj/fnsdk/core/p;->count:I

    :goto_17
    :try_start_17
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/p;->buf:[B

    iget-object v3, p0, Lcom/ssjj/fnsdk/core/p;->a:Lcom/ssjj/fnsdk/core/LruDiskCache$b;

    invoke-static {v3}, Lcom/ssjj/fnsdk/core/LruDiskCache$b;->a(Lcom/ssjj/fnsdk/core/LruDiskCache$b;)Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v1, v2, v4, v0, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_29
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_17 .. :try_end_29} :catch_2a

    return-object v1

    :catch_2a
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method
