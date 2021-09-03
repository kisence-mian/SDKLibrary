.class Lcom/tds/achievement/CryptoUtils$StringUtils;
.super Ljava/lang/Object;
.source "CryptoUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tds/achievement/CryptoUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StringUtils"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bytes2String([B)Ljava/lang/String;
    .registers 3
    .param p0, "bytes"    # [B

    .line 257
    new-instance v0, Ljava/lang/String;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public static bytes2StringWithUTF8([B)Ljava/lang/String;
    .registers 3
    .param p0, "bytes"    # [B

    .line 265
    new-instance v0, Ljava/lang/String;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public static string2Bytes(Ljava/lang/String;)[B
    .registers 2
    .param p0, "content"    # Ljava/lang/String;

    .line 261
    sget-object v0, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    return-object v0
.end method

.method public static string2BytesWithUTF8(Ljava/lang/String;)[B
    .registers 2
    .param p0, "content"    # Ljava/lang/String;

    .line 269
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    return-object v0
.end method
