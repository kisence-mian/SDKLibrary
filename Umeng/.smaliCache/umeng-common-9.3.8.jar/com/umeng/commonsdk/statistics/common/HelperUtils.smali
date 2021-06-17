.class public Lcom/umeng/commonsdk/statistics/common/HelperUtils;
.super Ljava/lang/Object;
.source "HelperUtils.java"


# static fields
.field public static final LINE_SEPARATOR:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "helper"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 27
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/commonsdk/statistics/common/HelperUtils;->LINE_SEPARATOR:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static MD5(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .line 77
    if-nez p0, :cond_4

    .line 78
    const/4 p0, 0x0

    return-object p0

    .line 80
    :cond_4
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 81
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 82
    invoke-virtual {v1}, Ljava/security/MessageDigest;->reset()V

    .line 83
    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 84
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 85
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 86
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1f
    array-length v4, v0

    if-ge v3, v4, :cond_39

    .line 87
    const-string v4, "%02X"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aget-byte v6, v0, v3

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 86
    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    .line 90
    :cond_39
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_3d} :catch_3e

    return-object p0

    .line 92
    :catch_3e
    move-exception v0

    .line 93
    const-string v0, "[^[a-z][A-Z][0-9][.][_]]"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static checkStrLen(Ljava/lang/String;I)Z
    .registers 3

    .line 60
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 61
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_f

    if-gt p0, p1, :cond_e

    .line 62
    const/4 p0, 0x1

    return p0

    .line 66
    :cond_e
    goto :goto_10

    .line 65
    :catch_f
    move-exception p0

    .line 67
    :goto_10
    const/4 p0, 0x0

    return p0
.end method

