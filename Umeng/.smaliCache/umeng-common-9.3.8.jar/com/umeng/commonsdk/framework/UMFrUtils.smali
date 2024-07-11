.class public Lcom/umeng/commonsdk/framework/UMFrUtils;
.super Ljava/lang/Object;
.source "UMFrUtils.java"


# static fields
.field private static final KEY_LAST_INSTANT_SUCC_BUILD_TIME:Ljava/lang/String; = "last_instant_build_time"

.field private static final KEY_LAST_SUCC_BUILD_TIME:Ljava/lang/String; = "last_successful_build_time"

.field private static mDefaultEnvelopeDir:Ljava/lang/String;

.field private static mDefaultEnvelopeDirPath:Ljava/lang/String;

.field private static mEnvelopeBuildTimeLock:Ljava/lang/Object;

.field private static mEnvelopeFileLock:Ljava/lang/Object;

.field private static sCurrentProcessName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 47
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/umeng/commonsdk/framework/UMFrUtils;->mEnvelopeBuildTimeLock:Ljava/lang/Object;

    .line 48
    const-string v0, "envelope"

    sput-object v0, Lcom/umeng/commonsdk/framework/UMFrUtils;->mDefaultEnvelopeDir:Ljava/lang/String;

    .line 49
    const/4 v0, 0x0

    sput-object v0, Lcom/umeng/commonsdk/framework/UMFrUtils;->mDefaultEnvelopeDirPath:Ljava/lang/String;

    .line 50
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/umeng/commonsdk/framework/UMFrUtils;->mEnvelopeFileLock:Ljava/lang/Object;

    .line 52
    const-string v0, ""

    sput-object v0, Lcom/umeng/commonsdk/framework/UMFrUtils;->sCurrentProcessName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkPermission(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 9

    .line 148
    nop

    .line 149
    const/4 v0, 0x0

    if-eqz p0, :cond_4e

    .line 150
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 151
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    const/4 v4, 0x1

    if-lt v2, v3, :cond_39

    .line 153
    :try_start_f
    const-string v2, "android.content.Context"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 154
    const-string v3, "checkSelfPermission"

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v0

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 155
    new-array v3, v4, [Ljava/lang/Object;

    aput-object p1, v3, v0

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_2f
    .catchall {:try_start_f .. :try_end_2f} :catchall_33

    .line 156
    if-nez p0, :cond_38

    const/4 v0, 0x1

    goto :goto_38

    .line 157
    :catchall_33
    move-exception p0

    .line 158
    nop

    .line 159
    invoke-static {v1, p0}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 160
    :cond_38
    :goto_38
    goto :goto_4e

    .line 163
    :cond_39
    :try_start_39
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 164
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_45
    .catchall {:try_start_39 .. :try_end_45} :catchall_49

    if-nez p0, :cond_48

    .line 165
    const/4 v0, 0x1

    .line 170
    :cond_48
    goto :goto_4e

    .line 167
    :catchall_49
    move-exception p0

    .line 168
    nop

    .line 169
    invoke-static {v1, p0}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 174
    :cond_4e
    :goto_4e
    return v0
.end method

.method public static envelopeFileNumber(Landroid/content/Context;)I
    .registers 5

    .line 211
    const/4 v0, 0x0

    if-eqz p0, :cond_28

    .line 213
    :try_start_3
    new-instance v1, Ljava/io/File;

    invoke-static {p0}, Lcom/umeng/commonsdk/framework/UMFrUtils;->getEnvelopeDirPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 214
    sget-object v2, Lcom/umeng/commonsdk/framework/UMFrUtils;->mEnvelopeFileLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_23

    .line 215
    :try_start_f
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 216
    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    .line 217
    if-eqz v1, :cond_1e

    .line 218
    array-length v1, v1

    monitor-exit v2

    return v1

    .line 221
    :cond_1e
    monitor-exit v2

    .line 224
    goto :goto_27

    .line 221
    :catchall_20
    move-exception v1

    monitor-exit v2
    :try_end_22
    .catchall {:try_start_f .. :try_end_22} :catchall_20

    :try_start_22
    throw v1
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_23

    .line 222
    :catchall_23
    move-exception v1

    .line 223
    invoke-static {p0, v1}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 225
    :goto_27
    return v0

    .line 228
    :cond_28
    return v0
.end method

.method public static getCurrentProcessName(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    .line 83
    sget-object v0, Lcom/umeng/commonsdk/framework/UMFrUtils;->sCurrentProcessName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 85
    :try_start_8
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    .line 87
    invoke-static {v0}, Lcom/umeng/commonsdk/framework/UMFrUtils;->getProcessName(I)Ljava/lang/String;

    move-result-object v1

    .line 88
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_19

    .line 89
    sput-object v1, Lcom/umeng/commonsdk/framework/UMFrUtils;->sCurrentProcessName:Ljava/lang/String;

    goto :goto_49

    .line 91
    :cond_19
    const-string v1, "activity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 92
    if-eqz v1, :cond_49

    .line 93
    invoke-virtual {v1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    .line 94
    if-eqz v1, :cond_49

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_49

    .line 95
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_33
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_49

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 96
    iget v3, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v3, v0, :cond_48

    .line 97
    iget-object v0, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    sput-object v0, Lcom/umeng/commonsdk/framework/UMFrUtils;->sCurrentProcessName:Ljava/lang/String;
    :try_end_47
    .catchall {:try_start_8 .. :try_end_47} :catchall_4a

    .line 98
    goto :goto_49

    .line 100
    :cond_48
    goto :goto_33

    .line 106
    :cond_49
    :goto_49
    goto :goto_52

    .line 104
    :catchall_4a
    move-exception v0

    .line 105
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 108
    :cond_52
    :goto_52
    sget-object p0, Lcom/umeng/commonsdk/framework/UMFrUtils;->sCurrentProcessName:Ljava/lang/String;

    return-object p0
.end method

.method private static getDistanceDays(JJ)J
    .registers 5

    .line 238
    nop

    .line 240
    cmp-long v0, p0, p2

    if-gez v0, :cond_7

    .line 241
    sub-long/2addr p2, p0

    goto :goto_9

    .line 243
    :cond_7
    sub-long p2, p0, p2

    .line 245
    :goto_9
    const-wide/32 p0, 0x5265c00

    div-long/2addr p2, p0

    .line 247
    return-wide p2
.end method

.method public static getEnvelopeDirPath(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .line 466
    sget-object v0, Lcom/umeng/commonsdk/framework/UMFrUtils;->mEnvelopeFileLock:Ljava/lang/Object;

    monitor-enter v0

    .line 468
    :try_start_3
    sget-object v1, Lcom/umeng/commonsdk/framework/UMFrUtils;->mDefaultEnvelopeDirPath:Ljava/lang/String;

    if-nez v1, :cond_30

    .line 469
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/umeng/commonsdk/framework/UMFrUtils;->mDefaultEnvelopeDir:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/umeng/commonsdk/framework/UMFrUtils;->mDefaultEnvelopeDirPath:Ljava/lang/String;

    .line 471
    :cond_30
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/umeng/commonsdk/framework/UMFrUtils;->mDefaultEnvelopeDirPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 472
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_48

    .line 473
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    move-result v1

    if-nez v1, :cond_48

    .line 474
    const-string v1, "--->>> Create Envelope Directory failed!!!"

    invoke-static {v1}, Lcom/umeng/commonsdk/statistics/common/ULog;->d(Ljava/lang/String;)V
    :try_end_48
    .catchall {:try_start_3 .. :try_end_48} :catchall_49

    .line 479
    :cond_48
    goto :goto_4d

    .line 477
    :catchall_49
    move-exception v1

    .line 478
    :try_start_4a
    invoke-static {p0, v1}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 480
    :goto_4d
    sget-object p0, Lcom/umeng/commonsdk/framework/UMFrUtils;->mDefaultEnvelopeDirPath:Ljava/lang/String;

    monitor-exit v0

    return-object p0

    .line 481
    :catchall_51
    move-exception p0

    monitor-exit v0
    :try_end_53
    .catchall {:try_start_4a .. :try_end_53} :catchall_51

    throw p0
.end method

.method public static getEnvelopeFile(Landroid/content/Context;)Ljava/io/File;
    .registers 4

    .line 305
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 306
    return-object v0

    .line 308
    :cond_4
    nop

    .line 309
    new-instance v1, Ljava/io/File;

    invoke-static {p0}, Lcom/umeng/commonsdk/framework/UMFrUtils;->getEnvelopeDirPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 310
    sget-object p0, Lcom/umeng/commonsdk/framework/UMFrUtils;->mEnvelopeFileLock:Ljava/lang/Object;

    monitor-enter p0

    .line 311
    :try_start_11
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 312
    if-eqz v1, :cond_28

    array-length v2, v1

    if-nez v2, :cond_1b

    goto :goto_28

    .line 316
    :cond_1b
    new-instance v0, Lcom/umeng/commonsdk/framework/UMFrUtils$2;

    invoke-direct {v0}, Lcom/umeng/commonsdk/framework/UMFrUtils$2;-><init>()V

    invoke-static {v1, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 330
    const/4 v0, 0x0

    aget-object v0, v1, v0

    monitor-exit p0

    return-object v0

    .line 313
    :cond_28
    :goto_28
    monitor-exit p0

    return-object v0

    .line 331
    :catchall_2a
    move-exception v0

    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_11 .. :try_end_2c} :catchall_2a

    throw v0
.end method

.method public static getLastInstantBuildTime(Landroid/content/Context;)J
    .registers 5

    .line 492
    sget-object v0, Lcom/umeng/commonsdk/framework/UMFrUtils;->mEnvelopeBuildTimeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 493
    :try_start_3
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 494
    const-string v1, "last_instant_build_time"

    const-wide/16 v2, 0x0

    invoke-interface {p0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    monitor-exit v0

    return-wide v1

    .line 495
    :catchall_11
    move-exception p0

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw p0
.end method

.method public static getLastSuccessfulBuildTime(Landroid/content/Context;)J
    .registers 5

    .line 485
    sget-object v0, Lcom/umeng/commonsdk/framework/UMFrUtils;->mEnvelopeBuildTimeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 486
    :try_start_3
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 487
    const-string v1, "last_successful_build_time"

    const-wide/16 v2, 0x0

    invoke-interface {p0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    monitor-exit v0

    return-wide v1

    .line 488
    :catchall_11
    move-exception p0

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw p0
.end method

.method public static getLegacyEnvelopeDir(Landroid/content/Context;)Ljava/lang/String;
    .registers 8

    .line 423
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Lcom/umeng/commonsdk/framework/UMFrUtils;->getProcessName(I)Ljava/lang/String;

    move-result-object v0

    .line 424
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_67

    const-string v2, "--->>> getEnvelopeDir: use current process name as envelope directory."

    const/16 v3, 0x5f

    const/16 v4, 0x3a

    if-nez v1, :cond_1d

    .line 425
    nop

    .line 426
    :try_start_15
    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 427
    invoke-static {v2}, Lcom/umeng/commonsdk/statistics/common/ULog;->d(Ljava/lang/String;)V

    .line 428
    return-object v0

    .line 430
    :cond_1d
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 431
    if-eqz v0, :cond_66

    .line 432
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    .line 433
    if-nez v0, :cond_35

    .line 434
    const-string v0, "--->>> getEnvelopeDir: can\'t get process name, use default envelope directory."

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/ULog;->d(Ljava/lang/String;)V

    .line 435
    sget-object p0, Lcom/umeng/commonsdk/framework/UMFrUtils;->mDefaultEnvelopeDir:Ljava/lang/String;

    return-object p0

    .line 437
    :cond_35
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_3e

    .line 438
    sget-object p0, Lcom/umeng/commonsdk/framework/UMFrUtils;->mDefaultEnvelopeDir:Ljava/lang/String;
    :try_end_3d
    .catchall {:try_start_15 .. :try_end_3d} :catchall_67

    return-object p0

    .line 441
    :cond_3e
    :try_start_3e
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_42
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_61

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 442
    iget v5, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    if-ne v5, v6, :cond_60

    .line 443
    iget-object v0, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 444
    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 445
    invoke-static {v2}, Lcom/umeng/commonsdk/statistics/common/ULog;->d(Ljava/lang/String;)V
    :try_end_5f
    .catchall {:try_start_3e .. :try_end_5f} :catchall_62

    .line 446
    return-object v0

    .line 448
    :cond_60
    goto :goto_42

    .line 451
    :cond_61
    goto :goto_66

    .line 449
    :catchall_62
    move-exception v0

    .line 450
    :try_start_63
    invoke-static {p0, v0}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V
    :try_end_66
    .catchall {:try_start_63 .. :try_end_66} :catchall_67

    .line 456
    :cond_66
    :goto_66
    goto :goto_6b

    .line 454
    :catchall_67
    move-exception v0

    .line 455
    invoke-static {p0, v0}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 457
    :goto_6b
    sget-object p0, Lcom/umeng/commonsdk/framework/UMFrUtils;->mDefaultEnvelopeDir:Ljava/lang/String;

    return-object p0
.end method

.method private static getProcessName(I)Ljava/lang/String;
    .registers 6

    .line 55
    nop

    .line 57
    const/4 v0, 0x0

    :try_start_2
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/proc/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v3, "/cmdline"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_25
    .catchall {:try_start_2 .. :try_end_25} :catchall_3d

    .line 58
    :try_start_25
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    .line 59
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_33

    .line 60
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0
    :try_end_33
    .catchall {:try_start_25 .. :try_end_33} :catchall_3b

    .line 62
    :cond_33
    nop

    .line 67
    nop

    .line 68
    :try_start_35
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_39

    .line 71
    goto :goto_3a

    .line 70
    :catchall_39
    move-exception v0

    .line 71
    :goto_3a
    return-object p0

    .line 63
    :catchall_3b
    move-exception p0

    goto :goto_3f

    :catchall_3d
    move-exception p0

    move-object v1, v0

    .line 67
    :goto_3f
    if-eqz v1, :cond_47

    .line 68
    :try_start_41
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_44
    .catchall {:try_start_41 .. :try_end_44} :catchall_45

    goto :goto_47

    .line 70
    :catchall_45
    move-exception p0

    .line 72
    goto :goto_48

    .line 71
    :cond_47
    :goto_47
    nop

    .line 73
    :goto_48
    return-object v0
.end method

.method public static getSubProcessName(Landroid/content/Context;)Ljava/lang/String;
    .registers 6

    .line 117
    const-string v0, ""

    .line 119
    :try_start_2
    invoke-static {p0}, Lcom/umeng/commonsdk/framework/UMFrUtils;->getCurrentProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 120
    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 121
    if-ltz v2, :cond_14

    .line 122
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 124
    :cond_14
    if-gez v2, :cond_34

    .line 125
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 126
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    .line 127
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    .line 128
    if-le v4, v3, :cond_33

    .line 129
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1
    :try_end_32
    .catchall {:try_start_2 .. :try_end_32} :catchall_36

    goto :goto_35

    .line 131
    :cond_33
    goto :goto_35

    .line 124
    :cond_34
    move-object v1, v0

    .line 136
    :goto_35
    goto :goto_3f

    .line 134
    :catchall_36
    move-exception v1

    .line 135
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    move-object v1, v0

    .line 137
    :goto_3f
    return-object v1
.end method

.method public static hasEnvelopeFile(Landroid/content/Context;Lcom/umeng/commonsdk/framework/UMLogDataProtocol$UMBusinessType;)Z
    .registers 8

    .line 621
    const-string v0, "a"

    .line 622
    sget-object v1, Lcom/umeng/commonsdk/framework/UMLogDataProtocol$UMBusinessType;->U_INTERNAL:Lcom/umeng/commonsdk/framework/UMLogDataProtocol$UMBusinessType;

    if-ne p1, v1, :cond_8

    .line 623
    const-string v0, "i"

    .line 625
    :cond_8
    sget-object v1, Lcom/umeng/commonsdk/framework/UMLogDataProtocol$UMBusinessType;->U_ZeroEnv:Lcom/umeng/commonsdk/framework/UMLogDataProtocol$UMBusinessType;

    if-ne p1, v1, :cond_e

    .line 626
    const-string v0, "z"

    .line 628
    :cond_e
    invoke-static {p0}, Lcom/umeng/commonsdk/framework/UMFrUtils;->getEnvelopeDirPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 629
    const/4 v1, 0x0

    if-eqz p1, :cond_49

    .line 630
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 631
    sget-object p1, Lcom/umeng/commonsdk/framework/UMFrUtils;->mEnvelopeFileLock:Ljava/lang/Object;

    monitor-enter p1

    .line 633
    :try_start_1d
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 634
    if-eqz v2, :cond_3e

    array-length v3, v2

    if-nez v3, :cond_27

    goto :goto_3e

    .line 637
    :cond_27
    array-length v3, v2

    const/4 v4, 0x0

    :goto_29
    if-ge v4, v3, :cond_3d

    aget-object v5, v2, v4

    .line 638
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5
    :try_end_35
    .catchall {:try_start_1d .. :try_end_35} :catchall_40

    if-eqz v5, :cond_3a

    .line 639
    :try_start_37
    monitor-exit p1

    const/4 p0, 0x1

    return p0

    .line 637
    :cond_3a
    add-int/lit8 v4, v4, 0x1

    goto :goto_29

    .line 644
    :cond_3d
    goto :goto_44

    .line 635
    :cond_3e
    :goto_3e
    monitor-exit p1

    return v1

    .line 642
    :catchall_40
    move-exception v0

    .line 643
    invoke-static {p0, v0}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 645
    :goto_44
    monitor-exit p1

    return v1

    .line 646
    :catchall_46
    move-exception p0

    monitor-exit p1
    :try_end_48
    .catchall {:try_start_37 .. :try_end_48} :catchall_46

    throw p0

    .line 648
    :cond_49
    return v1
.end method

.method public static isOnline(Landroid/content/Context;)Z
    .registers 2

    .line 189
    :try_start_0
    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {p0, v0}, Lcom/umeng/commonsdk/framework/UMFrUtils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 190
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 191
    if-eqz v0, :cond_1d

    .line 192
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 193
    if-eqz v0, :cond_1d

    .line 194
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result p0
    :try_end_1c
    .catchall {:try_start_0 .. :try_end_1c} :catchall_1e

    return p0

    .line 200
    :cond_1d
    goto :goto_26

    .line 198
    :catchall_1e
    move-exception v0

    .line 199
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 201
    :goto_26
    const/4 p0, 0x0

    return p0
.end method

.method public static removeEnvelopeFile(Ljava/io/File;)Z
    .registers 4

    .line 565
    invoke-static {}, Lcom/umeng/commonsdk/framework/UMModuleRegister;->getAppContext()Landroid/content/Context;

    move-result-object v0

    .line 566
    sget-object v1, Lcom/umeng/commonsdk/framework/UMFrUtils;->mEnvelopeFileLock:Ljava/lang/Object;

    monitor-enter v1

    .line 568
    if-eqz p0, :cond_1a

    :try_start_9
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 569
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_15

    :try_start_13
    monitor-exit v1

    return p0

    .line 571
    :catchall_15
    move-exception p0

    .line 572
    invoke-static {v0, p0}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    goto :goto_1b

    .line 573
    :cond_1a
    nop

    .line 574
    :goto_1b
    const/4 p0, 0x1

    monitor-exit v1

    return p0

    .line 575
    :catchall_1e
    move-exception p0

    monitor-exit v1
    :try_end_20
    .catchall {:try_start_13 .. :try_end_20} :catchall_1e

    throw p0
.end method

.method public static removeRedundantEnvelopeFiles(Landroid/content/Context;I)V
    .registers 7

    .line 257
    nop

    .line 258
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/umeng/commonsdk/framework/UMFrUtils;->getEnvelopeDirPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 259
    sget-object v1, Lcom/umeng/commonsdk/framework/UMFrUtils;->mEnvelopeFileLock:Ljava/lang/Object;

    monitor-enter v1

    .line 260
    :try_start_d
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 262
    if-eqz v0, :cond_55

    array-length v2, v0

    if-gt v2, p1, :cond_17

    goto :goto_55

    .line 266
    :cond_17
    new-instance v2, Lcom/umeng/commonsdk/framework/UMFrUtils$1;

    invoke-direct {v2}, Lcom/umeng/commonsdk/framework/UMFrUtils$1;-><init>()V

    invoke-static {v0, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 281
    array-length v2, v0
    :try_end_20
    .catchall {:try_start_d .. :try_end_20} :catchall_57

    if-le v2, p1, :cond_53

    .line 284
    const/4 v2, 0x0

    :goto_23
    :try_start_23
    array-length v3, v0

    sub-int/2addr v3, p1

    if-ge v2, v3, :cond_4e

    .line 285
    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v3

    .line 286
    if-nez v3, :cond_4b

    .line 287
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--->>> remove ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] file fail."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/umeng/commonsdk/statistics/common/ULog;->d(Ljava/lang/String;)V
    :try_end_4b
    .catchall {:try_start_23 .. :try_end_4b} :catchall_4f

    .line 284
    :cond_4b
    add-int/lit8 v2, v2, 0x1

    goto :goto_23

    .line 292
    :cond_4e
    goto :goto_53

    .line 290
    :catchall_4f
    move-exception p1

    .line 291
    :try_start_50
    invoke-static {p0, p1}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 294
    :cond_53
    :goto_53
    monitor-exit v1

    .line 295
    return-void

    .line 263
    :cond_55
    :goto_55
    monitor-exit v1

    return-void

    .line 294
    :catchall_57
    move-exception p0

    monitor-exit v1
    :try_end_59
    .catchall {:try_start_50 .. :try_end_59} :catchall_57

    goto :goto_5b

    :goto_5a
    throw p0

    :goto_5b
    goto :goto_5a
.end method

.method public static saveEnvelopeFile(Landroid/content/Context;Ljava/lang/String;[B)I
    .registers 8

    .line 526
    const/16 v0, 0x65

    if-nez p2, :cond_5

    .line 527
    return v0

    .line 529
    :cond_5
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/umeng/commonsdk/framework/UMFrUtils;->getEnvelopeDirPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 530
    sget-object v2, Lcom/umeng/commonsdk/framework/UMFrUtils;->mEnvelopeFileLock:Ljava/lang/Object;

    monitor-enter v2

    .line 531
    const/4 v3, 0x0

    .line 533
    :try_start_29
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_2e} :catch_5b
    .catchall {:try_start_29 .. :try_end_2e} :catchall_59

    .line 534
    :try_start_2e
    invoke-virtual {v4, p2}, Ljava/io/FileOutputStream;->write([B)V

    .line 535
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_34} :catch_56
    .catchall {:try_start_2e .. :try_end_34} :catchall_53

    .line 536
    nop

    .line 542
    nop

    .line 552
    :try_start_36
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/internal/a;->a(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/internal/a;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/umeng/commonsdk/statistics/internal/a;->a(Ljava/lang/String;)Z

    move-result p2

    .line 553
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/internal/a;->a(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/internal/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/umeng/commonsdk/statistics/internal/a;->b(Ljava/lang/String;)Z

    move-result p1

    .line 554
    if-eqz p2, :cond_4b

    .line 555
    invoke-static {p0}, Lcom/umeng/commonsdk/framework/UMFrUtils;->updateLastSuccessfulBuildTime(Landroid/content/Context;)V

    .line 557
    :cond_4b
    if-eqz p1, :cond_50

    .line 558
    invoke-static {p0}, Lcom/umeng/commonsdk/framework/UMFrUtils;->updateLastInstantBuildTime(Landroid/content/Context;)V

    .line 560
    :cond_50
    const/4 p0, 0x0

    monitor-exit v2
    :try_end_52
    .catchall {:try_start_36 .. :try_end_52} :catchall_77

    return p0

    .line 542
    :catchall_53
    move-exception p1

    move-object v3, v4

    goto :goto_6c

    .line 537
    :catch_56
    move-exception p1

    move-object v3, v4

    goto :goto_5c

    .line 542
    :catchall_59
    move-exception p1

    goto :goto_6c

    .line 537
    :catch_5b
    move-exception p1

    .line 539
    :goto_5c
    :try_start_5c
    invoke-static {p0, p1}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V
    :try_end_5f
    .catchall {:try_start_5c .. :try_end_5f} :catchall_59

    .line 540
    nop

    .line 542
    if-eqz v3, :cond_6a

    .line 544
    :try_start_62
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_65
    .catchall {:try_start_62 .. :try_end_65} :catchall_66

    .line 547
    goto :goto_6a

    .line 545
    :catchall_66
    move-exception p1

    .line 546
    :try_start_67
    invoke-static {p0, p1}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 547
    :cond_6a
    :goto_6a
    monitor-exit v2
    :try_end_6b
    .catchall {:try_start_67 .. :try_end_6b} :catchall_77

    return v0

    .line 542
    :goto_6c
    if-eqz v3, :cond_76

    .line 544
    :try_start_6e
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_71
    .catchall {:try_start_6e .. :try_end_71} :catchall_72

    .line 547
    goto :goto_76

    .line 545
    :catchall_72
    move-exception p2

    .line 546
    :try_start_73
    invoke-static {p0, p2}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 547
    :cond_76
    :goto_76
    throw p1

    .line 561
    :catchall_77
    move-exception p0

    monitor-exit v2
    :try_end_79
    .catchall {:try_start_73 .. :try_end_79} :catchall_77

    throw p0
.end method

.method public static syncLegacyEnvelopeIfNeeded(Landroid/content/Context;)V
    .registers 9

    .line 340
    if-nez p0, :cond_3

    .line 341
    return-void

    .line 344
    :cond_3
    :try_start_3
    invoke-static {p0}, Lcom/umeng/commonsdk/framework/UMFrUtils;->getLegacyEnvelopeDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 346
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 347
    return-void

    .line 350
    :cond_e
    sget-object v1, Lcom/umeng/commonsdk/framework/UMFrUtils;->mDefaultEnvelopeDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 351
    return-void

    .line 354
    :cond_17
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 355
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 356
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_42

    .line 357
    return-void

    .line 360
    :cond_42
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 361
    if-eqz v0, :cond_8d

    array-length v2, v0
    :try_end_49
    .catchall {:try_start_3 .. :try_end_49} :catchall_9c

    if-nez v2, :cond_4c

    goto :goto_8d

    .line 373
    :cond_4c
    :try_start_4c
    invoke-static {p0}, Lcom/umeng/commonsdk/framework/UMFrUtils;->getEnvelopeDirPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 374
    const/4 v3, 0x0

    :goto_51
    array-length v4, v0

    if-ge v3, v4, :cond_7e

    .line 375
    aget-object v4, v0, v3

    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v0, v3

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 374
    add-int/lit8 v3, v3, 0x1

    goto :goto_51

    .line 377
    :cond_7e
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_87

    .line 378
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_87
    .catchall {:try_start_4c .. :try_end_87} :catchall_88

    .line 382
    :cond_87
    goto :goto_8c

    .line 380
    :catchall_88
    move-exception v0

    .line 381
    :try_start_89
    invoke-static {p0, v0}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V
    :try_end_8c
    .catchall {:try_start_89 .. :try_end_8c} :catchall_9c

    .line 385
    :goto_8c
    goto :goto_a0

    .line 363
    :cond_8d
    :goto_8d
    :try_start_8d
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_96

    .line 364
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_96
    .catchall {:try_start_8d .. :try_end_96} :catchall_97

    .line 369
    :cond_96
    goto :goto_9b

    .line 366
    :catchall_97
    move-exception v0

    .line 367
    :try_start_98
    invoke-static {p0, v0}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V
    :try_end_9b
    .catchall {:try_start_98 .. :try_end_9b} :catchall_9c

    .line 370
    :goto_9b
    return-void

    .line 383
    :catchall_9c
    move-exception v0

    .line 384
    invoke-static {p0, v0}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 387
    :goto_a0
    return-void
.end method

.method public static toByteArray(Ljava/lang/String;)[B
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 588
    invoke-static {}, Lcom/umeng/commonsdk/framework/UMModuleRegister;->getAppContext()Landroid/content/Context;

    move-result-object v0

    .line 589
    nop

    .line 590
    sget-object v1, Lcom/umeng/commonsdk/framework/UMFrUtils;->mEnvelopeFileLock:Ljava/lang/Object;

    monitor-enter v1

    .line 592
    const/4 v2, 0x0

    :try_start_9
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v4, "r"

    invoke-direct {v3, p0, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    .line 593
    sget-object v6, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v7, 0x0

    .line 594
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v9

    .line 593
    move-object v5, v2

    invoke-virtual/range {v5 .. v10}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object p0

    .line 594
    invoke-virtual {p0}, Ljava/nio/MappedByteBuffer;->load()Ljava/nio/MappedByteBuffer;

    move-result-object p0

    .line 596
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v3

    long-to-int v4, v3

    new-array v3, v4, [B

    .line 597
    invoke-virtual {p0}, Ljava/nio/MappedByteBuffer;->remaining()I

    move-result v4

    if-lez v4, :cond_3a

    .line 598
    const/4 v4, 0x0

    invoke-virtual {p0}, Ljava/nio/MappedByteBuffer;->remaining()I

    move-result v5

    invoke-virtual {p0, v3, v4, v5}, Ljava/nio/MappedByteBuffer;->get([BII)Ljava/nio/ByteBuffer;
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_3a} :catch_47
    .catchall {:try_start_9 .. :try_end_3a} :catchall_45

    .line 600
    :cond_3a
    nop

    .line 606
    :try_start_3b
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_3f

    .line 609
    goto :goto_43

    .line 607
    :catchall_3f
    move-exception p0

    .line 608
    :try_start_40
    invoke-static {v0, p0}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 609
    :goto_43
    monitor-exit v1
    :try_end_44
    .catchall {:try_start_40 .. :try_end_44} :catchall_55

    return-object v3

    .line 605
    :catchall_45
    move-exception p0

    goto :goto_4c

    .line 601
    :catch_47
    move-exception p0

    .line 602
    :try_start_48
    invoke-static {v0, p0}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 603
    throw p0
    :try_end_4c
    .catchall {:try_start_48 .. :try_end_4c} :catchall_45

    .line 606
    :goto_4c
    :try_start_4c
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_4f
    .catchall {:try_start_4c .. :try_end_4f} :catchall_50

    .line 609
    goto :goto_54

    .line 607
    :catchall_50
    move-exception v2

    .line 608
    :try_start_51
    invoke-static {v0, v2}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 609
    :goto_54
    throw p0

    .line 611
    :catchall_55
    move-exception p0

    monitor-exit v1
    :try_end_57
    .catchall {:try_start_51 .. :try_end_57} :catchall_55

    throw p0
.end method

.method private static updateLastInstantBuildTime(Landroid/content/Context;)V
    .registers 5

    .line 507
    sget-object v0, Lcom/umeng/commonsdk/framework/UMFrUtils;->mEnvelopeBuildTimeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 508
    :try_start_3
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 509
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 510
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v3, "last_instant_build_time"

    invoke-interface {p0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 511
    monitor-exit v0

    .line 512
    return-void

    .line 511
    :catchall_1a
    move-exception p0

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw p0
.end method

.method private static updateLastSuccessfulBuildTime(Landroid/content/Context;)V
    .registers 5

    .line 499
    sget-object v0, Lcom/umeng/commonsdk/framework/UMFrUtils;->mEnvelopeBuildTimeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 500
    :try_start_3
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 501
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 502
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v3, "last_successful_build_time"

    invoke-interface {p0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 503
    monitor-exit v0

    .line 504
    return-void

    .line 503
    :catchall_1a
    move-exception p0

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw p0
.end method
