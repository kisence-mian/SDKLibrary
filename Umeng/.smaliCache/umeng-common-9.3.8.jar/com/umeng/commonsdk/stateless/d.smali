.class public Lcom/umeng/commonsdk/stateless/d;
.super Ljava/lang/Object;
.source "UMSLUtils.java"


# static fields
.field public static a:I

.field private static final b:[B

.field private static c:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 42
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_12

    sput-object v0, Lcom/umeng/commonsdk/stateless/d;->b:[B

    .line 44
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/umeng/commonsdk/stateless/d;->c:Ljava/lang/Object;

    return-void

    nop

    :array_12
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

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[B)I
    .registers 10

    .line 76
    nop

    .line 77
    const/16 v0, 0x65

    if-eqz p0, :cond_88

    .line 78
    nop

    .line 80
    const/4 v1, 0x0

    :try_start_7
    sget-object v2, Lcom/umeng/commonsdk/stateless/d;->c:Ljava/lang/Object;

    monitor-enter v2
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_a} :catch_75
    .catchall {:try_start_7 .. :try_end_a} :catchall_69

    .line 81
    :try_start_a
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 82
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-nez p1, :cond_33

    .line 83
    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    .line 86
    :cond_33
    new-instance p1, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 91
    new-instance p2, Ljava/io/FileOutputStream;

    invoke-direct {p2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_58
    .catchall {:try_start_a .. :try_end_58} :catchall_66

    .line 92
    :try_start_58
    invoke-virtual {p2, p3}, Ljava/io/FileOutputStream;->write([B)V

    .line 93
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5e
    .catchall {:try_start_58 .. :try_end_5e} :catchall_63

    .line 94
    nop

    .line 96
    const/4 v0, 0x0

    .line 98
    :try_start_60
    monitor-exit v2

    .line 104
    nop

    goto :goto_88

    .line 98
    :catchall_63
    move-exception p1

    move-object v1, p2

    goto :goto_67

    :catchall_66
    move-exception p1

    :goto_67
    monitor-exit v2
    :try_end_68
    .catchall {:try_start_60 .. :try_end_68} :catchall_66

    :try_start_68
    throw p1
    :try_end_69
    .catch Ljava/io/IOException; {:try_start_68 .. :try_end_69} :catch_75
    .catchall {:try_start_68 .. :try_end_69} :catchall_69

    .line 101
    :catchall_69
    move-exception p1

    .line 102
    :try_start_6a
    invoke-static {p0, p1}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V
    :try_end_6d
    .catchall {:try_start_6a .. :try_end_6d} :catchall_7f

    .line 104
    if-eqz v1, :cond_88

    .line 106
    :try_start_6f
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_72
    .catchall {:try_start_6f .. :try_end_72} :catchall_73

    .line 109
    :goto_72
    goto :goto_88

    .line 107
    :catchall_73
    move-exception p0

    .line 108
    goto :goto_72

    .line 99
    :catch_75
    move-exception p1

    .line 100
    :try_start_76
    invoke-static {p0, p1}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V
    :try_end_79
    .catchall {:try_start_76 .. :try_end_79} :catchall_7f

    .line 104
    if-eqz v1, :cond_88

    .line 106
    :try_start_7b
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_7e
    .catchall {:try_start_7b .. :try_end_7e} :catchall_73

    goto :goto_72

    .line 104
    :catchall_7f
    move-exception p0

    if-eqz v1, :cond_87

    .line 106
    :try_start_82
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_85
    .catchall {:try_start_82 .. :try_end_85} :catchall_86

    .line 109
    goto :goto_87

    .line 107
    :catchall_86
    move-exception p1

    .line 109
    :cond_87
    :goto_87
    throw p0

    .line 114
    :cond_88
    :goto_88
    return v0
.end method

.method public static a(Landroid/content/Context;)Ljava/io/File;
    .registers 13

    .line 205
    nop

    .line 208
    const/4 v0, 0x0

    :try_start_2
    sget-object v1, Lcom/umeng/commonsdk/stateless/d;->c:Ljava/lang/Object;

    monitor-enter v1
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_c4

    .line 209
    :try_start_5
    const-string v2, "walle"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "get last envelope begin, thread is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v2, v4}, Lcom/umeng/commonsdk/statistics/common/ULog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 211
    if-eqz p0, :cond_9f

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_9f

    .line 212
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "stateless"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 213
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_9f

    .line 214
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 215
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_9f

    .line 216
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 217
    if-eqz v2, :cond_9f

    array-length v4, v2

    if-lez v4, :cond_9f

    .line 218
    const/4 v4, 0x0

    :goto_6b
    array-length v5, v2

    if-ge v4, v5, :cond_9f

    .line 219
    aget-object v5, v2, v4

    .line 220
    if-eqz v5, :cond_9c

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_9c

    .line 221
    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    .line 222
    if-eqz v5, :cond_9c

    array-length v7, v5

    if-lez v7, :cond_9c

    .line 223
    new-instance v7, Lcom/umeng/commonsdk/stateless/d$1;

    invoke-direct {v7}, Lcom/umeng/commonsdk/stateless/d$1;-><init>()V

    invoke-static {v5, v7}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 236
    aget-object v5, v5, v6

    .line 237
    if-eqz v5, :cond_9c

    .line 238
    if-eqz v0, :cond_9b

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v7

    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    move-result-wide v9

    cmp-long v11, v7, v9

    if-lez v11, :cond_9c

    .line 239
    :cond_9b
    move-object v0, v5

    .line 218
    :cond_9c
    add-int/lit8 v4, v4, 0x1

    goto :goto_6b

    .line 253
    :cond_9f
    const-string v2, "walle"

    new-array v3, v3, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get last envelope end, thread is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Lcom/umeng/commonsdk/statistics/common/ULog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 254
    monitor-exit v1

    .line 258
    goto :goto_c8

    .line 254
    :catchall_c1
    move-exception v2

    monitor-exit v1
    :try_end_c3
    .catchall {:try_start_5 .. :try_end_c3} :catchall_c1

    :try_start_c3
    throw v2
    :try_end_c4
    .catchall {:try_start_c3 .. :try_end_c4} :catchall_c4

    .line 256
    :catchall_c4
    move-exception v1

    .line 257
    invoke-static {p0, v1}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 261
    :goto_c8
    return-object v0
.end method

.method public static a(Landroid/content/Context;Z)Ljava/lang/String;
    .registers 3

    .line 307
    nop

    .line 308
    const/4 v0, 0x0

    if-nez p0, :cond_5

    .line 309
    return-object v0

    .line 312
    :cond_5
    if-eqz p1, :cond_2a

    .line 313
    :try_start_7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "stateless"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    move-object v0, p0

    goto :goto_4c

    .line 315
    :cond_2a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, ".emitter"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_4b
    .catchall {:try_start_7 .. :try_end_4b} :catchall_4d

    move-object v0, p0

    .line 320
    :goto_4c
    goto :goto_4e

    .line 318
    :catchall_4d
    move-exception p0

    .line 321
    :goto_4e
    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 12

    .line 374
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_25

    .line 375
    :try_start_4
    const-string p1, "AmapLBS"

    new-array p2, v1, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[lbs-build] fileDir not exist, thread is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p2, v0

    invoke-static {p1, p2}, Lcom/umeng/commonsdk/statistics/common/ULog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 376
    return-void

    .line 379
    :cond_25
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 380
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-nez p1, :cond_51

    .line 381
    const-string p1, "AmapLBS"

    new-array p2, v1, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[lbs-build] fileDir not exist, thread is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p2, v0

    invoke-static {p1, p2}, Lcom/umeng/commonsdk/statistics/common/ULog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 382
    return-void

    .line 385
    :cond_51
    sget-object p1, Lcom/umeng/commonsdk/stateless/d;->c:Ljava/lang/Object;

    monitor-enter p1
    :try_end_54
    .catchall {:try_start_4 .. :try_end_54} :catchall_169

    .line 386
    :try_start_54
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 387
    const-string v3, "AmapLBS"

    new-array v4, v1, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[lbs-build] delete file begin "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", thread is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {v3, v4}, Lcom/umeng/commonsdk/statistics/common/ULog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 393
    if-eqz v2, :cond_12e

    array-length v3, v2

    if-lt v3, p2, :cond_12e

    .line 394
    const-string v3, "AmapLBS"

    new-array v4, v1, [Ljava/lang/Object;

    const-string v5, "[lbs-build] file size >= max"

    aput-object v5, v4, v0

    invoke-static {v3, v4}, Lcom/umeng/commonsdk/statistics/common/ULog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 395
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 396
    array-length v4, v2

    const/4 v5, 0x0

    :goto_9a
    if-ge v5, v4, :cond_a6

    aget-object v6, v2, v5

    .line 397
    if-eqz v6, :cond_a3

    .line 398
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 396
    :cond_a3
    add-int/lit8 v5, v5, 0x1

    goto :goto_9a

    .line 402
    :cond_a6
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v4, p2, :cond_12d

    .line 403
    new-instance v4, Lcom/umeng/commonsdk/stateless/d$4;

    invoke-direct {v4}, Lcom/umeng/commonsdk/stateless/d$4;-><init>()V

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 416
    sget-boolean v4, Lcom/umeng/commonsdk/statistics/common/ULog;->DEBUG:Z

    if-eqz v4, :cond_e8

    .line 417
    const/4 v4, 0x0

    :goto_b9
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_e8

    .line 418
    const-string v5, "AmapLBS"

    new-array v6, v1, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[lbs-build] overrun native file is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v0

    invoke-static {v5, v6}, Lcom/umeng/commonsdk/statistics/common/ULog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 417
    add-int/lit8 v4, v4, 0x1

    goto :goto_b9

    .line 422
    :cond_e8
    const/4 v4, 0x0

    :goto_e9
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, p2

    if-gt v4, v5, :cond_12d

    .line 423
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_12a

    .line 424
    const-string v5, "AmapLBS"

    new-array v6, v1, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[lbs-build] overrun remove file is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v0

    invoke-static {v5, v6}, Lcom/umeng/commonsdk/statistics/common/ULog;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_11c
    .catchall {:try_start_54 .. :try_end_11c} :catchall_166

    .line 426
    :try_start_11c
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 427
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_128
    .catch Ljava/lang/Exception; {:try_start_11c .. :try_end_128} :catch_129
    .catchall {:try_start_11c .. :try_end_128} :catchall_166

    .line 429
    goto :goto_12a

    .line 428
    :catch_129
    move-exception v5

    .line 422
    :cond_12a
    :goto_12a
    add-int/lit8 v4, v4, 0x1

    goto :goto_e9

    .line 435
    :cond_12d
    goto :goto_139

    .line 436
    :cond_12e
    :try_start_12e
    const-string p2, "AmapLBS"

    new-array v3, v1, [Ljava/lang/Object;

    const-string v4, "[lbs-build] file size < max"

    aput-object v4, v3, v0

    invoke-static {p2, v3}, Lcom/umeng/commonsdk/statistics/common/ULog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 439
    :goto_139
    const-string p2, "AmapLBS"

    new-array v1, v1, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[lbs-build] delete file end "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v2, v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", thread is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    invoke-static {p2, v1}, Lcom/umeng/commonsdk/statistics/common/ULog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 440
    monitor-exit p1

    .line 443
    goto :goto_16d

    .line 440
    :catchall_166
    move-exception p2

    monitor-exit p1
    :try_end_168
    .catchall {:try_start_12e .. :try_end_168} :catchall_166

    :try_start_168
    throw p2
    :try_end_169
    .catchall {:try_start_168 .. :try_end_169} :catchall_169

    .line 441
    :catchall_169
    move-exception p1

    .line 442
    invoke-static {p0, p1}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 445
    :goto_16d
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 12

    .line 450
    if-nez p1, :cond_3

    .line 451
    return-void

    .line 454
    :cond_3
    :try_start_3
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 455
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-nez p1, :cond_f

    .line 456
    return-void

    .line 459
    :cond_f
    sget-object p1, Lcom/umeng/commonsdk/stateless/d;->c:Ljava/lang/Object;

    monitor-enter p1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_103

    .line 460
    :try_start_12
    new-instance v1, Lcom/umeng/commonsdk/stateless/d$5;

    invoke-direct {v1, p2}, Lcom/umeng/commonsdk/stateless/d$5;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p2

    .line 471
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_c8

    array-length v2, p2

    if-lt v2, p3, :cond_c8

    .line 472
    const-string v2, "AmapLBS"

    new-array v3, v1, [Ljava/lang/Object;

    const-string v4, "[lbs-build] file size >= max"

    aput-object v4, v3, v0

    invoke-static {v2, v3}, Lcom/umeng/commonsdk/statistics/common/ULog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 473
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 474
    array-length v3, p2

    const/4 v4, 0x0

    :goto_34
    if-ge v4, v3, :cond_40

    aget-object v5, p2, v4

    .line 475
    if-eqz v5, :cond_3d

    .line 476
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 474
    :cond_3d
    add-int/lit8 v4, v4, 0x1

    goto :goto_34

    .line 480
    :cond_40
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v3, p3, :cond_c7

    .line 481
    new-instance v3, Lcom/umeng/commonsdk/stateless/d$6;

    invoke-direct {v3}, Lcom/umeng/commonsdk/stateless/d$6;-><init>()V

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 494
    sget-boolean v3, Lcom/umeng/commonsdk/statistics/common/ULog;->DEBUG:Z

    if-eqz v3, :cond_82

    .line 495
    const/4 v3, 0x0

    :goto_53
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_82

    .line 496
    const-string v4, "AmapLBS"

    new-array v5, v1, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[lbs-build] overrun native file is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-static {v4, v5}, Lcom/umeng/commonsdk/statistics/common/ULog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 495
    add-int/lit8 v3, v3, 0x1

    goto :goto_53

    .line 500
    :cond_82
    const/4 v3, 0x0

    :goto_83
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, p3

    if-gt v3, v4, :cond_c7

    .line 501
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_c4

    .line 502
    const-string v4, "AmapLBS"

    new-array v5, v1, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[lbs-build] overrun remove file is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-static {v4, v5}, Lcom/umeng/commonsdk/statistics/common/ULog;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_b6
    .catchall {:try_start_12 .. :try_end_b6} :catchall_100

    .line 504
    :try_start_b6
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 505
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_c2
    .catch Ljava/lang/Exception; {:try_start_b6 .. :try_end_c2} :catch_c3
    .catchall {:try_start_b6 .. :try_end_c2} :catchall_100

    .line 507
    goto :goto_c4

    .line 506
    :catch_c3
    move-exception v4

    .line 500
    :cond_c4
    :goto_c4
    add-int/lit8 v3, v3, 0x1

    goto :goto_83

    .line 513
    :cond_c7
    goto :goto_d3

    .line 514
    :cond_c8
    :try_start_c8
    const-string p3, "AmapLBS"

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "[lbs-build] file size < max"

    aput-object v3, v2, v0

    invoke-static {p3, v2}, Lcom/umeng/commonsdk/statistics/common/ULog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 517
    :goto_d3
    const-string p3, "AmapLBS"

    new-array v1, v1, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[lbs-build] delete file end "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length p2, p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v2, ", thread is "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v1, v0

    invoke-static {p3, v1}, Lcom/umeng/commonsdk/statistics/common/ULog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 518
    monitor-exit p1

    .line 521
    goto :goto_107

    .line 518
    :catchall_100
    move-exception p2

    monitor-exit p1
    :try_end_102
    .catchall {:try_start_c8 .. :try_end_102} :catchall_100

    :try_start_102
    throw p2
    :try_end_103
    .catchall {:try_start_102 .. :try_end_103} :catchall_103

    .line 519
    :catchall_103
    move-exception p1

    .line 520
    invoke-static {p0, p1}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 523
    :goto_107
    return-void
.end method

.method public static a(JJ)Z
    .registers 5

    .line 534
    cmp-long v0, p0, p2

    if-lez v0, :cond_6

    .line 535
    const/4 p0, 0x1

    return p0

    .line 537
    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public static a(Ljava/io/File;)Z
    .registers 6

    .line 48
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 49
    return v0

    .line 51
    :cond_4
    nop

    .line 52
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 53
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    .line 55
    const/4 v2, 0x0

    :goto_10
    array-length v3, v1

    if-ge v2, v3, :cond_24

    .line 56
    new-instance v3, Ljava/io/File;

    aget-object v4, v1, v2

    invoke-direct {v3, p0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/umeng/commonsdk/stateless/d;->a(Ljava/io/File;)Z

    move-result v3

    .line 57
    if-nez v3, :cond_21

    .line 58
    return v0

    .line 55
    :cond_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 63
    :cond_24
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    return p0
.end method

.method public static a(Ljava/lang/String;)[B
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 176
    nop

    .line 177
    sget-object v0, Lcom/umeng/commonsdk/stateless/d;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 180
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_6
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v4, "r"

    invoke-direct {v3, p0, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    .line 181
    sget-object v6, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v7, 0x0

    .line 182
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v9

    .line 181
    move-object v5, v2

    invoke-virtual/range {v5 .. v10}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object p0

    .line 182
    invoke-virtual {p0}, Ljava/nio/MappedByteBuffer;->load()Ljava/nio/MappedByteBuffer;

    move-result-object p0

    .line 183
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v3

    long-to-int v4, v3

    new-array v3, v4, [B

    .line 184
    invoke-virtual {p0}, Ljava/nio/MappedByteBuffer;->remaining()I

    move-result v4

    if-lez v4, :cond_36

    .line 185
    invoke-virtual {p0}, Ljava/nio/MappedByteBuffer;->remaining()I

    move-result v4

    invoke-virtual {p0, v3, v1, v4}, Ljava/nio/MappedByteBuffer;->get([BII)Ljava/nio/ByteBuffer;
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_36} :catch_42
    .catchall {:try_start_6 .. :try_end_36} :catchall_40

    .line 187
    :cond_36
    nop

    .line 192
    if-eqz v2, :cond_3e

    .line 194
    :try_start_39
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_3d

    .line 197
    goto :goto_3e

    .line 195
    :catchall_3d
    move-exception p0

    .line 197
    :cond_3e
    :goto_3e
    :try_start_3e
    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_6d

    return-object v3

    .line 192
    :catchall_40
    move-exception p0

    goto :goto_65

    .line 188
    :catch_42
    move-exception p0

    .line 189
    :try_start_43
    const-string v3, "walle"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[stateless] write envelope, e is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Lcom/umeng/commonsdk/statistics/common/ULog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 190
    throw p0
    :try_end_65
    .catchall {:try_start_43 .. :try_end_65} :catchall_40

    .line 192
    :goto_65
    if-eqz v2, :cond_6c

    .line 194
    :try_start_67
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_6a
    .catchall {:try_start_67 .. :try_end_6a} :catchall_6b

    .line 197
    goto :goto_6c

    .line 195
    :catchall_6b
    move-exception v1

    .line 197
    :cond_6c
    :goto_6c
    :try_start_6c
    throw p0

    .line 200
    :catchall_6d
    move-exception p0

    monitor-exit v0
    :try_end_6f
    .catchall {:try_start_6c .. :try_end_6f} :catchall_6d

    throw p0
.end method

.method public static a([B)[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 548
    const/4 v0, 0x0

    if-eqz p0, :cond_48

    array-length v1, p0

    if-gtz v1, :cond_7

    goto :goto_48

    .line 552
    :cond_7
    new-instance v1, Ljava/util/zip/Deflater;

    invoke-direct {v1}, Ljava/util/zip/Deflater;-><init>()V

    .line 553
    invoke-virtual {v1, p0}, Ljava/util/zip/Deflater;->setInput([B)V

    .line 554
    invoke-virtual {v1}, Ljava/util/zip/Deflater;->finish()V

    .line 556
    const/16 p0, 0x2000

    new-array p0, p0, [B

    .line 557
    const/4 v2, 0x0

    sput v2, Lcom/umeng/commonsdk/stateless/d;->a:I

    .line 558
    nop

    .line 560
    :try_start_1a
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1f
    .catchall {:try_start_1a .. :try_end_1f} :catchall_41

    .line 561
    :goto_1f
    :try_start_1f
    invoke-virtual {v1}, Ljava/util/zip/Deflater;->finished()Z

    move-result v0

    if-nez v0, :cond_32

    .line 562
    invoke-virtual {v1, p0}, Ljava/util/zip/Deflater;->deflate([B)I

    move-result v0

    .line 563
    sget v4, Lcom/umeng/commonsdk/stateless/d;->a:I

    add-int/2addr v4, v0

    sput v4, Lcom/umeng/commonsdk/stateless/d;->a:I

    .line 564
    invoke-virtual {v3, p0, v2, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 565
    goto :goto_1f

    .line 566
    :cond_32
    invoke-virtual {v1}, Ljava/util/zip/Deflater;->end()V
    :try_end_35
    .catchall {:try_start_1f .. :try_end_35} :catchall_3e

    .line 568
    nop

    .line 569
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 571
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    .line 572
    return-object p0

    .line 568
    :catchall_3e
    move-exception p0

    move-object v0, v3

    goto :goto_42

    :catchall_41
    move-exception p0

    :goto_42
    if-eqz v0, :cond_47

    .line 569
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    :cond_47
    throw p0

    .line 549
    :cond_48
    :goto_48
    return-object v0
.end method

.method public static a([B[B)[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 585
    const-string v0, "AES/CBC/PKCS7Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 586
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "AES"

    invoke-direct {v1, p1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 587
    new-instance p1, Ljavax/crypto/spec/IvParameterSpec;

    sget-object v2, Lcom/umeng/commonsdk/stateless/d;->b:[B

    invoke-direct {p1, v2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 588
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 589
    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/content/Context;)Ljava/io/File;
    .registers 6

    .line 265
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 266
    return-object v0

    .line 270
    :cond_4
    :try_start_4
    sget-object v1, Lcom/umeng/commonsdk/stateless/d;->c:Ljava/lang/Object;

    monitor-enter v1
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_59

    .line 271
    :try_start_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".emitter"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 272
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 273
    monitor-exit v1

    return-object v0

    .line 275
    :cond_30
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 276
    sget-object v2, Lcom/umeng/commonsdk/stateless/d;->c:Ljava/lang/Object;

    monitor-enter v2
    :try_end_38
    .catchall {:try_start_7 .. :try_end_38} :catchall_56

    .line 277
    :try_start_38
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 278
    if-eqz v3, :cond_50

    array-length v4, v3

    if-nez v4, :cond_42

    goto :goto_50

    .line 282
    :cond_42
    new-instance v4, Lcom/umeng/commonsdk/stateless/d$2;

    invoke-direct {v4}, Lcom/umeng/commonsdk/stateless/d$2;-><init>()V

    invoke-static {v3, v4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 296
    const/4 v4, 0x0

    aget-object v3, v3, v4

    monitor-exit v2
    :try_end_4e
    .catchall {:try_start_38 .. :try_end_4e} :catchall_53

    :try_start_4e
    monitor-exit v1
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_56

    return-object v3

    .line 279
    :cond_50
    :goto_50
    :try_start_50
    monitor-exit v2
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_53

    :try_start_51
    monitor-exit v1
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_56

    return-object v0

    .line 297
    :catchall_53
    move-exception v3

    :try_start_54
    monitor-exit v2
    :try_end_55
    .catchall {:try_start_54 .. :try_end_55} :catchall_53

    :try_start_55
    throw v3

    .line 298
    :catchall_56
    move-exception v2

    monitor-exit v1
    :try_end_58
    .catchall {:try_start_55 .. :try_end_58} :catchall_56

    :try_start_58
    throw v2
    :try_end_59
    .catchall {:try_start_58 .. :try_end_59} :catchall_59

    .line 300
    :catchall_59
    move-exception v1

    .line 301
    invoke-static {p0, v1}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 303
    return-object v0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 621
    nop

    .line 623
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_b

    .line 626
    goto :goto_e

    .line 624
    :catchall_b
    move-exception p0

    const-string p0, ""

    .line 627
    :goto_e
    return-object p0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[B)Z
    .registers 12

    .line 118
    nop

    .line 119
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_12c

    .line 120
    nop

    .line 122
    const/4 v2, 0x0

    :try_start_7
    sget-object v3, Lcom/umeng/commonsdk/stateless/d;->c:Ljava/lang/Object;

    monitor-enter v3
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_a} :catch_f4
    .catchall {:try_start_7 .. :try_end_a} :catchall_c7

    .line 123
    :try_start_a
    const-string v4, "walle"

    new-array v5, v0, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[stateless] begin write envelope, thread is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v4, v5}, Lcom/umeng/commonsdk/statistics/common/ULog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 128
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "stateless"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 129
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_55

    .line 130
    invoke-virtual {v4}, Ljava/io/File;->mkdir()Z

    .line 133
    :cond_55
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 134
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-nez p1, :cond_7e

    .line 135
    invoke-virtual {v5}, Ljava/io/File;->mkdir()Z

    .line 138
    :cond_7e
    new-instance p1, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_a7

    .line 140
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    .line 143
    :cond_a7
    new-instance p2, Ljava/io/FileOutputStream;

    invoke-direct {p2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_ac
    .catchall {:try_start_a .. :try_end_ac} :catchall_bd

    .line 144
    :try_start_ac
    invoke-virtual {p2, p3}, Ljava/io/FileOutputStream;->write([B)V

    .line 145
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_b2
    .catchall {:try_start_ac .. :try_end_b2} :catchall_ba

    .line 146
    nop

    .line 148
    nop

    .line 150
    :try_start_b4
    monitor-exit v3
    :try_end_b5
    .catchall {:try_start_b4 .. :try_end_b5} :catchall_b7

    .line 160
    goto/16 :goto_12d

    .line 150
    :catchall_b7
    move-exception p1

    const/4 p2, 0x1

    goto :goto_bf

    :catchall_ba
    move-exception p1

    move-object v2, p2

    goto :goto_be

    :catchall_bd
    move-exception p1

    :goto_be
    const/4 p2, 0x0

    :goto_bf
    :try_start_bf
    monitor-exit v3
    :try_end_c0
    .catchall {:try_start_bf .. :try_end_c0} :catchall_c5

    :try_start_c0
    throw p1
    :try_end_c1
    .catch Ljava/io/IOException; {:try_start_c0 .. :try_end_c1} :catch_c3
    .catchall {:try_start_c0 .. :try_end_c1} :catchall_c1

    .line 155
    :catchall_c1
    move-exception p1

    goto :goto_c9

    .line 151
    :catch_c3
    move-exception p1

    goto :goto_f6

    .line 150
    :catchall_c5
    move-exception p1

    goto :goto_bf

    .line 155
    :catchall_c7
    move-exception p1

    const/4 p2, 0x0

    .line 157
    :goto_c9
    :try_start_c9
    const-string p3, "walle"

    new-array v0, v0, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[stateless] write envelope, e is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-static {p3, v0}, Lcom/umeng/commonsdk/statistics/common/ULog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 158
    invoke-static {p0, p1}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V
    :try_end_ec
    .catchall {:try_start_c9 .. :try_end_ec} :catchall_123

    .line 160
    if-eqz v2, :cond_121

    .line 162
    :try_start_ee
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_f1
    .catch Ljava/io/IOException; {:try_start_ee .. :try_end_f1} :catch_f2

    goto :goto_11e

    .line 163
    :catch_f2
    move-exception p0

    .line 165
    goto :goto_11e

    .line 151
    :catch_f4
    move-exception p1

    const/4 p2, 0x0

    .line 153
    :goto_f6
    :try_start_f6
    const-string p3, "walle"

    new-array v0, v0, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[stateless] write envelope, e is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-static {p3, v0}, Lcom/umeng/commonsdk/statistics/common/ULog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 154
    invoke-static {p0, p1}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V
    :try_end_119
    .catchall {:try_start_f6 .. :try_end_119} :catchall_123

    .line 160
    if-eqz v2, :cond_121

    .line 162
    :try_start_11b
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_11e
    .catch Ljava/io/IOException; {:try_start_11b .. :try_end_11e} :catch_11f

    .line 166
    :goto_11e
    goto :goto_121

    .line 163
    :catch_11f
    move-exception p0

    .line 165
    goto :goto_11e

    .line 171
    :cond_121
    :goto_121
    move v0, p2

    goto :goto_12d

    .line 160
    :catchall_123
    move-exception p0

    if-eqz v2, :cond_12b

    .line 162
    :try_start_126
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_129
    .catch Ljava/io/IOException; {:try_start_126 .. :try_end_129} :catch_12a

    .line 166
    goto :goto_12b

    .line 163
    :catch_12a
    move-exception p1

    .line 166
    :cond_12b
    :goto_12b
    throw p0

    .line 119
    :cond_12c
    const/4 v0, 0x0

    .line 171
    :goto_12d
    return v0
.end method

.method public static b([B)[B
    .registers 2

    .line 595
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 596
    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    .line 597
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 599
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_11

    return-object p0

    .line 600
    :catch_11
    move-exception p0

    .line 604
    const/4 p0, 0x0

    return-object p0
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 631
    nop

    .line 633
    :try_start_1
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_c

    .line 636
    goto :goto_f

    .line 634
    :catchall_c
    move-exception p0

    const-string v0, ""

    .line 637
    :goto_f
    return-object v0
.end method

.method public static c([B)Ljava/lang/String;
    .registers 6

    .line 609
    if-nez p0, :cond_4

    .line 610
    const/4 p0, 0x0

    return-object p0

    .line 612
    :cond_4
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 613
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_b
    array-length v3, p0

    if-ge v2, v3, :cond_25

    .line 614
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

    .line 613
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 617
    :cond_25
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c(Landroid/content/Context;)[Ljava/io/File;
    .registers 6

    .line 330
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 331
    return-object v0

    .line 335
    :cond_4
    :try_start_4
    sget-object v1, Lcom/umeng/commonsdk/stateless/d;->c:Ljava/lang/Object;

    monitor-enter v1
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_56

    .line 336
    :try_start_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".emitter"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 337
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 338
    monitor-exit v1

    return-object v0

    .line 340
    :cond_30
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 341
    sget-object v2, Lcom/umeng/commonsdk/stateless/d;->c:Ljava/lang/Object;

    monitor-enter v2
    :try_end_38
    .catchall {:try_start_7 .. :try_end_38} :catchall_53

    .line 342
    :try_start_38
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 343
    if-eqz v3, :cond_4d

    array-length v4, v3

    if-nez v4, :cond_42

    goto :goto_4d

    .line 347
    :cond_42
    new-instance v4, Lcom/umeng/commonsdk/stateless/d$3;

    invoke-direct {v4}, Lcom/umeng/commonsdk/stateless/d$3;-><init>()V

    invoke-static {v3, v4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 361
    monitor-exit v2
    :try_end_4b
    .catchall {:try_start_38 .. :try_end_4b} :catchall_50

    :try_start_4b
    monitor-exit v1
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_53

    return-object v3

    .line 344
    :cond_4d
    :goto_4d
    :try_start_4d
    monitor-exit v2
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_50

    :try_start_4e
    monitor-exit v1
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_53

    return-object v0

    .line 362
    :catchall_50
    move-exception v3

    :try_start_51
    monitor-exit v2
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_50

    :try_start_52
    throw v3

    .line 363
    :catchall_53
    move-exception v2

    monitor-exit v1
    :try_end_55
    .catchall {:try_start_52 .. :try_end_55} :catchall_53

    :try_start_55
    throw v2
    :try_end_56
    .catchall {:try_start_55 .. :try_end_56} :catchall_56

    .line 365
    :catchall_56
    move-exception v1

    .line 366
    invoke-static {p0, v1}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 368
    return-object v0
.end method

.method public static d(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 641
    nop

    .line 642
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_a

    .line 643
    return-object v1

    .line 645
    :cond_a
    const-string v0, "envelope"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_13

    .line 646
    return-object v1

    .line 648
    :cond_13
    const-string v0, "_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 649
    if-ltz v0, :cond_29

    .line 650
    const-string v2, "."

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 651
    if-ltz v2, :cond_29

    .line 652
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 655
    :cond_29
    return-object v1
.end method