.method public static getFileMD5(Ljava/io/File;)Ljava/lang/String;
    .registers 7

    .line 154
    nop

    .line 155
    nop

    .line 156
    const/16 v0, 0x400

    new-array v1, v0, [B

    .line 159
    :try_start_6
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-nez v2, :cond_f

    .line 160
    const-string p0, ""

    return-object p0

    .line 162
    :cond_f
    const-string v2, "MD5"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 163
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 164
    :goto_1a
    const/4 p0, 0x0

    invoke-virtual {v3, v1, p0, v0}, Ljava/io/FileInputStream;->read([BII)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_26

    .line 165
    invoke-virtual {v2, v1, p0, v4}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_1a

    .line 167
    :cond_26
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_29} :catch_3f

    .line 171
    nop

    .line 172
    new-instance v0, Ljava/math/BigInteger;

    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 173
    new-array v1, v2, [Ljava/lang/Object;

    aput-object v0, v1, p0

    const-string p0, "%1$032x"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 168
    :catch_3f
    move-exception p0

    .line 170
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getMD5(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 129
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 130
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 131
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    .line 134
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 135
    const/4 v1, 0x0

    :goto_17
    array-length v2, p0

    if-ge v1, v2, :cond_2f

    .line 136
    aget-byte v2, p0, v1

    .line 137
    and-int/lit16 v2, v2, 0xff

    or-int/lit16 v2, v2, -0x100

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 135
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 139
    :cond_2f
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_33
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_33} :catch_34

    return-object p0

    .line 141
    :catch_34
    move-exception p0

    .line 142
    const-string v0, "helper"

    const-string v1, "getMD5 error"

    invoke-static {v0, v1, p0}, Lcom/umeng/commonsdk/statistics/common/MLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 144
    const-string p0, ""

    return-object p0
.end method

.method public static getUmengMD5(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 107
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 108
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 109
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    .line 112
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 113
    const/4 v1, 0x0

    :goto_17
    array-length v2, p0

    if-ge v1, v2, :cond_28

    .line 114
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    .line 115
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 113
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 117
    :cond_28
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_2c
    .catchall {:try_start_0 .. :try_end_2c} :catchall_2d

    return-object p0

    .line 119
    :catchall_2d
    move-exception p0

    .line 120
    const-string v0, "helper"

    const-string v1, "getMD5 error"

    invoke-static {v0, v1, p0}, Lcom/umeng/commonsdk/statistics/common/MLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 122
    const-string p0, ""

    return-object p0
.end method

.method public static readFile(Ljava/io/File;)Ljava/lang/String;
    .registers 4

    .line 248
    nop

    .line 249
    nop

    .line 251
    const/4 v0, 0x0

    :try_start_3
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_28

    if-nez v1, :cond_e

    .line 252
    nop

    .line 261
    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/HelperUtils;->safeClose(Ljava/io/InputStream;)V

    return-object v0

    .line 254
    :cond_e
    :try_start_e
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_13
    .catchall {:try_start_e .. :try_end_13} :catchall_28

    .line 255
    :try_start_13
    invoke-virtual {v1}, Ljava/io/FileInputStream;->available()I

    move-result p0

    new-array p0, p0, [B

    .line 256
    invoke-virtual {v1, p0}, Ljava/io/FileInputStream;->read([B)I

    .line 257
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p0}, Ljava/lang/String;-><init>([B)V
    :try_end_21
    .catchall {:try_start_13 .. :try_end_21} :catchall_26

    .line 261
    invoke-static {v1}, Lcom/umeng/commonsdk/statistics/common/HelperUtils;->safeClose(Ljava/io/InputStream;)V

    .line 262
    nop

    .line 263
    return-object v2

    .line 258
    :catchall_26
    move-exception p0

    goto :goto_2a

    :catchall_28
    move-exception p0

    move-object v1, v0

    .line 259
    :goto_2a
    nop

    .line 261
    invoke-static {v1}, Lcom/umeng/commonsdk/statistics/common/HelperUtils;->safeClose(Ljava/io/InputStream;)V

    return-object v0
.end method

.method public static readStreamToByteArray(Ljava/io/InputStream;)[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 206
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 208
    const/16 v1, 0x400

    new-array v1, v1, [B

    .line 209
    nop

    .line 211
    :goto_a
    const/4 v2, -0x1

    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-eq v2, v3, :cond_16

    .line 212
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_a

    .line 215
    :cond_16
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public static readStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 184
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 186
    const/16 p0, 0x400

    new-array p0, p0, [C

    .line 187
    nop

    .line 189
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 191
    :goto_f
    const/4 v2, -0x1

    invoke-virtual {v0, p0}, Ljava/io/InputStreamReader;->read([C)I

    move-result v3

    if-eq v2, v3, :cond_1b

    .line 192
    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2, v3}, Ljava/io/StringWriter;->write([CII)V

    goto :goto_f

    .line 195
    :cond_1b
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static safeClose(Ljava/io/InputStream;)V
    .registers 1

    .line 272
    if-eqz p0, :cond_7

    .line 274
    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_6

    .line 276
    goto :goto_7

    .line 275
    :catch_6
    move-exception p0

    .line 278
    :cond_7
    :goto_7
    return-void
.end method

.method public static safeClose(Ljava/io/OutputStream;)V
    .registers 1

    .line 286
    if-eqz p0, :cond_7

    .line 288
    :try_start_2
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_6

    .line 290
    goto :goto_7

    .line 289
    :catch_6
    move-exception p0

    .line 292
    :cond_7
    :goto_7
    return-void
.end method

.method public static subStr(Ljava/lang/String;I)Ljava/lang/String;
    .registers 7

    .line 38
    const-string v0, "UTF-8"

    const-string v1, ""

    .line 40
    :try_start_4
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3d

    .line 41
    nop

    .line 42
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, p1, :cond_16

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    goto :goto_17

    :cond_16
    move v2, p1

    :goto_17
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 43
    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    array-length v2, v2

    move v4, p1

    .line 44
    :goto_22
    if-le v2, p1, :cond_3c

    .line 45
    add-int/lit8 v4, v4, -0x1

    .line 46
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v4, v2, :cond_31

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    goto :goto_32

    :cond_31
    move v2, v4

    :goto_32
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 47
    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    array-length v2, v2
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_3b} :catch_3e

    .line 48
    goto :goto_22

    .line 49
    :cond_3c
    return-object v1

    .line 54
    :cond_3d
    goto :goto_42

    .line 52
    :catch_3e
    move-exception p0

    .line 53
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/Throwable;)V

    .line 55
    :goto_42
    return-object v1
.end method

.method public static writeFile(Ljava/io/File;Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 244
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {p0, p1}, Lcom/umeng/commonsdk/statistics/common/HelperUtils;->writeFile(Ljava/io/File;[B)V

    .line 245
    return-void
.end method

.method public static writeFile(Ljava/io/File;[B)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 226
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 229
    :try_start_5
    invoke-virtual {v0, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 230
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_10

    .line 232
    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/HelperUtils;->safeClose(Ljava/io/OutputStream;)V

    .line 233
    nop

    .line 234
    return-void

    .line 232
    :catchall_10
    move-exception p0

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/HelperUtils;->safeClose(Ljava/io/OutputStream;)V

    throw p0
.end method
