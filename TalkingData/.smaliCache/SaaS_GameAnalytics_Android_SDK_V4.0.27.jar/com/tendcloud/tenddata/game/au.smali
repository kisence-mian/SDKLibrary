.class public Lcom/tendcloud/tenddata/game/au;
.super Ljava/lang/Object;
.source "td"


# static fields
.field static a:Landroid/telephony/TelephonyManager; = null

.field static b:Ljava/lang/String; = null

.field private static final c:Ljava/lang/String; = "pref.deviceid.key"

.field private static final d:Ljava/lang/String; = "00:00:00:00:00:00"

.field private static final e:Ljava/util/regex/Pattern;

.field private static final f:Ljava/util/regex/Pattern;

.field private static final g:Ljava/util/regex/Pattern;

.field private static final h:Ljava/lang/String; = ".tcookieid"

.field private static i:Ljava/lang/String;

.field private static j:Z

.field private static k:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 39
    nop

    .line 40
    const-string v0, "^([0-9A-F]{2}:){5}([0-9A-F]{2})$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/tendcloud/tenddata/game/au;->e:Ljava/util/regex/Pattern;

    .line 42
    nop

    .line 43
    const-string v0, "[0-3][0-9a-f]{24,32}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/tendcloud/tenddata/game/au;->f:Ljava/util/regex/Pattern;

    .line 45
    nop

    .line 46
    const-string v0, "[0-3][0-9a-f]{32}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/tendcloud/tenddata/game/au;->g:Ljava/util/regex/Pattern;

    .line 220
    const/4 v0, 0x0

    sput-object v0, Lcom/tendcloud/tenddata/game/au;->i:Ljava/lang/String;

    .line 221
    const/4 v1, 0x0

    sput-boolean v1, Lcom/tendcloud/tenddata/game/au;->j:Z

    .line 598
    sput-object v0, Lcom/tendcloud/tenddata/game/au;->k:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a()Ljava/lang/String;
    .registers 11

    .line 375
    nop

    .line 377
    const/4 v0, 0x0

    :try_start_2
    new-instance v1, Ljava/io/File;

    const-string v2, "/"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 378
    if-eqz v1, :cond_71

    array-length v2, v1

    if-nez v2, :cond_13

    goto :goto_71

    .line 381
    :cond_13
    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_16
    if-ge v4, v2, :cond_70

    aget-object v5, v1, v4

    .line 382
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_6d

    const-string v6, "/sdcard"

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6d

    .line 383
    invoke-virtual {v5}, Ljava/io/File;->canWrite()Z

    move-result v6
    :try_end_30
    .catchall {:try_start_2 .. :try_end_30} :catchall_72

    const-string v7, ".tcookieid"

    if-eqz v6, :cond_44

    .line 384
    :try_start_34
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v6}, Lcom/tendcloud/tenddata/game/au;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 385
    invoke-static {v0}, Lcom/tendcloud/tenddata/game/bq;->b(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_44

    .line 386
    return-object v0

    .line 389
    :cond_44
    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    if-eqz v6, :cond_6d

    .line 390
    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    array-length v6, v5

    const/4 v8, 0x0

    :goto_50
    if-ge v8, v6, :cond_6d

    aget-object v9, v5, v8

    .line 391
    invoke-virtual {v9}, Ljava/io/File;->isDirectory()Z

    move-result v10

    if-eqz v10, :cond_6a

    .line 392
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v9, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v10}, Lcom/tendcloud/tenddata/game/au;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 393
    invoke-static {v0}, Lcom/tendcloud/tenddata/game/bq;->b(Ljava/lang/String;)Z

    move-result v9
    :try_end_67
    .catchall {:try_start_34 .. :try_end_67} :catchall_72

    if-nez v9, :cond_6a

    .line 394
    return-object v0

    .line 390
    :cond_6a
    add-int/lit8 v8, v8, 0x1

    goto :goto_50

    .line 381
    :cond_6d
    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    .line 403
    :cond_70
    goto :goto_73

    .line 379
    :cond_71
    :goto_71
    return-object v0

    .line 401
    :catchall_72
    move-exception v1

    .line 404
    :goto_73
    return-object v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    const-class v0, Lcom/tendcloud/tenddata/game/au;

    monitor-enter v0

    .line 64
    :try_start_3
    sget-object v1, Lcom/tendcloud/tenddata/game/au;->b:Ljava/lang/String;

    if-nez v1, :cond_d

    .line 65
    invoke-static {p0}, Lcom/tendcloud/tenddata/game/au;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/tendcloud/tenddata/game/au;->b:Ljava/lang/String;

    .line 67
    :cond_d
    sget-object p0, Lcom/tendcloud/tenddata/game/au;->b:Ljava/lang/String;
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_11

    monitor-exit v0

    return-object p0

    .line 63
    :catchall_11
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static a(Landroid/content/Context;Z)Ljava/lang/String;
    .registers 5

    .line 351
    const/16 v0, 0x17

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/bq;->a(I)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 352
    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_12

    .line 354
    const/4 p0, 0x0

    return-object p0

    .line 357
    :cond_12
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 358
    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70

    .line 359
    new-instance v0, Ljava/io/File;

    .line 360
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, ".tcookieid"

    if-eqz p1, :cond_29

    goto :goto_3e

    :cond_29
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 362
    invoke-static {p0}, Lcom/tendcloud/tenddata/game/au;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_3e
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 359
    invoke-static {v0}, Lcom/tendcloud/tenddata/game/au;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    .line 363
    invoke-static {p1}, Lcom/tendcloud/tenddata/game/bq;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 364
    new-instance p1, Ljava/io/File;

    .line 365
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ".tid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 366
    invoke-static {p0}, Lcom/tendcloud/tenddata/game/au;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v0, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 364
    invoke-static {p1}, Lcom/tendcloud/tenddata/game/au;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    .line 368
    :cond_6f
    return-object p1

    .line 370
    :cond_70
    const-string p0, ""

    return-object p0
