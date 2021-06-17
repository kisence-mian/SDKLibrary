.class public Lcom/uc/crashsdk/g;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field public static a:Ljava/lang/RuntimeException;

.field public static b:Ljava/lang/RuntimeException;

.field static final synthetic c:Z

.field private static d:Lcom/uc/crashsdk/export/CustomInfo;

.field private static e:Lcom/uc/crashsdk/export/VersionInfo;

.field private static final f:Ljava/lang/Object;

.field private static g:Ljava/lang/String;

.field private static h:Ljava/lang/String;

.field private static i:Ljava/lang/String;

.field private static j:Ljava/lang/String;

.field private static final k:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 18
    const/4 v0, 0x1

    sput-boolean v0, Lcom/uc/crashsdk/g;->c:Z

    .line 20
    const/4 v0, 0x0

    sput-object v0, Lcom/uc/crashsdk/g;->d:Lcom/uc/crashsdk/export/CustomInfo;

    .line 21
    sput-object v0, Lcom/uc/crashsdk/g;->e:Lcom/uc/crashsdk/export/VersionInfo;

    .line 22
    sput-object v0, Lcom/uc/crashsdk/g;->a:Ljava/lang/RuntimeException;

    .line 23
    sput-object v0, Lcom/uc/crashsdk/g;->b:Ljava/lang/RuntimeException;

    .line 105
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lcom/uc/crashsdk/g;->f:Ljava/lang/Object;

    .line 423
    sput-object v0, Lcom/uc/crashsdk/g;->g:Ljava/lang/String;

    .line 451
    sput-object v0, Lcom/uc/crashsdk/g;->h:Ljava/lang/String;

    .line 452
    sput-object v0, Lcom/uc/crashsdk/g;->i:Ljava/lang/String;

    .line 453
    sput-object v0, Lcom/uc/crashsdk/g;->j:Ljava/lang/String;

    .line 589
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/uc/crashsdk/g;->k:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static A()J
    .registers 2

    .line 320
    sget-object v0, Lcom/uc/crashsdk/g;->d:Lcom/uc/crashsdk/export/CustomInfo;

    iget-wide v0, v0, Lcom/uc/crashsdk/export/CustomInfo;->mMaxUploadBytesPerDay:J

    return-wide v0
.end method

.method static B()I
    .registers 1

    .line 324
    sget-object v0, Lcom/uc/crashsdk/g;->d:Lcom/uc/crashsdk/export/CustomInfo;

    iget v0, v0, Lcom/uc/crashsdk/export/CustomInfo;->mMaxUploadBuiltinLogCountPerDay:I

    return v0
.end method

.method static C()I
    .registers 1

    .line 328
    sget-object v0, Lcom/uc/crashsdk/g;->d:Lcom/uc/crashsdk/export/CustomInfo;

    iget v0, v0, Lcom/uc/crashsdk/export/CustomInfo;->mMaxUploadCustomLogCountPerDay:I

    return v0
.end method

.method static D()I
    .registers 1

    .line 332
    sget-object v0, Lcom/uc/crashsdk/g;->d:Lcom/uc/crashsdk/export/CustomInfo;

    iget v0, v0, Lcom/uc/crashsdk/export/CustomInfo;->mMaxCustomLogCountPerTypePerDay:I

    return v0
.end method

.method static E()I
    .registers 1

    .line 336
    sget-object v0, Lcom/uc/crashsdk/g;->d:Lcom/uc/crashsdk/export/CustomInfo;

    iget v0, v0, Lcom/uc/crashsdk/export/CustomInfo;->mInfoUpdateInterval:I

    return v0
.end method

.method static F()I
    .registers 1

    .line 340
    sget-object v0, Lcom/uc/crashsdk/g;->d:Lcom/uc/crashsdk/export/CustomInfo;

    iget v0, v0, Lcom/uc/crashsdk/export/CustomInfo;->mInfoSaveFrequency:I

    return v0
.end method

.method static G()I
    .registers 1

    .line 344
    sget-object v0, Lcom/uc/crashsdk/g;->d:Lcom/uc/crashsdk/export/CustomInfo;

    iget v0, v0, Lcom/uc/crashsdk/export/CustomInfo;->mReservedJavaFileHandleCount:I

    return v0
.end method

.method static H()I
    .registers 1

    .line 352
    sget-object v0, Lcom/uc/crashsdk/g;->d:Lcom/uc/crashsdk/export/CustomInfo;

    iget v0, v0, Lcom/uc/crashsdk/export/CustomInfo;->mFdDumpMinLimit:I

    return v0
.end method

.method static I()I
    .registers 1

    .line 356
    sget-object v0, Lcom/uc/crashsdk/g;->d:Lcom/uc/crashsdk/export/CustomInfo;

    iget v0, v0, Lcom/uc/crashsdk/export/CustomInfo;->mThreadsDumpMinLimit:I

    return v0
.end method

.method static J()Z
    .registers 1

    .line 360
    sget-object v0, Lcom/uc/crashsdk/g;->d:Lcom/uc/crashsdk/export/CustomInfo;

    iget-boolean v0, v0, Lcom/uc/crashsdk/export/CustomInfo;->mAutoDetectLifeCycle:Z

    return v0
.end method

.method static K()Z
    .registers 1

    .line 364
    sget-object v0, Lcom/uc/crashsdk/g;->d:Lcom/uc/crashsdk/export/CustomInfo;

    iget-boolean v0, v0, Lcom/uc/crashsdk/export/CustomInfo;->mMonitorBattery:Z

    return v0
.end method

.method static L()I
    .registers 1

    .line 368
    sget-object v0, Lcom/uc/crashsdk/g;->d:Lcom/uc/crashsdk/export/CustomInfo;

    iget v0, v0, Lcom/uc/crashsdk/export/CustomInfo;->mAnrTraceStrategy:I

    return v0
.end method

.method public static M()Z
    .registers 1

    .line 373
    sget-object v0, Lcom/uc/crashsdk/g;->d:Lcom/uc/crashsdk/export/CustomInfo;

    if-eqz v0, :cond_b

    iget-boolean v0, v0, Lcom/uc/crashsdk/export/CustomInfo;->mDebug:Z

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    return v0

    :cond_b
    :goto_b
    const/4 v0, 0x1

    return v0
.end method

.method static N()Z
    .registers 1

    .line 378
    sget-object v0, Lcom/uc/crashsdk/g;->d:Lcom/uc/crashsdk/export/CustomInfo;

    if-eqz v0, :cond_b

    iget-boolean v0, v0, Lcom/uc/crashsdk/export/CustomInfo;->mPrintStackInfos:Z

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    return v0

    :cond_b
    :goto_b
    const/4 v0, 0x1

    return v0
.end method

.method public static O()Z
    .registers 1

    .line 382
    sget-object v0, Lcom/uc/crashsdk/g;->d:Lcom/uc/crashsdk/export/CustomInfo;

    iget-boolean v0, v0, Lcom/uc/crashsdk/export/CustomInfo;->mEnableStatReport:Z

    return v0
.end method

.method public static P()Z
    .registers 1

    .line 386
    sget-object v0, Lcom/uc/crashsdk/g;->d:Lcom/uc/crashsdk/export/CustomInfo;

    iget-boolean v0, v0, Lcom/uc/crashsdk/export/CustomInfo;->mIsInternational:Z

    return v0
.end method

.method public static Q()Z
    .registers 1

    .line 390
    sget-object v0, Lcom/uc/crashsdk/g;->d:Lcom/uc/crashsdk/export/CustomInfo;

    iget-boolean v0, v0, Lcom/uc/crashsdk/export/CustomInfo;->mAddPvForNewDay:Z

    return v0
.end method

.method public static R()Ljava/lang/String;
    .registers 1

    .line 395
    sget-object v0, Lcom/uc/crashsdk/g;->e:Lcom/uc/crashsdk/export/VersionInfo;

    iget-object v0, v0, Lcom/uc/crashsdk/export/VersionInfo;->mVersion:Ljava/lang/String;

    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 396
    invoke-static {}, Lcom/uc/crashsdk/a;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 398
    :cond_f
    sget-object v0, Lcom/uc/crashsdk/g;->e:Lcom/uc/crashsdk/export/VersionInfo;

    iget-object v0, v0, Lcom/uc/crashsdk/export/VersionInfo;->mVersion:Ljava/lang/String;

    invoke-static {v0}, Lcom/uc/crashsdk/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static S()Ljava/lang/String;
    .registers 1

    .line 402
    sget-object v0, Lcom/uc/crashsdk/g;->e:Lcom/uc/crashsdk/export/VersionInfo;

    iget-object v0, v0, Lcom/uc/crashsdk/export/VersionInfo;->mSubVersion:Ljava/lang/String;

    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 403
    const-string v0, "release"

    return-object v0

    .line 405
    :cond_d
    sget-object v0, Lcom/uc/crashsdk/g;->e:Lcom/uc/crashsdk/export/VersionInfo;

    iget-object v0, v0, Lcom/uc/crashsdk/export/VersionInfo;->mSubVersion:Ljava/lang/String;

    return-object v0
.end method

.method public static T()Ljava/lang/String;
    .registers 1

    .line 410
    sget-object v0, Lcom/uc/crashsdk/g;->e:Lcom/uc/crashsdk/export/VersionInfo;

    iget-object v0, v0, Lcom/uc/crashsdk/export/VersionInfo;->mBuildId:Ljava/lang/String;

    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 411
    invoke-static {}, Lcom/uc/crashsdk/g;->X()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 413
    :cond_f
    sget-object v0, Lcom/uc/crashsdk/g;->e:Lcom/uc/crashsdk/export/VersionInfo;

    iget-object v0, v0, Lcom/uc/crashsdk/export/VersionInfo;->mBuildId:Ljava/lang/String;

    invoke-static {v0}, Lcom/uc/crashsdk/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static U()Ljava/lang/String;
    .registers 2

    .line 456
    sget-object v0, Lcom/uc/crashsdk/g;->h:Ljava/lang/String;

    if-nez v0, :cond_2b

    .line 457
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/uc/crashsdk/a/g;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/uc/crashsdk/g;->d:Lcom/uc/crashsdk/export/CustomInfo;

    iget-object v1, v1, Lcom/uc/crashsdk/export/CustomInfo;->mTagFilesFolderName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/uc/crashsdk/g;->h:Ljava/lang/String;

    .line 460
    :cond_2b
    sget-object v0, Lcom/uc/crashsdk/g;->h:Ljava/lang/String;

    return-object v0
.end method

.method static V()Ljava/lang/String;
    .registers 2

    .line 464
    sget-object v0, Lcom/uc/crashsdk/g;->i:Ljava/lang/String;

    if-nez v0, :cond_2b

    .line 465
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/uc/crashsdk/a/g;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/uc/crashsdk/g;->d:Lcom/uc/crashsdk/export/CustomInfo;

    iget-object v1, v1, Lcom/uc/crashsdk/export/CustomInfo;->mCrashLogsFolderName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/uc/crashsdk/g;->i:Ljava/lang/String;

    .line 468
    :cond_2b
    sget-object v0, Lcom/uc/crashsdk/g;->i:Ljava/lang/String;

    return-object v0
.end method

.method static W()Ljava/lang/String;
    .registers 2

    .line 473
    sget-object v0, Lcom/uc/crashsdk/g;->j:Ljava/lang/String;

    if-nez v0, :cond_7a

    .line 474
    sget-object v0, Lcom/uc/crashsdk/g;->d:Lcom/uc/crashsdk/export/CustomInfo;

    iget-object v0, v0, Lcom/uc/crashsdk/export/CustomInfo;->mLogsBackupPathName:Ljava/lang/String;

    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_34

    .line 475
    sget-object v0, Lcom/uc/crashsdk/g;->d:Lcom/uc/crashsdk/export/CustomInfo;

    iget-object v0, v0, Lcom/uc/crashsdk/export/CustomInfo;->mLogsBackupPathName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 476
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_31

    .line 477
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 479
    :cond_31
    sput-object v0, Lcom/uc/crashsdk/g;->j:Ljava/lang/String;

    .line 480
    goto :goto_7a

    .line 482
    :cond_34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/uc/crashsdk/a/g;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "msdb"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 497
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/uc/crashsdk/g;->d:Lcom/uc/crashsdk/export/CustomInfo;

    iget-object v1, v1, Lcom/uc/crashsdk/export/CustomInfo;->mCrashLogsFolderName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/uc/crashsdk/g;->j:Ljava/lang/String;

    .line 502
    :cond_7a
    :goto_7a
    sget-object v0, Lcom/uc/crashsdk/g;->j:Ljava/lang/String;

    return-object v0
