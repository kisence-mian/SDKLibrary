.class public final Lcom/kwad/sdk/pngencrypt/n;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/nio/charset/Charset;

.field public static b:Ljava/nio/charset/Charset;

.field private static c:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "ISO-8859-1"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/kwad/sdk/pngencrypt/n;->a:Ljava/nio/charset/Charset;

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/kwad/sdk/pngencrypt/n;->b:Ljava/nio/charset/Charset;

    new-instance v0, Lcom/kwad/sdk/pngencrypt/n$1;

    invoke-direct {v0}, Lcom/kwad/sdk/pngencrypt/n$1;-><init>()V

    sput-object v0, Lcom/kwad/sdk/pngencrypt/n;->c:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public static a(I)D
    .registers 5

    int-to-double v0, p0

    const-wide v2, 0x40f86a0000000000L    # 100000.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method static final a(III)I
    .registers 6

    add-int v0, p0, p1

    sub-int/2addr v0, p2

    if-lt v0, p0, :cond_8

    sub-int v1, v0, p0

    goto :goto_a

    :cond_8
    sub-int v1, p0, v0

    :goto_a
    if-lt v0, p1, :cond_f

    sub-int v2, v0, p1

    goto :goto_11

    :cond_f
    sub-int v2, p1, v0

    :goto_11
    if-lt v0, p2, :cond_15

    sub-int/2addr v0, p2

    goto :goto_17

    :cond_15
    sub-int v0, p2, v0

    :goto_17
    if-gt v1, v2, :cond_1c

    if-gt v1, v0, :cond_1c

    return p0

    :cond_1c
    if-gt v2, v0, :cond_1f

    return p1

    :cond_1f
    return p2
.end method

.method public static a(Ljava/io/InputStream;)I
    .registers 1

    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_4} :catch_5

    return p0

    :catch_5
    move-exception p0

    invoke-static {p0}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/Throwable;)V

    const/4 p0, -0x1

    return p0
.end method

.method public static a([BI)I
    .registers 2

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public static a()[B
    .registers 1

    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_8

    return-object v0

    :array_8
    .array-data 1
        -0x77t
        0x50t
        0x4et
        0x47t
        0xdt
        0xat
        0x1at
        0xat
    .end array-data
.end method

.method public static b(Ljava/io/InputStream;)I
    .registers 5

    const/4 v0, -0x1

    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v2

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v3

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result p0
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_11} :catch_26

    if-eq v1, v0, :cond_25

    if-eq v2, v0, :cond_25

    if-eq v3, v0, :cond_25

    if-ne p0, v0, :cond_1a

    goto :goto_25

    :cond_1a
    shl-int/lit8 v0, v1, 0x18

    shl-int/lit8 v1, v2, 0x10

    or-int/2addr v0, v1

    shl-int/lit8 v1, v3, 0x8

    add-int/2addr v1, p0

    or-int p0, v0, v1

    return p0

    :cond_25
    :goto_25
    return v0

    :catch_26
    move-exception p0

    invoke-static {p0}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/Throwable;)V

    return v0
.end method

.method public static b([BI)I
    .registers 3

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 p1, p1, 0x1

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    return p0
.end method

.method public static final c([BI)I
    .registers 4

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x3

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    return p0
.end method