.end method

.method private static a(Ljava/io/File;)Ljava/lang/String;
    .registers 6

    .line 408
    nop

    .line 410
    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-virtual {p0}, Ljava/io/File;->canRead()Z

    move-result v1
    :try_end_c
    .catchall {:try_start_2 .. :try_end_c} :catchall_38

    if-eqz v1, :cond_2f

    .line 411
    nop

    .line 413
    :try_start_f
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_2c

    .line 414
    const/16 p0, 0x80

    :try_start_16
    new-array p0, p0, [B

    .line 415
    invoke-virtual {v1, p0}, Ljava/io/FileInputStream;->read([B)I

    move-result v2

    .line 416
    new-instance v3, Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4, v2}, Ljava/lang/String;-><init>([BII)V
    :try_end_22
    .catchall {:try_start_16 .. :try_end_22} :catchall_2a

    .line 417
    nop

    .line 430
    nop

    .line 432
    :try_start_24
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_28

    .line 437
    goto :goto_29

    .line 433
    :catchall_28
    move-exception p0

    .line 417
    :goto_29
    return-object v3

    .line 418
    :catchall_2a
    move-exception p0

    goto :goto_30

    :catchall_2c
    move-exception p0

    move-object v1, v0

    goto :goto_30

    .line 430
    :cond_2f
    move-object v1, v0

    :goto_30
    if-eqz v1, :cond_3a

    .line 432
    :try_start_32
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_36

    .line 437
    :goto_35
    goto :goto_3a

    .line 433
    :catchall_36
    move-exception p0

    goto :goto_35

    .line 425
    :catchall_38
    move-exception p0

    .line 430
    nop

    .line 442
    :cond_3a
    :goto_3a
    return-object v0
.end method

.method static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 34
    sput-object p0, Lcom/tendcloud/tenddata/game/au;->i:Ljava/lang/String;

    return-object p0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 14

    .line 476
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 477
    if-eqz v0, :cond_a7

    array-length v1, v0

    if-nez v1, :cond_12

    goto/16 :goto_a7

    .line 480
    :cond_12
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_15
    if-ge v3, v1, :cond_a6

    aget-object v4, v0, v3

    .line 481
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_a2

    const-string v5, "/sdcard"

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a2

    .line 482
    invoke-virtual {v4}, Ljava/io/File;->canWrite()Z

    move-result v5
    :try_end_2f
    .catchall {:try_start_0 .. :try_end_2f} :catchall_a8

    const-string v6, ".tcookieid"

    if-eqz v5, :cond_5b

    .line 483
    :try_start_33
    new-instance v5, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p0}, Lcom/tendcloud/tenddata/game/au;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v4, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 484
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_5b

    .line 486
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v5, p1}, Lcom/tendcloud/tenddata/game/au;->a(Ljava/io/File;Ljava/lang/String;)V

    .line 489
    :cond_5b
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    if-eqz v5, :cond_a2

    .line 490
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    array-length v5, v4

    const/4 v7, 0x0

    :goto_67
    if-ge v7, v5, :cond_a2

    aget-object v8, v4, v7

    .line 491
    invoke-virtual {v8}, Ljava/io/File;->isDirectory()Z

    move-result v9

    if-eqz v9, :cond_9f

    invoke-virtual {v8}, Ljava/io/File;->canWrite()Z

    move-result v9

    if-eqz v9, :cond_9f

    .line 492
    new-instance v9, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 493
    invoke-static {p0}, Lcom/tendcloud/tenddata/game/au;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v8, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_9f

    .line 495
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v8, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v9, p1}, Lcom/tendcloud/tenddata/game/au;->a(Ljava/io/File;Ljava/lang/String;)V
    :try_end_9f
    .catchall {:try_start_33 .. :try_end_9f} :catchall_a8

    .line 490
    :cond_9f
    add-int/lit8 v7, v7, 0x1

    goto :goto_67

    .line 480
    :cond_a2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_15

    .line 506
    :cond_a6
    goto :goto_a9

    .line 478
    :cond_a7
    :goto_a7
    return-void

    .line 502
    :catchall_a8
    move-exception p0

    .line 507
    :goto_a9
    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 6

    .line 464
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1
    :try_end_6
    .catchall {:try_start_0 .. :try_end_6} :catchall_27

    const-string v2, ".tcookieid"

    if-eqz p2, :cond_b

    goto :goto_20

    :cond_b
    :try_start_b
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 465
    invoke-static {p0}, Lcom/tendcloud/tenddata/game/au;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_20
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 464
    invoke-static {v0, p1}, Lcom/tendcloud/tenddata/game/au;->a(Ljava/io/File;Ljava/lang/String;)V
    :try_end_26
    .catchall {:try_start_b .. :try_end_26} :catchall_27

    .line 471
    goto :goto_28

    .line 467
    :catchall_27
    move-exception p0

    .line 472
    :goto_28
    return-void