.end method

.method private static X()Ljava/lang/String;
    .registers 5

    .line 426
    sget-object v0, Lcom/uc/crashsdk/g;->g:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 427
    return-object v0

    .line 430
    :cond_5
    const/4 v0, 0x0

    .line 432
    :try_start_6
    new-instance v1, Ljava/util/zip/ZipFile;

    invoke-static {}, Lcom/uc/crashsdk/a/g;->c()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_3b

    .line 433
    :try_start_f
    const-string v0, "classes.dex"

    invoke-virtual {v1, v0}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    .line 434
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getCrc()J

    move-result-wide v2

    .line 435
    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/uc/crashsdk/g;->g:Ljava/lang/String;

    .line 436
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "version unique build id: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/uc/crashsdk/g;->g:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "crashsdk"

    invoke-static {v2, v0}, Lcom/uc/crashsdk/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_35
    .catchall {:try_start_f .. :try_end_35} :catchall_39

    .line 442
    :try_start_35
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_4c

    goto :goto_4e

    .line 437
    :catchall_39
    move-exception v0

    goto :goto_3f

    :catchall_3b
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    .line 438
    :goto_3f
    :try_start_3f
    const-string v2, ""

    sput-object v2, Lcom/uc/crashsdk/g;->g:Ljava/lang/String;

    .line 439
    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V
    :try_end_46
    .catchall {:try_start_3f .. :try_end_46} :catchall_52

    .line 442
    if-eqz v1, :cond_4e

    .line 443
    :try_start_48
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_4b
    .catchall {:try_start_48 .. :try_end_4b} :catchall_4c

    goto :goto_4e

    .line 445
    :catchall_4c
    move-exception v0

    .line 447
    goto :goto_4f

    .line 446
    :cond_4e
    :goto_4e
    nop

    .line 448
    :goto_4f
    sget-object v0, Lcom/uc/crashsdk/g;->g:Ljava/lang/String;

    return-object v0

    .line 441
    :catchall_52
    move-exception v0

    .line 442
    if-eqz v1, :cond_5b

    .line 443
    :try_start_55
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_58
    .catchall {:try_start_55 .. :try_end_58} :catchall_59

    goto :goto_5b

    .line 445
    :catchall_59
    move-exception v1

    goto :goto_5c

    .line 446
    :cond_5b
    :goto_5b
    nop

    :goto_5c
    throw v0
.end method

.method private static Y()V
    .registers 5

    .line 573
    sget-boolean v0, Lcom/uc/crashsdk/b;->d:Z

    if-eqz v0, :cond_e

    .line 574
    const/16 v0, 0x18

    const-wide/16 v1, 0x1

    sget-object v3, Lcom/uc/crashsdk/a;->b:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/uc/crashsdk/JNIBridge;->nativeSet(IJLjava/lang/String;[Ljava/lang/Object;)J

    .line 577
    :cond_e
    return-void
.end method

.method public static a(Lcom/uc/crashsdk/export/CustomInfo;Landroid/os/Bundle;)Lcom/uc/crashsdk/export/CustomInfo;
    .registers 9

    .line 507
    if-nez p0, :cond_13

    .line 508
    sget-object p0, Lcom/uc/crashsdk/g;->d:Lcom/uc/crashsdk/export/CustomInfo;

    if-nez p0, :cond_c

    .line 509
    new-instance p0, Lcom/uc/crashsdk/export/CustomInfo;

    invoke-direct {p0}, Lcom/uc/crashsdk/export/CustomInfo;-><init>()V

    goto :goto_13

    .line 511
    :cond_c
    new-instance p0, Lcom/uc/crashsdk/export/CustomInfo;

    sget-object v0, Lcom/uc/crashsdk/g;->d:Lcom/uc/crashsdk/export/CustomInfo;

    invoke-direct {p0, v0}, Lcom/uc/crashsdk/export/CustomInfo;-><init>(Lcom/uc/crashsdk/export/CustomInfo;)V

    .line 514
    :cond_13
    :goto_13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 516
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 517
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_23
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 518
    array-length v3, v0

    const/4 v4, 0x0

    :goto_31
    if-ge v4, v3, :cond_8c

    aget-object v5, v0, v4

    .line 519
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_89

    .line 520
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 525
    :try_start_43
    invoke-virtual {v5, p0, v6}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_46} :catch_47

    .line 532
    goto :goto_89

    .line 526
    :catch_47
    move-exception p0

    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 528
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Field "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " must be a "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 529
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", but give a "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    if-eqz v6, :cond_7b

    .line 531
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_7d

    :cond_7b
    const-string v0, "(null)"

    :goto_7d
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 518
    :cond_89
    :goto_89
    add-int/lit8 v4, v4, 0x1

    goto :goto_31

    .line 534
    :cond_8c
    goto :goto_23

    .line 535
    :cond_8d
    return-object p0
.end method

.method public static a(Landroid/os/Bundle;)Lcom/uc/crashsdk/export/VersionInfo;
    .registers 4

    .line 539
    sget-object v0, Lcom/uc/crashsdk/g;->e:Lcom/uc/crashsdk/export/VersionInfo;

    if-nez v0, :cond_a

    .line 541
    new-instance v0, Lcom/uc/crashsdk/export/VersionInfo;

    invoke-direct {v0}, Lcom/uc/crashsdk/export/VersionInfo;-><init>()V

    goto :goto_11

    .line 543
    :cond_a
    new-instance v0, Lcom/uc/crashsdk/export/VersionInfo;

    sget-object v1, Lcom/uc/crashsdk/g;->e:Lcom/uc/crashsdk/export/VersionInfo;

    invoke-direct {v0, v1}, Lcom/uc/crashsdk/export/VersionInfo;-><init>(Lcom/uc/crashsdk/export/VersionInfo;)V

    .line 548
    :goto_11
    const-string v1, "mVersion"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 549
    invoke-static {v1}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1f

    .line 550
    iput-object v1, v0, Lcom/uc/crashsdk/export/VersionInfo;->mVersion:Ljava/lang/String;

    .line 553
    :cond_1f
    const-string v1, "mSubVersion"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 554
    invoke-static {v1}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2d

    .line 555
    iput-object v1, v0, Lcom/uc/crashsdk/export/VersionInfo;->mSubVersion:Ljava/lang/String;

    .line 558
    :cond_2d
    const-string v1, "mBuildId"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 559
    invoke-static {v1}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3b

    .line 560
    iput-object v1, v0, Lcom/uc/crashsdk/export/VersionInfo;->mBuildId:Ljava/lang/String;

    .line 563
    :cond_3b
    const-string v1, "crver"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 564
    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4c

    .line 565
    sput-object p0, Lcom/uc/crashsdk/a;->b:Ljava/lang/String;

    .line 566
    invoke-static {}, Lcom/uc/crashsdk/g;->Y()V

    .line 569
    :cond_4c
    return-object v0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 417
    if-eqz p0, :cond_11

    const-string v0, "_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 418
    const-string v1, "-"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 420
    :cond_11
    return-object p0
.end method

.method static a()V
    .registers 2

    .line 129
    invoke-static {}, Lcom/uc/crashsdk/b;->v()Z

    .line 130
    invoke-static {}, Lcom/uc/crashsdk/b;->u()Z

    .line 132
    sget-object v0, Lcom/uc/crashsdk/g;->d:Lcom/uc/crashsdk/export/CustomInfo;

    iget-boolean v0, v0, Lcom/uc/crashsdk/export/CustomInfo;->mBackupLogs:Z

    if-eqz v0, :cond_1e

    .line 133
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/uc/crashsdk/g;->W()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 134
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1e

    .line 135
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 138
    :cond_1e
    return-void
.end method

.method public static a(Lcom/uc/crashsdk/export/CustomInfo;)V
    .registers 3

    .line 91
    sget-boolean v0, Lcom/uc/crashsdk/g;->c:Z

    if-nez v0, :cond_f

    iget-object v1, p0, Lcom/uc/crashsdk/export/CustomInfo;->mTagFilesFolderName:Ljava/lang/String;

    if-eqz v1, :cond_9

    goto :goto_f

    :cond_9
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 92
    :cond_f
    :goto_f
    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/uc/crashsdk/export/CustomInfo;->mCrashLogsFolderName:Ljava/lang/String;

    if-eqz v0, :cond_16

    goto :goto_1c

    :cond_16
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 94
    :cond_1c
    :goto_1c
    iget-object v0, p0, Lcom/uc/crashsdk/export/CustomInfo;->mTagFilesFolderName:Ljava/lang/String;

    iget-object p0, p0, Lcom/uc/crashsdk/export/CustomInfo;->mCrashLogsFolderName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_27

    .line 99
    return-void

    .line 95
    :cond_27
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "mTagFilesFolderName and mCrashLogsFolderName can not be set to the same!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Lcom/uc/crashsdk/export/CustomInfo;Lcom/uc/crashsdk/export/VersionInfo;)V
    .registers 5

    .line 26
    new-instance v0, Lcom/uc/crashsdk/export/CustomInfo;

    invoke-direct {v0, p0}, Lcom/uc/crashsdk/export/CustomInfo;-><init>(Lcom/uc/crashsdk/export/CustomInfo;)V

    .line 27
    sput-object v0, Lcom/uc/crashsdk/g;->d:Lcom/uc/crashsdk/export/CustomInfo;

    invoke-static {v0}, Lcom/uc/crashsdk/g;->c(Lcom/uc/crashsdk/export/CustomInfo;)V

    .line 29
    sget-object v0, Lcom/uc/crashsdk/g;->d:Lcom/uc/crashsdk/export/CustomInfo;

    iget-boolean v0, v0, Lcom/uc/crashsdk/export/CustomInfo;->mZipLog:Z

    if-nez v0, :cond_28

    .line 30
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "initialize set mZipLog to false, info.mZipLog: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/uc/crashsdk/export/CustomInfo;->mZipLog:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/uc/crashsdk/g;->a:Ljava/lang/RuntimeException;

    .line 33
    :cond_28
    sget-object v0, Lcom/uc/crashsdk/g;->d:Lcom/uc/crashsdk/export/CustomInfo;

    iget-boolean v0, v0, Lcom/uc/crashsdk/export/CustomInfo;->mEncryptLog:Z

    if-eqz v0, :cond_46

    .line 34
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "initialize set mEncryptLog to true, info.mEncryptLog: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/uc/crashsdk/export/CustomInfo;->mEncryptLog:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/uc/crashsdk/g;->b:Ljava/lang/RuntimeException;

    .line 38
    :cond_46
    new-instance p0, Lcom/uc/crashsdk/export/VersionInfo;

    invoke-direct {p0, p1}, Lcom/uc/crashsdk/export/VersionInfo;-><init>(Lcom/uc/crashsdk/export/VersionInfo;)V

    sput-object p0, Lcom/uc/crashsdk/g;->e:Lcom/uc/crashsdk/export/VersionInfo;

    .line 40
    invoke-static {}, Lcom/uc/crashsdk/b;->I()Z

    move-result p0

    if-nez p0, :cond_5b

    .line 42
    :try_start_53
    invoke-static {}, Lcom/uc/crashsdk/g;->a()V
    :try_end_56
    .catchall {:try_start_53 .. :try_end_56} :catchall_57

    .line 45
    return-void

    .line 43
    :catchall_57
    move-exception p0

    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 47
    :cond_5b
    return-void
.end method

