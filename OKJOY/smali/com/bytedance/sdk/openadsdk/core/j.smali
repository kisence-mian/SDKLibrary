.class public Lcom/bytedance/sdk/openadsdk/core/j;
.super Ljava/lang/Object;
.source "IdUtils.java"


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;

.field private static e:Ljava/lang/String;

.field private static f:Ljava/lang/String;

.field private static g:Ljava/lang/String;

.field private static h:Ljava/lang/String;

.field private static i:Ljava/lang/String;

.field private static j:Ljava/lang/String;

.field private static k:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()Ljava/lang/String;
    .registers 3

    .prologue
    .line 472
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 477
    :try_start_5
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 478
    const-string v1, "MIUI-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 490
    :cond_10
    :goto_10
    sget-object v1, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_15} :catch_26

    .line 493
    :goto_15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 479
    :cond_1a
    :try_start_1a
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/ac;->b()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 480
    const-string v1, "FLYME-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_10

    .line 491
    :catch_26
    move-exception v1

    goto :goto_15

    .line 482
    :cond_28
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/ac;->n()Ljava/lang/String;

    move-result-object v1

    .line 483
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/ac;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 484
    const-string v2, "EMUI-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 486
    :cond_37
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_10

    .line 487
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_46} :catch_26

    goto :goto_10
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 62
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/j;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 63
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/core/j;->k:Z

    if-nez v0, :cond_17

    .line 64
    const-class v1, Lcom/bytedance/sdk/openadsdk/core/j;

    monitor-enter v1

    .line 65
    :try_start_f
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/core/j;->k:Z

    if-nez v0, :cond_16

    .line 66
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/j;->l(Landroid/content/Context;)V

    .line 68
    :cond_16
    monitor-exit v1
    :try_end_17
    .catchall {:try_start_f .. :try_end_17} :catchall_39

    .line 72
    :cond_17
    :try_start_17
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/j;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 73
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 74
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/j;->k(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/d;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/d;

    move-result-object v0

    const-string v1, "did"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/d;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/j;->a:Ljava/lang/String;
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_36} :catch_3c

    .line 78
    :cond_36
    :goto_36
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/j;->a:Ljava/lang/String;

    return-object v0

    .line 68
    :catchall_39
    move-exception v0

    :try_start_3a
    monitor-exit v1
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    throw v0

    .line 76
    :catch_3c
    move-exception v0

    goto :goto_36
.end method

.method private static declared-synchronized a(Landroid/content/Context;Z)Ljava/lang/String;
    .registers 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "TrulyRandom",
            "HardwareIds"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 348
    const-class v3, Lcom/bytedance/sdk/openadsdk/core/j;

    monitor-enter v3

    :try_start_4
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/j;->k(Landroid/content/Context;)Landroid/content/Context;
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_93

    move-result-object v2

    .line 349
    if-nez v2, :cond_c

    .line 395
    :cond_a
    :goto_a
    monitor-exit v3

    return-object v0

    .line 355
    :cond_c
    :try_start_c
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "android_id"

    invoke-static {v1, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_15} :catch_70
    .catchall {:try_start_c .. :try_end_15} :catchall_93

    move-result-object v1

    .line 361
    :goto_16
    if-eqz v1, :cond_28

    :try_start_18
    const-string v0, "9774d56d682e549c"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    .line 362
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v4, 0xd

    if-ge v0, v4, :cond_98

    .line 364
    :cond_28
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/d;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/d;

    move-result-object v4

    .line 365
    const-string v0, "openudid"

    const/4 v2, 0x0

    invoke-virtual {v4, v0, v2}, Lcom/bytedance/sdk/openadsdk/core/d;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 366
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/j;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 367
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 368
    new-instance v2, Ljava/math/BigInteger;

    const/16 v5, 0x40

    invoke-direct {v2, v5, v0}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    const/16 v0, 0x10

    invoke-virtual {v2, v0}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 369
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v5, 0x2d

    if-ne v0, v5, :cond_59

    .line 370
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 371
    :cond_59
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    rsub-int/lit8 v0, v0, 0xd

    .line 372
    if-lez v0, :cond_7a

    .line 373
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 374
    :goto_66
    if-lez v0, :cond_73

    .line 375
    const/16 v6, 0x46

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 376
    add-int/lit8 v0, v0, -0x1

    goto :goto_66

    .line 356
    :catch_70
    move-exception v1

    move-object v1, v0

    goto :goto_16

    .line 378
    :cond_73
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 381
    :cond_7a
    if-eqz p1, :cond_96

    .line 382
    const-string v0, "openudid.dat"

    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/j;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 383
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/j;->a(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_96

    .line 387
    :goto_88
    const-string v2, "openudid"

    invoke-virtual {v4, v2, v0}, Lcom/bytedance/sdk/openadsdk/core/d;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_8d} :catch_8f
    .catchall {:try_start_18 .. :try_end_8d} :catchall_93

    goto/16 :goto_a

    .line 391
    :catch_8f
    move-exception v0

    move-object v0, v1

    goto/16 :goto_a

    .line 348
    :catchall_93
    move-exception v0

    monitor-exit v3

    throw v0

    :cond_96
    move-object v0, v2

    goto :goto_88

    :cond_98
    move-object v0, v1

    goto/16 :goto_a