.end method

.method private static a(Ljava/io/File;Ljava/lang/String;)V
    .registers 9

    .line 510
    nop

    .line 512
    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p0}, Ljava/io/File;->canWrite()Z

    move-result v1

    if-eqz v1, :cond_68

    .line 513
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_d
    .catchall {:try_start_2 .. :try_end_d} :catchall_6e

    .line 514
    :try_start_d
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 515
    const/16 p1, 0x9

    invoke-static {p1}, Lcom/tendcloud/tenddata/game/bq;->a(I)Z

    move-result p1

    if-eqz p1, :cond_45

    .line 516
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-string v0, "setReadable"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-virtual {p1, v0, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 518
    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v6

    invoke-virtual {p1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 519
    goto :goto_63

    .line 520
    :cond_45
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "chmod 444 "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_63
    .catchall {:try_start_d .. :try_end_63} :catchall_65

    .line 528
    :goto_63
    move-object v0, v1

    goto :goto_68

    .line 523
    :catchall_65
    move-exception p0

    move-object v0, v1

    goto :goto_6f

    .line 528
    :cond_68
    :goto_68
    if-eqz v0, :cond_77

    .line 530
    :try_start_6a
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    goto :goto_74

    .line 523
    :catchall_6e
    move-exception p0

    .line 528
    :goto_6f
    if-eqz v0, :cond_77

    .line 530
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_74
    .catchall {:try_start_6a .. :try_end_74} :catchall_75

    .line 535
    :goto_74
    goto :goto_77

    .line 531
    :catchall_75
    move-exception p0

    goto :goto_74

    .line 538
    :cond_77
    :goto_77
    return-void
.end method

.method static synthetic a(Z)Z
    .registers 1

    .line 34
    sput-boolean p0, Lcom/tendcloud/tenddata/game/au;->j:Z

    return p0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 72
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "android_id"

    invoke-static {p0, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_a
    .catchall {:try_start_0 .. :try_end_a} :catchall_b

    return-object p0

    .line 74
    :catchall_b
    move-exception p0

    .line 77
    const/4 p0, 0x0

    return-object p0
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 542
    :try_start_0
    const-string v0, "tdid"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 544
    if-eqz p0, :cond_15

    .line 545
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 546
    const-string v0, "pref.deviceid.key"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 547
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_15
    .catchall {:try_start_0 .. :try_end_15} :catchall_16

    .line 552
    :cond_15
    goto :goto_17

    .line 549
    :catchall_16
    move-exception p0

    .line 553
    :goto_17
    return-void
.end method

.method static b()Z
    .registers 2

    .line 586
    nop

    .line 588
    const/16 v0, 0x9

    const/4 v1, 0x1

    :try_start_4
    invoke-static {v0}, Lcom/tendcloud/tenddata/game/bq;->a(I)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 589
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v0
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_11

    goto :goto_10

    .line 588
    :cond_f
    const/4 v0, 0x1

    .line 593
    :goto_10
    goto :goto_13

    .line 590
    :catchall_11
    move-exception v0

    const/4 v0, 0x1

    .line 595
    :goto_13
    xor-int/2addr v0, v1

    return v0
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .line 83
    const/16 v0, 0x17

    const/4 v1, 0x0

    :try_start_3
    invoke-static {v0}, Lcom/tendcloud/tenddata/game/bq;->a(I)Z

    move-result v0
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_45

    const-string v2, "android.permission.READ_PHONE_STATE"

    if-eqz v0, :cond_12

    .line 84
    :try_start_b
    invoke-virtual {p0, v2}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_12

    .line 86
    return-object v1

    .line 89
    :cond_12
    invoke-static {p0, v2}, Lcom/tendcloud/tenddata/game/bq;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 91
    sget-object v0, Lcom/tendcloud/tenddata/game/au;->a:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_1f

    .line 92
    invoke-static {p0}, Lcom/tendcloud/tenddata/game/au;->init(Landroid/content/Context;)V

    .line 95
    :cond_1f
    nop

    .line 96
    invoke-static {p0}, Lcom/tendcloud/tenddata/game/bb;->A(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object p0

    .line 97
    if-eqz p0, :cond_3a

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0
    :try_end_2a
    .catchall {:try_start_b .. :try_end_2a} :catchall_45

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3a

    .line 99
    const/4 v0, 0x1

    :try_start_2e
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p0

    const-string v0, "imei"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_38} :catch_39
    .catchall {:try_start_2e .. :try_end_38} :catchall_45

    .line 103
    goto :goto_3b

    .line 100
    :catch_39
    move-exception p0

    .line 105
    :cond_3a
    move-object p0, v1

    :goto_3b
    if-nez p0, :cond_43

    .line 106
    :try_start_3d
    sget-object p0, Lcom/tendcloud/tenddata/game/au;->a:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object p0
    :try_end_43
    .catchall {:try_start_3d .. :try_end_43} :catchall_45

    .line 108
    :cond_43
    return-object p0

    .line 113
    :cond_44
    goto :goto_46

    .line 110
    :catchall_45
    move-exception p0

    .line 114
    :goto_46
    return-object v1
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .line 119
    const/16 v0, 0x17

    const/4 v1, 0x0

    :try_start_3
    invoke-static {v0}, Lcom/tendcloud/tenddata/game/bq;->a(I)Z

    move-result v0
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_27

    const-string v2, "android.permission.READ_PHONE_STATE"

    if-eqz v0, :cond_12

    .line 120
    :try_start_b
    invoke-virtual {p0, v2}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_12

    .line 122
    return-object v1

    .line 124
    :cond_12
    invoke-static {p0, v2}, Lcom/tendcloud/tenddata/game/bq;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 126
    sget-object v0, Lcom/tendcloud/tenddata/game/au;->a:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_1f

    .line 127
    invoke-static {p0}, Lcom/tendcloud/tenddata/game/au;->init(Landroid/content/Context;)V

    .line 129
    :cond_1f
    sget-object p0, Lcom/tendcloud/tenddata/game/au;->a:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object p0
    :try_end_25
    .catchall {:try_start_b .. :try_end_25} :catchall_27

    return-object p0

    .line 134
    :cond_26
    goto :goto_28

    .line 131
    :catchall_27
    move-exception p0

    .line 135
    :goto_28
    return-object v1
.end method

.method public static e(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .line 140
    const/16 v0, 0x17

    const/4 v1, 0x0

    :try_start_3
    invoke-static {v0}, Lcom/tendcloud/tenddata/game/bq;->a(I)Z

    move-result v0
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_27

    const-string v2, "android.permission.READ_PHONE_STATE"

    if-eqz v0, :cond_12

    .line 141
    :try_start_b
    invoke-virtual {p0, v2}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_12

    .line 143
    return-object v1

    .line 145
    :cond_12
    invoke-static {p0, v2}, Lcom/tendcloud/tenddata/game/bq;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 147
    sget-object v0, Lcom/tendcloud/tenddata/game/au;->a:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_1f

    .line 148
    invoke-static {p0}, Lcom/tendcloud/tenddata/game/au;->init(Landroid/content/Context;)V

    .line 150
    :cond_1f
    sget-object p0, Lcom/tendcloud/tenddata/game/au;->a:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object p0
    :try_end_25
    .catchall {:try_start_b .. :try_end_25} :catchall_27

    return-object p0

    .line 155
    :cond_26
    goto :goto_28

    .line 152
    :catchall_27
    move-exception p0

    .line 156
    :goto_28
    return-object v1
.end method

.method public static f(Landroid/content/Context;)Ljava/lang/String;
    .registers 11

    .line 160
    nop

    .line 162
    const-string v0, "02:00:00:00:00:00"

    .line 165
    const/16 v1, 0x17

    const/4 v2, 0x0

    :try_start_6
    invoke-static {v1}, Lcom/tendcloud/tenddata/game/bq;->a(I)Z

    move-result v1
    :try_end_a
    .catchall {:try_start_6 .. :try_end_a} :catchall_d2

    if-eqz v1, :cond_8a

    .line 167
    :try_start_c
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object p0

    .line 168
    if-eqz p0, :cond_80

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_1d

    goto :goto_80

    .line 171
    :cond_1d
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_21
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/NetworkInterface;

    .line 172
    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "wlan0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3a

    goto :goto_21

    .line 173
    :cond_3a
    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    move-result-object v1

    .line 174
    if-nez v1, :cond_43

    .line 175
    const-string p0, ""

    return-object p0

    .line 177
    :cond_43
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 178
    array-length v4, v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_4b
    const/4 v7, 0x1

    if-ge v6, v4, :cond_64

    aget-byte v8, v1, v6

    .line 179
    const-string v9, "%02X:"

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-static {v9, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    add-int/lit8 v6, v6, 0x1

    goto :goto_4b

    .line 181
    :cond_64
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_72

    .line 182
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    sub-int/2addr v1, v7

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 184
    :cond_72
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2
    :try_end_7e
    .catchall {:try_start_c .. :try_end_7e} :catchall_81

    .line 185
    goto :goto_21

    .line 189
    :cond_7f
    goto :goto_82

    .line 169
    :cond_80
    :goto_80
    return-object v0

    .line 186
    :catchall_81
    move-exception p0

    .line 190
    :goto_82
    :try_start_82
    invoke-static {v2}, Lcom/tendcloud/tenddata/game/bq;->b(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_89

    move-object v0, v2

    :cond_89
    return-object v0

    .line 192
    :cond_8a
    const-string v0, "android.permission.ACCESS_WIFI_STATE"

    invoke-static {p0, v0}, Lcom/tendcloud/tenddata/game/bq;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d1

    .line 194
    const-string v0, "wifi"

    .line 195
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    .line 197
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_d1

    .line 198
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p0

    .line 199
    if-eqz p0, :cond_d1

    .line 200
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object p0
    :try_end_aa
    .catchall {:try_start_82 .. :try_end_aa} :catchall_d2

    .line 201
    if-eqz p0, :cond_d0

    .line 202
    :try_start_ac
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 203
    const-string v0, "00:00:00:00:00:00"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_cb

    sget-object v0, Lcom/tendcloud/tenddata/game/au;->e:Ljava/util/regex/Pattern;

    .line 204
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0
    :try_end_c6
    .catchall {:try_start_ac .. :try_end_c6} :catchall_cc

    if-nez v0, :cond_c9

    goto :goto_cb

    :cond_c9
    move-object v2, p0

    goto :goto_d1

    .line 205
    :cond_cb
    :goto_cb
    goto :goto_d1

    .line 212
    :catchall_cc
    move-exception v0

    move-object v2, p0

    move-object p0, v0

    goto :goto_d3

    .line 201
    :cond_d0
    move-object v2, p0

    .line 216
    :cond_d1
    :goto_d1
    goto :goto_d6

    .line 212
    :catchall_d2
    move-exception p0

    .line 213
    :goto_d3
    invoke-static {p0}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    .line 217
    :goto_d6
    return-object v2
.end method

.method public static final g(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 225
    :try_start_0
    sget-boolean v0, Lcom/tendcloud/tenddata/game/au;->j:Z

    if-nez v0, :cond_e

    .line 226
    sget-object v0, Lcom/tendcloud/tenddata/game/bn;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/tendcloud/tenddata/game/av;

    invoke-direct {v1, p0}, Lcom/tendcloud/tenddata/game/av;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 247
    :cond_e
    sget-object p0, Lcom/tendcloud/tenddata/game/au;->i:Ljava/lang/String;
    :try_end_10
    .catchall {:try_start_0 .. :try_end_10} :catchall_11

    return-object p0

    .line 248
    :catchall_11
    move-exception p0

    .line 249
    invoke-static {p0}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    .line 252
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final h(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 259
    const/16 v0, 0x9

    :try_start_2
    invoke-static {v0}, Lcom/tendcloud/tenddata/game/bq;->a(I)Z

    move-result v0

    const/16 v1, 0x1a

    if-eqz v0, :cond_13

    invoke-static {v1}, Lcom/tendcloud/tenddata/game/bq;->b(I)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 260
    sget-object p0, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    return-object p0

    .line 261
    :cond_13
    invoke-static {v1}, Lcom/tendcloud/tenddata/game/bq;->a(I)Z

    move-result v0

    if-eqz v0, :cond_26

    const-string v0, "android.permission.READ_PHONE_STATE"

    .line 262
    invoke-static {p0, v0}, Lcom/tendcloud/tenddata/game/bq;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_26

    .line 263
    invoke-static {}, Landroid/os/Build;->getSerial()Ljava/lang/String;

    move-result-object p0
    :try_end_25
    .catchall {:try_start_2 .. :try_end_25} :catchall_27

    return-object p0

    .line 268
    :cond_26
    goto :goto_28

    .line 265
    :catchall_27
    move-exception p0

    .line 269
    :goto_28
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final i(Landroid/content/Context;)Ljava/lang/String;
    .registers 11

    .line 274
    const-string v0, "|"

    :try_start_2
    invoke-static {p0}, Lcom/tendcloud/tenddata/game/au;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 276
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1e

    .line 277
    const-string v2, ":"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 278
    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 280
    :cond_1e
    invoke-static {p0}, Lcom/tendcloud/tenddata/game/au;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 281
    invoke-static {p0}, Lcom/tendcloud/tenddata/game/au;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 282
    invoke-static {p0}, Lcom/tendcloud/tenddata/game/au;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 283
    invoke-static {p0}, Lcom/tendcloud/tenddata/game/au;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 284
    invoke-static {p0}, Lcom/tendcloud/tenddata/game/au;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 285
    invoke-static {p0}, Lcom/tendcloud/tenddata/game/au;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 286
    invoke-static {p0}, Lcom/tendcloud/tenddata/game/au;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 288
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 289
    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 290
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 291
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 292
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 293
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_88
    .catchall {:try_start_2 .. :try_end_88} :catchall_89

    .line 289
    return-object p0

    .line 294
    :catchall_89
    move-exception p0

    .line 297
    const/4 p0, 0x0

    return-object p0
.end method

.method public static init(Landroid/content/Context;)V
    .registers 2

    .line 56
    :try_start_0
    const-string v0, "phone"

    .line 57
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    sput-object p0, Lcom/tendcloud/tenddata/game/au;->a:Landroid/telephony/TelephonyManager;
    :try_end_a
    .catchall {:try_start_0 .. :try_end_a} :catchall_b

    .line 60
    goto :goto_c

    .line 58
    :catchall_b
    move-exception p0

    .line 61
    :goto_c
    return-void
.end method

.method static j(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    .line 447
    const-string v0, "pref.deviceid.key"

    :try_start_2
    const-string v1, "tdid"

    const/4 v2, 0x0

    invoke-static {p0, v1, v0, v2}, Lcom/tendcloud/tenddata/game/bg;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 449
    invoke-static {v1}, Lcom/tendcloud/tenddata/game/bq;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 450
    nop

    .line 451
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 452
    invoke-interface {p0, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_18
    .catchall {:try_start_2 .. :try_end_18} :catchall_19

    .line 454
    :cond_18
    return-object v1

    .line 455
    :catchall_19
    move-exception p0

    .line 456
    const-string p0, ""

    return-object p0
.end method

.method static k(Landroid/content/Context;)Ljava/lang/String;
    .registers 7

    .line 601
    sget-object v0, Lcom/tendcloud/tenddata/game/au;->k:Ljava/lang/String;

    if-nez v0, :cond_8e

    .line 603
    :try_start_4
    const-string v0, "sensor"

    .line 604
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/SensorManager;

    .line 605
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object p0

    .line 606
    const/16 v0, 0x40

    new-array v1, v0, [Landroid/hardware/Sensor;

    .line 607
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_19
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_38

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Sensor;

    .line 608
    invoke-virtual {v2}, Landroid/hardware/Sensor;->getType()I

    move-result v3

    if-ge v3, v0, :cond_37

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getType()I

    move-result v3

    if-ltz v3, :cond_37

    .line 609
    invoke-virtual {v2}, Landroid/hardware/Sensor;->getType()I

    move-result v3

    aput-object v2, v1, v3

    .line 610
    :cond_37
    goto :goto_19

    .line 611
    :cond_38
    new-instance p0, Ljava/lang/StringBuffer;

    invoke-direct {p0}, Ljava/lang/StringBuffer;-><init>()V

    .line 612
    const/4 v2, 0x0

    :goto_3e
    if-ge v2, v0, :cond_7e

    .line 613
    aget-object v3, v1, v2

    if-eqz v3, :cond_7b

    .line 614
    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const/16 v4, 0x2e

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    aget-object v4, v1, v2

    invoke-virtual {v4}, Landroid/hardware/Sensor;->getVendor()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 615
    const/16 v4, 0x2d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    aget-object v5, v1, v2

    invoke-virtual {v5}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    aget-object v4, v1, v2

    .line 616
    invoke-virtual {v4}, Landroid/hardware/Sensor;->getVersion()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 612
    :cond_7b
    add-int/lit8 v2, v2, 0x1

    goto :goto_3e

    .line 619
    :cond_7e
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/tendcloud/tenddata/game/au;->k:Ljava/lang/String;
    :try_end_8c
    .catchall {:try_start_4 .. :try_end_8c} :catchall_8d

    .line 622
    goto :goto_8e

    .line 620
    :catchall_8d
    move-exception p0

    .line 624
    :cond_8e
    :goto_8e
    sget-object p0, Lcom/tendcloud/tenddata/game/au;->k:Ljava/lang/String;

    return-object p0
.end method

.method private static l(Landroid/content/Context;)Ljava/lang/String;
    .registers 14

    .line 301
    invoke-static {p0}, Lcom/tendcloud/tenddata/game/au;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 302
    invoke-static {}, Lcom/tendcloud/tenddata/game/au;->a()Ljava/lang/String;

    move-result-object v1

    .line 304
    invoke-static {}, Lcom/tendcloud/tenddata/game/au;->b()Z

    move-result v2

    .line 305
    invoke-static {p0, v2}, Lcom/tendcloud/tenddata/game/au;->a(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v3

    .line 307
    const/4 v4, 0x3

    new-array v5, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v7, 0x1

    aput-object v1, v5, v7

    const/4 v7, 0x2

    aput-object v3, v5, v7

    .line 309
    nop

    .line 311
    const/4 v7, 0x0

    :goto_1e
    if-ge v7, v4, :cond_39

    aget-object v8, v5, v7

    .line 312
    invoke-static {v8}, Lcom/tendcloud/tenddata/game/bq;->b(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_36

    sget-object v9, Lcom/tendcloud/tenddata/game/au;->g:Ljava/util/regex/Pattern;

    .line 313
    invoke-virtual {v9, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/regex/Matcher;->matches()Z

    move-result v9

    if-eqz v9, :cond_36

    .line 314
    nop

    .line 315
    goto :goto_3a

    .line 311
    :cond_36
    add-int/lit8 v7, v7, 0x1

    goto :goto_1e

    :cond_39
    const/4 v8, 0x0

    .line 321
    :goto_3a
    invoke-static {v8}, Lcom/tendcloud/tenddata/game/bq;->b(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_70

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/bq;->b(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_70

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v9

    const-wide v11, 0x3fefae147ae147aeL    # 0.99

    cmpg-double v7, v9, v11

    if-gez v7, :cond_70

    .line 322
    nop

    :goto_54
    if-ge v6, v4, :cond_70

    aget-object v7, v5, v6

    .line 323
    invoke-static {v7}, Lcom/tendcloud/tenddata/game/bq;->b(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_6d

    sget-object v9, Lcom/tendcloud/tenddata/game/au;->f:Ljava/util/regex/Pattern;

    invoke-virtual {v9, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/regex/Matcher;->matches()Z

    move-result v9

    if-eqz v9, :cond_6d

    .line 324
    nop

    .line 325
    move-object v8, v7

    goto :goto_70

    .line 322
    :cond_6d
    add-int/lit8 v6, v6, 0x1

    goto :goto_54

    .line 329
    :cond_70
    :goto_70
    invoke-static {v8}, Lcom/tendcloud/tenddata/game/bq;->b(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7a

    .line 330
    invoke-static {p0}, Lcom/tendcloud/tenddata/game/au;->m(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    .line 333
    :cond_7a
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_83

    .line 334
    invoke-static {p0, v8}, Lcom/tendcloud/tenddata/game/au;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 338
    :cond_83
    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8c

    .line 339
    invoke-static {p0, v8, v2}, Lcom/tendcloud/tenddata/game/au;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 341
    :cond_8c
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_95

    .line 342
    invoke-static {p0, v8}, Lcom/tendcloud/tenddata/game/au;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 345
    :cond_95
    return-object v8
.end method

.method private static m(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 568
    invoke-static {p0}, Lcom/tendcloud/tenddata/game/au;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 569
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "3"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/tendcloud/tenddata/game/bq;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 570
    return-object p0
.end method

.method private static n(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    .line 575
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 576
    invoke-static {p0}, Lcom/tendcloud/tenddata/game/au;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/tendcloud/tenddata/game/au;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 577
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/tendcloud/tenddata/game/au;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 579
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_2a
    .catchall {:try_start_0 .. :try_end_2a} :catchall_2b

    return-object p0

    .line 580
    :catchall_2b
    move-exception p0

    .line 581
    const-string p0, ""

    return-object p0
.end method