.method public static a(Lcom/uc/crashsdk/export/VersionInfo;)V
    .registers 3

    .line 108
    sget-object v0, Lcom/uc/crashsdk/g;->f:Ljava/lang/Object;

    monitor-enter v0

    .line 109
    :try_start_3
    new-instance v1, Lcom/uc/crashsdk/export/VersionInfo;

    invoke-direct {v1, p0}, Lcom/uc/crashsdk/export/VersionInfo;-><init>(Lcom/uc/crashsdk/export/VersionInfo;)V

    sput-object v1, Lcom/uc/crashsdk/g;->e:Lcom/uc/crashsdk/export/VersionInfo;

    invoke-static {}, Lcom/uc/crashsdk/e;->c()V

    sget-boolean p0, Lcom/uc/crashsdk/b;->d:Z

    if-eqz p0, :cond_37

    const/16 p0, 0x6d

    invoke-static {}, Lcom/uc/crashsdk/g;->R()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/uc/crashsdk/JNIBridge;->set(ILjava/lang/String;)J

    const/16 p0, 0x6e

    invoke-static {}, Lcom/uc/crashsdk/g;->S()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/uc/crashsdk/JNIBridge;->set(ILjava/lang/String;)J

    const/16 p0, 0x6f

    invoke-static {}, Lcom/uc/crashsdk/g;->T()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/uc/crashsdk/JNIBridge;->set(ILjava/lang/String;)J

    const/16 p0, 0x70

    const-string v1, "210105150455"

    invoke-static {p0, v1}, Lcom/uc/crashsdk/JNIBridge;->set(ILjava/lang/String;)J

    const/4 p0, 0x2

    invoke-static {p0}, Lcom/uc/crashsdk/JNIBridge;->cmd(I)J

    .line 110
    :cond_37
    monitor-exit v0

    return-void

    :catchall_39
    move-exception p0

    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3 .. :try_end_3b} :catchall_39

    throw p0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 2

    .line 580
    if-ne p0, p1, :cond_4

    .line 581
    const/4 p0, 0x1

    return p0

    .line 583
    :cond_4
    if-eqz p0, :cond_e

    if-nez p1, :cond_9

    goto :goto_e

    .line 586
    :cond_9
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 584
    :cond_e
    :goto_e
    const/4 p0, 0x0

    return p0
.end method

