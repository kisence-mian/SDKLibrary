.class public Lcom/ta/utdid2/device/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/ta/utdid2/device/c;

.field private static final e:Ljava/lang/Object;

.field private static final k:Ljava/lang/String;


# instance fields
.field private a:Lcom/ta/utdid2/b/a/c;

.field private a:Lcom/ta/utdid2/device/d;

.field private b:Lcom/ta/utdid2/b/a/c;

.field private b:Ljava/util/regex/Pattern;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 32
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/ta/utdid2/device/c;->e:Ljava/lang/Object;

    .line 33
    const/4 v0, 0x0

    sput-object v0, Lcom/ta/utdid2/device/c;->a:Lcom/ta/utdid2/device/c;

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ".UTSystemConfig"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Global"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ta/utdid2/device/c;->k:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 15

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ta/utdid2/device/c;->mContext:Landroid/content/Context;

    .line 34
    iput-object v0, p0, Lcom/ta/utdid2/device/c;->h:Ljava/lang/String;

    .line 35
    iput-object v0, p0, Lcom/ta/utdid2/device/c;->a:Lcom/ta/utdid2/device/d;

    .line 36
    const-string v1, "xx_utdid_key"

    iput-object v1, p0, Lcom/ta/utdid2/device/c;->i:Ljava/lang/String;

    .line 37
    const-string v1, "xx_utdid_domain"

    iput-object v1, p0, Lcom/ta/utdid2/device/c;->j:Ljava/lang/String;

    .line 40
    iput-object v0, p0, Lcom/ta/utdid2/device/c;->a:Lcom/ta/utdid2/b/a/c;

    .line 43
    iput-object v0, p0, Lcom/ta/utdid2/device/c;->b:Lcom/ta/utdid2/b/a/c;

    .line 47
    const-string v0, "[^0-9a-zA-Z=/+]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/ta/utdid2/device/c;->b:Ljava/util/regex/Pattern;

    .line 50
    iput-object p1, p0, Lcom/ta/utdid2/device/c;->mContext:Landroid/content/Context;

    .line 51
    new-instance v0, Lcom/ta/utdid2/b/a/c;

    sget-object v3, Lcom/ta/utdid2/device/c;->k:Ljava/lang/String;

    const-string v4, "Alvin2"

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, v0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/ta/utdid2/b/a/c;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V

    iput-object v0, p0, Lcom/ta/utdid2/device/c;->b:Lcom/ta/utdid2/b/a/c;

    .line 54
    new-instance v0, Lcom/ta/utdid2/b/a/c;

    const-string v9, ".DataStorage"

    const-string v10, "ContextData"

    const/4 v11, 0x0

    const/4 v12, 0x1

    move-object v7, v0

    move-object v8, p1

    invoke-direct/range {v7 .. v12}, Lcom/ta/utdid2/b/a/c;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V

    iput-object v0, p0, Lcom/ta/utdid2/device/c;->a:Lcom/ta/utdid2/b/a/c;

    .line 56
    new-instance p1, Lcom/ta/utdid2/device/d;

    invoke-direct {p1}, Lcom/ta/utdid2/device/d;-><init>()V

    iput-object p1, p0, Lcom/ta/utdid2/device/c;->a:Lcom/ta/utdid2/device/d;

    .line 57
    const/4 p1, 0x1

    new-array v0, p1, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/ta/utdid2/device/c;->i:Ljava/lang/String;

    invoke-static {v1}, Lcom/ta/utdid2/a/a/f;->a(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "K_%d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ta/utdid2/device/c;->i:Ljava/lang/String;

    .line 58
    new-array p1, p1, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/ta/utdid2/device/c;->j:Ljava/lang/String;

    invoke-static {v0}, Lcom/ta/utdid2/a/a/f;->a(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v2

    const-string v0, "D_%d"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ta/utdid2/device/c;->j:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/ta/utdid2/device/c;
    .registers 3

    .line 103
    if-eqz p0, :cond_1c

    .line 104
    sget-object v0, Lcom/ta/utdid2/device/c;->a:Lcom/ta/utdid2/device/c;

    if-nez v0, :cond_1c

    .line 105
    sget-object v0, Lcom/ta/utdid2/device/c;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 106
    :try_start_9
    sget-object v1, Lcom/ta/utdid2/device/c;->a:Lcom/ta/utdid2/device/c;

    if-nez v1, :cond_17

    .line 107
    new-instance v1, Lcom/ta/utdid2/device/c;

    invoke-direct {v1, p0}, Lcom/ta/utdid2/device/c;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/ta/utdid2/device/c;->a:Lcom/ta/utdid2/device/c;

    .line 108
    invoke-direct {v1}, Lcom/ta/utdid2/device/c;->c()V

    .line 110
    :cond_17
    monitor-exit v0

    goto :goto_1c

    :catchall_19
    move-exception p0

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_9 .. :try_end_1b} :catchall_19

    throw p0

    .line 113
    :cond_1c
    :goto_1c
    sget-object p0, Lcom/ta/utdid2/device/c;->a:Lcom/ta/utdid2/device/c;

    return-object p0
.end method

.method public static b([B)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 455
    const/16 v0, 0x2c

    new-array v0, v0, [B

    fill-array-data v0, :array_28

    .line 459
    const-string v1, "HmacSHA1"

    invoke-static {v1}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v1

    .line 460
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    invoke-static {v0}, Lcom/ta/utdid2/a/a/e;->a([B)[B

    move-result-object v0

    invoke-virtual {v1}, Ljavax/crypto/Mac;->getAlgorithm()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 461
    invoke-virtual {v1, v2}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 462
    invoke-virtual {v1, p0}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object p0

    .line 463
    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/ta/utdid2/a/a/b;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :array_28
    .array-data 1
        0x45t
        0x72t
        0x74t
        -0x21t
        0x7dt
        -0x36t
        -0x1ft
        0x56t
        -0xbt
        0xbt
        -0x4et
        -0x60t
        -0x11t
        -0x63t
        0x40t
        0x17t
        -0x5ft
        -0x7et
        -0x52t
        -0x40t
        0x71t
        0x74t
        -0x10t
        -0x67t
        0x31t
        -0x1et
        0x9t
        -0x27t
        0x21t
        -0x50t
        -0x44t
        -0x4et
        -0x75t
        0x35t
        0x1et
        -0x7at
        0x40t
        -0x68t
        0x4at
        -0x31t
        0x6at
        0x55t
        -0x26t
        -0x5dt
    .end array-data
.end method

.method private b(Ljava/lang/String;)Z
    .registers 6

    .line 247
    const/4 v0, 0x0

    if-eqz p1, :cond_2a

    .line 249
    const-string v1, "\n"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_15

    .line 250
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 252
    :cond_15
    const/16 v1, 0x18

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v1, v3, :cond_2a

    .line 253
    iget-object v1, p0, Lcom/ta/utdid2/device/c;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 255
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result p1

    if-nez p1, :cond_2a

    .line 256
    return v2

    .line 260
    :cond_2a
    return v0
.end method

.method private c()V
    .registers 5

    .line 65
    iget-object v0, p0, Lcom/ta/utdid2/device/c;->b:Lcom/ta/utdid2/b/a/c;

    if-eqz v0, :cond_67

    .line 66
    const-string v1, "UTDID2"

    invoke-virtual {v0, v1}, Lcom/ta/utdid2/b/a/c;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 67
    invoke-static {v0}, Lcom/ta/utdid2/a/a/f;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 68
    iget-object v0, p0, Lcom/ta/utdid2/device/c;->b:Lcom/ta/utdid2/b/a/c;

    const-string v1, "UTDID"

    invoke-virtual {v0, v1}, Lcom/ta/utdid2/b/a/c;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 69
    invoke-static {v0}, Lcom/ta/utdid2/a/a/f;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_21

    .line 70
    invoke-direct {p0, v0}, Lcom/ta/utdid2/device/c;->f(Ljava/lang/String;)V

    .line 73
    :cond_21
    const/4 v0, 0x0

    .line 74
    iget-object v1, p0, Lcom/ta/utdid2/device/c;->b:Lcom/ta/utdid2/b/a/c;

    const-string v2, "DID"

    invoke-virtual {v1, v2}, Lcom/ta/utdid2/b/a/c;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 75
    invoke-static {v1}, Lcom/ta/utdid2/a/a/f;->a(Ljava/lang/String;)Z

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_37

    .line 76
    iget-object v0, p0, Lcom/ta/utdid2/device/c;->b:Lcom/ta/utdid2/b/a/c;

    invoke-virtual {v0, v2}, Lcom/ta/utdid2/b/a/c;->remove(Ljava/lang/String;)V

    .line 77
    const/4 v0, 0x1

    .line 80
    :cond_37
    iget-object v1, p0, Lcom/ta/utdid2/device/c;->b:Lcom/ta/utdid2/b/a/c;

    const-string v2, "EI"

    invoke-virtual {v1, v2}, Lcom/ta/utdid2/b/a/c;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 81
    invoke-static {v1}, Lcom/ta/utdid2/a/a/f;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4b

    .line 82
    iget-object v0, p0, Lcom/ta/utdid2/device/c;->b:Lcom/ta/utdid2/b/a/c;

    invoke-virtual {v0, v2}, Lcom/ta/utdid2/b/a/c;->remove(Ljava/lang/String;)V

    .line 83
    const/4 v0, 0x1

    .line 86
    :cond_4b
    iget-object v1, p0, Lcom/ta/utdid2/device/c;->b:Lcom/ta/utdid2/b/a/c;

    const-string v2, "SI"

    invoke-virtual {v1, v2}, Lcom/ta/utdid2/b/a/c;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 87
    invoke-static {v1}, Lcom/ta/utdid2/a/a/f;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5f

    .line 88
    iget-object v0, p0, Lcom/ta/utdid2/device/c;->b:Lcom/ta/utdid2/b/a/c;

    invoke-virtual {v0, v2}, Lcom/ta/utdid2/b/a/c;->remove(Ljava/lang/String;)V

    .line 89
    goto :goto_60

    .line 87
    :cond_5f
    move v3, v0

    .line 92
    :goto_60
    if-eqz v3, :cond_67

    .line 93
    iget-object v0, p0, Lcom/ta/utdid2/device/c;->b:Lcom/ta/utdid2/b/a/c;

    invoke-virtual {v0}, Lcom/ta/utdid2/b/a/c;->commit()Z

    .line 97
    :cond_67
    return-void
.end method

.method private c()[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 425
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 426
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    long-to-int v2, v1

    .line 427
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v1

    .line 428
    nop

    .line 429
    nop

    .line 430
    invoke-static {v2}, Lcom/ta/utdid2/a/a/c;->getBytes(I)[B

    move-result-object v2

    .line 431
    invoke-static {v1}, Lcom/ta/utdid2/a/a/c;->getBytes(I)[B

    move-result-object v1

    .line 432
    const/4 v3, 0x0

    const/4 v4, 0x4

    invoke-virtual {v0, v2, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 433
    invoke-virtual {v0, v1, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 434
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 435
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 438
    :try_start_2f
    iget-object v1, p0, Lcom/ta/utdid2/device/c;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/ta/utdid2/a/a/d;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_35} :catch_36

    .line 441
    goto :goto_53

    .line 439
    :catch_36
    move-exception v1

    .line 440
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 442
    :goto_53
    invoke-static {v1}, Lcom/ta/utdid2/a/a/f;->a(Ljava/lang/String;)I

    move-result v1

    .line 443
    invoke-static {v1}, Lcom/ta/utdid2/a/a/c;->getBytes(I)[B

    move-result-object v1

    .line 444
    invoke-virtual {v0, v1, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 445
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-static {v1}, Lcom/ta/utdid2/device/c;->b([B)Ljava/lang/String;

    move-result-object v1

    .line 446
    invoke-static {v1}, Lcom/ta/utdid2/a/a/f;->a(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/ta/utdid2/a/a/c;->getBytes(I)[B

    move-result-object v1

    .line 447
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 448
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method private e()Z
    .registers 5

    .line 467
    iget-object v0, p0, Lcom/ta/utdid2/device/c;->mContext:Landroid/content/Context;

    .line 468
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 467
    const-string v3, "android.permission.WRITE_SETTINGS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    .line 469
    if-nez v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method

.method private f(Ljava/lang/String;)V
    .registers 4

    .line 123
    invoke-direct {p0, p1}, Lcom/ta/utdid2/device/c;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 124
    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 125
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 127
    :cond_19
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x18

    if-ne v0, v1, :cond_2f

    .line 128
    iget-object v0, p0, Lcom/ta/utdid2/device/c;->b:Lcom/ta/utdid2/b/a/c;

    if-eqz v0, :cond_2f

    .line 129
    const-string v1, "UTDID2"

    invoke-virtual {v0, v1, p1}, Lcom/ta/utdid2/b/a/c;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    iget-object p1, p0, Lcom/ta/utdid2/device/c;->b:Lcom/ta/utdid2/b/a/c;

    invoke-virtual {p1}, Lcom/ta/utdid2/b/a/c;->commit()Z

    .line 134
    :cond_2f
    return-void
.end method

.method private g()Ljava/lang/String;
    .registers 3

    .line 231
    iget-object v0, p0, Lcom/ta/utdid2/device/c;->b:Lcom/ta/utdid2/b/a/c;

    if-eqz v0, :cond_19

    .line 232
    const-string v1, "UTDID2"

    invoke-virtual {v0, v1}, Lcom/ta/utdid2/b/a/c;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 233
    invoke-static {v0}, Lcom/ta/utdid2/a/a/f;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_19

    .line 234
    iget-object v1, p0, Lcom/ta/utdid2/device/c;->a:Lcom/ta/utdid2/device/d;

    invoke-virtual {v1, v0}, Lcom/ta/utdid2/device/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 235
    if-eqz v1, :cond_19

    .line 236
    return-object v0

    .line 240
    :cond_19
    const/4 v0, 0x0

    return-object v0
.end method

.method private g(Ljava/lang/String;)V
    .registers 4

    .line 140
    if-eqz p1, :cond_1e

    .line 141
    iget-object v0, p0, Lcom/ta/utdid2/device/c;->a:Lcom/ta/utdid2/b/a/c;

    if-eqz v0, :cond_1e

    .line 142
    iget-object v1, p0, Lcom/ta/utdid2/device/c;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ta/utdid2/b/a/c;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 143
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 144
    iget-object v0, p0, Lcom/ta/utdid2/device/c;->a:Lcom/ta/utdid2/b/a/c;

    iget-object v1, p0, Lcom/ta/utdid2/device/c;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/ta/utdid2/b/a/c;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    iget-object p1, p0, Lcom/ta/utdid2/device/c;->a:Lcom/ta/utdid2/b/a/c;

    invoke-virtual {p1}, Lcom/ta/utdid2/b/a/c;->commit()Z

    .line 149
    :cond_1e
    return-void
.end method

.method private h(Ljava/lang/String;)V
    .registers 5

    .line 158
    const-string v0, "mqBRboGZkQPcAkyk"

    invoke-direct {p0}, Lcom/ta/utdid2/device/c;->e()Z

    move-result v1

    if-eqz v1, :cond_47

    .line 160
    invoke-direct {p0, p1}, Lcom/ta/utdid2/device/c;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_47

    .line 161
    const-string v1, "\n"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 162
    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 164
    :cond_21
    const/16 v1, 0x18

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v1, v2, :cond_47

    .line 165
    const/4 v1, 0x0

    .line 167
    :try_start_2a
    iget-object v2, p0, Lcom/ta/utdid2/device/c;->mContext:Landroid/content/Context;

    .line 168
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 167
    invoke-static {v2, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_34} :catch_35

    .line 172
    goto :goto_36

    .line 170
    :catch_35
    move-exception v2

    .line 174
    :goto_36
    invoke-direct {p0, v1}, Lcom/ta/utdid2/device/c;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_47

    .line 176
    :try_start_3c
    iget-object v1, p0, Lcom/ta/utdid2/device/c;->mContext:Landroid/content/Context;

    .line 177
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 176
    invoke-static {v1, v0, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_45} :catch_46

    .line 181
    goto :goto_47

    .line 179
    :catch_46
    move-exception p1

    .line 186
    :cond_47
    :goto_47
    return-void
.end method

.method private i(Ljava/lang/String;)V
    .registers 4

    .line 194
    const-string v0, "dxCRMxhQkdGePGnp"

    .line 196
    :try_start_2
    iget-object v1, p0, Lcom/ta/utdid2/device/c;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_c} :catch_d

    .line 200
    goto :goto_f

    .line 198
    :catch_d
    move-exception v1

    const/4 v1, 0x0

    .line 201
    :goto_f
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    .line 203
    :try_start_15
    iget-object v1, p0, Lcom/ta/utdid2/device/c;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v0, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_1e} :catch_1f

    .line 207
    goto :goto_20

    .line 205
    :catch_1f
    move-exception p1

    .line 209
    :cond_20
    :goto_20
    return-void
.end method

.method private j(Ljava/lang/String;)V
    .registers 3

    .line 218
    invoke-direct {p0}, Lcom/ta/utdid2/device/c;->e()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 219
    if-eqz p1, :cond_b

    .line 220
    invoke-direct {p0, p1}, Lcom/ta/utdid2/device/c;->i(Ljava/lang/String;)V

    .line 223
    :cond_b
    return-void
.end method


# virtual methods
.method public declared-synchronized getValue()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    .line 269
    :try_start_1
    iget-object v0, p0, Lcom/ta/utdid2/device/c;->h:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_d

    if-eqz v0, :cond_7

    .line 270
    monitor-exit p0

    return-object v0

    .line 272
    :cond_7
    :try_start_7
    invoke-virtual {p0}, Lcom/ta/utdid2/device/c;->h()Ljava/lang/String;

    move-result-object v0
    :try_end_b
    .catchall {:try_start_7 .. :try_end_b} :catchall_d

    monitor-exit p0

    return-object v0

    .line 268
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized h()Ljava/lang/String;
    .registers 3

    monitor-enter p0

    .line 281
    :try_start_1
    invoke-virtual {p0}, Lcom/ta/utdid2/device/c;->i()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ta/utdid2/device/c;->h:Ljava/lang/String;

    .line 282
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 283
    iget-object v0, p0, Lcom/ta/utdid2/device/c;->h:Ljava/lang/String;
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_3b

    monitor-exit p0

    return-object v0

    .line 289
    :cond_11
    :try_start_11
    invoke-direct {p0}, Lcom/ta/utdid2/device/c;->c()[B

    move-result-object v0

    .line 290
    if-eqz v0, :cond_33

    .line 292
    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/ta/utdid2/a/a/b;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ta/utdid2/device/c;->h:Ljava/lang/String;

    .line 293
    invoke-direct {p0, v1}, Lcom/ta/utdid2/device/c;->f(Ljava/lang/String;)V

    .line 295
    iget-object v1, p0, Lcom/ta/utdid2/device/c;->a:Lcom/ta/utdid2/device/d;

    invoke-virtual {v1, v0}, Lcom/ta/utdid2/device/d;->c([B)Ljava/lang/String;

    move-result-object v0

    .line 296
    if-eqz v0, :cond_2f

    .line 298
    invoke-direct {p0, v0}, Lcom/ta/utdid2/device/c;->j(Ljava/lang/String;)V

    .line 300
    invoke-direct {p0, v0}, Lcom/ta/utdid2/device/c;->g(Ljava/lang/String;)V

    .line 302
    :cond_2f
    iget-object v0, p0, Lcom/ta/utdid2/device/c;->h:Ljava/lang/String;
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_31} :catch_34
    .catchall {:try_start_11 .. :try_end_31} :catchall_3b

    monitor-exit p0

    return-object v0

    .line 306
    :cond_33
    goto :goto_38

    .line 304
    :catch_34
    move-exception v0

    .line 305
    :try_start_35
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_3b

    .line 307
    :goto_38
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 280
    :catchall_3b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized i()Ljava/lang/String;
    .registers 7

    monitor-enter p0

    .line 315
    :try_start_1
    const-string v0, ""
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_ec

    .line 317
    :try_start_3
    iget-object v1, p0, Lcom/ta/utdid2/device/c;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mqBRboGZkQPcAkyk"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_f} :catch_10
    .catchall {:try_start_3 .. :try_end_f} :catchall_ec

    .line 321
    goto :goto_11

    .line 319
    :catch_10
    move-exception v1

    .line 323
    :goto_11
    :try_start_11
    invoke-direct {p0, v0}, Lcom/ta/utdid2/device/c;->b(Ljava/lang/String;)Z

    move-result v1
    :try_end_15
    .catchall {:try_start_11 .. :try_end_15} :catchall_ec

    if-eqz v1, :cond_19

    .line 325
    monitor-exit p0

    return-object v0

    .line 328
    :cond_19
    :try_start_19
    new-instance v0, Lcom/ta/utdid2/device/e;

    invoke-direct {v0}, Lcom/ta/utdid2/device/e;-><init>()V
    :try_end_1e
    .catchall {:try_start_19 .. :try_end_1e} :catchall_ec

    .line 329
    const/4 v1, 0x0

    .line 332
    nop

    .line 334
    const/4 v2, 0x0

    :try_start_21
    iget-object v3, p0, Lcom/ta/utdid2/device/c;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "dxCRMxhQkdGePGnp"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_2d} :catch_2e
    .catchall {:try_start_21 .. :try_end_2d} :catchall_ec

    .line 338
    goto :goto_30

    .line 336
    :catch_2e
    move-exception v3

    move-object v3, v2

    .line 339
    :goto_30
    :try_start_30
    invoke-static {v3}, Lcom/ta/utdid2/a/a/f;->a(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_8a

    .line 341
    invoke-virtual {v0, v3}, Lcom/ta/utdid2/device/e;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 342
    invoke-direct {p0, v4}, Lcom/ta/utdid2/device/c;->b(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_45

    .line 344
    invoke-direct {p0, v4}, Lcom/ta/utdid2/device/c;->h(Ljava/lang/String;)V
    :try_end_43
    .catchall {:try_start_30 .. :try_end_43} :catchall_ec

    .line 345
    monitor-exit p0

    return-object v4

    .line 348
    :cond_45
    :try_start_45
    invoke-virtual {v0, v3}, Lcom/ta/utdid2/device/e;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 349
    invoke-direct {p0, v4}, Lcom/ta/utdid2/device/c;->b(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6c

    .line 350
    iget-object v5, p0, Lcom/ta/utdid2/device/c;->a:Lcom/ta/utdid2/device/d;

    invoke-virtual {v5, v4}, Lcom/ta/utdid2/device/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 351
    invoke-static {v4}, Lcom/ta/utdid2/a/a/f;->a(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6c

    .line 353
    invoke-direct {p0, v4}, Lcom/ta/utdid2/device/c;->j(Ljava/lang/String;)V
    :try_end_5e
    .catchall {:try_start_45 .. :try_end_5e} :catchall_ec

    .line 356
    :try_start_5e
    iget-object v4, p0, Lcom/ta/utdid2/device/c;->mContext:Landroid/content/Context;

    .line 357
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "dxCRMxhQkdGePGnp"

    .line 356
    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_6a} :catch_6b
    .catchall {:try_start_5e .. :try_end_6a} :catchall_ec

    .line 360
    goto :goto_6c

    .line 358
    :catch_6b
    move-exception v4

    .line 364
    :cond_6c
    :goto_6c
    :try_start_6c
    iget-object v4, p0, Lcom/ta/utdid2/device/c;->a:Lcom/ta/utdid2/device/d;

    invoke-virtual {v4, v3}, Lcom/ta/utdid2/device/d;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 365
    invoke-direct {p0, v4}, Lcom/ta/utdid2/device/c;->b(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_89

    .line 366
    iput-object v4, p0, Lcom/ta/utdid2/device/c;->h:Ljava/lang/String;

    .line 368
    invoke-direct {p0, v4}, Lcom/ta/utdid2/device/c;->f(Ljava/lang/String;)V

    .line 370
    invoke-direct {p0, v3}, Lcom/ta/utdid2/device/c;->g(Ljava/lang/String;)V

    .line 372
    iget-object v0, p0, Lcom/ta/utdid2/device/c;->h:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/ta/utdid2/device/c;->h(Ljava/lang/String;)V

    .line 373
    iget-object v0, p0, Lcom/ta/utdid2/device/c;->h:Ljava/lang/String;
    :try_end_87
    .catchall {:try_start_6c .. :try_end_87} :catchall_ec

    monitor-exit p0

    return-object v0

    .line 375
    :cond_89
    goto :goto_8b

    .line 378
    :cond_8a
    const/4 v1, 0x1

    .line 382
    :goto_8b
    :try_start_8b
    invoke-direct {p0}, Lcom/ta/utdid2/device/c;->g()Ljava/lang/String;

    move-result-object v3

    .line 383
    invoke-direct {p0, v3}, Lcom/ta/utdid2/device/c;->b(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_aa

    .line 384
    iget-object v0, p0, Lcom/ta/utdid2/device/c;->a:Lcom/ta/utdid2/device/d;

    invoke-virtual {v0, v3}, Lcom/ta/utdid2/device/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 385
    if-eqz v1, :cond_a0

    .line 387
    invoke-direct {p0, v0}, Lcom/ta/utdid2/device/c;->j(Ljava/lang/String;)V

    .line 390
    :cond_a0
    invoke-direct {p0, v3}, Lcom/ta/utdid2/device/c;->h(Ljava/lang/String;)V

    .line 392
    invoke-direct {p0, v0}, Lcom/ta/utdid2/device/c;->g(Ljava/lang/String;)V

    .line 393
    iput-object v3, p0, Lcom/ta/utdid2/device/c;->h:Ljava/lang/String;
    :try_end_a8
    .catchall {:try_start_8b .. :try_end_a8} :catchall_ec

    .line 394
    monitor-exit p0

    return-object v3

    .line 398
    :cond_aa
    :try_start_aa
    iget-object v3, p0, Lcom/ta/utdid2/device/c;->a:Lcom/ta/utdid2/b/a/c;

    iget-object v4, p0, Lcom/ta/utdid2/device/c;->i:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/ta/utdid2/b/a/c;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 399
    invoke-static {v3}, Lcom/ta/utdid2/a/a/f;->a(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_ea

    .line 400
    invoke-virtual {v0, v3}, Lcom/ta/utdid2/device/e;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 401
    invoke-direct {p0, v0}, Lcom/ta/utdid2/device/c;->b(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_c8

    .line 402
    iget-object v0, p0, Lcom/ta/utdid2/device/c;->a:Lcom/ta/utdid2/device/d;

    invoke-virtual {v0, v3}, Lcom/ta/utdid2/device/d;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 404
    :cond_c8
    invoke-direct {p0, v0}, Lcom/ta/utdid2/device/c;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_ea

    .line 405
    iget-object v3, p0, Lcom/ta/utdid2/device/c;->a:Lcom/ta/utdid2/device/d;

    invoke-virtual {v3, v0}, Lcom/ta/utdid2/device/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 406
    invoke-static {v0}, Lcom/ta/utdid2/a/a/f;->a(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_ea

    .line 407
    iput-object v0, p0, Lcom/ta/utdid2/device/c;->h:Ljava/lang/String;

    .line 408
    if-eqz v1, :cond_e1

    .line 410
    invoke-direct {p0, v3}, Lcom/ta/utdid2/device/c;->j(Ljava/lang/String;)V

    .line 413
    :cond_e1
    iget-object v0, p0, Lcom/ta/utdid2/device/c;->h:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/ta/utdid2/device/c;->f(Ljava/lang/String;)V

    .line 414
    iget-object v0, p0, Lcom/ta/utdid2/device/c;->h:Ljava/lang/String;
    :try_end_e8
    .catchall {:try_start_aa .. :try_end_e8} :catchall_ec

    monitor-exit p0

    return-object v0

    .line 418
    :cond_ea
    monitor-exit p0

    return-object v2

    .line 314
    :catchall_ec
    move-exception v0

    monitor-exit p0

    throw v0
.end method
