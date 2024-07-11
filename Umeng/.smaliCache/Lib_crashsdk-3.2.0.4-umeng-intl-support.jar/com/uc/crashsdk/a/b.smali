.class public final Lcom/uc/crashsdk/a/b;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field private static final a:[I

.field private static final b:[I

.field private static final c:[I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 15
    const/16 v0, 0x8

    new-array v1, v0, [I

    fill-array-data v1, :array_18

    sput-object v1, Lcom/uc/crashsdk/a/b;->a:[I

    .line 16
    new-array v1, v0, [I

    fill-array-data v1, :array_2c

    sput-object v1, Lcom/uc/crashsdk/a/b;->b:[I

    .line 17
    new-array v0, v0, [I

    fill-array-data v0, :array_40

    sput-object v0, Lcom/uc/crashsdk/a/b;->c:[I

    return-void

    :array_18
    .array-data 4
        0x7e
        0x93
        0x73
        0xf1
        0x65
        0xc6
        0xd7
        0x86
    .end array-data

    :array_2c
    .array-data 4
        0x7d
        0xb9
        0xe9
        0xe2
        0x81
        0x8e
        0x97
        0xb0
    .end array-data

    :array_40
    .array-data 4
        0xee
        0xb9
        0xe9
        0xb3
        0x81
        0x8e
        0x97
        0xa7
    .end array-data
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 28
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 30
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    const/4 v1, 0x0

    if-nez p0, :cond_d

    .line 31
    return-object v1

    .line 33
    :cond_d
    nop

    .line 35
    :try_start_e
    new-instance p0, Ljava/io/FileInputStream;

    invoke-direct {p0, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_13} :catch_54
    .catchall {:try_start_e .. :try_end_13} :catchall_52

    .line 36
    :try_start_13
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int v0, v2

    new-array v0, v0, [B

    .line 38
    invoke-virtual {p0, v0}, Ljava/io/FileInputStream;->read([B)I

    .line 40
    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_20} :catch_4d
    .catchall {:try_start_13 .. :try_end_20} :catchall_49

    .line 41
    nop

    .line 43
    :try_start_21
    sget-object p0, Lcom/uc/crashsdk/a/b;->a:[I

    invoke-static {v0, p0}, Lcom/uc/crashsdk/a/b;->a([B[I)[B

    move-result-object p0

    .line 45
    if-eqz p0, :cond_45

    array-length v0, p0

    if-lez v0, :cond_45

    .line 46
    array-length v0, p0

    .line 48
    add-int/lit8 v0, v0, -0x1

    aget-byte v2, p0, v0

    const/16 v3, 0xa

    if-ne v2, v3, :cond_3c

    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3, v0}, Ljava/lang/String;-><init>([BII)V

    goto :goto_41

    :cond_3c
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p0}, Ljava/lang/String;-><init>([B)V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_41} :catch_54
    .catchall {:try_start_21 .. :try_end_41} :catchall_52

    .line 57
    :goto_41
    invoke-static {v1}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    .line 48
    return-object v2

    .line 52
    :cond_45
    invoke-static {v1}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    return-object v1

    .line 57
    :catchall_49
    move-exception v0

    move-object v1, p0

    move-object p0, v0

    goto :goto_5f

    .line 53
    :catch_4d
    move-exception v0

    move-object v4, v0

    move-object v0, p0

    move-object p0, v4

    goto :goto_56

    .line 57
    :catchall_52
    move-exception p0

    goto :goto_5f

    .line 53
    :catch_54
    move-exception p0

    move-object v0, v1

    :goto_56
    :try_start_56
    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V
    :try_end_59
    .catchall {:try_start_56 .. :try_end_59} :catchall_5d

    .line 55
    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    return-object v1

    .line 57
    :catchall_5d
    move-exception p0

    move-object v1, v0

    :goto_5f
    invoke-static {v1}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    throw p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .registers 10

    .line 285
    if-nez p2, :cond_3

    .line 286
    return-object p0

    .line 288
    :cond_3
    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 289
    return-object p0

    .line 292
    :cond_a
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 293
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_cd

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/32 v3, 0x300000

    cmp-long v5, v1, v3

    if-lez v5, :cond_22

    goto/16 :goto_cd

    .line 297
    :cond_22
    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->e(Ljava/io/File;)[B

    move-result-object v1

    .line 298
    if-eqz v1, :cond_cc

    array-length v2, v1

    if-gtz v2, :cond_2d

    goto/16 :goto_cc

    .line 302
    :cond_2d
    nop

    .line 303
    nop

    .line 304
    nop

    .line 305
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p2, :cond_8e

    .line 306
    nop

    .line 307
    nop

    .line 308
    nop

    .line 310
    const/4 p2, 0x0

    :try_start_38
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_3d
    .catchall {:try_start_38 .. :try_end_3d} :catchall_50

    .line 311
    :try_start_3d
    new-instance v5, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v5, v4}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_42
    .catchall {:try_start_3d .. :try_end_42} :catchall_4b

    .line 312
    :try_start_42
    invoke-virtual {v5, v1}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 313
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->flush()V
    :try_end_48
    .catchall {:try_start_42 .. :try_end_48} :catchall_49

    goto :goto_57

    .line 314
    :catchall_49
    move-exception p2

    goto :goto_54

    :catchall_4b
    move-exception v5

    move-object v6, v5

    move-object v5, p2

    move-object p2, v6

    goto :goto_54

    :catchall_50
    move-exception v4

    move-object v5, p2

    move-object p2, v4

    move-object v4, v5

    :goto_54
    :try_start_54
    invoke-static {p2}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V
    :try_end_57
    .catchall {:try_start_54 .. :try_end_57} :catchall_86

    .line 317
    :goto_57
    invoke-static {v4}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    .line 318
    invoke-static {v5}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    .line 319
    nop

    .line 322
    :try_start_5e
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1
    :try_end_62
    .catchall {:try_start_5e .. :try_end_62} :catchall_65

    .line 323
    nop

    .line 326
    const/4 p2, 0x1

    goto :goto_6a

    .line 324
    :catchall_65
    move-exception p2

    invoke-static {p2}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    const/4 p2, 0x0

    .line 328
    :goto_6a
    if-eqz p2, :cond_85

    if-eqz v1, :cond_85

    array-length p2, v1

    if-gtz p2, :cond_72

    goto :goto_85

    .line 331
    :cond_72
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 332
    const/4 p2, 0x1

    goto :goto_90

    .line 329
    :cond_85
    :goto_85
    return-object p0

    .line 317
    :catchall_86
    move-exception p0

    invoke-static {v4}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    .line 318
    invoke-static {v5}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    throw p0

    .line 305
    :cond_8e
    move-object p1, p0

    const/4 p2, 0x0

    .line 335
    :goto_90
    if-eqz p2, :cond_cb

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_b1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v4, ".tmp"

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v4, 0x1

    goto :goto_b3

    :cond_b1
    move-object p2, p1

    const/4 v4, 0x0

    :goto_b3
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5, v1}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/File;[B)Z

    move-result p2

    if-nez p2, :cond_c0

    const/4 v2, 0x0

    goto :goto_c8

    :cond_c0
    if-eqz v4, :cond_c8

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    invoke-virtual {v5, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    :cond_c8
    :goto_c8
    if-eqz v2, :cond_cb

    .line 350
    return-object p1

    .line 352
    :cond_cb
    return-object p0

    .line 299
    :cond_cc
    :goto_cc
    return-object p0

    .line 294
    :cond_cd
    :goto_cd
    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    .line 456
    nop

    .line 458
    :try_start_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 459
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_f

    .line 460
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 462
    :cond_f
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_15

    .line 465
    goto :goto_1a

    .line 463
    :catchall_15
    move-exception p0

    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    .line 467
    :goto_1a
    const/4 v0, 0x0

    if-nez p0, :cond_1e

    .line 468
    return v0

    .line 471
    :cond_1e
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    sget-object v1, Lcom/uc/crashsdk/a/b;->a:[I

    invoke-static {p1, v1}, Lcom/uc/crashsdk/a/b;->b([B[I)[B

    move-result-object p1

    .line 473
    if-nez p1, :cond_2e

    .line 474
    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    .line 475
    return v0

    .line 478
    :cond_2e
    nop

    .line 480
    :try_start_2f
    invoke-virtual {p0, p1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_37

    .line 481
    const/4 v0, 0x1

    .line 485
    :goto_33
    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    .line 486
    goto :goto_3c

    .line 482
    :catchall_37
    move-exception p1

    :try_start_38
    invoke-static {p1}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_3d

    goto :goto_33

    .line 488
    :goto_3c
    return v0

    .line 485
    :catchall_3d
    move-exception p1

    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    goto :goto_43

    :goto_42
    throw p1

    :goto_43
    goto :goto_42
.end method

.method private static a([B[I)[B
    .registers 10

    .line 385
    array-length v0, p0

    const/4 v1, 0x0

    sub-int/2addr v0, v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-lt v0, v2, :cond_4b

    if-eqz p1, :cond_4b

    array-length v0, p1

    const/16 v4, 0x8

    if-eq v0, v4, :cond_f

    goto :goto_4b

    .line 389
    :cond_f
    nop

    .line 390
    array-length v0, p0

    sub-int/2addr v0, v2

    sub-int/2addr v0, v1

    .line 394
    :try_start_13
    new-array v2, v0, [B
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_15} :catch_46

    .line 401
    nop

    .line 403
    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_18
    if-ge v4, v0, :cond_2b

    .line 404
    add-int/lit8 v6, v4, 0x0

    aget-byte v6, p0, v6

    .line 405
    rem-int/lit8 v7, v4, 0x8

    aget v7, p1, v7

    xor-int/2addr v6, v7

    int-to-byte v6, v6

    .line 406
    aput-byte v6, v2, v4

    .line 407
    xor-int/2addr v5, v6

    int-to-byte v5, v5

    .line 403
    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    .line 410
    :cond_2b
    add-int/lit8 v4, v0, 0x0

    aget-byte v4, p0, v4

    aget v6, p1, v1

    xor-int/2addr v6, v5

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    if-ne v4, v6, :cond_45

    const/4 v4, 0x1

    add-int/2addr v0, v4

    add-int/2addr v0, v1

    aget-byte p0, p0, v0

    aget p1, p1, v4

    xor-int/2addr p1, v5

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    if-ne p0, p1, :cond_45

    .line 413
    return-object v2

    .line 415
    :cond_45
    return-object v3

    .line 398
    :catch_46
    move-exception p0

    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 400
    return-object v3

    .line 387
    :cond_4b
    :goto_4b
    return-object v3
.end method

.method private static b([B[I)[B
    .registers 9

    .line 425
    const/4 v0, 0x0

    if-eqz p0, :cond_3a

    if-eqz p1, :cond_3a

    array-length v1, p1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_b

    goto :goto_3a

    .line 428
    :cond_b
    nop

    .line 429
    array-length v1, p0

    .line 433
    add-int/lit8 v2, v1, 0x2

    :try_start_f
    new-array v0, v2, [B
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_11} :catch_35

    .line 440
    nop

    .line 442
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_15
    if-ge v3, v1, :cond_26

    .line 443
    aget-byte v5, p0, v3

    .line 444
    rem-int/lit8 v6, v3, 0x8

    aget v6, p1, v6

    xor-int/2addr v6, v5

    int-to-byte v6, v6

    .line 445
    aput-byte v6, v0, v3

    .line 446
    xor-int/2addr v4, v5

    int-to-byte v4, v4

    .line 442
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 449
    :cond_26
    aget p0, p1, v2

    xor-int/2addr p0, v4

    int-to-byte p0, p0

    aput-byte p0, v0, v1

    .line 450
    const/4 p0, 0x1

    add-int/2addr v1, p0

    aget p0, p1, p0

    xor-int/2addr p0, v4

    int-to-byte p0, p0

    aput-byte p0, v0, v1

    .line 452
    return-object v0

    .line 437
    :catch_35
    move-exception p0

    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 439
    return-object v0

    .line 426
    :cond_3a
    :goto_3a
    return-object v0
.end method