.method public static b(Lcom/uc/crashsdk/export/CustomInfo;)I
    .registers 10

    .line 592
    sget-object v0, Lcom/uc/crashsdk/g;->k:Ljava/lang/Object;

    monitor-enter v0

    .line 593
    const/4 v1, 0x0

    if-nez p0, :cond_8

    :goto_6
    goto/16 :goto_3a8

    :cond_8
    :try_start_8
    invoke-static {p0}, Lcom/uc/crashsdk/g;->c(Lcom/uc/crashsdk/export/CustomInfo;)V

    sget-object v2, Lcom/uc/crashsdk/g;->d:Lcom/uc/crashsdk/export/CustomInfo;

    if-nez v2, :cond_16

    new-instance v2, Lcom/uc/crashsdk/export/CustomInfo;

    invoke-direct {v2}, Lcom/uc/crashsdk/export/CustomInfo;-><init>()V

    sput-object v2, Lcom/uc/crashsdk/g;->d:Lcom/uc/crashsdk/export/CustomInfo;

    :cond_16
    sget-object v2, Lcom/uc/crashsdk/g;->d:Lcom/uc/crashsdk/export/CustomInfo;

    iget-object v3, p0, Lcom/uc/crashsdk/export/CustomInfo;->mAppId:Ljava/lang/String;

    iget-object v4, v2, Lcom/uc/crashsdk/export/CustomInfo;->mAppId:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/uc/crashsdk/g;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_35

    iget-object v3, p0, Lcom/uc/crashsdk/export/CustomInfo;->mAppId:Ljava/lang/String;

    iput-object v3, v2, Lcom/uc/crashsdk/export/CustomInfo;->mAppId:Ljava/lang/String;

    sget-boolean v3, Lcom/uc/crashsdk/b;->d:Z

    if-eqz v3, :cond_32

    const/16 v3, 0x66

    iget-object v5, v2, Lcom/uc/crashsdk/export/CustomInfo;->mAppId:Ljava/lang/String;

    invoke-static {v3, v5}, Lcom/uc/crashsdk/JNIBridge;->set(ILjava/lang/String;)J

    :cond_32
    const/4 v3, 0x1

    const/4 v5, 0x1

    goto :goto_37

    :cond_35
    const/4 v3, 0x0

    const/4 v5, 0x0

    :goto_37
    iget-object v6, p0, Lcom/uc/crashsdk/export/CustomInfo;->mJavaCrashLogFileName:Ljava/lang/String;

    iget-object v7, v2, Lcom/uc/crashsdk/export/CustomInfo;->mJavaCrashLogFileName:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/uc/crashsdk/g;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_47

    iget-object v6, p0, Lcom/uc/crashsdk/export/CustomInfo;->mJavaCrashLogFileName:Ljava/lang/String;

    iput-object v6, v2, Lcom/uc/crashsdk/export/CustomInfo;->mJavaCrashLogFileName:Ljava/lang/String;

    add-int/lit8 v3, v3, 0x1

    :cond_47
    iget-object v6, p0, Lcom/uc/crashsdk/export/CustomInfo;->mNativeCrashLogFileName:Ljava/lang/String;

    iget-object v7, v2, Lcom/uc/crashsdk/export/CustomInfo;->mNativeCrashLogFileName:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/uc/crashsdk/g;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_63

    iget-object v5, p0, Lcom/uc/crashsdk/export/CustomInfo;->mNativeCrashLogFileName:Ljava/lang/String;

    iput-object v5, v2, Lcom/uc/crashsdk/export/CustomInfo;->mNativeCrashLogFileName:Ljava/lang/String;

    sget-boolean v5, Lcom/uc/crashsdk/b;->d:Z

    if-eqz v5, :cond_60

    const/16 v5, 0x64

    iget-object v6, v2, Lcom/uc/crashsdk/export/CustomInfo;->mNativeCrashLogFileName:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/uc/crashsdk/JNIBridge;->set(ILjava/lang/String;)J

    :cond_60
    add-int/lit8 v3, v3, 0x1

    const/4 v5, 0x1

    :cond_63
    iget-object v6, p0, Lcom/uc/crashsdk/export/CustomInfo;->mUnexpCrashLogFileName:Ljava/lang/String;

    iget-object v7, v2, Lcom/uc/crashsdk/export/CustomInfo;->mUnexpCrashLogFileName:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/uc/crashsdk/g;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_7f

    iget-object v5, p0, Lcom/uc/crashsdk/export/CustomInfo;->mUnexpCrashLogFileName:Ljava/lang/String;

    iput-object v5, v2, Lcom/uc/crashsdk/export/CustomInfo;->mUnexpCrashLogFileName:Ljava/lang/String;

    sget-boolean v5, Lcom/uc/crashsdk/b;->d:Z

    if-eqz v5, :cond_7c

    const/16 v5, 0x65

    iget-object v6, v2, Lcom/uc/crashsdk/export/CustomInfo;->mUnexpCrashLogFileName:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/uc/crashsdk/JNIBridge;->set(ILjava/lang/String;)J

    :cond_7c
    add-int/lit8 v3, v3, 0x1

    const/4 v5, 0x1

    :cond_7f
    if-eqz v5, :cond_8c

    invoke-static {}, Lcom/uc/crashsdk/e;->c()V

    sget-boolean v5, Lcom/uc/crashsdk/b;->d:Z

    if-eqz v5, :cond_8c

    const/4 v5, 0x2

    invoke-static {v5}, Lcom/uc/crashsdk/JNIBridge;->cmd(I)J

    :cond_8c
    iget-boolean v5, v2, Lcom/uc/crashsdk/export/CustomInfo;->mPrintStackInfos:Z

    iget-boolean v6, p0, Lcom/uc/crashsdk/export/CustomInfo;->mPrintStackInfos:Z

    if-eq v5, v6, :cond_a3

    iget-boolean v5, p0, Lcom/uc/crashsdk/export/CustomInfo;->mPrintStackInfos:Z

    iput-boolean v5, v2, Lcom/uc/crashsdk/export/CustomInfo;->mPrintStackInfos:Z

    sget-boolean v5, Lcom/uc/crashsdk/b;->d:Z

    if-eqz v5, :cond_a1

    const/16 v5, 0xb

    iget-boolean v6, v2, Lcom/uc/crashsdk/export/CustomInfo;->mPrintStackInfos:Z

    invoke-static {v5, v6}, Lcom/uc/crashsdk/JNIBridge;->set(IZ)J

    :cond_a1
    add-int/lit8 v3, v3, 0x1

    :cond_a3
    iget-boolean v5, v2, Lcom/uc/crashsdk/export/CustomInfo;->mDebug:Z

    iget-boolean v6, p0, Lcom/uc/crashsdk/export/CustomInfo;->mDebug:Z

    if-eq v5, v6, :cond_ba

    iget-boolean v5, p0, Lcom/uc/crashsdk/export/CustomInfo;->mDebug:Z

    iput-boolean v5, v2, Lcom/uc/crashsdk/export/CustomInfo;->mDebug:Z

    sget-boolean v5, Lcom/uc/crashsdk/b;->d:Z

    if-eqz v5, :cond_b8

    const/16 v5, 0x12

    iget-boolean v6, v2, Lcom/uc/crashsdk/export/CustomInfo;->mDebug:Z

    invoke-static {v5, v6}, Lcom/uc/crashsdk/JNIBridge;->set(IZ)J

    :cond_b8
    add-int/lit8 v3, v3, 0x1

    :cond_ba
    iget-boolean v5, v2, Lcom/uc/crashsdk/export/CustomInfo;->mBackupLogs:Z

    iget-boolean v6, p0, Lcom/uc/crashsdk/export/CustomInfo;->mBackupLogs:Z

    if-eq v5, v6, :cond_d1

    iget-boolean v5, p0, Lcom/uc/crashsdk/export/CustomInfo;->mBackupLogs:Z

    iput-boolean v5, v2, Lcom/uc/crashsdk/export/CustomInfo;->mBackupLogs:Z

    sget-boolean v5, Lcom/uc/crashsdk/b;->d:Z

    if-eqz v5, :cond_cf

    const/16 v5, 0xc

    iget-boolean v6, v2, Lcom/uc/crashsdk/export/CustomInfo;->mBackupLogs:Z

    invoke-static {v5, v6}, Lcom/uc/crashsdk/JNIBridge;->set(IZ)J

    :cond_cf
    add-int/lit8 v3, v3, 0x1

    :cond_d1
    iget-boolean v5, v2, Lcom/uc/crashsdk/export/CustomInfo;->mOmitNativeCrash:Z

    iget-boolean v6, p0, Lcom/uc/crashsdk/export/CustomInfo;->mOmitNativeCrash:Z

    if-eq v5, v6, :cond_e8

    iget-boolean v5, p0, Lcom/uc/crashsdk/export/CustomInfo;->mOmitNativeCrash:Z

    iput-boolean v5, v2, Lcom/uc/crashsdk/export/CustomInfo;->mOmitNativeCrash:Z

    sget-boolean v5, Lcom/uc/crashsdk/b;->d:Z

    if-eqz v5, :cond_e6

    const/16 v5, 0x15

    iget-boolean v6, v2, Lcom/uc/crashsdk/export/CustomInfo;->mOmitNativeCrash:Z

    invoke-static {v5, v6}, Lcom/uc/crashsdk/JNIBridge;->set(IZ)J

    :cond_e6
    add-int/lit8 v3, v3, 0x1

    :cond_e8
    iget v5, v2, Lcom/uc/crashsdk/export/CustomInfo;->mCrashRestartInterval:I

    iget v6, p0, Lcom/uc/crashsdk/export/CustomInfo;->mCrashRestartInterval:I

    if-eq v5, v6, :cond_107

    iget v5, p0, Lcom/uc/crashsdk/export/CustomInfo;->mCrashRestartInterval:I

    iput v5, v2, Lcom/uc/crashsdk/export/CustomInfo;->mCrashRestartInterval:I

    sget-boolean v5, Lcom/uc/crashsdk/b;->d:Z

    if-eqz v5, :cond_fe

    const/16 v5, 0xd

    iget v6, v2, Lcom/uc/crashsdk/export/CustomInfo;->mCrashRestartInterval:I

    int-to-long v6, v6

    invoke-static {v5, v6, v7}, Lcom/uc/crashsdk/JNIBridge;->set(IJ)J

    :cond_fe
    iget v5, v2, Lcom/uc/crashsdk/export/CustomInfo;->mCrashRestartInterval:I

    if-ltz v5, :cond_105

    invoke-static {}, Lcom/uc/crashsdk/b;->J()V

    :cond_105
    add-int/lit8 v3, v3, 0x1

    :cond_107
    iget v5, v2, Lcom/uc/crashsdk/export/CustomInfo;->mMaxBuiltinLogFilesCount:I

    iget v6, p0, Lcom/uc/crashsdk/export/CustomInfo;->mMaxBuiltinLogFilesCount:I

    if-eq v5, v6, :cond_11f

    iget v5, p0, Lcom/uc/crashsdk/export/CustomInfo;->mMaxBuiltinLogFilesCount:I

    iput v5, v2, Lcom/uc/crashsdk/export/CustomInfo;->mMaxBuiltinLogFilesCount:I

    sget-boolean v5, Lcom/uc/crashsdk/b;->d:Z

    if-eqz v5, :cond_11d

    const/16 v5, 0xe

    iget v6, v2, Lcom/uc/crashsdk/export/CustomInfo;->mMaxBuiltinLogFilesCount:I

    int-to-long v6, v6

    invoke-static {v5, v6, v7}, Lcom/uc/crashsdk/JNIBridge;->set(IJ)J

    :cond_11d
    add-int/lit8 v3, v3, 0x1

    :cond_11f
    iget v5, v2, Lcom/uc/crashsdk/export/CustomInfo;->mMaxNativeLogcatLineCount:I

    iget v6, p0, Lcom/uc/crashsdk/export/CustomInfo;->mMaxNativeLogcatLineCount:I

    if-eq v5, v6, :cond_137

    iget v5, p0, Lcom/uc/crashsdk/export/CustomInfo;->mMaxNativeLogcatLineCount:I

    iput v5, v2, Lcom/uc/crashsdk/export/CustomInfo;->mMaxNativeLogcatLineCount:I

    sget-boolean v5, Lcom/uc/crashsdk/b;->d:Z

    if-eqz v5, :cond_135

    const/16 v5, 0xf

    iget v6, v2, Lcom/uc/crashsdk/export/CustomInfo;->mMaxNativeLogcatLineCount:I

    int-to-long v6, v6

    invoke-static {v5, v6, v7}, Lcom/uc/crashsdk/JNIBridge;->set(IJ)J

    :cond_135
    add-int/lit8 v3, v3, 0x1

    :cond_137
    iget v5, v2, Lcom/uc/crashsdk/export/CustomInfo;->mMaxJavaLogcatLineCount:I

    iget v6, p0, Lcom/uc/crashsdk/export/CustomInfo;->mMaxJavaLogcatLineCount:I

    if-eq v5, v6, :cond_143

    iget v5, p0, Lcom/uc/crashsdk/export/CustomInfo;->mMaxJavaLogcatLineCount:I

    iput v5, v2, Lcom/uc/crashsdk/export/CustomInfo;->mMaxJavaLogcatLineCount:I

    add-int/lit8 v3, v3, 0x1

    :cond_143
    iget v5, v2, Lcom/uc/crashsdk/export/CustomInfo;->mMaxUnexpLogcatLineCount:I

    iget v6, p0, Lcom/uc/crashsdk/export/CustomInfo;->mMaxUnexpLogcatLineCount:I

    if-eq v5, v6, :cond_15b

    iget v5, p0, Lcom/uc/crashsdk/export/CustomInfo;->mMaxUnexpLogcatLineCount:I

    iput v5, v2, Lcom/uc/crashsdk/export/CustomInfo;->mMaxUnexpLogcatLineCount:I

    sget-boolean v5, Lcom/uc/crashsdk/b;->d:Z

    if-eqz v5, :cond_159

    const/16 v5, 0x10

    iget v6, v2, Lcom/uc/crashsdk/export/CustomInfo;->mMaxUnexpLogcatLineCount:I

    int-to-long v6, v6

    invoke-static {v5, v6, v7}, Lcom/uc/crashsdk/JNIBridge;->set(IJ)J

    :cond_159
    add-int/lit8 v3, v3, 0x1

    :cond_15b
    iget v5, v2, Lcom/uc/crashsdk/export/CustomInfo;->mMaxAnrLogcatLineCount:I

    iget v6, p0, Lcom/uc/crashsdk/export/CustomInfo;->mMaxAnrLogcatLineCount:I

    if-eq v5, v6, :cond_173

    iget v5, p0, Lcom/uc/crashsdk/export/CustomInfo;->mMaxAnrLogcatLineCount:I

    iput v5, v2, Lcom/uc/crashsdk/export/CustomInfo;->mMaxAnrLogcatLineCount:I

    sget-boolean v5, Lcom/uc/crashsdk/b;->d:Z

    if-eqz v5, :cond_171

    const/16 v5, 0x1f

    iget v6, v2, Lcom/uc/crashsdk/export/CustomInfo;->mMaxAnrLogcatLineCount:I

    int-to-long v6, v6

    invoke-static {v5, v6, v7}, Lcom/uc/crashsdk/JNIBridge;->set(IJ)J

    :cond_171
    add-int/lit8 v3, v3, 0x1

    :cond_173
    iget-boolean v5, v2, Lcom/uc/crashsdk/export/CustomInfo;->mZipLog:Z

    iget-boolean v6, p0, Lcom/uc/crashsdk/export/CustomInfo;->mZipLog:Z

    if-eq v5, v6, :cond_195

    iget-boolean v5, p0, Lcom/uc/crashsdk/export/CustomInfo;->mZipLog:Z

    iput-boolean v5, v2, Lcom/uc/crashsdk/export/CustomInfo;->mZipLog:Z

    iget-boolean v5, v2, Lcom/uc/crashsdk/export/CustomInfo;->mZipLog:Z

    if-nez v5, :cond_191

    const-string v5, "DEBUG"

    const-string v6, "updateCustomInfoImpl set mZipLog to false"

    invoke-static {v5, v6}, Lcom/uc/crashsdk/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "updateCustomInfoImpl set mZipLog to false"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    sput-object v5, Lcom/uc/crashsdk/g;->a:Ljava/lang/RuntimeException;

    :cond_191
    add-int/lit8 v3, v3, 0x1

    const/4 v5, 0x1

    goto :goto_196

    :cond_195
    const/4 v5, 0x0

    :goto_196
    iget-object v6, p0, Lcom/uc/crashsdk/export/CustomInfo;->mZippedLogExtension:Ljava/lang/String;

    iget-object v7, v2, Lcom/uc/crashsdk/export/CustomInfo;->mZippedLogExtension:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/uc/crashsdk/g;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1a7

    iget-object v5, p0, Lcom/uc/crashsdk/export/CustomInfo;->mZippedLogExtension:Ljava/lang/String;

    iput-object v5, v2, Lcom/uc/crashsdk/export/CustomInfo;->mZippedLogExtension:Ljava/lang/String;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1a8

    :cond_1a7
    move v4, v5

    :goto_1a8
    if-eqz v4, :cond_1be

    sget-boolean v4, Lcom/uc/crashsdk/b;->d:Z

    if-eqz v4, :cond_1be

    const/4 v4, 0x3

    iget-boolean v5, v2, Lcom/uc/crashsdk/export/CustomInfo;->mZipLog:Z

    if-eqz v5, :cond_1b6

    const-wide/16 v5, 0x1

    goto :goto_1b8

    :cond_1b6
    const-wide/16 v5, 0x0

    :goto_1b8
    iget-object v7, v2, Lcom/uc/crashsdk/export/CustomInfo;->mZippedLogExtension:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static {v4, v5, v6, v7, v8}, Lcom/uc/crashsdk/JNIBridge;->nativeSet(IJLjava/lang/String;[Ljava/lang/Object;)J

    :cond_1be
    iget v4, v2, Lcom/uc/crashsdk/export/CustomInfo;->mLogMaxBytesLimit:I

    iget v5, p0, Lcom/uc/crashsdk/export/CustomInfo;->mLogMaxBytesLimit:I

    if-eq v4, v5, :cond_1d5

    iget v4, p0, Lcom/uc/crashsdk/export/CustomInfo;->mLogMaxBytesLimit:I

    iput v4, v2, Lcom/uc/crashsdk/export/CustomInfo;->mLogMaxBytesLimit:I

    sget-boolean v4, Lcom/uc/crashsdk/b;->d:Z

    if-eqz v4, :cond_1d3

    const/4 v4, 0x4

    iget v5, v2, Lcom/uc/crashsdk/export/CustomInfo;->mLogMaxBytesLimit:I

    int-to-long v5, v5

    invoke-static {v4, v5, v6}, Lcom/uc/crashsdk/JNIBridge;->set(IJ)J

    :cond_1d3
    add-int/lit8 v3, v3, 0x1

    :cond_1d5
    iget-boolean v4, v2, Lcom/uc/crashsdk/export/CustomInfo;->mEncryptLog:Z

    iget-boolean v5, p0, Lcom/uc/crashsdk/export/CustomInfo;->mEncryptLog:Z

    if-eq v4, v5, :cond_1f5

    iget-boolean v4, p0, Lcom/uc/crashsdk/export/CustomInfo;->mEncryptLog:Z

    iput-boolean v4, v2, Lcom/uc/crashsdk/export/CustomInfo;->mEncryptLog:Z

    iget-boolean v4, v2, Lcom/uc/crashsdk/export/CustomInfo;->mEncryptLog:Z

    if-eqz v4, :cond_1f3

    const-string v4, "DEBUG"

    const-string v5, "updateCustomInfoImpl set mEncryptLog to true"

    invoke-static {v4, v5}, Lcom/uc/crashsdk/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "updateCustomInfoImpl set mEncryptLog to true"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    sput-object v4, Lcom/uc/crashsdk/g;->b:Ljava/lang/RuntimeException;

    :cond_1f3
    add-int/lit8 v3, v3, 0x1

    :cond_1f5
    iget-boolean v4, v2, Lcom/uc/crashsdk/export/CustomInfo;->mSyncUploadSetupCrashLogs:Z

    iget-boolean v5, p0, Lcom/uc/crashsdk/export/CustomInfo;->mSyncUploadSetupCrashLogs:Z

    if-eq v4, v5, :cond_201

    iget-boolean v4, p0, Lcom/uc/crashsdk/export/CustomInfo;->mSyncUploadSetupCrashLogs:Z

    iput-boolean v4, v2, Lcom/uc/crashsdk/export/CustomInfo;->mSyncUploadSetupCrashLogs:Z

    add-int/lit8 v3, v3, 0x1

    :cond_201
    iget-boolean v4, v2, Lcom/uc/crashsdk/export/CustomInfo;->mSyncUploadLogs:Z

    iget-boolean v5, p0, Lcom/uc/crashsdk/export/CustomInfo;->mSyncUploadLogs:Z

    if-eq v4, v5, :cond_20d

    iget-boolean v4, p0, Lcom/uc/crashsdk/export/CustomInfo;->mSyncUploadLogs:Z

    iput-boolean v4, v2, Lcom/uc/crashsdk/export/CustomInfo;->mSyncUploadLogs:Z

    add-int/lit8 v3, v3, 0x1

    :cond_20d
    iget v4, v2, Lcom/uc/crashsdk/export/CustomInfo;->mMaxCustomLogFilesCount:I

    iget v5, p0, Lcom/uc/crashsdk/export/CustomInfo;->mMaxCustomLogFilesCount:I

    if-eq v4, v5, :cond_219

    iget v4, p0, Lcom/uc/crashsdk/export/CustomInfo;->mMaxCustomLogFilesCount:I

    iput v4, v2, Lcom/uc/crashsdk/export/CustomInfo;->mMaxCustomLogFilesCount:I

    add-int/lit8 v3, v3, 0x1

    :cond_219
    iget-boolean v4, v2, Lcom/uc/crashsdk/export/CustomInfo;->mOmitJavaCrash:Z

    iget-boolean v5, p0, Lcom/uc/crashsdk/export/CustomInfo;->mOmitJavaCrash:Z

    if-eq v4, v5, :cond_225

    iget-boolean v4, p0, Lcom/uc/crashsdk/export/CustomInfo;->mOmitJavaCrash:Z

    iput-boolean v4, v2, Lcom/uc/crashsdk/export/CustomInfo;->mOmitJavaCrash:Z

    add-int/lit8 v3, v3, 0x1

    :cond_225
    iget v4, v2, Lcom/uc/crashsdk/export/CustomInfo;->mLogMaxUploadBytesLimit:I

    iget v5, p0, Lcom/uc/crashsdk/export/CustomInfo;->mLogMaxUploadBytesLimit:I

    if-eq v4, v5, :cond_231

    iget v4, p0, Lcom/uc/crashsdk/export/CustomInfo;->mLogMaxUploadBytesLimit:I

    iput v4, v2, Lcom/uc/crashsdk/export/CustomInfo;->mLogMaxUploadBytesLimit:I

    add-int/lit8 v3, v3, 0x1

    :cond_231
    iget-wide v4, v2, Lcom/uc/crashsdk/export/CustomInfo;->mMaxUploadBytesPerDay:J

    iget-wide v6, p0, Lcom/uc/crashsdk/export/CustomInfo;->mMaxUploadBytesPerDay:J

    cmp-long v8, v4, v6

    if-eqz v8, :cond_23f

    iget-wide v4, p0, Lcom/uc/crashsdk/export/CustomInfo;->mMaxUploadBytesPerDay:J

    iput-wide v4, v2, Lcom/uc/crashsdk/export/CustomInfo;->mMaxUploadBytesPerDay:J

    add-int/lit8 v3, v3, 0x1

    :cond_23f
    iget v4, v2, Lcom/uc/crashsdk/export/CustomInfo;->mMaxUploadBuiltinLogCountPerDay:I

    iget v5, p0, Lcom/uc/crashsdk/export/CustomInfo;->mMaxUploadBuiltinLogCountPerDay:I

    if-eq v4, v5, :cond_24b

    iget v4, p0, Lcom/uc/crashsdk/export/CustomInfo;->mMaxUploadBuiltinLogCountPerDay:I

    iput v4, v2, Lcom/uc/crashsdk/export/CustomInfo;->mMaxUploadBuiltinLogCountPerDay:I

    add-int/lit8 v3, v3, 0x1

    :cond_24b
    iget v4, v2, Lcom/uc/crashsdk/export/CustomInfo;->mMaxUploadCustomLogCountPerDay:I

    iget v5, p0, Lcom/uc/crashsdk/export/CustomInfo;->mMaxUploadCustomLogCountPerDay:I

    if-eq v4, v5, :cond_257

    iget v4, p0, Lcom/uc/crashsdk/export/CustomInfo;->mMaxUploadCustomLogCountPerDay:I

    iput v4, v2, Lcom/uc/crashsdk/export/CustomInfo;->mMaxUploadCustomLogCountPerDay:I

    add-int/lit8 v3, v3, 0x1

    :cond_257
    iget v4, v2, Lcom/uc/crashsdk/export/CustomInfo;->mMaxCustomLogCountPerTypePerDay:I

    iget v5, p0, Lcom/uc/crashsdk/export/CustomInfo;->mMaxCustomLogCountPerTypePerDay:I

    if-eq v4, v5, :cond_263

    iget v4, p0, Lcom/uc/crashsdk/export/CustomInfo;->mMaxCustomLogCountPerTypePerDay:I

    iput v4, v2, Lcom/uc/crashsdk/export/CustomInfo;->mMaxCustomLogCountPerTypePerDay:I

    add-int/lit8 v3, v3, 0x1

    :cond_263
    iget v4, v2, Lcom/uc/crashsdk/export/CustomInfo;->mMaxAnrLogCountPerProcess:I

    iget v5, p0, Lcom/uc/crashsdk/export/CustomInfo;->mMaxAnrLogCountPerProcess:I

    if-eq v4, v5, :cond_27d

    iget v4, p0, Lcom/uc/crashsdk/export/CustomInfo;->mMaxAnrLogCountPerProcess:I

    iput v4, v2, Lcom/uc/crashsdk/export/CustomInfo;->mMaxAnrLogCountPerProcess:I

    sget-boolean v4, Lcom/uc/crashsdk/b;->d:Z

    if-eqz v4, :cond_27b

    const/16 v4, 0x20

    sget-object v5, Lcom/uc/crashsdk/g;->d:Lcom/uc/crashsdk/export/CustomInfo;

    iget v5, v5, Lcom/uc/crashsdk/export/CustomInfo;->mMaxAnrLogCountPerProcess:I

    int-to-long v5, v5

    invoke-static {v4, v5, v6}, Lcom/uc/crashsdk/JNIBridge;->set(IJ)J

    :cond_27b
    add-int/lit8 v3, v3, 0x1

    :cond_27d
    iget-boolean v4, v2, Lcom/uc/crashsdk/export/CustomInfo;->mCallJavaDefaultHandler:Z

    iget-boolean v5, p0, Lcom/uc/crashsdk/export/CustomInfo;->mCallJavaDefaultHandler:Z

    if-eq v4, v5, :cond_289

    iget-boolean v4, p0, Lcom/uc/crashsdk/export/CustomInfo;->mCallJavaDefaultHandler:Z

    iput-boolean v4, v2, Lcom/uc/crashsdk/export/CustomInfo;->mCallJavaDefaultHandler:Z

    add-int/lit8 v3, v3, 0x1

    :cond_289
    iget-boolean v4, v2, Lcom/uc/crashsdk/export/CustomInfo;->mCallNativeDefaultHandler:Z

    iget-boolean v5, p0, Lcom/uc/crashsdk/export/CustomInfo;->mCallNativeDefaultHandler:Z

    if-eq v4, v5, :cond_2a1

    iget-boolean v4, p0, Lcom/uc/crashsdk/export/CustomInfo;->mCallNativeDefaultHandler:Z

    iput-boolean v4, v2, Lcom/uc/crashsdk/export/CustomInfo;->mCallNativeDefaultHandler:Z

    add-int/lit8 v3, v3, 0x1

    sget-boolean v4, Lcom/uc/crashsdk/b;->d:Z

    if-eqz v4, :cond_2a1

    const/4 v4, 0x5

    sget-object v5, Lcom/uc/crashsdk/g;->d:Lcom/uc/crashsdk/export/CustomInfo;

    iget-boolean v5, v5, Lcom/uc/crashsdk/export/CustomInfo;->mCallNativeDefaultHandler:Z

    invoke-static {v4, v5}, Lcom/uc/crashsdk/JNIBridge;->set(IZ)J

    :cond_2a1
    iget-boolean v4, v2, Lcom/uc/crashsdk/export/CustomInfo;->mDumpUserSolibBuildId:Z

    iget-boolean v5, p0, Lcom/uc/crashsdk/export/CustomInfo;->mDumpUserSolibBuildId:Z

    if-eq v4, v5, :cond_2b9

    iget-boolean v4, p0, Lcom/uc/crashsdk/export/CustomInfo;->mDumpUserSolibBuildId:Z

    iput-boolean v4, v2, Lcom/uc/crashsdk/export/CustomInfo;->mDumpUserSolibBuildId:Z

    add-int/lit8 v3, v3, 0x1

    sget-boolean v4, Lcom/uc/crashsdk/b;->d:Z

    if-eqz v4, :cond_2b9

    const/4 v4, 0x6

    sget-object v5, Lcom/uc/crashsdk/g;->d:Lcom/uc/crashsdk/export/CustomInfo;

    iget-boolean v5, v5, Lcom/uc/crashsdk/export/CustomInfo;->mDumpUserSolibBuildId:Z

    invoke-static {v4, v5}, Lcom/uc/crashsdk/JNIBridge;->set(IZ)J

    :cond_2b9
    iget-boolean v4, v2, Lcom/uc/crashsdk/export/CustomInfo;->mDumpHprofDataForJavaOOM:Z

    iget-boolean v5, p0, Lcom/uc/crashsdk/export/CustomInfo;->mDumpHprofDataForJavaOOM:Z

    if-eq v4, v5, :cond_2c5

    iget-boolean v4, p0, Lcom/uc/crashsdk/export/CustomInfo;->mDumpHprofDataForJavaOOM:Z

    iput-boolean v4, v2, Lcom/uc/crashsdk/export/CustomInfo;->mDumpHprofDataForJavaOOM:Z

    add-int/lit8 v3, v3, 0x1

    :cond_2c5
    iget-boolean v4, v2, Lcom/uc/crashsdk/export/CustomInfo;->mRenameFileToDefaultName:Z

    iget-boolean v5, p0, Lcom/uc/crashsdk/export/CustomInfo;->mRenameFileToDefaultName:Z

    if-eq v4, v5, :cond_2d1

    iget-boolean v4, p0, Lcom/uc/crashsdk/export/CustomInfo;->mRenameFileToDefaultName:Z

    iput-boolean v4, v2, Lcom/uc/crashsdk/export/CustomInfo;->mRenameFileToDefaultName:Z

    add-int/lit8 v3, v3, 0x1

    :cond_2d1
    iget-boolean v4, v2, Lcom/uc/crashsdk/export/CustomInfo;->mAutoDeleteOldVersionStats:Z

    iget-boolean v5, p0, Lcom/uc/crashsdk/export/CustomInfo;->mAutoDeleteOldVersionStats:Z

    if-eq v4, v5, :cond_2dd

    iget-boolean v4, p0, Lcom/uc/crashsdk/export/CustomInfo;->mAutoDeleteOldVersionStats:Z

    iput-boolean v4, v2, Lcom/uc/crashsdk/export/CustomInfo;->mAutoDeleteOldVersionStats:Z

    add-int/lit8 v3, v3, 0x1

    :cond_2dd
    iget v4, v2, Lcom/uc/crashsdk/export/CustomInfo;->mFdDumpMinLimit:I

    iget v5, p0, Lcom/uc/crashsdk/export/CustomInfo;->mFdDumpMinLimit:I

    if-eq v4, v5, :cond_2f5

    iget v4, p0, Lcom/uc/crashsdk/export/CustomInfo;->mFdDumpMinLimit:I

    iput v4, v2, Lcom/uc/crashsdk/export/CustomInfo;->mFdDumpMinLimit:I

    sget-boolean v4, Lcom/uc/crashsdk/b;->d:Z

    if-eqz v4, :cond_2f3

    const/16 v4, 0xa

    iget v5, v2, Lcom/uc/crashsdk/export/CustomInfo;->mFdDumpMinLimit:I

    int-to-long v5, v5

    invoke-static {v4, v5, v6}, Lcom/uc/crashsdk/JNIBridge;->set(IJ)J

    :cond_2f3
    add-int/lit8 v3, v3, 0x1

    :cond_2f5
    iget v4, v2, Lcom/uc/crashsdk/export/CustomInfo;->mThreadsDumpMinLimit:I

    iget v5, p0, Lcom/uc/crashsdk/export/CustomInfo;->mThreadsDumpMinLimit:I

    if-eq v4, v5, :cond_30d

    iget v4, p0, Lcom/uc/crashsdk/export/CustomInfo;->mThreadsDumpMinLimit:I

    iput v4, v2, Lcom/uc/crashsdk/export/CustomInfo;->mThreadsDumpMinLimit:I

    sget-boolean v4, Lcom/uc/crashsdk/b;->d:Z

    if-eqz v4, :cond_30b

    const/16 v4, 0x16

    iget v5, v2, Lcom/uc/crashsdk/export/CustomInfo;->mThreadsDumpMinLimit:I

    int-to-long v5, v5

    invoke-static {v4, v5, v6}, Lcom/uc/crashsdk/JNIBridge;->set(IJ)J

    :cond_30b
    add-int/lit8 v3, v3, 0x1

    :cond_30d
    iget v4, v2, Lcom/uc/crashsdk/export/CustomInfo;->mInfoUpdateInterval:I

    iget v5, p0, Lcom/uc/crashsdk/export/CustomInfo;->mInfoUpdateInterval:I

    if-eq v4, v5, :cond_324

    iget v4, v2, Lcom/uc/crashsdk/export/CustomInfo;->mInfoUpdateInterval:I

    if-gtz v4, :cond_31e

    iget v4, p0, Lcom/uc/crashsdk/export/CustomInfo;->mInfoUpdateInterval:I

    if-lez v4, :cond_31e

    invoke-static {v1}, Lcom/uc/crashsdk/a;->a(Z)Z

    :cond_31e
    iget v1, p0, Lcom/uc/crashsdk/export/CustomInfo;->mInfoUpdateInterval:I

    iput v1, v2, Lcom/uc/crashsdk/export/CustomInfo;->mInfoUpdateInterval:I

    add-int/lit8 v3, v3, 0x1

    :cond_324
    iget v1, v2, Lcom/uc/crashsdk/export/CustomInfo;->mInfoSaveFrequency:I

    iget v4, p0, Lcom/uc/crashsdk/export/CustomInfo;->mInfoSaveFrequency:I

    if-eq v1, v4, :cond_330

    iget v1, p0, Lcom/uc/crashsdk/export/CustomInfo;->mInfoSaveFrequency:I

    iput v1, v2, Lcom/uc/crashsdk/export/CustomInfo;->mInfoSaveFrequency:I

    add-int/lit8 v3, v3, 0x1

    :cond_330
    iget-wide v4, v2, Lcom/uc/crashsdk/export/CustomInfo;->mDisableBackgroundSignals:J

    iget-wide v6, p0, Lcom/uc/crashsdk/export/CustomInfo;->mDisableBackgroundSignals:J

    cmp-long v1, v4, v6

    if-eqz v1, :cond_349

    iget-wide v4, p0, Lcom/uc/crashsdk/export/CustomInfo;->mDisableBackgroundSignals:J

    iput-wide v4, v2, Lcom/uc/crashsdk/export/CustomInfo;->mDisableBackgroundSignals:J

    sget-boolean v1, Lcom/uc/crashsdk/b;->d:Z

    if-eqz v1, :cond_347

    const/16 v1, 0x9

    iget-wide v4, v2, Lcom/uc/crashsdk/export/CustomInfo;->mDisableBackgroundSignals:J

    invoke-static {v1, v4, v5}, Lcom/uc/crashsdk/JNIBridge;->set(IJ)J

    :cond_347
    add-int/lit8 v3, v3, 0x1

    :cond_349
    iget-boolean v1, v2, Lcom/uc/crashsdk/export/CustomInfo;->mEnableStatReport:Z

    iget-boolean v4, p0, Lcom/uc/crashsdk/export/CustomInfo;->mEnableStatReport:Z

    if-eq v1, v4, :cond_35c

    iget-boolean v1, p0, Lcom/uc/crashsdk/export/CustomInfo;->mEnableStatReport:Z

    iput-boolean v1, v2, Lcom/uc/crashsdk/export/CustomInfo;->mEnableStatReport:Z

    iget-boolean v1, v2, Lcom/uc/crashsdk/export/CustomInfo;->mEnableStatReport:Z

    if-eqz v1, :cond_35a

    invoke-static {}, Lcom/uc/crashsdk/e;->A()V

    :cond_35a
    add-int/lit8 v3, v3, 0x1

    :cond_35c
    iget-boolean v1, v2, Lcom/uc/crashsdk/export/CustomInfo;->mIsInternational:Z

    iget-boolean v4, p0, Lcom/uc/crashsdk/export/CustomInfo;->mIsInternational:Z

    if-eq v1, v4, :cond_373

    iget-boolean v1, p0, Lcom/uc/crashsdk/export/CustomInfo;->mIsInternational:Z

    iput-boolean v1, v2, Lcom/uc/crashsdk/export/CustomInfo;->mIsInternational:Z

    sget-boolean v1, Lcom/uc/crashsdk/b;->d:Z

    if-eqz v1, :cond_371

    const/16 v1, 0x17

    iget-boolean v4, v2, Lcom/uc/crashsdk/export/CustomInfo;->mIsInternational:Z

    invoke-static {v1, v4}, Lcom/uc/crashsdk/JNIBridge;->set(IZ)J

    :cond_371
    add-int/lit8 v3, v3, 0x1

    :cond_373
    iget-boolean v1, v2, Lcom/uc/crashsdk/export/CustomInfo;->mAutoDetectLifeCycle:Z

    iget-boolean v4, p0, Lcom/uc/crashsdk/export/CustomInfo;->mAutoDetectLifeCycle:Z

    if-eq v1, v4, :cond_386

    iget-boolean v1, p0, Lcom/uc/crashsdk/export/CustomInfo;->mAutoDetectLifeCycle:Z

    iput-boolean v1, v2, Lcom/uc/crashsdk/export/CustomInfo;->mAutoDetectLifeCycle:Z

    iget-boolean v1, v2, Lcom/uc/crashsdk/export/CustomInfo;->mAutoDetectLifeCycle:Z

    if-eqz v1, :cond_384

    invoke-static {}, Lcom/uc/crashsdk/b;->z()V

    :cond_384
    add-int/lit8 v3, v3, 0x1

    :cond_386
    iget-boolean v1, v2, Lcom/uc/crashsdk/export/CustomInfo;->mMonitorBattery:Z

    iget-boolean v4, p0, Lcom/uc/crashsdk/export/CustomInfo;->mMonitorBattery:Z

    if-eq v1, v4, :cond_399

    iget-boolean v1, p0, Lcom/uc/crashsdk/export/CustomInfo;->mMonitorBattery:Z

    iput-boolean v1, v2, Lcom/uc/crashsdk/export/CustomInfo;->mMonitorBattery:Z

    invoke-static {}, Lcom/uc/crashsdk/b;->y()Z

    move-result v1

    invoke-static {v1}, Lcom/uc/crashsdk/e;->c(Z)V

    add-int/lit8 v3, v3, 0x1

    :cond_399
    iget v1, v2, Lcom/uc/crashsdk/export/CustomInfo;->mUnexpSubTypes:I

    iget v4, p0, Lcom/uc/crashsdk/export/CustomInfo;->mUnexpSubTypes:I

    if-eq v1, v4, :cond_3a5

    iget p0, p0, Lcom/uc/crashsdk/export/CustomInfo;->mUnexpSubTypes:I

    iput p0, v2, Lcom/uc/crashsdk/export/CustomInfo;->mUnexpSubTypes:I

    add-int/lit8 v3, v3, 0x1

    :cond_3a5
    move v1, v3

    goto/16 :goto_6

    :goto_3a8
    monitor-exit v0

    return v1

    .line 594
    :catchall_3aa
    move-exception p0

    monitor-exit v0
    :try_end_3ac
    .catchall {:try_start_8 .. :try_end_3ac} :catchall_3aa

    goto :goto_3ae

    :goto_3ad
    throw p0

    :goto_3ae
    goto :goto_3ad
.end method

.method public static b()V
    .registers 3

    .line 141
    invoke-static {}, Lcom/uc/crashsdk/a/g;->b()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x67

    invoke-static {v1, v0}, Lcom/uc/crashsdk/JNIBridge;->set(ILjava/lang/String;)J

    .line 142
    sget-object v0, Lcom/uc/crashsdk/g;->d:Lcom/uc/crashsdk/export/CustomInfo;

    iget-object v0, v0, Lcom/uc/crashsdk/export/CustomInfo;->mTagFilesFolderName:Ljava/lang/String;

    const/16 v1, 0x68

    invoke-static {v1, v0}, Lcom/uc/crashsdk/JNIBridge;->set(ILjava/lang/String;)J

    .line 143
    sget-object v0, Lcom/uc/crashsdk/g;->d:Lcom/uc/crashsdk/export/CustomInfo;

    iget-object v0, v0, Lcom/uc/crashsdk/export/CustomInfo;->mCrashLogsFolderName:Ljava/lang/String;

    const/16 v1, 0x69

    invoke-static {v1, v0}, Lcom/uc/crashsdk/JNIBridge;->set(ILjava/lang/String;)J

    .line 144
    invoke-static {}, Lcom/uc/crashsdk/g;->W()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x6a

    invoke-static {v1, v0}, Lcom/uc/crashsdk/JNIBridge;->set(ILjava/lang/String;)J

    .line 146
    invoke-static {}, Lcom/uc/crashsdk/e;->h()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x6b

    invoke-static {v1, v0}, Lcom/uc/crashsdk/JNIBridge;->set(ILjava/lang/String;)J

    .line 147
    invoke-static {}, Lcom/uc/crashsdk/b;->a()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x6c

    invoke-static {v1, v0}, Lcom/uc/crashsdk/JNIBridge;->set(ILjava/lang/String;)J

    .line 149
    invoke-static {}, Lcom/uc/crashsdk/g;->R()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x6d

    invoke-static {v1, v0}, Lcom/uc/crashsdk/JNIBridge;->set(ILjava/lang/String;)J

    .line 150
    invoke-static {}, Lcom/uc/crashsdk/g;->S()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x6e

    invoke-static {v1, v0}, Lcom/uc/crashsdk/JNIBridge;->set(ILjava/lang/String;)J

    .line 151
    invoke-static {}, Lcom/uc/crashsdk/g;->T()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x6f

    invoke-static {v1, v0}, Lcom/uc/crashsdk/JNIBridge;->set(ILjava/lang/String;)J

    .line 152
    const/16 v0, 0x70

    const-string v1, "210105150455"

    invoke-static {v0, v1}, Lcom/uc/crashsdk/JNIBridge;->set(ILjava/lang/String;)J

    .line 154
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const/16 v1, 0x74

    invoke-static {v1, v0}, Lcom/uc/crashsdk/JNIBridge;->set(ILjava/lang/String;)J

    .line 155
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const/16 v1, 0x75

    invoke-static {v1, v0}, Lcom/uc/crashsdk/JNIBridge;->set(ILjava/lang/String;)J

    .line 156
    invoke-static {}, Lcom/uc/crashsdk/e;->p()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x76

    invoke-static {v1, v0}, Lcom/uc/crashsdk/JNIBridge;->set(ILjava/lang/String;)J

    .line 158
    sget-object v0, Lcom/uc/crashsdk/g;->d:Lcom/uc/crashsdk/export/CustomInfo;

    iget-boolean v0, v0, Lcom/uc/crashsdk/export/CustomInfo;->mCallNativeDefaultHandler:Z

    const/4 v1, 0x5

    invoke-static {v1, v0}, Lcom/uc/crashsdk/JNIBridge;->set(IZ)J

    .line 159
    sget-object v0, Lcom/uc/crashsdk/g;->d:Lcom/uc/crashsdk/export/CustomInfo;

    iget-boolean v0, v0, Lcom/uc/crashsdk/export/CustomInfo;->mDumpUserSolibBuildId:Z

    const/4 v1, 0x6

    invoke-static {v1, v0}, Lcom/uc/crashsdk/JNIBridge;->set(IZ)J

    .line 160
    sget-object v0, Lcom/uc/crashsdk/g;->d:Lcom/uc/crashsdk/export/CustomInfo;

    iget-wide v0, v0, Lcom/uc/crashsdk/export/CustomInfo;->mReservedNativeMemoryBytes:J

    const/4 v2, 0x7

    invoke-static {v2, v0, v1}, Lcom/uc/crashsdk/JNIBridge;->set(IJ)J

    .line 162
    sget-object v0, Lcom/uc/crashsdk/g;->d:Lcom/uc/crashsdk/export/CustomInfo;

    iget-object v0, v0, Lcom/uc/crashsdk/export/CustomInfo;->mNativeCrashLogFileName:Ljava/lang/String;

    const/16 v1, 0x64

    invoke-static {v1, v0}, Lcom/uc/crashsdk/JNIBridge;->set(ILjava/lang/String;)J

    .line 163
    sget-object v0, Lcom/uc/crashsdk/g;->d:Lcom/uc/crashsdk/export/CustomInfo;

    iget-object v0, v0, Lcom/uc/crashsdk/export/CustomInfo;->mUnexpCrashLogFileName:Ljava/lang/String;

    const/16 v1, 0x65

    invoke-static {v1, v0}, Lcom/uc/crashsdk/JNIBridge;->set(ILjava/lang/String;)J

    .line 164
    sget-object v0, Lcom/uc/crashsdk/g;->d:Lcom/uc/crashsdk/export/CustomInfo;

    iget-object v0, v0, Lcom/uc/crashsdk/export/CustomInfo;->mAppId:Ljava/lang/String;

    const/16 v1, 0x66

    invoke-static {v1, v0}, Lcom/uc/crashsdk/JNIBridge;->set(ILjava/lang/String;)J

    .line 165
    return-void
.end method

.method public static c()V
    .registers 5

    .line 168
    invoke-static {}, Lcom/uc/crashsdk/g;->N()Z

    move-result v0

    const/16 v1, 0xb

    invoke-static {v1, v0}, Lcom/uc/crashsdk/JNIBridge;->set(IZ)J

    .line 169
    sget-object v0, Lcom/uc/crashsdk/g;->d:Lcom/uc/crashsdk/export/CustomInfo;

    iget-boolean v0, v0, Lcom/uc/crashsdk/export/CustomInfo;->mBackupLogs:Z

    const/16 v1, 0xc

    invoke-static {v1, v0}, Lcom/uc/crashsdk/JNIBridge;->set(IZ)J

    .line 170
    sget-object v0, Lcom/uc/crashsdk/g;->d:Lcom/uc/crashsdk/export/CustomInfo;

    iget v0, v0, Lcom/uc/crashsdk/export/CustomInfo;->mCrashRestartInterval:I

    int-to-long v0, v0

    const/16 v2, 0xd

    invoke-static {v2, v0, v1}, Lcom/uc/crashsdk/JNIBridge;->set(IJ)J

    .line 171
    sget-object v0, Lcom/uc/crashsdk/g;->d:Lcom/uc/crashsdk/export/CustomInfo;

    iget v0, v0, Lcom/uc/crashsdk/export/CustomInfo;->mMaxBuiltinLogFilesCount:I

    int-to-long v0, v0

    const/16 v2, 0xe

    invoke-static {v2, v0, v1}, Lcom/uc/crashsdk/JNIBridge;->set(IJ)J

    .line 172
    sget-object v0, Lcom/uc/crashsdk/g;->d:Lcom/uc/crashsdk/export/CustomInfo;

    iget v0, v0, Lcom/uc/crashsdk/export/CustomInfo;->mMaxNativeLogcatLineCount:I

    int-to-long v0, v0

    const/16 v2, 0xf

    invoke-static {v2, v0, v1}, Lcom/uc/crashsdk/JNIBridge;->set(IJ)J

    .line 173
    sget-object v0, Lcom/uc/crashsdk/g;->d:Lcom/uc/crashsdk/export/CustomInfo;

    iget v0, v0, Lcom/uc/crashsdk/export/CustomInfo;->mMaxUnexpLogcatLineCount:I

    int-to-long v0, v0

    const/16 v2, 0x10

    invoke-static {v2, v0, v1}, Lcom/uc/crashsdk/JNIBridge;->set(IJ)J

    .line 174
    sget-object v0, Lcom/uc/crashsdk/g;->d:Lcom/uc/crashsdk/export/CustomInfo;

    iget v0, v0, Lcom/uc/crashsdk/export/CustomInfo;->mMaxAnrLogcatLineCount:I

    int-to-long v0, v0

    const/16 v2, 0x1f

    invoke-static {v2, v0, v1}, Lcom/uc/crashsdk/JNIBridge;->set(IJ)J

    .line 175
    invoke-static {}, Lcom/uc/crashsdk/g;->M()Z

    move-result v0

    const/16 v1, 0x12

    invoke-static {v1, v0}, Lcom/uc/crashsdk/JNIBridge;->set(IZ)J

    .line 176
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    int-to-long v0, v0

    const/16 v2, 0x14

    invoke-static {v2, v0, v1}, Lcom/uc/crashsdk/JNIBridge;->set(IJ)J

    .line 177
    sget-object v0, Lcom/uc/crashsdk/g;->d:Lcom/uc/crashsdk/export/CustomInfo;

    iget-boolean v0, v0, Lcom/uc/crashsdk/export/CustomInfo;->mOmitNativeCrash:Z

    const/16 v1, 0x15

    invoke-static {v1, v0}, Lcom/uc/crashsdk/JNIBridge;->set(IZ)J

    .line 178
    sget-object v0, Lcom/uc/crashsdk/g;->d:Lcom/uc/crashsdk/export/CustomInfo;

    iget v0, v0, Lcom/uc/crashsdk/export/CustomInfo;->mMaxAnrLogCountPerProcess:I

    int-to-long v0, v0

    const/16 v2, 0x20

    invoke-static {v2, v0, v1}, Lcom/uc/crashsdk/JNIBridge;->set(IJ)J

    .line 180
    sget-object v0, Lcom/uc/crashsdk/g;->d:Lcom/uc/crashsdk/export/CustomInfo;

    iget-wide v0, v0, Lcom/uc/crashsdk/export/CustomInfo;->mDisableSignals:J

    const/16 v2, 0x8

    invoke-static {v2, v0, v1}, Lcom/uc/crashsdk/JNIBridge;->set(IJ)J

    .line 181
    sget-object v0, Lcom/uc/crashsdk/g;->d:Lcom/uc/crashsdk/export/CustomInfo;

    iget-wide v0, v0, Lcom/uc/crashsdk/export/CustomInfo;->mDisableBackgroundSignals:J

    const/16 v2, 0x9

    invoke-static {v2, v0, v1}, Lcom/uc/crashsdk/JNIBridge;->set(IJ)J

    .line 182
    sget-object v0, Lcom/uc/crashsdk/g;->d:Lcom/uc/crashsdk/export/CustomInfo;

    iget-boolean v0, v0, Lcom/uc/crashsdk/export/CustomInfo;->mZipLog:Z

    if-eqz v0, :cond_83

    const-wide/16 v0, 0x1

    goto :goto_85

    :cond_83
    const-wide/16 v0, 0x0

    .line 183
    :goto_85
    sget-object v2, Lcom/uc/crashsdk/g;->d:Lcom/uc/crashsdk/export/CustomInfo;

    iget-object v2, v2, Lcom/uc/crashsdk/export/CustomInfo;->mZippedLogExtension:Ljava/lang/String;

    const/4 v3, 0x0

    .line 182
    const/4 v4, 0x3

    invoke-static {v4, v0, v1, v2, v3}, Lcom/uc/crashsdk/JNIBridge;->nativeSet(IJLjava/lang/String;[Ljava/lang/Object;)J

    .line 185
    const/4 v0, 0x4

    sget-object v1, Lcom/uc/crashsdk/g;->d:Lcom/uc/crashsdk/export/CustomInfo;

    iget v1, v1, Lcom/uc/crashsdk/export/CustomInfo;->mLogMaxBytesLimit:I

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Lcom/uc/crashsdk/JNIBridge;->set(IJ)J

    .line 186
    const/16 v0, 0x77

    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/uc/crashsdk/JNIBridge;->set(ILjava/lang/String;)J

    .line 187
    return-void
.end method

.method private static c(Lcom/uc/crashsdk/export/CustomInfo;)V
    .registers 7

    .line 50
    iget-object v0, p0, Lcom/uc/crashsdk/export/CustomInfo;->mZippedLogExtension:Ljava/lang/String;

    if-nez v0, :cond_8

    .line 51
    const-string v0, ""

    iput-object v0, p0, Lcom/uc/crashsdk/export/CustomInfo;->mZippedLogExtension:Ljava/lang/String;

    .line 53
    :cond_8
    iget-object v0, p0, Lcom/uc/crashsdk/export/CustomInfo;->mZippedLogExtension:Ljava/lang/String;

    const-string v1, ".tmp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5b

    .line 57
    iget-boolean v0, p0, Lcom/uc/crashsdk/export/CustomInfo;->mOmitJavaCrash:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_19

    .line 58
    iput-boolean v1, p0, Lcom/uc/crashsdk/export/CustomInfo;->mCallJavaDefaultHandler:Z

    .line 60
    :cond_19
    iget-boolean v0, p0, Lcom/uc/crashsdk/export/CustomInfo;->mOmitNativeCrash:Z

    if-eqz v0, :cond_1f

    .line 61
    iput-boolean v1, p0, Lcom/uc/crashsdk/export/CustomInfo;->mCallNativeDefaultHandler:Z

    .line 64
    :cond_1f
    invoke-static {}, Lcom/uc/crashsdk/e;->b()J

    move-result-wide v0

    .line 65
    const-wide/16 v2, 0x1

    cmp-long v4, v0, v2

    if-ltz v4, :cond_5a

    .line 66
    const/16 v2, 0xc8

    iput v2, p0, Lcom/uc/crashsdk/export/CustomInfo;->mMaxBuiltinLogFilesCount:I

    .line 67
    const/16 v2, 0x64

    iput v2, p0, Lcom/uc/crashsdk/export/CustomInfo;->mMaxCustomLogFilesCount:I

    .line 69
    const-wide/32 v3, 0x10000000

    iput-wide v3, p0, Lcom/uc/crashsdk/export/CustomInfo;->mMaxUploadBytesPerDay:J

    .line 70
    const/16 v3, 0x7d0

    iput v3, p0, Lcom/uc/crashsdk/export/CustomInfo;->mMaxUploadBuiltinLogCountPerDay:I

    .line 71
    iput v3, p0, Lcom/uc/crashsdk/export/CustomInfo;->mMaxUploadCustomLogCountPerDay:I

    .line 72
    iput v2, p0, Lcom/uc/crashsdk/export/CustomInfo;->mMaxCustomLogCountPerTypePerDay:I

    .line 74
    iput v2, p0, Lcom/uc/crashsdk/export/CustomInfo;->mMaxAnrLogCountPerProcess:I

    .line 75
    const/4 v2, 0x2

    iput v2, p0, Lcom/uc/crashsdk/export/CustomInfo;->mAnrTraceStrategy:I

    .line 77
    const-wide/16 v2, 0x2

    cmp-long v4, v0, v2

    if-ltz v4, :cond_5a

    .line 78
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/uc/crashsdk/export/CustomInfo;->mSyncUploadSetupCrashLogs:Z

    .line 79
    iput-boolean v2, p0, Lcom/uc/crashsdk/export/CustomInfo;->mSyncUploadLogs:Z

    .line 81
    const-wide/16 v3, 0x3

    cmp-long v5, v0, v3

    if-ltz v5, :cond_5a

    .line 82
    iput-boolean v2, p0, Lcom/uc/crashsdk/export/CustomInfo;->mBackupLogs:Z

    .line 83
    iput-boolean v2, p0, Lcom/uc/crashsdk/export/CustomInfo;->mPrintStackInfos:Z

    .line 84
    iput-boolean v2, p0, Lcom/uc/crashsdk/export/CustomInfo;->mDebug:Z

    .line 88
    :cond_5a
    return-void

    .line 54
    :cond_5b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "mZippedLogExtension can not be \'.tmp\'!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static d()V
    .registers 5

    .line 190
    sget-object v0, Lcom/uc/crashsdk/g;->d:Lcom/uc/crashsdk/export/CustomInfo;

    iget-boolean v0, v0, Lcom/uc/crashsdk/export/CustomInfo;->mIsInternational:Z

    const/16 v1, 0x17

    invoke-static {v1, v0}, Lcom/uc/crashsdk/JNIBridge;->set(IZ)J

    .line 191
    invoke-static {}, Lcom/uc/crashsdk/b;->E()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_15

    .line 192
    const/16 v0, 0x22

    invoke-static {v0, v1}, Lcom/uc/crashsdk/JNIBridge;->set(IZ)J

    .line 195
    :cond_15
    invoke-static {}, Lcom/uc/crashsdk/e;->i()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 196
    invoke-static {v1, v1}, Lcom/uc/crashsdk/JNIBridge;->set(IZ)J

    .line 199
    :cond_1e
    const/16 v0, 0xa

    sget-object v2, Lcom/uc/crashsdk/g;->d:Lcom/uc/crashsdk/export/CustomInfo;

    iget v2, v2, Lcom/uc/crashsdk/export/CustomInfo;->mFdDumpMinLimit:I

    int-to-long v2, v2

    invoke-static {v0, v2, v3}, Lcom/uc/crashsdk/JNIBridge;->set(IJ)J

    .line 200
    const/4 v0, 0x3

    .line 201
    sget-object v2, Lcom/uc/crashsdk/g;->d:Lcom/uc/crashsdk/export/CustomInfo;

    iget v2, v2, Lcom/uc/crashsdk/export/CustomInfo;->mReservedNativeFileHandleCount:I

    int-to-long v2, v2

    .line 200
    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v4, v4}, Lcom/uc/crashsdk/JNIBridge;->nativeCmd(IJLjava/lang/String;[Ljava/lang/Object;)J

    .line 203
    invoke-static {}, Lcom/uc/crashsdk/b;->y()Z

    move-result v0

    invoke-static {v0}, Lcom/uc/crashsdk/JNIBridge;->nativeSetForeground(Z)V

    .line 204
    const/4 v0, 0x2

    invoke-static {}, Lcom/uc/crashsdk/b;->C()Z

    move-result v2

    invoke-static {v0, v2}, Lcom/uc/crashsdk/JNIBridge;->set(IZ)J

    .line 206
    invoke-static {}, Lcom/uc/crashsdk/a;->e()V

    .line 207
    invoke-static {}, Lcom/uc/crashsdk/a;->g()V

    .line 208
    invoke-static {}, Lcom/uc/crashsdk/a;->i()V

    .line 209
    invoke-static {}, Lcom/uc/crashsdk/a;->k()V

    .line 211
    const/16 v0, 0x71

    sget-object v2, Lcom/uc/crashsdk/a;->a:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/uc/crashsdk/JNIBridge;->set(ILjava/lang/String;)J

    .line 212
    invoke-static {v1}, Lcom/uc/crashsdk/JNIBridge;->cmd(I)J

    .line 214
    const/16 v0, 0x16

    sget-object v1, Lcom/uc/crashsdk/g;->d:Lcom/uc/crashsdk/export/CustomInfo;

    iget v1, v1, Lcom/uc/crashsdk/export/CustomInfo;->mThreadsDumpMinLimit:I

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Lcom/uc/crashsdk/JNIBridge;->set(IJ)J

    .line 216
    const/16 v0, 0x7a

    invoke-static {}, Lcom/uc/crashsdk/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/uc/crashsdk/JNIBridge;->set(ILjava/lang/String;)J

    .line 217
    const/16 v0, 0x21

    invoke-static {}, Lcom/uc/crashsdk/a;->c()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Lcom/uc/crashsdk/JNIBridge;->set(IJ)J

    .line 218
    invoke-static {}, Lcom/uc/crashsdk/g;->Y()V

    .line 219
    invoke-static {}, Lcom/uc/crashsdk/b;->H()V

    .line 220
    invoke-static {}, Lcom/uc/crashsdk/b;->A()V

    .line 222
    invoke-static {}, Lcom/uc/crashsdk/a/g;->k()V

    .line 223
    return-void
.end method

.method public static e()Ljava/lang/String;
    .registers 1

    .line 226
    sget-object v0, Lcom/uc/crashsdk/g;->d:Lcom/uc/crashsdk/export/CustomInfo;

    iget-object v0, v0, Lcom/uc/crashsdk/export/CustomInfo;->mAppId:Ljava/lang/String;

    return-object v0
.end method

.method static f()Z
    .registers 2

    .line 230
    sget-object v0, Lcom/uc/crashsdk/g;->d:Lcom/uc/crashsdk/export/CustomInfo;

    iget-object v0, v0, Lcom/uc/crashsdk/export/CustomInfo;->mJavaCrashLogFileName:Ljava/lang/String;

    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->b(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    .line 231
    return v1

    .line 233
    :cond_c
    sget-object v0, Lcom/uc/crashsdk/g;->d:Lcom/uc/crashsdk/export/CustomInfo;

    iget-object v0, v0, Lcom/uc/crashsdk/export/CustomInfo;->mNativeCrashLogFileName:Ljava/lang/String;

    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 234
    return v1

    .line 236
    :cond_17
    sget-object v0, Lcom/uc/crashsdk/g;->d:Lcom/uc/crashsdk/export/CustomInfo;

    iget-object v0, v0, Lcom/uc/crashsdk/export/CustomInfo;->mUnexpCrashLogFileName:Ljava/lang/String;

    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->b(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static g()Ljava/lang/String;
    .registers 1

    .line 240
    sget-object v0, Lcom/uc/crashsdk/g;->d:Lcom/uc/crashsdk/export/CustomInfo;

    iget-object v0, v0, Lcom/uc/crashsdk/export/CustomInfo;->mJavaCrashLogFileName:Ljava/lang/String;

    return-object v0
.end method

.method static h()I
    .registers 1

    .line 244
    sget-object v0, Lcom/uc/crashsdk/g;->d:Lcom/uc/crashsdk/export/CustomInfo;

    iget v0, v0, Lcom/uc/crashsdk/export/CustomInfo;->mCrashRestartInterval:I

    return v0
.end method

.method static i()Z
    .registers 1

    .line 248
    sget-object v0, Lcom/uc/crashsdk/g;->d:Lcom/uc/crashsdk/export/CustomInfo;

    iget-boolean v0, v0, Lcom/uc/crashsdk/export/CustomInfo;->mCallJavaDefaultHandler:Z

    return v0
.end method

.method static j()Z
    .registers 1

    .line 252
    sget-object v0, Lcom/uc/crashsdk/g;->d:Lcom/uc/crashsdk/export/CustomInfo;

    iget-boolean v0, v0, Lcom/uc/crashsdk/export/CustomInfo;->mDumpHprofDataForJavaOOM:Z

    return v0
.end method

.method static k()Z
    .registers 1

    .line 256
    sget-object v0, Lcom/uc/crashsdk/g;->d:Lcom/uc/crashsdk/export/CustomInfo;

    iget-boolean v0, v0, Lcom/uc/crashsdk/export/CustomInfo;->mRenameFileToDefaultName:Z

    return v0
.end method

.method static l()I
    .registers 1

    .line 260
    sget-object v0, Lcom/uc/crashsdk/g;->d:Lcom/uc/crashsdk/export/CustomInfo;

    iget v0, v0, Lcom/uc/crashsdk/export/CustomInfo;->mMaxBuiltinLogFilesCount:I

    return v0
.end method

.method static m()I
    .registers 1

    .line 264
    sget-object v0, Lcom/uc/crashsdk/g;->d:Lcom/uc/crashsdk/export/CustomInfo;

    iget v0, v0, Lcom/uc/crashsdk/export/CustomInfo;->mMaxCustomLogFilesCount:I

    return v0
.end method

.method static n()I
    .registers 1

    .line 268
    sget-object v0, Lcom/uc/crashsdk/g;->d:Lcom/uc/crashsdk/export/CustomInfo;

    iget v0, v0, Lcom/uc/crashsdk/export/CustomInfo;->mMaxJavaLogcatLineCount:I

    return v0
.end method

.method static o()I
    .registers 1

    .line 272
    sget-object v0, Lcom/uc/crashsdk/g;->d:Lcom/uc/crashsdk/export/CustomInfo;

    iget v0, v0, Lcom/uc/crashsdk/export/CustomInfo;->mUnexpDelayMillSeconds:I

    return v0
.end method

.method static p()I
    .registers 1

    .line 276
    sget-object v0, Lcom/uc/crashsdk/g;->d:Lcom/uc/crashsdk/export/CustomInfo;

    iget v0, v0, Lcom/uc/crashsdk/export/CustomInfo;->mUnexpSubTypes:I

    return v0
.end method

.method static q()Z
    .registers 1

    .line 280
    sget-object v0, Lcom/uc/crashsdk/g;->d:Lcom/uc/crashsdk/export/CustomInfo;

    iget-boolean v0, v0, Lcom/uc/crashsdk/export/CustomInfo;->mBackupLogs:Z

    return v0
.end method

.method public static r()Z
    .registers 1

    .line 284
    sget-object v0, Lcom/uc/crashsdk/g;->d:Lcom/uc/crashsdk/export/CustomInfo;

    iget-boolean v0, v0, Lcom/uc/crashsdk/export/CustomInfo;->mSyncUploadSetupCrashLogs:Z

    return v0
.end method

.method static s()Z
    .registers 1

    .line 288
    sget-object v0, Lcom/uc/crashsdk/g;->d:Lcom/uc/crashsdk/export/CustomInfo;

    iget-boolean v0, v0, Lcom/uc/crashsdk/export/CustomInfo;->mSyncUploadLogs:Z

    return v0
.end method

.method static t()Z
    .registers 1

    .line 292
    sget-object v0, Lcom/uc/crashsdk/g;->d:Lcom/uc/crashsdk/export/CustomInfo;

    iget-boolean v0, v0, Lcom/uc/crashsdk/export/CustomInfo;->mOmitJavaCrash:Z

    return v0
.end method

.method static u()Z
    .registers 1

    .line 296
    sget-object v0, Lcom/uc/crashsdk/g;->d:Lcom/uc/crashsdk/export/CustomInfo;

    iget-boolean v0, v0, Lcom/uc/crashsdk/export/CustomInfo;->mAutoDeleteOldVersionStats:Z

    return v0
.end method

.method static v()Z
    .registers 1

    .line 300
    sget-object v0, Lcom/uc/crashsdk/g;->d:Lcom/uc/crashsdk/export/CustomInfo;

    iget-boolean v0, v0, Lcom/uc/crashsdk/export/CustomInfo;->mZipLog:Z

    return v0
.end method

.method static w()Ljava/lang/String;
    .registers 1

    .line 304
    sget-object v0, Lcom/uc/crashsdk/g;->d:Lcom/uc/crashsdk/export/CustomInfo;

    iget-object v0, v0, Lcom/uc/crashsdk/export/CustomInfo;->mZippedLogExtension:Ljava/lang/String;

    return-object v0
.end method

.method static x()Z
    .registers 1

    .line 308
    sget-object v0, Lcom/uc/crashsdk/g;->d:Lcom/uc/crashsdk/export/CustomInfo;

    iget-boolean v0, v0, Lcom/uc/crashsdk/export/CustomInfo;->mEncryptLog:Z

    return v0
.end method

.method static y()I
    .registers 1

    .line 312
    sget-object v0, Lcom/uc/crashsdk/g;->d:Lcom/uc/crashsdk/export/CustomInfo;

    iget v0, v0, Lcom/uc/crashsdk/export/CustomInfo;->mLogMaxBytesLimit:I

    return v0
.end method

.method static z()I
    .registers 1

    .line 316
    sget-object v0, Lcom/uc/crashsdk/g;->d:Lcom/uc/crashsdk/export/CustomInfo;

    iget v0, v0, Lcom/uc/crashsdk/export/CustomInfo;->mLogMaxUploadBytesLimit:I

    return v0
.end method