.end method

.method public static a(Landroid/net/wifi/WifiManager;)Ljava/lang/String;
    .registers 8

    .prologue
    .line 293
    const-string v1, "02:00:00:00:00:00"

    .line 294
    if-nez p0, :cond_5

    .line 311
    :cond_4
    :goto_4
    return-object v1

    .line 299
    :cond_5
    :try_start_5
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v3

    .line 300
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v4

    .line 301
    if-eqz v3, :cond_4

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 302
    const/4 v0, 0x0

    move v2, v0

    :goto_19
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_4

    .line 303
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    .line 304
    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3a

    .line 305
    iget-object v0, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_33} :catch_38

    .line 302
    :goto_33
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v0

    goto :goto_19

    .line 309
    :catch_38
    move-exception v0

    goto :goto_4

    :cond_3a
    move-object v0, v1

    goto :goto_33
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    .prologue
    const/4 v0, 0x0

    .line 403
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    .line 404
    const-string v2, "mounted"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 453
    :cond_d
    :goto_d
    return-object p1

    .line 406
    :cond_e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 407
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/Android/data/com.snssdk.api/cache"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 409
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 410
    const/4 v3, 0x0

    .line 411
    const/4 v4, 0x0

    .line 413
    :try_start_42
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 414
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_60

    .line 415
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_50} :catch_bf
    .catchall {:try_start_42 .. :try_end_50} :catchall_d0

    move-result v1

    if-nez v1, :cond_60

    .line 441
    if-eqz v0, :cond_58

    .line 442
    :try_start_55
    invoke-virtual {v3}, Ljava/nio/channels/FileLock;->release()V
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_58} :catch_e0

    .line 447
    :cond_58
    :goto_58
    if-eqz v0, :cond_d

    .line 448
    :try_start_5a
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_5d} :catch_5e

    goto :goto_d

    .line 449
    :catch_5e
    move-exception v0

    goto :goto_d

    .line 418
    :cond_60
    :try_start_60
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 419
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "rwd"

    invoke-direct {v1, v3, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_6c} :catch_bf
    .catchall {:try_start_60 .. :try_end_6c} :catchall_d0

    .line 420
    :try_start_6c
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_73} :catch_f6
    .catchall {:try_start_6c .. :try_end_73} :catchall_ef

    move-result-object v2

    .line 421
    :try_start_74
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_a2

    .line 422
    const/16 v0, 0x81

    .line 423
    new-array v3, v0, [B

    .line 424
    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v0}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v4

    .line 425
    if-lez v4, :cond_a2

    if-ge v4, v0, :cond_a2

    .line 426
    new-instance v0, Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "UTF-8"

    invoke-direct {v0, v3, v5, v4, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 427
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/j;->a(Ljava/lang/String;)Z
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_92} :catch_fb
    .catchall {:try_start_74 .. :try_end_92} :catchall_f4

    move-result v3

    if-eqz v3, :cond_a2

    .line 441
    if-eqz v2, :cond_9a

    .line 442
    :try_start_97
    invoke-virtual {v2}, Ljava/nio/channels/FileLock;->release()V
    :try_end_9a
    .catch Ljava/lang/Exception; {:try_start_97 .. :try_end_9a} :catch_e3

    .line 447
    :cond_9a
    :goto_9a
    if-eqz v1, :cond_9f

    .line 448
    :try_start_9c
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_9f
    .catch Ljava/lang/Exception; {:try_start_9c .. :try_end_9f} :catch_e5

    :cond_9f
    :goto_9f
    move-object p1, v0

    .line 428
    goto/16 :goto_d

    .line 432
    :cond_a2
    :try_start_a2
    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 433
    const-wide/16 v4, 0x0

    invoke-virtual {v1, v4, v5}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 434
    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_b0
    .catch Ljava/lang/Exception; {:try_start_a2 .. :try_end_b0} :catch_fb
    .catchall {:try_start_a2 .. :try_end_b0} :catchall_f4

    .line 441
    if-eqz v2, :cond_b5

    .line 442
    :try_start_b2
    invoke-virtual {v2}, Ljava/nio/channels/FileLock;->release()V
    :try_end_b5
    .catch Ljava/lang/Exception; {:try_start_b2 .. :try_end_b5} :catch_e7

    .line 447
    :cond_b5
    :goto_b5
    if-eqz v1, :cond_d

    .line 448
    :try_start_b7
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_ba
    .catch Ljava/lang/Exception; {:try_start_b7 .. :try_end_ba} :catch_bc

    goto/16 :goto_d

    .line 449
    :catch_bc
    move-exception v0

    goto/16 :goto_d

    .line 436
    :catch_bf
    move-exception v1

    move-object v1, v0

    .line 441
    :goto_c1
    if-eqz v1, :cond_c6

    .line 442
    :try_start_c3
    invoke-virtual {v1}, Ljava/nio/channels/FileLock;->release()V
    :try_end_c6
    .catch Ljava/lang/Exception; {:try_start_c3 .. :try_end_c6} :catch_e9

    .line 447
    :cond_c6
    :goto_c6
    if-eqz v0, :cond_d

    .line 448
    :try_start_c8
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_cb
    .catch Ljava/lang/Exception; {:try_start_c8 .. :try_end_cb} :catch_cd

    goto/16 :goto_d

    .line 449
    :catch_cd
    move-exception v0

    goto/16 :goto_d

    .line 440
    :catchall_d0
    move-exception v1

    move-object v2, v0

    move-object v7, v0

    move-object v0, v1

    move-object v1, v7

    .line 441
    :goto_d5
    if-eqz v2, :cond_da

    .line 442
    :try_start_d7
    invoke-virtual {v2}, Ljava/nio/channels/FileLock;->release()V
    :try_end_da
    .catch Ljava/lang/Exception; {:try_start_d7 .. :try_end_da} :catch_eb

    .line 447
    :cond_da
    :goto_da
    if-eqz v1, :cond_df

    .line 448
    :try_start_dc
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_df
    .catch Ljava/lang/Exception; {:try_start_dc .. :try_end_df} :catch_ed

    .line 451
    :cond_df
    :goto_df
    throw v0

    .line 443
    :catch_e0
    move-exception v1

    goto/16 :goto_58

    :catch_e3
    move-exception v2

    goto :goto_9a

    .line 449
    :catch_e5
    move-exception v1

    goto :goto_9f

    .line 443
    :catch_e7
    move-exception v0

    goto :goto_b5

    :catch_e9
    move-exception v1

    goto :goto_c6

    :catch_eb
    move-exception v2

    goto :goto_da

    .line 449
    :catch_ed
    move-exception v1

    goto :goto_df

    .line 440
    :catchall_ef
    move-exception v2

    move-object v7, v2

    move-object v2, v0

    move-object v0, v7

    goto :goto_d5

    :catchall_f4
    move-exception v0

    goto :goto_d5

    .line 436
    :catch_f6
    move-exception v2

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_c1

    :catch_fb
    move-exception v0

    move-object v0, v1

    move-object v1, v2

    goto :goto_c1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 229
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_19

    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/j;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 230
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/d;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/d;

    move-result-object v0

    .line 231
    const-string v1, "did"

    invoke-virtual {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/core/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    sput-object p1, Lcom/bytedance/sdk/openadsdk/core/j;->a:Ljava/lang/String;

    .line 234
    :cond_19
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/j;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 235
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/j;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/s;->b(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/s;

    move-result-object v0

    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/j;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/s;->a(Ljava/lang/String;)V

    .line 237
    :cond_2c
    return-void
.end method

.method private static a(Ljava/lang/String;)Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 458
    if-nez p0, :cond_4

    .line 468
    :cond_3
    :goto_3
    return v0

    .line 460
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 461
    const/16 v1, 0xd

    if-lt v2, v1, :cond_3

    const/16 v1, 0x80

    if-gt v2, v1, :cond_3

    move v1, v0

    .line 463
    :goto_11
    if-ge v1, v2, :cond_36

    .line 464
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 465
    const/16 v4, 0x30

    if-lt v3, v4, :cond_1f

    const/16 v4, 0x39

    if-le v3, v4, :cond_33

    :cond_1f
    const/16 v4, 0x61

    if-lt v3, v4, :cond_27

    const/16 v4, 0x66

    if-le v3, v4, :cond_33

    :cond_27
    const/16 v4, 0x41

    if-lt v3, v4, :cond_2f

    const/16 v4, 0x46

    if-le v3, v4, :cond_33

    :cond_2f
    const/16 v4, 0x2d

    if-ne v3, v4, :cond_3

    .line 463
    :cond_33
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 468
    :cond_36
    const/4 v0, 0x1

    goto :goto_3
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 82
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/j;->h:Ljava/lang/String;

    if-nez v0, :cond_13

    .line 83
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/core/j;->k:Z

    if-nez v0, :cond_13

    .line 84
    const-class v1, Lcom/bytedance/sdk/openadsdk/core/j;

    monitor-enter v1

    .line 85
    :try_start_b
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/core/j;->k:Z

    if-nez v0, :cond_12

    .line 86
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/j;->l(Landroid/content/Context;)V

    .line 88
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_b .. :try_end_13} :catchall_16

    .line 91
    :cond_13
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/j;->h:Ljava/lang/String;

    return-object v0

    .line 88
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 95
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/j;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 96
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/core/j;->k:Z

    if-nez v0, :cond_17

    .line 97
    const-class v1, Lcom/bytedance/sdk/openadsdk/core/j;

    monitor-enter v1

    .line 98
    :try_start_f
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/core/j;->k:Z

    if-nez v0, :cond_16

    .line 99
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/j;->l(Landroid/content/Context;)V

    .line 101
    :cond_16
    monitor-exit v1
    :try_end_17
    .catchall {:try_start_f .. :try_end_17} :catchall_1a

    .line 104
    :cond_17
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/j;->b:Ljava/lang/String;

    return-object v0

    .line 101
    :catchall_1a
    move-exception v0

    :try_start_1b
    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw v0
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 108
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h;->c()Lcom/bytedance/sdk/openadsdk/core/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/h;->d()Lcom/bytedance/sdk/openadsdk/TTCustomController;

    move-result-object v0

    .line 109
    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/TTCustomController;->isCanUsePhoneState()Z

    move-result v1

    if-nez v1, :cond_15

    .line 111
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/TTCustomController;->getDevImei()Ljava/lang/String;

    move-result-object v0

    .line 122
    :goto_14
    return-object v0

    .line 113
    :cond_15
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/j;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 114
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/core/j;->k:Z

    if-nez v0, :cond_2c

    .line 115
    const-class v1, Lcom/bytedance/sdk/openadsdk/core/j;

    monitor-enter v1

    .line 116
    :try_start_24
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/core/j;->k:Z

    if-nez v0, :cond_2b

    .line 117
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/j;->l(Landroid/content/Context;)V

    .line 119
    :cond_2b
    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_24 .. :try_end_2c} :catchall_2f

    .line 122
    :cond_2c
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/j;->c:Ljava/lang/String;

    goto :goto_14

    .line 119
    :catchall_2f
    move-exception v0

    :try_start_30
    monitor-exit v1
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    throw v0
.end method

