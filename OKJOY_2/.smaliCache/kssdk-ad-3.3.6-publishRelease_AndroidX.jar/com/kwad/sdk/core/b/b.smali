.class public final Lcom/kwad/sdk/core/b/b;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/kwad/sdk/core/b/b;->a:Ljava/nio/charset/Charset;

    return-void
.end method

.method public static a(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 7

    new-instance v0, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v0, p1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/16 p1, 0x400

    new-array v1, p1, [B

    :goto_9
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, p1}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_15

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/zip/GZIPOutputStream;->write([BII)V

    goto :goto_9

    :cond_15
    invoke-virtual {v0}, Ljava/util/zip/GZIPOutputStream;->finish()V

    invoke-virtual {v0}, Ljava/util/zip/GZIPOutputStream;->flush()V

    invoke-virtual {v0}, Ljava/util/zip/GZIPOutputStream;->close()V

    return-void
.end method

.method public static a(Ljava/lang/String;[B)[B
    .registers 3

    sget-object v0, Lcom/kwad/sdk/core/b/b;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    const/4 v0, 0x2

    invoke-static {p0, p1, v0}, Lcom/kwad/sdk/core/b/b;->a([B[BI)[B

    move-result-object p0

    return-object p0
.end method

.method public static a([B)[B
    .registers 3

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-static {v0, p0}, Lcom/kwad/sdk/core/b/b;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V

    return-object v1
.end method

.method public static a([B[B)[B
    .registers 3

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/kwad/sdk/core/b/b;->a([B[BI)[B

    move-result-object p0

    return-object p0
.end method

.method private static a([B[BI)[B
    .registers 5

    :try_start_0
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {v0, p0, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-string p0, "AES/ECB/PKCS5Padding"

    invoke-static {p0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p0

    invoke-virtual {p0, p2, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-virtual {p0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_15

    return-object p0

    :catch_15
    move-exception p0

    invoke-static {p0}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    new-array p0, p0, [B

    return-object p0
.end method

.method public static b(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 7

    new-instance v0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v0, p0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    const/16 p0, 0x400

    new-array v1, p0, [B

    :goto_9
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Ljava/util/zip/GZIPInputStream;->read([BII)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_15

    invoke-virtual {p1, v1, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_9

    :cond_15
    invoke-virtual {v0}, Ljava/util/zip/GZIPInputStream;->close()V

    return-void
.end method

.method public static b([B)[B
    .registers 3

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-static {v0, p0}, Lcom/kwad/sdk/core/b/b;->b(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V

    return-object v1
.end method
