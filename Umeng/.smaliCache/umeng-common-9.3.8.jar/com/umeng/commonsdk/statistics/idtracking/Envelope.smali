.class public Lcom/umeng/commonsdk/statistics/idtracking/Envelope;
.super Ljava/lang/Object;
.source "Envelope.java"


# static fields
.field private static final dummyID1:Ljava/lang/String; = "1234567890987654321"

.field private static final dummyID2:Ljava/lang/String; = "02:00:00:00:00:00"


# instance fields
.field private final CODEX_ENCRYPT:I

.field private final CODEX_NORMAL:I

.field private final SEED:[B

.field private encrypt:Z

.field private identity:[B

.field private mAddress:Ljava/lang/String;

.field private mChecksum:[B

.field private mEntity:[B

.field private mGuid:[B

.field private mLength:I

.field private mSerialNo:I

.field private mSignature:[B

.field private mTimestamp:I

.field private mVersion:Ljava/lang/String;


# direct methods
.method private constructor <init>([BLjava/lang/String;[B)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_50

    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/Envelope;->SEED:[B

    .line 29
    const/4 v0, 0x1

    iput v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/Envelope;->CODEX_ENCRYPT:I

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/Envelope;->CODEX_NORMAL:I

    .line 32
    const-string v1, "1.0"

    iput-object v1, p0, Lcom/umeng/commonsdk/statistics/idtracking/Envelope;->mVersion:Ljava/lang/String;

    .line 33
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/umeng/commonsdk/statistics/idtracking/Envelope;->mAddress:Ljava/lang/String;

    .line 35
    iput-object v1, p0, Lcom/umeng/commonsdk/statistics/idtracking/Envelope;->mSignature:[B

    .line 36
    iput-object v1, p0, Lcom/umeng/commonsdk/statistics/idtracking/Envelope;->mGuid:[B

    .line 37
    iput-object v1, p0, Lcom/umeng/commonsdk/statistics/idtracking/Envelope;->mChecksum:[B

    .line 39
    iput v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/Envelope;->mSerialNo:I

    .line 40
    iput v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/Envelope;->mTimestamp:I

    .line 41
    iput v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/Envelope;->mLength:I

    .line 43
    iput-object v1, p0, Lcom/umeng/commonsdk/statistics/idtracking/Envelope;->mEntity:[B

    .line 44
    iput-object v1, p0, Lcom/umeng/commonsdk/statistics/idtracking/Envelope;->identity:[B

    .line 46
    iput-boolean v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/Envelope;->encrypt:Z

    .line 54
    if-eqz p1, :cond_48

    array-length v0, p1

    if-eqz v0, :cond_48

    .line 58
    iput-object p2, p0, Lcom/umeng/commonsdk/statistics/idtracking/Envelope;->mAddress:Ljava/lang/String;

    .line 59
    array-length p2, p1

    iput p2, p0, Lcom/umeng/commonsdk/statistics/idtracking/Envelope;->mLength:I

    .line 60
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/b;->a([B)[B

    move-result-object p1

    iput-object p1, p0, Lcom/umeng/commonsdk/statistics/idtracking/Envelope;->mEntity:[B

    .line 61
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    const-wide/16 v0, 0x3e8

    div-long/2addr p1, v0

    long-to-int p2, p1

    iput p2, p0, Lcom/umeng/commonsdk/statistics/idtracking/Envelope;->mTimestamp:I

    .line 63
    iput-object p3, p0, Lcom/umeng/commonsdk/statistics/idtracking/Envelope;->identity:[B

    .line 64
    return-void

    .line 55
    :cond_48
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "entity is null or empty"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    :array_50
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method private genCheckSum()[B
    .registers 3

    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 208
    iget-object v1, p0, Lcom/umeng/commonsdk/statistics/idtracking/Envelope;->mSignature:[B

    invoke-static {v1}, Lcom/umeng/commonsdk/statistics/common/DataHelper;->toHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    iget v1, p0, Lcom/umeng/commonsdk/statistics/idtracking/Envelope;->mSerialNo:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 210
    iget v1, p0, Lcom/umeng/commonsdk/statistics/idtracking/Envelope;->mTimestamp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 211
    iget v1, p0, Lcom/umeng/commonsdk/statistics/idtracking/Envelope;->mLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 212
    iget-object v1, p0, Lcom/umeng/commonsdk/statistics/idtracking/Envelope;->mGuid:[B

    invoke-static {v1}, Lcom/umeng/commonsdk/statistics/common/DataHelper;->toHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/DataHelper;->hash([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static genEncryptEnvelope(Landroid/content/Context;Ljava/lang/String;[B)Lcom/umeng/commonsdk/statistics/idtracking/Envelope;
    .registers 12

    .line 122
    const-string v0, "serial"

    const-string v1, "signature"

    const/4 v2, 0x0

    :try_start_5
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 124
    invoke-interface {v3, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 125
    const/4 v5, 0x1

    invoke-interface {v3, v0, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 127
    new-instance v7, Lcom/umeng/commonsdk/statistics/idtracking/Envelope;

    const-string v8, "123456789098765432102:00:00:00:00:00"

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-direct {v7, p2, p1, v8}, Lcom/umeng/commonsdk/statistics/idtracking/Envelope;-><init>([BLjava/lang/String;[B)V

    .line 129
    invoke-virtual {v7, v5}, Lcom/umeng/commonsdk/statistics/idtracking/Envelope;->setEncrypt(Z)V

    .line 130
    invoke-virtual {v7, v4}, Lcom/umeng/commonsdk/statistics/idtracking/Envelope;->setSignature(Ljava/lang/String;)V

    .line 131
    invoke-virtual {v7, v6}, Lcom/umeng/commonsdk/statistics/idtracking/Envelope;->setSerialNumber(I)V

    .line 132
    invoke-virtual {v7}, Lcom/umeng/commonsdk/statistics/idtracking/Envelope;->seal()V

    .line 134
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    add-int/2addr v6, v5

    invoke-interface {p1, v0, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-virtual {v7}, Lcom/umeng/commonsdk/statistics/idtracking/Envelope;->getSignature()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 135
    invoke-virtual {v7, p0}, Lcom/umeng/commonsdk/statistics/idtracking/Envelope;->export(Landroid/content/Context;)V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_40} :catch_41

    .line 136
    return-object v7

    .line 137
    :catch_41
    move-exception p1

    .line 139
    invoke-static {p0, p1}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 142
    return-object v2
.end method

.method public static genEnvelope(Landroid/content/Context;Ljava/lang/String;[B)Lcom/umeng/commonsdk/statistics/idtracking/Envelope;
    .registers 12

    .line 95
    const-string v0, "serial"

    const-string v1, "signature"

    const/4 v2, 0x0

    :try_start_5
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 97
    invoke-interface {v3, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 98
    const/4 v5, 0x1

    invoke-interface {v3, v0, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 100
    new-instance v7, Lcom/umeng/commonsdk/statistics/idtracking/Envelope;

    const-string v8, "123456789098765432102:00:00:00:00:00"

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-direct {v7, p2, p1, v8}, Lcom/umeng/commonsdk/statistics/idtracking/Envelope;-><init>([BLjava/lang/String;[B)V

    .line 102
    invoke-virtual {v7, v4}, Lcom/umeng/commonsdk/statistics/idtracking/Envelope;->setSignature(Ljava/lang/String;)V

    .line 103
    invoke-virtual {v7, v6}, Lcom/umeng/commonsdk/statistics/idtracking/Envelope;->setSerialNumber(I)V

    .line 104
    invoke-virtual {v7}, Lcom/umeng/commonsdk/statistics/idtracking/Envelope;->seal()V

    .line 106
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    add-int/2addr v6, v5

    invoke-interface {p1, v0, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-virtual {v7}, Lcom/umeng/commonsdk/statistics/idtracking/Envelope;->getSignature()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 107
    invoke-virtual {v7, p0}, Lcom/umeng/commonsdk/statistics/idtracking/Envelope;->export(Landroid/content/Context;)V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_3d} :catch_3e

    .line 108
    return-object v7

    .line 109
    :catch_3e
    move-exception p1

    .line 111
    invoke-static {p0, p1}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 114
    return-object v2
.end method

.method private genGuid([BI)[B
    .registers 13

    .line 167
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/Envelope;->identity:[B

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/DataHelper;->hash([B)[B

    move-result-object v0

    .line 168
    iget-object v1, p0, Lcom/umeng/commonsdk/statistics/idtracking/Envelope;->mEntity:[B

    invoke-static {v1}, Lcom/umeng/commonsdk/statistics/common/DataHelper;->hash([B)[B

    move-result-object v1

    .line 170
    array-length v2, v0

    .line 171
    mul-int/lit8 v3, v2, 0x2

    new-array v4, v3, [B

    .line 174
    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_13
    const/4 v7, 0x1

    if-ge v6, v2, :cond_24

    .line 175
    mul-int/lit8 v8, v6, 0x2

    aget-byte v9, v1, v6

    aput-byte v9, v4, v8

    .line 176
    add-int/2addr v8, v7

    aget-byte v7, v0, v6

    aput-byte v7, v4, v8

    .line 174
    add-int/lit8 v6, v6, 0x1

    goto :goto_13

    .line 180
    :cond_24
    nop

    .line 181
    const/4 v0, 0x0

    :goto_26
    const/4 v1, 0x2

    if-ge v0, v1, :cond_3a

    .line 182
    aget-byte v1, p1, v0

    aput-byte v1, v4, v0

    .line 183
    sub-int v1, v3, v0

    sub-int/2addr v1, v7

    array-length v2, p1

    sub-int/2addr v2, v0

    sub-int/2addr v2, v7

    aget-byte v2, p1, v2

    aput-byte v2, v4, v1

    .line 181
    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    .line 187
    :cond_3a
    const/4 p1, 0x4

    new-array p1, p1, [B

    .line 189
    and-int/lit16 v0, p2, 0xff

    int-to-byte v0, v0

    aput-byte v0, p1, v5

    .line 190
    shr-int/lit8 v0, p2, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, p1, v7

    .line 191
    shr-int/lit8 v0, p2, 0x10

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, p1, v1

    .line 192
    const/4 v0, 0x3

    ushr-int/lit8 p2, p2, 0x18

    int-to-byte p2, p2

    aput-byte p2, p1, v0

    .line 194
    nop

    :goto_57
    if-ge v5, v3, :cond_66

    .line 195
    aget-byte p2, v4, v5

    rem-int/lit8 v0, v5, 0x4

    aget-byte v0, p1, v0

    xor-int/2addr p2, v0

    int-to-byte p2, p2

    aput-byte p2, v4, v5

    .line 194
    add-int/lit8 v5, v5, 0x1

    goto :goto_57

    .line 198
    :cond_66
    return-object v4
.end method

.method private genSignature()[B
    .registers 6

    .line 202
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/Envelope;->SEED:[B

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    long-to-int v2, v1

    invoke-direct {p0, v0, v2}, Lcom/umeng/commonsdk/statistics/idtracking/Envelope;->genGuid([BI)[B

    move-result-object v0

    return-object v0
.end method

.method public static getSignature(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 67
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 68
    const/4 v0, 0x0

    if-nez p0, :cond_8

    .line 69
    return-object v0

    .line 71
    :cond_8
    const-string v1, "signature"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public export(Landroid/content/Context;)V
    .registers 12

    .line 243
    const-string v0, "appkey"

    iget-object v1, p0, Lcom/umeng/commonsdk/statistics/idtracking/Envelope;->mAddress:Ljava/lang/String;

    .line 244
    const-string v2, "umid"

    const/4 v3, 0x0

    invoke-static {p1, v2, v3}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->imprintProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 245
    iget-object v4, p0, Lcom/umeng/commonsdk/statistics/idtracking/Envelope;->mSignature:[B

    invoke-static {v4}, Lcom/umeng/commonsdk/statistics/common/DataHelper;->toHexString([B)Ljava/lang/String;

    move-result-object v4

    .line 246
    const/16 v5, 0x10

    new-array v6, v5, [B

    .line 247
    iget-object v7, p0, Lcom/umeng/commonsdk/statistics/idtracking/Envelope;->mSignature:[B

    const/4 v8, 0x2

    const/4 v9, 0x0

    invoke-static {v7, v8, v6, v9, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 248
    invoke-static {v6}, Lcom/umeng/commonsdk/statistics/common/DataHelper;->hash([B)[B

    move-result-object v5

    invoke-static {v5}, Lcom/umeng/commonsdk/statistics/common/DataHelper;->toHexString([B)Ljava/lang/String;

    move-result-object v5

    .line 251
    :try_start_24
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 252
    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 253
    if-eqz v3, :cond_31

    .line 254
    invoke-virtual {v6, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 256
    :cond_31
    const-string v7, "signature"

    invoke-virtual {v6, v7, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 257
    const-string v4, "checksum"

    invoke-virtual {v6, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 259
    new-instance v4, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    const-string v7, ".umeng"

    invoke-direct {v4, v5, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 260
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_4f

    .line 261
    invoke-virtual {v4}, Ljava/io/File;->mkdir()Z

    .line 264
    :cond_4f
    new-instance v5, Ljava/io/File;

    const-string v7, "exchangeIdentity.json"

    invoke-direct {v5, v4, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/umeng/commonsdk/statistics/common/HelperUtils;->writeFile(Ljava/io/File;Ljava/lang/String;)V
    :try_end_5d
    .catchall {:try_start_24 .. :try_end_5d} :catchall_5e

    .line 267
    goto :goto_62

    .line 265
    :catchall_5e
    move-exception v4

    .line 266
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 270
    :goto_62
    :try_start_62
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 271
    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 273
    const-string v0, "channel"

    invoke-static {p1}, Lcom/umeng/commonsdk/utils/UMUtils;->getChannel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 274
    if-eqz v3, :cond_7c

    .line 275
    invoke-static {v3}, Lcom/umeng/commonsdk/statistics/common/HelperUtils;->getUmengMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 277
    :cond_7c
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    const-string v1, "exid.dat"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/umeng/commonsdk/statistics/common/HelperUtils;->writeFile(Ljava/io/File;Ljava/lang/String;)V
    :try_end_8e
    .catchall {:try_start_62 .. :try_end_8e} :catchall_8f

    .line 280
    goto :goto_93

    .line 278
    :catchall_8f
    move-exception p1

    .line 279
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 281
    :goto_93
    return-void
.end method

.method public getSignature()Ljava/lang/String;
    .registers 2

    .line 79
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/Envelope;->mSignature:[B

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/DataHelper;->toHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public seal()V
    .registers 6

    .line 149
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/Envelope;->mSignature:[B

    if-nez v0, :cond_a

    .line 150
    invoke-direct {p0}, Lcom/umeng/commonsdk/statistics/idtracking/Envelope;->genSignature()[B

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/Envelope;->mSignature:[B

    .line 153
    :cond_a
    iget-boolean v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/Envelope;->encrypt:Z

    if-eqz v0, :cond_23

    .line 154
    const/16 v0, 0x10

    new-array v1, v0, [B

    .line 156
    :try_start_12
    iget-object v2, p0, Lcom/umeng/commonsdk/statistics/idtracking/Envelope;->mSignature:[B

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v2, v3, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 157
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/Envelope;->mEntity:[B

    invoke-static {v0, v1}, Lcom/umeng/commonsdk/statistics/common/DataHelper;->encrypt([B[B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/Envelope;->mEntity:[B
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_21} :catch_22

    .line 159
    goto :goto_23

    .line 158
    :catch_22
    move-exception v0

    .line 162
    :cond_23
    :goto_23
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/Envelope;->mSignature:[B

    iget v1, p0, Lcom/umeng/commonsdk/statistics/idtracking/Envelope;->mTimestamp:I

    invoke-direct {p0, v0, v1}, Lcom/umeng/commonsdk/statistics/idtracking/Envelope;->genGuid([BI)[B

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/Envelope;->mGuid:[B

    .line 163
    invoke-direct {p0}, Lcom/umeng/commonsdk/statistics/idtracking/Envelope;->genCheckSum()[B

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/Envelope;->mChecksum:[B

    .line 164
    return-void
.end method

.method public setEncrypt(Z)V
    .registers 2

    .line 87
    iput-boolean p1, p0, Lcom/umeng/commonsdk/statistics/idtracking/Envelope;->encrypt:Z

    .line 88
    return-void
.end method

.method public setSerialNumber(I)V
    .registers 2

    .line 83
    iput p1, p0, Lcom/umeng/commonsdk/statistics/idtracking/Envelope;->mSerialNo:I

    .line 84
    return-void
.end method

.method public setSignature(Ljava/lang/String;)V
    .registers 2

    .line 75
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/DataHelper;->reverseHexString(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/umeng/commonsdk/statistics/idtracking/Envelope;->mSignature:[B

    .line 76
    return-void
.end method

.method public toBinary()[B
    .registers 3

    .line 218
    new-instance v0, Lcom/umeng/analytics/pro/aj;

    invoke-direct {v0}, Lcom/umeng/analytics/pro/aj;-><init>()V

    .line 220
    iget-object v1, p0, Lcom/umeng/commonsdk/statistics/idtracking/Envelope;->mVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/umeng/analytics/pro/aj;->a(Ljava/lang/String;)Lcom/umeng/analytics/pro/aj;

    .line 221
    iget-object v1, p0, Lcom/umeng/commonsdk/statistics/idtracking/Envelope;->mAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/umeng/analytics/pro/aj;->b(Ljava/lang/String;)Lcom/umeng/analytics/pro/aj;

    .line 222
    iget-object v1, p0, Lcom/umeng/commonsdk/statistics/idtracking/Envelope;->mSignature:[B

    invoke-static {v1}, Lcom/umeng/commonsdk/statistics/common/DataHelper;->toHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/umeng/analytics/pro/aj;->c(Ljava/lang/String;)Lcom/umeng/analytics/pro/aj;

    .line 223
    iget v1, p0, Lcom/umeng/commonsdk/statistics/idtracking/Envelope;->mSerialNo:I

    invoke-virtual {v0, v1}, Lcom/umeng/analytics/pro/aj;->a(I)Lcom/umeng/analytics/pro/aj;

    .line 224
    iget v1, p0, Lcom/umeng/commonsdk/statistics/idtracking/Envelope;->mTimestamp:I

    invoke-virtual {v0, v1}, Lcom/umeng/analytics/pro/aj;->b(I)Lcom/umeng/analytics/pro/aj;

    .line 225
    iget v1, p0, Lcom/umeng/commonsdk/statistics/idtracking/Envelope;->mLength:I

    invoke-virtual {v0, v1}, Lcom/umeng/analytics/pro/aj;->c(I)Lcom/umeng/analytics/pro/aj;

    .line 227
    iget-object v1, p0, Lcom/umeng/commonsdk/statistics/idtracking/Envelope;->mEntity:[B

    invoke-virtual {v0, v1}, Lcom/umeng/analytics/pro/aj;->a([B)Lcom/umeng/analytics/pro/aj;

    .line 228
    iget-boolean v1, p0, Lcom/umeng/commonsdk/statistics/idtracking/Envelope;->encrypt:Z

    invoke-virtual {v0, v1}, Lcom/umeng/analytics/pro/aj;->d(I)Lcom/umeng/analytics/pro/aj;

    .line 230
    iget-object v1, p0, Lcom/umeng/commonsdk/statistics/idtracking/Envelope;->mGuid:[B

    invoke-static {v1}, Lcom/umeng/commonsdk/statistics/common/DataHelper;->toHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/umeng/analytics/pro/aj;->d(Ljava/lang/String;)Lcom/umeng/analytics/pro/aj;

    .line 231
    iget-object v1, p0, Lcom/umeng/commonsdk/statistics/idtracking/Envelope;->mChecksum:[B

    invoke-static {v1}, Lcom/umeng/commonsdk/statistics/common/DataHelper;->toHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/umeng/analytics/pro/aj;->e(Ljava/lang/String;)Lcom/umeng/analytics/pro/aj;

    .line 234
    :try_start_43
    new-instance v1, Lcom/umeng/analytics/pro/az;

    invoke-direct {v1}, Lcom/umeng/analytics/pro/az;-><init>()V

    invoke-virtual {v1, v0}, Lcom/umeng/analytics/pro/az;->a(Lcom/umeng/analytics/pro/aq;)[B

    move-result-object v0
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_4c} :catch_4d

    return-object v0

    .line 235
    :catch_4d
    move-exception v0

    .line 236
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 239
    const/4 v0, 0x0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .line 284
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 286
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/umeng/commonsdk/statistics/idtracking/Envelope;->mVersion:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "version : %s\n"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/umeng/commonsdk/statistics/idtracking/Envelope;->mAddress:Ljava/lang/String;

    aput-object v3, v2, v4

    const-string v3, "address : %s\n"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/umeng/commonsdk/statistics/idtracking/Envelope;->mSignature:[B

    invoke-static {v3}, Lcom/umeng/commonsdk/statistics/common/DataHelper;->toHexString([B)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    const-string v3, "signature : %s\n"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    new-array v2, v1, [Ljava/lang/Object;

    iget v3, p0, Lcom/umeng/commonsdk/statistics/idtracking/Envelope;->mSerialNo:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const-string v3, "serial : %s\n"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    new-array v2, v1, [Ljava/lang/Object;

    iget v3, p0, Lcom/umeng/commonsdk/statistics/idtracking/Envelope;->mTimestamp:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const-string v3, "timestamp : %d\n"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    new-array v2, v1, [Ljava/lang/Object;

    iget v3, p0, Lcom/umeng/commonsdk/statistics/idtracking/Envelope;->mLength:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const-string v3, "length : %d\n"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/umeng/commonsdk/statistics/idtracking/Envelope;->mGuid:[B

    invoke-static {v3}, Lcom/umeng/commonsdk/statistics/common/DataHelper;->toHexString([B)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    const-string v3, "guid : %s\n"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/umeng/commonsdk/statistics/idtracking/Envelope;->mChecksum:[B

    invoke-static {v3}, Lcom/umeng/commonsdk/statistics/common/DataHelper;->toHexString([B)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    const-string v3, "checksum : %s "

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    new-array v1, v1, [Ljava/lang/Object;

    iget-boolean v2, p0, Lcom/umeng/commonsdk/statistics/idtracking/Envelope;->encrypt:Z

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    const-string v2, "codex : %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