.method public static e(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 126
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/j;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 127
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/core/j;->k:Z

    if-nez v0, :cond_17

    .line 128
    const-class v1, Lcom/bytedance/sdk/openadsdk/core/j;

    monitor-enter v1

    .line 129
    :try_start_f
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/core/j;->k:Z

    if-nez v0, :cond_16

    .line 130
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/j;->l(Landroid/content/Context;)V

    .line 132
    :cond_16
    monitor-exit v1
    :try_end_17
    .catchall {:try_start_f .. :try_end_17} :catchall_1a

    .line 135
    :cond_17
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/j;->i:Ljava/lang/String;

    return-object v0

    .line 132
    :catchall_1a
    move-exception v0

    :try_start_1b
    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw v0
.end method

.method public static f(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 139
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h;->c()Lcom/bytedance/sdk/openadsdk/core/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/h;->d()Lcom/bytedance/sdk/openadsdk/TTCustomController;

    move-result-object v0

    .line 140
    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/TTCustomController;->isCanUsePhoneState()Z

    move-result v0

    if-nez v0, :cond_12

    .line 141
    const/4 v0, 0x0

    .line 152
    :goto_11
    return-object v0

    .line 143
    :cond_12
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/j;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 144
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/core/j;->k:Z

    if-nez v0, :cond_29

    .line 145
    const-class v1, Lcom/bytedance/sdk/openadsdk/core/j;

    monitor-enter v1

    .line 146
    :try_start_21
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/core/j;->k:Z

    if-nez v0, :cond_28

    .line 147
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/j;->l(Landroid/content/Context;)V

    .line 149
    :cond_28
    monitor-exit v1
    :try_end_29
    .catchall {:try_start_21 .. :try_end_29} :catchall_2c

    .line 152
    :cond_29
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/j;->f:Ljava/lang/String;

    goto :goto_11

    .line 149
    :catchall_2c
    move-exception v0

    :try_start_2d
    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    throw v0
.end method

.method public static g(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 156
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h;->c()Lcom/bytedance/sdk/openadsdk/core/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/h;->d()Lcom/bytedance/sdk/openadsdk/TTCustomController;

    move-result-object v0

    .line 157
    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/TTCustomController;->isCanUseWifiState()Z

    move-result v0

    if-nez v0, :cond_12

    .line 158
    const/4 v0, 0x0

    .line 169
    :goto_11
    return-object v0

    .line 160
    :cond_12
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/j;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 161
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/core/j;->k:Z

    if-nez v0, :cond_29

    .line 162
    const-class v1, Lcom/bytedance/sdk/openadsdk/core/j;

    monitor-enter v1

    .line 163
    :try_start_21
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/core/j;->k:Z

    if-nez v0, :cond_28

    .line 164
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/j;->l(Landroid/content/Context;)V

    .line 166
    :cond_28
    monitor-exit v1
    :try_end_29
    .catchall {:try_start_21 .. :try_end_29} :catchall_2c

    .line 169
    :cond_29
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/j;->d:Ljava/lang/String;

    goto :goto_11

    .line 166
    :catchall_2c
    move-exception v0

    :try_start_2d
    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    throw v0
.end method

.method public static h(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 186
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h;->c()Lcom/bytedance/sdk/openadsdk/core/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/h;->d()Lcom/bytedance/sdk/openadsdk/TTCustomController;

    move-result-object v0

    .line 187
    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/TTCustomController;->isCanUseWifiState()Z

    move-result v0

    if-nez v0, :cond_12

    .line 189
    const/4 v0, 0x0

    .line 200
    :goto_11
    return-object v0

    .line 191
    :cond_12
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/j;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 192
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/core/j;->k:Z

    if-nez v0, :cond_29

    .line 193
    const-class v1, Lcom/bytedance/sdk/openadsdk/core/j;

    monitor-enter v1

    .line 194
    :try_start_21
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/core/j;->k:Z

    if-nez v0, :cond_28

    .line 195
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/j;->l(Landroid/content/Context;)V

    .line 197
    :cond_28
    monitor-exit v1
    :try_end_29
    .catchall {:try_start_21 .. :try_end_29} :catchall_2c

    .line 200
    :cond_29
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/j;->e:Ljava/lang/String;

    goto :goto_11

    .line 197
    :catchall_2c
    move-exception v0

    :try_start_2d
    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    throw v0
.end method

.method public static i(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 204
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_18

    .line 205
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h;->c()Lcom/bytedance/sdk/openadsdk/core/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/h;->d()Lcom/bytedance/sdk/openadsdk/TTCustomController;

    move-result-object v0

    .line 206
    if-eqz v0, :cond_18

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/TTCustomController;->isCanUsePhoneState()Z

    move-result v0

    if-nez v0, :cond_18

    .line 207
    const/4 v0, 0x0

    .line 219
    :goto_17
    return-object v0

    .line 210
    :cond_18
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/j;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 211
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/core/j;->k:Z

    if-nez v0, :cond_2f

    .line 212
    const-class v1, Lcom/bytedance/sdk/openadsdk/core/j;

    monitor-enter v1

    .line 213
    :try_start_27
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/core/j;->k:Z

    if-nez v0, :cond_2e

    .line 214
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/j;->l(Landroid/content/Context;)V

    .line 216
    :cond_2e
    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_27 .. :try_end_2f} :catchall_32

    .line 219
    :cond_2f
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/j;->j:Ljava/lang/String;

    goto :goto_17

    .line 216
    :catchall_32
    move-exception v0

    :try_start_33
    monitor-exit v1
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    throw v0
.end method

.method public static j(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 317
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/j;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 330
    :cond_8
    :goto_8
    return-void

    .line 321
    :cond_9
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/j;->k(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    .line 322
    if-eqz v0, :cond_8

    .line 326
    :try_start_f
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/j;->m(Landroid/content/Context;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_12} :catch_13

    goto :goto_8

    .line 327
    :catch_13
    move-exception v0

    goto :goto_8
.end method

.method private static k(Landroid/content/Context;)Landroid/content/Context;
    .registers 1

    .prologue
    .line 58
    if-nez p0, :cond_6

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object p0

    :cond_6
    return-object p0
.end method

.method private static l(Landroid/content/Context;)V
    .registers 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HardwareIds"
        }
    .end annotation

    .annotation build Landroid/support/annotation/RequiresPermission;
        anyOf = {
            "android.permission.ACCESS_WIFI_STATE"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 242
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/core/j;->k:Z

    if-eqz v0, :cond_7

    .line 287
    :cond_6
    :goto_6
    return-void

    .line 245
    :cond_7
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/j;->k(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v3

    .line 246
    if-eqz v3, :cond_6

    .line 251
    :try_start_d
    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/core/j;->m(Landroid/content/Context;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_10} :catch_86

    .line 257
    :goto_10
    :try_start_10
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h;->c()Lcom/bytedance/sdk/openadsdk/core/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/h;->d()Lcom/bytedance/sdk/openadsdk/TTCustomController;

    move-result-object v0

    .line 258
    if-eqz v0, :cond_42

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/TTCustomController;->isCanUseWifiState()Z

    move-result v1

    if-eqz v1, :cond_42

    .line 259
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/TTCustomController;->isCanUseLocation()Z
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_23} :catch_84

    move-result v0

    if-eqz v0, :cond_42

    .line 262
    :try_start_26
    const-string v0, "wifi"

    invoke-virtual {v3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 263
    if-eqz v0, :cond_7d

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 264
    :goto_34
    if-eqz v1, :cond_3c

    .line 265
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/bytedance/sdk/openadsdk/core/j;->d:Ljava/lang/String;

    .line 267
    :cond_3c
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/j;->a(Landroid/net/wifi/WifiManager;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/j;->e:Ljava/lang/String;
    :try_end_42
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_42} :catch_88
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_42} :catch_84

    .line 272
    :cond_42
    :goto_42
    :try_start_42
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_7f

    .line 273
    invoke-static {}, Landroid/os/Build;->getSerial()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/j;->j:Ljava/lang/String;
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_4e} :catch_84

    .line 280
    :goto_4e
    invoke-static {v3, v4}, Lcom/bytedance/sdk/openadsdk/core/j;->a(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/j;->b:Ljava/lang/String;

    .line 281
    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/core/d;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/d;

    move-result-object v0

    const-string v1, "did"

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/d;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/j;->a:Ljava/lang/String;

    .line 282
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/j;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/j;->g:Ljava/lang/String;

    .line 284
    sget-wide v0, Landroid/os/Build;->TIME:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/j;->h:Ljava/lang/String;

    .line 285
    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/core/d;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/d;

    move-result-object v0

    const-string v1, "uuid"

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/d;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/j;->i:Ljava/lang/String;

    .line 286
    sput-boolean v4, Lcom/bytedance/sdk/openadsdk/core/j;->k:Z

    goto :goto_6

    :cond_7d
    move-object v1, v2

    .line 263
    goto :goto_34

    .line 275
    :cond_7f
    :try_start_7f
    sget-object v0, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/j;->j:Ljava/lang/String;
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_7f .. :try_end_83} :catch_84

    goto :goto_4e

    .line 277
    :catch_84
    move-exception v0

    goto :goto_4e

    .line 252
    :catch_86
    move-exception v0

    goto :goto_10

    .line 268
    :catch_88
    move-exception v0

    goto :goto_42
.end method

.method private static m(Landroid/content/Context;)V
    .registers 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HardwareIds"
        }
    .end annotation

    .prologue
    .line 334
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h;->c()Lcom/bytedance/sdk/openadsdk/core/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/h;->d()Lcom/bytedance/sdk/openadsdk/TTCustomController;

    move-result-object v0

    .line 335
    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/TTCustomController;->isCanUsePhoneState()Z

    move-result v0

    if-nez v0, :cond_11

    .line 343
    :cond_10
    :goto_10
    return-void

    .line 338
    :cond_11
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 339
    if-eqz v0, :cond_10

    .line 340
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/bytedance/sdk/openadsdk/core/j;->c:Ljava/lang/String;

    .line 341
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/j;->f:Ljava/lang/String;

    goto :goto_10
.end method
