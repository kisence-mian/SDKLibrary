.class public Lcom/tapsdk/moment/image/ImageSuffix;
.super Ljava/lang/Object;
.source "ImageSuffix.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static compare([B[B)Z
    .registers 6
    .param p0, "buf"    # [B
    .param p1, "markBuf"    # [B

    .line 58
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_f

    .line 59
    aget-byte v1, p1, v0

    .line 60
    .local v1, "b":B
    aget-byte v2, p0, v0

    .line 62
    .local v2, "a":B
    if-eq v2, v1, :cond_c

    .line 63
    const/4 v3, 0x0

    return v3

    .line 58
    .end local v1    # "b":B
    .end local v2    # "a":B
    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 66
    .end local v0    # "i":I
    :cond_f
    const/4 v0, 0x1

    return v0
.end method

.method private static isBMP([B)Z
    .registers 3
    .param p0, "buf"    # [B

    .line 13
    const-string v0, "BM"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 14
    .local v0, "markBuf":[B
    invoke-static {p0, v0}, Lcom/tapsdk/moment/image/ImageSuffix;->compare([B[B)Z

    move-result v1

    return v1
.end method

.method private static isGIF([B)Z
    .registers 3
    .param p0, "buf"    # [B

    .line 28
    const-string v0, "GIF89a"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 29
    .local v0, "markBuf":[B
    invoke-static {p0, v0}, Lcom/tapsdk/moment/image/ImageSuffix;->compare([B[B)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 30
    const/4 v1, 0x1

    return v1

    .line 32
    :cond_e
    const-string v1, "GIF87a"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 33
    invoke-static {p0, v0}, Lcom/tapsdk/moment/image/ImageSuffix;->compare([B[B)Z

    move-result v1

    return v1
.end method

.method private static isICON([B)Z
    .registers 3
    .param p0, "buf"    # [B

    .line 18
    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_c

    .line 19
    .local v0, "markBuf":[B
    invoke-static {p0, v0}, Lcom/tapsdk/moment/image/ImageSuffix;->compare([B[B)Z

    move-result v1

    return v1

    :array_c
    .array-data 1
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x0t
        0x20t
        0x20t
    .end array-data
.end method

.method private static isJPEGHeader([B)Z
    .registers 3
    .param p0, "buf"    # [B

    .line 44
    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_c

    .line 46
    .local v0, "markBuf":[B
    invoke-static {p0, v0}, Lcom/tapsdk/moment/image/ImageSuffix;->compare([B[B)Z

    move-result v1

    return v1

    nop

    :array_c
    .array-data 1
        -0x1t
        -0x28t
    .end array-data
.end method

.method private static isPNG([B)Z
    .registers 3
    .param p0, "buf"    # [B

    .line 38
    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_c

    .line 40
    .local v0, "markBuf":[B
    invoke-static {p0, v0}, Lcom/tapsdk/moment/image/ImageSuffix;->compare([B[B)Z

    move-result v1

    return v1

    :array_c
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

.method private static isWEBP([B)Z
    .registers 3
    .param p0, "buf"    # [B

    .line 23
    const-string v0, "RIFF"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 24
    .local v0, "markBuf":[B
    invoke-static {p0, v0}, Lcom/tapsdk/moment/image/ImageSuffix;->compare([B[B)Z

    move-result v1

    return v1
.end method

.method public static readType([B)Ljava/lang/String;
    .registers 3
    .param p0, "bufHeaders"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    invoke-static {p0}, Lcom/tapsdk/moment/image/ImageSuffix;->isJPEGHeader([B)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 74
    const-string v0, ".jpg"

    return-object v0

    .line 76
    :cond_9
    invoke-static {p0}, Lcom/tapsdk/moment/image/ImageSuffix;->isPNG([B)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 77
    const-string v0, ".png"

    return-object v0

    .line 79
    :cond_12
    invoke-static {p0}, Lcom/tapsdk/moment/image/ImageSuffix;->isGIF([B)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 81
    const-string v0, ".gif"

    return-object v0

    .line 83
    :cond_1b
    invoke-static {p0}, Lcom/tapsdk/moment/image/ImageSuffix;->isWEBP([B)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 84
    const-string v0, ".webp"

    return-object v0

    .line 86
    :cond_24
    invoke-static {p0}, Lcom/tapsdk/moment/image/ImageSuffix;->isBMP([B)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 87
    const-string v0, ".bmp"

    return-object v0

    .line 89
    :cond_2d
    invoke-static {p0}, Lcom/tapsdk/moment/image/ImageSuffix;->isICON([B)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 90
    const-string v0, ".ico"

    return-object v0

    .line 92
    :cond_36
    new-instance v0, Ljava/io/IOException;

    const-string v1, "the image\'s format is unKnown!"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
