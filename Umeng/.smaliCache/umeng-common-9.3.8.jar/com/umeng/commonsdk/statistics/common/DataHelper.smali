.class public Lcom/umeng/commonsdk/statistics/common/DataHelper;
.super Ljava/lang/Object;
.source "DataHelper.java"


# static fields
.field public static ENVELOPE_ENTITY_RAW_LENGTH_MAX:J

.field public static ENVELOPE_EXTRA_LENGTH:J

.field public static ENVELOPE_LENGTH_MAX:J

.field private static UMENG_PLUS:Ljava/lang/String;

.field private static final iv:[B


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 29
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_1e

    sput-object v0, Lcom/umeng/commonsdk/statistics/common/DataHelper;->iv:[B

    .line 30
    const-wide/32 v0, 0x96000

    sput-wide v0, Lcom/umeng/commonsdk/statistics/common/DataHelper;->ENVELOPE_EXTRA_LENGTH:J

    .line 31
    const-wide/32 v0, 0x200000

    sput-wide v0, Lcom/umeng/commonsdk/statistics/common/DataHelper;->ENVELOPE_ENTITY_RAW_LENGTH_MAX:J

    .line 32
    const-wide/32 v0, 0x32000

    sput-wide v0, Lcom/umeng/commonsdk/statistics/common/DataHelper;->ENVELOPE_LENGTH_MAX:J

    .line 33
    const-string v0, "umeng+0123456789"

    sput-object v0, Lcom/umeng/commonsdk/statistics/common/DataHelper;->UMENG_PLUS:Ljava/lang/String;

    return-void

    nop

    :array_1e
    .array-data 1
        0xat
        0x1t
        0xbt
        0x5t
        0x4t
        0xft
        0x7t
        0x9t
        0x17t
        0x3t
        0x1t
        0x6t
        0x8t
        0xct
        0xdt
        0x5bt
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static assembleStatelessURL(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 224
    nop

    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static assembleURL(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 212
    nop

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bytes2Hex([B)Ljava/lang/String;
    .registers 6

    .line 249
    nop

    .line 250
    nop

    .line 251
    const-string v0, ""

    const/4 v1, 0x0

    :goto_5
    array-length v2, p0

    if-ge v1, v2, :cond_3e

    .line 252
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 253
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2a

    .line 254
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 256
    :cond_2a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 251
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 258
    :cond_3e
    return-object v0
.end method

.method public static convertExceptionToString(Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 4

    .line 181
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 182
    return-object v0

    .line 185
    :cond_4
    nop

    .line 188
    :try_start_5
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 189
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 190
    invoke-virtual {p0, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 191
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    .line 192
    :goto_16
    if-eqz p0, :cond_20

    .line 193
    invoke-virtual {p0, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 194
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    goto :goto_16

    .line 196
    :cond_20
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 197
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    .line 198
    invoke-virtual {v1}, Ljava/io/Writer;->close()V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_2a} :catch_2b

    .line 201
    goto :goto_2c

    .line 199
    :catch_2b
    move-exception p0

    .line 202
    :goto_2c
    return-object v0
.end method

.method public static decrypt([B[B)[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 140
    const-string v0, "AES/CBC/PKCS7Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 141
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "AES"

    invoke-direct {v1, p1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 142
    new-instance p1, Ljavax/crypto/spec/IvParameterSpec;

    sget-object v2, Lcom/umeng/commonsdk/statistics/common/DataHelper;->iv:[B

    invoke-direct {p1, v2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 143
    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 144
    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static decryptEx(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 286
    nop

    .line 289
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/util/Base64;->decode([BI)[B

    move-result-object p0

    .line 290
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcom/umeng/commonsdk/statistics/common/DataHelper;->UMENG_PLUS:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {p0, v1}, Lcom/umeng/commonsdk/statistics/common/DataHelper;->decrypt([B[B)[B

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_19} :catch_1a

    .line 293
    goto :goto_1c

    .line 292
    :catch_1a
    move-exception p0

    const/4 v0, 0x0

    .line 294
    :goto_1c
    return-object v0
.end method

.method public static encrypt([B[B)[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 124
    const-string v0, "AES/CBC/PKCS7Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 125
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "AES"

    invoke-direct {v1, p1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 126
    new-instance p1, Ljavax/crypto/spec/IvParameterSpec;

    sget-object v2, Lcom/umeng/commonsdk/statistics/common/DataHelper;->iv:[B

    invoke-direct {p1, v2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 127
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 128
    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static encryptBySHA1(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 235
    nop

    .line 236
    nop

    .line 237
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    .line 239
    :try_start_6
    const-string v0, "SHA1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 240
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 241
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/DataHelper;->bytes2Hex([B)Ljava/lang/String;

    move-result-object p0
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_17} :catch_19

    .line 244
    nop

    .line 245
    return-object p0

    .line 242
    :catch_19
    move-exception p0

    .line 243
    const/4 p0, 0x0

    return-object p0
.end method

.method public static encryptEx(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 268
    nop

    .line 271
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    sget-object v0, Lcom/umeng/commonsdk/statistics/common/DataHelper;->UMENG_PLUS:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {p0, v0}, Lcom/umeng/commonsdk/statistics/common/DataHelper;->encrypt([B[B)[B

    move-result-object p0

    .line 272
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_14} :catch_15

    .line 275
    goto :goto_17

    .line 274
    :catch_15
    move-exception p0

    const/4 p0, 0x0

    .line 276
    :goto_17
    return-object p0
.end method

.method public static hash([B)[B
    .registers 2

    .line 102
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 103
    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    .line 104
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 106
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_11

    return-object p0

    .line 107
    :catch_11
    move-exception p0

    .line 111
    const/4 p0, 0x0

    return-object p0
.end method

.method public static largeThanMaxSize(JJ)Z
    .registers 5

    .line 60
    cmp-long v0, p0, p2

    if-lez v0, :cond_6

    .line 61
    const/4 p0, 0x1

    return p0

    .line 63
    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public static random(ILjava/lang/String;)I
    .registers 7

    .line 155
    nop

    .line 156
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    .line 158
    float-to-double v0, v0

    const-wide v2, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double v4, v0, v2

    if-gez v4, :cond_39

    .line 159
    const/4 p0, 0x0

    if-nez p1, :cond_23

    .line 160
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "null signature.."

    aput-object v1, v0, p0

    const-string v1, "--->"

    invoke-static {v1, v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 163
    :cond_23
    nop

    .line 165
    const/16 v0, 0x9

    const/16 v1, 0xb

    :try_start_28
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x10

    invoke-static {p1, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p0
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_32} :catch_33

    .line 167
    goto :goto_34

    .line 166
    :catch_33
    move-exception p1

    .line 169
    :goto_34
    or-int/lit16 p0, p0, 0x80

    mul-int/lit16 p0, p0, 0x3e8

    .line 170
    goto :goto_4f

    .line 171
    :cond_39
    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    invoke-virtual {p1, p0}, Ljava/util/Random;->nextInt(I)I

    move-result p0

    .line 172
    const p1, 0x3e418

    if-gt p0, p1, :cond_4f

    const p1, 0x1f400

    if-lt p0, p1, :cond_4f

    .line 173
    const p0, 0x1f018

    .line 177
    :cond_4f
    :goto_4f
    return p0
.end method

.method public static reverseHexString(Ljava/lang/String;)[B
    .registers 7

    .line 36
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 37
    return-object v0

    .line 39
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 40
    rem-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_d

    .line 41
    return-object v0

    .line 44
    :cond_d
    div-int/lit8 v0, v1, 0x2

    new-array v0, v0, [B

    .line 45
    const/4 v2, 0x0

    :goto_12
    if-ge v2, v1, :cond_2b

    .line 46
    div-int/lit8 v3, v2, 0x2

    add-int/lit8 v4, v2, 0x2

    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0x10

    invoke-static {v2, v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v0, v3

    .line 45
    move v2, v4

    goto :goto_12

    .line 49
    :cond_2b
    return-object v0
.end method

.method public static toHexString([B)Ljava/lang/String;
    .registers 6

    .line 88
    if-nez p0, :cond_4

    .line 89
    const/4 p0, 0x0

    return-object p0

    .line 91
    :cond_4
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 92
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_b
    array-length v3, p0

    if-ge v2, v3, :cond_25

    .line 93
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aget-byte v4, p0, v2

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v3, v1

    const-string v4, "%02X"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 92
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 96
    :cond_25
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
