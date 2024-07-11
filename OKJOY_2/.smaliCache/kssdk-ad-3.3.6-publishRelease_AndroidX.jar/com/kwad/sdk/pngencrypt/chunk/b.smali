.class public Lcom/kwad/sdk/pngencrypt/chunk/b;
.super Ljava/lang/Object;


# static fields
.field public static final a:[B

.field public static final b:[B

.field public static final c:[B

.field public static final d:[B

.field public static e:Ljava/util/regex/Pattern;

.field private static f:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "IHDR"

    invoke-static {v0}, Lcom/kwad/sdk/pngencrypt/chunk/b;->a(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/kwad/sdk/pngencrypt/chunk/b;->a:[B

    const-string v0, "PLTE"

    invoke-static {v0}, Lcom/kwad/sdk/pngencrypt/chunk/b;->a(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/kwad/sdk/pngencrypt/chunk/b;->b:[B

    const-string v0, "IDAT"

    invoke-static {v0}, Lcom/kwad/sdk/pngencrypt/chunk/b;->a(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/kwad/sdk/pngencrypt/chunk/b;->c:[B

    const-string v0, "IEND"

    invoke-static {v0}, Lcom/kwad/sdk/pngencrypt/chunk/b;->a(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/kwad/sdk/pngencrypt/chunk/b;->d:[B

    const/16 v0, 0x1000

    new-array v0, v0, [B

    sput-object v0, Lcom/kwad/sdk/pngencrypt/chunk/b;->f:[B

    const-string v0, "[a-zA-Z][a-zA-Z][A-Z][a-zA-Z]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/kwad/sdk/pngencrypt/chunk/b;->e:Ljava/util/regex/Pattern;

    return-void
.end method

.method public static a([B)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcom/kwad/sdk/pngencrypt/n;->a:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public static a([BI)Ljava/lang/String;
    .registers 4

    if-eqz p0, :cond_e

    array-length v0, p0

    add-int/lit8 v1, p1, 0x4

    if-ge v0, v1, :cond_8

    goto :goto_e

    :cond_8
    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, Lcom/kwad/sdk/pngencrypt/chunk/b;->a([BII)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_e
    :goto_e
    const-string p0, "?"

    return-object p0
.end method

.method public static a([BII)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcom/kwad/sdk/pngencrypt/n;->a:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, p1, p2, v1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public static a(Ljava/util/List;Lcom/kwad/sdk/pngencrypt/chunk/c;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/kwad/sdk/pngencrypt/chunk/PngChunk;",
            ">;",
            "Lcom/kwad/sdk/pngencrypt/chunk/c;",
            ")",
            "Ljava/util/List<",
            "Lcom/kwad/sdk/pngencrypt/chunk/PngChunk;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_9
    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kwad/sdk/pngencrypt/chunk/PngChunk;

    invoke-interface {p1, v1}, Lcom/kwad/sdk/pngencrypt/chunk/c;->a(Lcom/kwad/sdk/pngencrypt/chunk/PngChunk;)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_1f
    return-object v0
.end method

.method private static a(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 6

    sget-object v0, Lcom/kwad/sdk/pngencrypt/chunk/b;->f:[B

    monitor-enter v0

    :goto_3
    :try_start_3
    sget-object v1, Lcom/kwad/sdk/pngencrypt/chunk/b;->f:[B

    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-lez v1, :cond_12

    sget-object v2, Lcom/kwad/sdk/pngencrypt/chunk/b;->f:[B

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_3

    :cond_12
    monitor-exit v0

    return-void

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw p0
.end method

.method public static a(Ljava/lang/String;)[B
    .registers 2

    sget-object v0, Lcom/kwad/sdk/pngencrypt/n;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    return-object p0
.end method

.method public static a([BIIZ)[B
    .registers 5

    :try_start_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0, p1, p2}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    if-eqz p3, :cond_8

    goto :goto_e

    :cond_8
    new-instance p0, Ljava/util/zip/InflaterInputStream;

    invoke-direct {p0, v0}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v0, p0

    :goto_e
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    if-eqz p3, :cond_1b

    new-instance p1, Ljava/util/zip/DeflaterOutputStream;

    invoke-direct {p1, p0}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;)V

    goto :goto_1c

    :cond_1b
    move-object p1, p0

    :goto_1c
    invoke-static {v0, p1}, Lcom/kwad/sdk/pngencrypt/chunk/b;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_29} :catch_2a

    return-object p0

    :catch_2a
    move-exception p0

    invoke-static {p0}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    new-array p0, p0, [B

    return-object p0
.end method

.method public static b([B)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcom/kwad/sdk/pngencrypt/n;->b:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public static b([BII)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcom/kwad/sdk/pngencrypt/n;->b:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, p1, p2, v1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Z
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-static {p0}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result p0

    return p0
.end method

.method public static c([B)I
    .registers 3

    const/4 v0, 0x0

    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_c

    aget-byte v1, p0, v0

    if-nez v1, :cond_9

    return v0

    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_c
    const/4 p0, -0x1

    return p0
.end method

.method public static c(Ljava/lang/String;)Z
    .registers 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-static {p0}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result p0

    return p0
.end method

.method public static d(Ljava/lang/String;)Z
    .registers 2

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-static {p0}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
