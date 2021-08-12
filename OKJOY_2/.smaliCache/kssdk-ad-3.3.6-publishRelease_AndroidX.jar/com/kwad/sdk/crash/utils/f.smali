.class public final Lcom/kwad/sdk/crash/utils/f;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/io/File;

.field private static final b:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/io/File;

    const-string v1, "/proc/self/fd"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/kwad/sdk/crash/utils/f;->a:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    const-string v1, "/proc/self/task"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/kwad/sdk/crash/utils/f;->b:Ljava/io/File;

    return-void
.end method

.method private static a()I
    .registers 2

    sget-object v0, Lcom/kwad/sdk/crash/utils/f;->a:Ljava/io/File;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_19

    array-length v0, v0

    return v0

    :cond_19
    const/4 v0, 0x0

    return v0
.end method

.method private static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    const-string v0, ""

    const/4 v1, 0x0

    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    const-string v2, "apk.json"

    invoke-virtual {p0, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    new-instance p0, Lorg/json/JSONObject;

    invoke-static {v1}, Lcom/kwad/sdk/crash/utils/h;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "task_id"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_20
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_20} :catch_34
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_20} :catch_2c
    .catchall {:try_start_3 .. :try_end_20} :catchall_24

    invoke-static {v1}, Lcom/kwad/sdk/crash/utils/b;->a(Ljava/io/InputStream;)V

    return-object p0

    :catchall_24
    move-exception p0

    :try_start_25
    invoke-static {p0}, Lcom/kwad/sdk/core/d/a;->b(Ljava/lang/Throwable;)V
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_3c

    invoke-static {v1}, Lcom/kwad/sdk/crash/utils/b;->a(Ljava/io/InputStream;)V

    return-object v0

    :catch_2c
    move-exception p0

    :try_start_2d
    invoke-static {p0}, Lcom/kwad/sdk/core/d/a;->b(Ljava/lang/Throwable;)V
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_3c

    invoke-static {v1}, Lcom/kwad/sdk/crash/utils/b;->a(Ljava/io/InputStream;)V

    return-object v0

    :catch_34
    move-exception p0

    :try_start_35
    invoke-static {p0}, Lcom/kwad/sdk/core/d/a;->b(Ljava/lang/Throwable;)V
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_3c

    invoke-static {v1}, Lcom/kwad/sdk/crash/utils/b;->a(Ljava/io/InputStream;)V

    return-object v0

    :catchall_3c
    move-exception p0

    invoke-static {v1}, Lcom/kwad/sdk/crash/utils/b;->a(Ljava/io/InputStream;)V

    throw p0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x0

    const/16 v1, 0x2e

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_13
    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    return-object p0

    :cond_a
    const/4 v0, 0x0

    invoke-virtual {p0, p1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_5
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_a} :catch_22
    .catchall {:try_start_5 .. :try_end_a} :catchall_20

    :try_start_a
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-static {p0, v1}, Lcom/kwad/sdk/crash/utils/e;->a(Ljava/lang/Throwable;Ljava/io/PrintWriter;)V

    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_16} :catch_1d
    .catchall {:try_start_a .. :try_end_16} :catchall_1a

    invoke-static {v2}, Lcom/kwad/sdk/crash/utils/b;->a(Ljava/io/Writer;)V

    goto :goto_29

    :catchall_1a
    move-exception p0

    move-object v1, v2

    goto :goto_2a

    :catch_1d
    move-exception p0

    move-object v1, v2

    goto :goto_23

    :catchall_20
    move-exception p0

    goto :goto_2a

    :catch_22
    move-exception p0

    :goto_23
    :try_start_23
    invoke-static {p0}, Lcom/kwad/sdk/core/d/a;->b(Ljava/lang/Throwable;)V
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_20

    invoke-static {v1}, Lcom/kwad/sdk/crash/utils/b;->a(Ljava/io/Writer;)V

    :goto_29
    return-object v0

    :goto_2a
    invoke-static {v1}, Lcom/kwad/sdk/crash/utils/b;->a(Ljava/io/Writer;)V

    throw p0
.end method

.method public static a([Ljava/lang/StackTraceElement;)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/kwad/sdk/crash/utils/f;->a([Ljava/lang/StackTraceElement;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a([Ljava/lang/StackTraceElement;I)Ljava/lang/String;
    .registers 9

    if-nez p0, :cond_5

    const-string p0, ""

    return-object p0

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_d
    if-ge v3, v1, :cond_2e

    aget-object v4, p0, v3

    move v5, v2

    :goto_12
    if-ge v5, p1, :cond_1c

    const-string v6, "\t"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_12

    :cond_1c
    const-string v5, "at "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_2e
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Lcom/kwad/sdk/crash/model/message/ExceptionMessage;)V
    .registers 2

    invoke-static {}, Lcom/kwad/sdk/crash/d;->a()Lcom/kwad/sdk/crash/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kwad/sdk/crash/d;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/crash/model/message/ExceptionMessage;->mVirtualApp:Ljava/lang/String;

    invoke-static {}, Lcom/kwad/sdk/crash/d;->a()Lcom/kwad/sdk/crash/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kwad/sdk/crash/d;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/crash/model/message/ExceptionMessage;->mVersionCode:Ljava/lang/String;

    return-void
.end method

.method public static a(Lcom/kwad/sdk/crash/model/message/ExceptionMessage;I)V
    .registers 3

    invoke-static {}, Lcom/kwad/sdk/crash/d;->a()Lcom/kwad/sdk/crash/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kwad/sdk/crash/d;->g()Lcom/kwad/sdk/crash/f;

    move-result-object v0

    if-nez v0, :cond_12

    const-string p0, "tag"

    const-string p1, "getter is null!"

    invoke-static {p0, p1}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_12
    invoke-interface {v0, p1}, Lcom/kwad/sdk/crash/f;->a(I)Lcom/kwad/sdk/crash/model/message/a;

    move-result-object p1

    if-eqz p1, :cond_1e

    invoke-virtual {p1}, Lcom/kwad/sdk/crash/model/message/a;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kwad/sdk/crash/model/message/ExceptionMessage;->mCustomMsg:Ljava/lang/String;

    :cond_1e
    return-void
.end method

.method private static a(Lcom/kwad/sdk/crash/model/message/ExceptionMessage;Landroid/content/Context;)V
    .registers 4

    instance-of v0, p0, Lcom/kwad/sdk/crash/model/message/JavaExceptionMessage;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/kwad/sdk/crash/model/message/ExceptionMessage;->mThreadName:Ljava/lang/String;

    const-string v1, "Unknown"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/crash/model/message/ExceptionMessage;->mThreadName:Ljava/lang/String;

    :cond_18
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    iput v0, p0, Lcom/kwad/sdk/crash/model/message/ExceptionMessage;->mTid:I

    :cond_1e
    if-eqz p1, :cond_2c

    invoke-static {p1}, Lcom/kwad/sdk/crash/utils/SystemUtil;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2c

    iput-object v0, p0, Lcom/kwad/sdk/crash/model/message/ExceptionMessage;->mProcessName:Ljava/lang/String;

    :cond_2c
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    iput v0, p0, Lcom/kwad/sdk/crash/model/message/ExceptionMessage;->mPid:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kwad/sdk/crash/model/message/ExceptionMessage;->mCurrentTimeStamp:J

    invoke-static {}, Lcom/kwad/sdk/crash/d;->a()Lcom/kwad/sdk/crash/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kwad/sdk/crash/d;->h()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kwad/sdk/crash/model/message/ExceptionMessage;->mUsageTimeMills:J

    invoke-static {}, Lcom/kwad/sdk/crash/utils/AbiUtil;->b()Z

    move-result v0

    if-eqz v0, :cond_4b

    const-string v0, "arm64"

    goto :goto_4d

    :cond_4b
    const-string v0, "arm"

    :goto_4d
    iput-object v0, p0, Lcom/kwad/sdk/crash/model/message/ExceptionMessage;->mAbi:Ljava/lang/String;

    iget-object v0, p0, Lcom/kwad/sdk/crash/model/message/ExceptionMessage;->mVersionCode:Ljava/lang/String;

    const-string v1, "3.3.6"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/kwad/sdk/crash/model/message/ExceptionMessage;->mVersionConflict:Z

    invoke-static {p1}, Lcom/kwad/sdk/crash/utils/f;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/crash/model/message/ExceptionMessage;->mBuildConfigInfo:Ljava/lang/String;

    invoke-static {p0}, Lcom/kwad/sdk/crash/utils/f;->a(Lcom/kwad/sdk/crash/model/message/ExceptionMessage;)V

    invoke-static {p0, p1}, Lcom/kwad/sdk/crash/utils/f;->b(Lcom/kwad/sdk/crash/model/message/ExceptionMessage;Landroid/content/Context;)V

    invoke-static {p1}, Lcom/kwad/sdk/crash/utils/f;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kwad/sdk/crash/model/message/ExceptionMessage;->mTaskId:Ljava/lang/String;

    return-void
.end method

.method private static a(Lcom/kwad/sdk/crash/model/message/ExceptionMessage;Lcom/kwad/sdk/crash/model/message/DiskInfo;Landroid/content/Context;)V
    .registers 10

    :try_start_0
    new-instance p2, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/StatFs;->getTotalBytes()J

    move-result-wide v0

    const/16 v2, 0x14

    shr-long/2addr v0, v2

    long-to-float v0, v0

    const/high16 v1, 0x44800000    # 1024.0f

    div-float/2addr v0, v1

    float-to-double v3, v0

    invoke-static {v3, v4}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v0

    const/4 v3, 0x4

    const/4 v4, 0x2

    invoke-virtual {v0, v4, v3}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->floatValue()F

    move-result v0

    float-to-double v5, v0

    iput-wide v5, p1, Lcom/kwad/sdk/crash/model/message/DiskInfo;->mDataTotalGB:D

    invoke-virtual {p2}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v5

    shr-long/2addr v5, v2

    long-to-float p2, v5

    div-float/2addr p2, v1

    float-to-double v5, p2

    invoke-static {v5, v6}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object p2

    invoke-virtual {p2, v4, v3}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object p2

    invoke-virtual {p2}, Ljava/math/BigDecimal;->floatValue()F

    move-result p2

    float-to-double v5, p2

    iput-wide v5, p1, Lcom/kwad/sdk/crash/model/message/DiskInfo;->mDataAvailableGB:D

    const-string p2, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8f

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object p2

    if-eqz p2, :cond_8f

    new-instance v0, Landroid/os/StatFs;

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/StatFs;->getTotalBytes()J

    move-result-wide v5

    shr-long/2addr v5, v2

    long-to-float p2, v5

    div-float/2addr p2, v1

    float-to-double v5, p2

    invoke-static {v5, v6}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object p2

    invoke-virtual {p2, v4, v3}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object p2

    invoke-virtual {p2}, Ljava/math/BigDecimal;->floatValue()F

    move-result p2

    float-to-double v5, p2

    iput-wide v5, p1, Lcom/kwad/sdk/crash/model/message/DiskInfo;->mExternalStorageTotalGB:D

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v5

    shr-long/2addr v5, v2

    long-to-float p2, v5

    div-float/2addr p2, v1

    float-to-double v0, p2

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object p2

    invoke-virtual {p2, v4, v3}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object p2

    invoke-virtual {p2}, Ljava/math/BigDecimal;->floatValue()F

    move-result p2

    float-to-double v0, p2

    iput-wide v0, p1, Lcom/kwad/sdk/crash/model/message/DiskInfo;->mExternalStorageAvailableGB:D
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8a} :catch_8b

    goto :goto_8f

    :catch_8b
    move-exception p2

    invoke-static {p2}, Lcom/kwad/sdk/core/d/a;->b(Ljava/lang/Throwable;)V

    :cond_8f
    :goto_8f
    invoke-virtual {p1}, Lcom/kwad/sdk/crash/model/message/DiskInfo;->toJson()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kwad/sdk/crash/model/message/ExceptionMessage;->mDiskInfo:Ljava/lang/String;

    return-void
.end method

.method private static a(Lcom/kwad/sdk/crash/model/message/ExceptionMessage;Lcom/kwad/sdk/crash/model/message/MemoryInfo;Landroid/content/Context;)V
    .registers 11

    invoke-static {}, Lcom/kwad/sdk/crash/utils/SystemUtil;->c()Lcom/kwad/sdk/crash/utils/SystemUtil$a;

    move-result-object v0

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v1

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v3

    sub-long/2addr v1, v3

    iput-wide v1, v0, Lcom/kwad/sdk/crash/utils/SystemUtil$a;->e:J

    invoke-static {}, Lcom/kwad/sdk/crash/utils/SystemUtil;->a()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/kwad/sdk/crash/utils/SystemUtil$a;->a:J

    invoke-static {}, Landroid/os/Debug;->getPss()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/kwad/sdk/crash/utils/SystemUtil$a;->d:J

    iget-wide v1, v0, Lcom/kwad/sdk/crash/utils/SystemUtil$a;->a:J

    const-wide/32 v3, 0x100000

    div-long/2addr v1, v3

    long-to-int v1, v1

    iput v1, p1, Lcom/kwad/sdk/crash/model/message/MemoryInfo;->mTotalMB:I

    sget-wide v1, Lcom/kwad/sdk/crash/c;->a:D

    const-wide/high16 v5, 0x4130000000000000L    # 1048576.0

    div-double/2addr v1, v5

    double-to-int v1, v1

    iput v1, p1, Lcom/kwad/sdk/crash/model/message/MemoryInfo;->mJavaHeapLimitMB:I

    iget-wide v1, v0, Lcom/kwad/sdk/crash/utils/SystemUtil$a;->e:J

    div-long/2addr v1, v3

    long-to-int v1, v1

    iput v1, p1, Lcom/kwad/sdk/crash/model/message/MemoryInfo;->mJavaHeapMB:I

    iget-wide v1, v0, Lcom/kwad/sdk/crash/utils/SystemUtil$a;->b:J

    const-wide/16 v5, 0x400

    div-long/2addr v1, v5

    long-to-int v1, v1

    iput v1, p1, Lcom/kwad/sdk/crash/model/message/MemoryInfo;->mVssMB:I

    iget-wide v1, v0, Lcom/kwad/sdk/crash/utils/SystemUtil$a;->c:J

    div-long/2addr v1, v5

    long-to-int v1, v1

    iput v1, p1, Lcom/kwad/sdk/crash/model/message/MemoryInfo;->mRssMB:I

    iget-wide v1, v0, Lcom/kwad/sdk/crash/utils/SystemUtil$a;->d:J

    div-long/2addr v1, v5

    long-to-int v1, v1

    iput v1, p1, Lcom/kwad/sdk/crash/model/message/MemoryInfo;->mPssMB:I

    iget v1, v0, Lcom/kwad/sdk/crash/utils/SystemUtil$a;->f:I

    iput v1, p1, Lcom/kwad/sdk/crash/model/message/MemoryInfo;->mThreadsCount:I

    invoke-static {}, Lcom/kwad/sdk/crash/utils/f;->a()I

    move-result v1

    iput v1, p1, Lcom/kwad/sdk/crash/model/message/MemoryInfo;->mFdCount:I

    if-eqz p2, :cond_62

    invoke-static {p2}, Lcom/kwad/sdk/crash/utils/SystemUtil;->b(Landroid/content/Context;)J

    move-result-wide v1

    div-long/2addr v1, v3

    long-to-int p2, v1

    iput p2, p1, Lcom/kwad/sdk/crash/model/message/MemoryInfo;->mAvailableMB:I

    :cond_62
    const-string p2, "False"

    iput-object p2, p0, Lcom/kwad/sdk/crash/model/message/ExceptionMessage;->mFdOverflow:Ljava/lang/String;

    iget v1, p1, Lcom/kwad/sdk/crash/model/message/MemoryInfo;->mFdCount:I

    const/16 v2, 0x320

    const-string v3, "True"

    if-le v1, v2, :cond_ae

    invoke-virtual {p0}, Lcom/kwad/sdk/crash/model/message/ExceptionMessage;->getTypeFdOOM()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kwad/sdk/crash/model/message/ExceptionMessage;->mCrashType:Ljava/lang/String;

    iput-object v3, p0, Lcom/kwad/sdk/crash/model/message/ExceptionMessage;->mFdOverflow:Ljava/lang/String;

    sget-object v1, Lcom/kwad/sdk/crash/utils/f;->a:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_ae

    array-length v2, v1

    if-lez v2, :cond_ae

    array-length v2, v1

    const/4 v4, 0x0

    :goto_83
    if-ge v4, v2, :cond_a9

    aget-object v5, v1, v4

    :try_start_87
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x15

    if-lt v6, v7, :cond_9b

    iget-object v6, p1, Lcom/kwad/sdk/crash/model/message/MemoryInfo;->mFds:Ljava/util/List;

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/system/Os;->readlink(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_97
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a6

    :cond_9b
    iget-object v6, p1, Lcom/kwad/sdk/crash/model/message/MemoryInfo;->mFds:Ljava/util/List;

    invoke-virtual {v5}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v5
    :try_end_a1
    .catch Ljava/lang/Exception; {:try_start_87 .. :try_end_a1} :catch_a2

    goto :goto_97

    :catch_a2
    move-exception v5

    invoke-static {v5}, Lcom/kwad/sdk/core/d/a;->b(Ljava/lang/Throwable;)V

    :goto_a6
    add-int/lit8 v4, v4, 0x1

    goto :goto_83

    :cond_a9
    iget-object v1, p1, Lcom/kwad/sdk/crash/model/message/MemoryInfo;->mFds:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    :cond_ae
    iput-object p2, p0, Lcom/kwad/sdk/crash/model/message/ExceptionMessage;->mThreadOverflow:Ljava/lang/String;

    iget p2, v0, Lcom/kwad/sdk/crash/utils/SystemUtil$a;->f:I

    const/16 v0, 0x190

    if-le p2, v0, :cond_cb

    invoke-virtual {p0}, Lcom/kwad/sdk/crash/model/message/ExceptionMessage;->getTypeThreadOOM()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/kwad/sdk/crash/model/message/ExceptionMessage;->mCrashType:Ljava/lang/String;

    iput-object v3, p0, Lcom/kwad/sdk/crash/model/message/ExceptionMessage;->mThreadOverflow:Ljava/lang/String;

    invoke-static {p1}, Lcom/kwad/sdk/crash/utils/f;->a(Lcom/kwad/sdk/crash/model/message/MemoryInfo;)V

    iget-object p2, p1, Lcom/kwad/sdk/crash/model/message/MemoryInfo;->mAllThreads:Ljava/util/List;

    new-instance v0, Lcom/kwad/sdk/crash/utils/f$1;

    invoke-direct {v0}, Lcom/kwad/sdk/crash/utils/f$1;-><init>()V

    invoke-static {p2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_cb
    invoke-virtual {p1}, Lcom/kwad/sdk/crash/model/message/MemoryInfo;->toJson()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kwad/sdk/crash/model/message/ExceptionMessage;->mMemoryInfo:Ljava/lang/String;

    return-void
.end method

.method private static a(Lcom/kwad/sdk/crash/model/message/MemoryInfo;)V
    .registers 8

    sget-object v0, Lcom/kwad/sdk/crash/utils/f;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    array-length v1, v0

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v1, :cond_40

    aget-object v3, v0, v2

    new-instance v4, Lcom/kwad/sdk/crash/model/message/ThreadInfo;

    invoke-direct {v4}, Lcom/kwad/sdk/crash/model/message/ThreadInfo;-><init>()V

    :try_start_14
    new-instance v5, Ljava/io/File;

    const-string v6, "comm"

    invoke-direct {v5, v3, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v5}, Lcom/kwad/sdk/crash/utils/h;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lcom/kwad/sdk/crash/model/message/ThreadInfo;->mName:Ljava/lang/String;
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_21} :catch_22

    goto :goto_26

    :catch_22
    move-exception v3

    invoke-static {v3}, Lcom/kwad/sdk/core/d/a;->b(Ljava/lang/Throwable;)V

    :goto_26
    iget-object v3, v4, Lcom/kwad/sdk/crash/model/message/ThreadInfo;->mName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3d

    iget-object v3, v4, Lcom/kwad/sdk/crash/model/message/ThreadInfo;->mName:Ljava/lang/String;

    const-string v5, "\n"

    invoke-static {v3, v5}, Lcom/kwad/sdk/crash/utils/f;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lcom/kwad/sdk/crash/model/message/ThreadInfo;->mName:Ljava/lang/String;

    iget-object v3, p0, Lcom/kwad/sdk/crash/model/message/MemoryInfo;->mAllThreads:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3d
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_40
    return-void
.end method

.method public static a(Ljava/io/File;)V
    .registers 22

    const/16 v0, 0x15

    invoke-static {v0}, Lcom/kwad/sdk/crash/utils/SystemUtil;->a(I)Z

    move-result v0

    const-string v2, "-f"

    const/16 v3, 0xa

    const-string v4, "-d"

    const/16 v5, 0x9

    const-string v6, "events"

    const/16 v7, 0x8

    const/4 v8, 0x7

    const-string v9, "system"

    const/4 v10, 0x6

    const/4 v11, 0x5

    const-string v12, "main"

    const/4 v13, 0x4

    const/4 v14, 0x3

    const-string v15, "threadtime"

    const/16 v16, 0x2

    const-string v17, "-v"

    const/16 v18, 0x1

    const-string v19, "logcat"

    const/4 v1, 0x0

    const-string v20, "-b"

    if-eqz v0, :cond_57

    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    aput-object v19, v0, v1

    aput-object v17, v0, v18

    aput-object v15, v0, v16

    aput-object v20, v0, v14

    aput-object v12, v0, v13

    aput-object v20, v0, v11

    aput-object v9, v0, v10

    aput-object v20, v0, v8

    aput-object v6, v0, v7

    aput-object v20, v0, v5

    const-string v5, "crash"

    aput-object v5, v0, v3

    const/16 v3, 0xb

    aput-object v4, v0, v3

    const/16 v3, 0xc

    aput-object v2, v0, v3

    const/16 v2, 0xd

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    goto :goto_79

    :cond_57
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    aput-object v19, v0, v1

    aput-object v17, v0, v18

    aput-object v15, v0, v16

    aput-object v20, v0, v14

    aput-object v12, v0, v13

    aput-object v20, v0, v11

    aput-object v9, v0, v10

    aput-object v20, v0, v8

    aput-object v6, v0, v7

    aput-object v4, v0, v5

    aput-object v2, v0, v3

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xb

    aput-object v2, v0, v3

    :goto_79
    :try_start_79
    invoke-static {v0, v1}, Lcom/kwad/sdk/crash/utils/c;->a([Ljava/lang/String;I)Ljava/util/List;
    :try_end_7c
    .catch Ljava/io/IOException; {:try_start_79 .. :try_end_7c} :catch_7d

    goto :goto_82

    :catch_7d
    move-exception v0

    move-object v1, v0

    invoke-static {v1}, Lcom/kwad/sdk/core/d/a;->b(Ljava/lang/Throwable;)V

    :goto_82
    return-void
.end method

.method public static a(Ljava/io/File;Ljava/io/File;)V
    .registers 6

    :try_start_0
    invoke-static {p0}, Lcom/kwad/sdk/crash/utils/f;->e(Ljava/io/File;)V

    invoke-static {p1}, Lcom/kwad/sdk/crash/utils/f;->e(Ljava/io/File;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_6} :catch_54

    const/4 v0, 0x0

    :try_start_7
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_11
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_11} :catch_40
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_11} :catch_3d
    .catchall {:try_start_7 .. :try_end_11} :catchall_3a

    :try_start_11
    new-instance p0, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/FileWriter;

    const/4 v3, 0x1

    invoke-direct {v2, p1, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-direct {p0, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1c
    .catch Ljava/io/FileNotFoundException; {:try_start_11 .. :try_end_1c} :catch_38
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_1c} :catch_36
    .catchall {:try_start_11 .. :try_end_1c} :catchall_4c

    :goto_1c
    :try_start_1c
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_29

    invoke-virtual {p0, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_28
    .catch Ljava/io/FileNotFoundException; {:try_start_1c .. :try_end_28} :catch_33
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_28} :catch_30
    .catchall {:try_start_1c .. :try_end_28} :catchall_2d

    goto :goto_1c

    :cond_29
    invoke-static {p0}, Lcom/kwad/sdk/crash/utils/b;->a(Ljava/io/Writer;)V

    goto :goto_48

    :catchall_2d
    move-exception p1

    move-object v0, p0

    goto :goto_4d

    :catch_30
    move-exception p1

    move-object v0, p0

    goto :goto_42

    :catch_33
    move-exception p1

    move-object v0, p0

    goto :goto_42

    :catch_36
    move-exception p1

    goto :goto_42

    :catch_38
    move-exception p1

    goto :goto_42

    :catchall_3a
    move-exception p1

    move-object v1, v0

    goto :goto_4d

    :catch_3d
    move-exception p1

    move-object v1, v0

    goto :goto_42

    :catch_40
    move-exception p1

    move-object v1, v0

    :goto_42
    :try_start_42
    invoke-static {p1}, Lcom/kwad/sdk/core/d/a;->b(Ljava/lang/Throwable;)V
    :try_end_45
    .catchall {:try_start_42 .. :try_end_45} :catchall_4c

    invoke-static {v0}, Lcom/kwad/sdk/crash/utils/b;->a(Ljava/io/Writer;)V

    :goto_48
    invoke-static {v1}, Lcom/kwad/sdk/crash/utils/b;->a(Ljava/io/Reader;)V

    return-void

    :catchall_4c
    move-exception p1

    :goto_4d
    invoke-static {v0}, Lcom/kwad/sdk/crash/utils/b;->a(Ljava/io/Writer;)V

    invoke-static {v1}, Lcom/kwad/sdk/crash/utils/b;->a(Ljava/io/Reader;)V

    throw p1

    :catch_54
    move-exception p0

    invoke-static {p0}, Lcom/kwad/sdk/core/d/a;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static a(Ljava/io/File;Ljava/lang/CharSequence;)V
    .registers 4

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/kwad/sdk/crash/utils/f;->a(Ljava/io/File;Ljava/lang/CharSequence;Ljava/nio/charset/Charset;Z)V

    return-void
.end method

.method public static a(Ljava/io/File;Ljava/lang/CharSequence;Ljava/nio/charset/Charset;Z)V
    .registers 4

    if-nez p1, :cond_4

    const/4 p1, 0x0

    goto :goto_8

    :cond_4
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_8
    invoke-static {p0, p1, p2, p3}, Lcom/kwad/sdk/crash/utils/f;->a(Ljava/io/File;Ljava/lang/String;Ljava/nio/charset/Charset;Z)V

    return-void
.end method

.method public static a(Ljava/io/File;Ljava/lang/String;Ljava/nio/charset/Charset;Z)V
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0, p3}, Lcom/kwad/sdk/crash/utils/g;->a(Ljava/io/File;Z)Ljava/io/FileOutputStream;

    move-result-object v0

    invoke-static {p1, v0, p2}, Lcom/kwad/sdk/crash/utils/h;->a(Ljava/lang/String;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-static {v0}, Lcom/kwad/sdk/crash/utils/f;->a(Ljava/io/FileOutputStream;)Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_b} :catch_e
    .catchall {:try_start_1 .. :try_end_b} :catchall_c

    goto :goto_12

    :catchall_c
    move-exception p0

    goto :goto_16

    :catch_e
    move-exception p0

    :try_start_f
    invoke-static {p0}, Lcom/kwad/sdk/core/d/a;->b(Ljava/lang/Throwable;)V
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_c

    :goto_12
    invoke-static {v0}, Lcom/kwad/sdk/crash/utils/b;->a(Ljava/io/OutputStream;)V

    return-void

    :goto_16
    invoke-static {v0}, Lcom/kwad/sdk/crash/utils/b;->a(Ljava/io/OutputStream;)V

    throw p0
.end method

.method public static a(Ljava/lang/Throwable;Lcom/kwad/sdk/crash/model/message/ExceptionMessage;)V
    .registers 4

    invoke-static {p0}, Lcom/kwad/sdk/crash/utils/f;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    instance-of p0, p0, Ljava/lang/StackOverflowError;

    if-eqz p0, :cond_c

    invoke-static {v0}, Lcom/kwad/sdk/crash/utils/f;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_c
    const-string p0, "[\n\t]"

    const-string v1, "#"

    invoke-virtual {v0, p0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/kwad/sdk/crash/model/message/ExceptionMessage;->mCrashDetail:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/Throwable;Lcom/kwad/sdk/crash/model/message/ExceptionMessage;Landroid/content/Context;)V
    .registers 4

    if-eqz p0, :cond_5

    invoke-static {p0, p1}, Lcom/kwad/sdk/crash/utils/f;->a(Ljava/lang/Throwable;Lcom/kwad/sdk/crash/model/message/ExceptionMessage;)V

    :cond_5
    invoke-static {p1, p2}, Lcom/kwad/sdk/crash/utils/f;->a(Lcom/kwad/sdk/crash/model/message/ExceptionMessage;Landroid/content/Context;)V

    new-instance v0, Lcom/kwad/sdk/crash/model/message/MemoryInfo;

    invoke-direct {v0}, Lcom/kwad/sdk/crash/model/message/MemoryInfo;-><init>()V

    invoke-static {p1, v0, p2}, Lcom/kwad/sdk/crash/utils/f;->a(Lcom/kwad/sdk/crash/model/message/ExceptionMessage;Lcom/kwad/sdk/crash/model/message/MemoryInfo;Landroid/content/Context;)V

    new-instance v0, Lcom/kwad/sdk/crash/model/message/DiskInfo;

    invoke-direct {v0}, Lcom/kwad/sdk/crash/model/message/DiskInfo;-><init>()V

    invoke-static {p1, v0, p2}, Lcom/kwad/sdk/crash/utils/f;->a(Lcom/kwad/sdk/crash/model/message/ExceptionMessage;Lcom/kwad/sdk/crash/model/message/DiskInfo;Landroid/content/Context;)V

    instance-of p2, p1, Lcom/kwad/sdk/crash/model/message/JavaExceptionMessage;

    if-eqz p2, :cond_1f

    invoke-static {p0, p1}, Lcom/kwad/sdk/crash/utils/f;->b(Ljava/lang/Throwable;Lcom/kwad/sdk/crash/model/message/ExceptionMessage;)V

    :cond_1f
    return-void
.end method

.method public static a(Ljava/io/FileOutputStream;)Z
    .registers 1

    if-eqz p0, :cond_10

    :try_start_2
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/FileDescriptor;->sync()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_9} :catch_a

    goto :goto_10

    :catch_a
    move-exception p0

    invoke-static {p0}, Lcom/kwad/sdk/core/d/a;->b(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return p0

    :cond_10
    :goto_10
    const/4 p0, 0x1

    return p0
.end method

.method public static b(Ljava/lang/String;)J
    .registers 4

    const-wide/16 v0, -0x1

    :try_start_2
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_11

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v0
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_11} :catch_12

    :cond_11
    return-wide v0

    :catch_12
    move-exception p0

    return-wide v0
.end method

.method private static b(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    const-string v0, "\n"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_7
    const-string v2, "BuildConfig Version Name: 3.3.6\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PackageInfo CodePath: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageCodePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PackageInfo ResPath: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageResourcePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DexPath: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Lcom/kwad/sdk/crash/utils/f;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_66} :catch_67

    goto :goto_6b

    :catch_67
    move-exception p0

    invoke-static {p0}, Lcom/kwad/sdk/core/d/a;->b(Ljava/lang/Throwable;)V

    :goto_6b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static b(Lcom/kwad/sdk/crash/model/message/ExceptionMessage;Landroid/content/Context;)V
    .registers 6

    if-nez p1, :cond_3

    return-void

    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    :try_start_13
    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_17} :catch_18

    goto :goto_20

    :catch_18
    move-exception v1

    invoke-static {v1}, Lcom/kwad/sdk/core/d/a;->b(Ljava/lang/Throwable;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    :goto_20
    sget-object v1, Lcom/kwad/sdk/crash/c;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_61

    sget-object v1, Lcom/kwad/sdk/crash/c;->c:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_39

    goto :goto_61

    :cond_39
    sget-object p1, Lcom/kwad/sdk/crash/c;->d:Ljava/util/regex/Pattern;

    invoke-virtual {p1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    sget-object v1, Lcom/kwad/sdk/crash/c;->e:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_53

    invoke-virtual {p1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    :goto_50
    iput-object p1, p0, Lcom/kwad/sdk/crash/model/message/ExceptionMessage;->mVirtualApp:Ljava/lang/String;

    goto :goto_60

    :cond_53
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    if-eqz p1, :cond_5e

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_50

    :cond_5e
    iput-object v0, p0, Lcom/kwad/sdk/crash/model/message/ExceptionMessage;->mVirtualApp:Ljava/lang/String;

    :goto_60
    return-void

    :cond_61
    :goto_61
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kwad/sdk/crash/model/message/ExceptionMessage;->mVirtualApp:Ljava/lang/String;

    return-void
.end method

.method public static b(Ljava/io/File;)V
    .registers 1

    if-nez p0, :cond_3

    return-void

    :cond_3
    :try_start_3
    invoke-static {p0}, Lcom/kwad/sdk/crash/utils/g;->c(Ljava/io/File;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_6} :catch_7

    goto :goto_b

    :catch_7
    move-exception p0

    invoke-static {p0}, Lcom/kwad/sdk/core/d/a;->b(Ljava/lang/Throwable;)V

    :goto_b
    return-void
.end method

.method private static b(Ljava/lang/Throwable;Lcom/kwad/sdk/crash/model/message/ExceptionMessage;)V
    .registers 3

    invoke-static {p0}, Lcom/kwad/sdk/crash/utils/f;->b(Ljava/lang/Throwable;)Z

    move-result p0

    if-eqz p0, :cond_18

    iget-object p0, p1, Lcom/kwad/sdk/crash/model/message/ExceptionMessage;->mCrashType:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/kwad/sdk/crash/model/message/ExceptionMessage;->getTypeCommon()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_18

    invoke-virtual {p1}, Lcom/kwad/sdk/crash/model/message/ExceptionMessage;->getTypeHeapOOM()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/kwad/sdk/crash/model/message/ExceptionMessage;->mCrashType:Ljava/lang/String;

    :cond_18
    return-void
.end method

.method private static b(Ljava/lang/Throwable;)Z
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return p0

    :cond_4
    :goto_4
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    goto :goto_4

    :cond_f
    instance-of p0, p0, Ljava/lang/OutOfMemoryError;

    return p0
.end method

.method private static c(Landroid/content/Context;)Ljava/lang/String;
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    if-eqz p0, :cond_8c

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ClassLoader "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    :goto_29
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v2

    const/4 v5, 0x1

    if-eqz v2, :cond_58

    invoke-virtual {p0}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object p0

    add-int/2addr v3, v5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\nClassLoader "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    goto :goto_29

    :cond_58
    if-eqz v1, :cond_8c

    const-string p0, "\""

    invoke-virtual {v1, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x2

    if-lt v1, v2, :cond_8c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n====path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, p0, v5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object p0, p0, v5

    invoke-static {p0}, Lcom/kwad/sdk/crash/utils/f;->b(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const-string v1, "\n"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v2, p0

    const/4 v3, 0x0

    move v4, v3

    :goto_e
    if-ge v4, v2, :cond_18

    aget-object v5, p0, v4

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    :cond_18
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_26
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_26

    :cond_3a
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c(Ljava/io/File;)V
    .registers 5

    :try_start_0
    invoke-static {p0}, Lcom/kwad/sdk/crash/utils/f;->e(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_6e

    const/4 v0, 0x0

    :try_start_4
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/FileWriter;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_f
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_f} :catch_64
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_f} :catch_5f
    .catchall {:try_start_4 .. :try_end_f} :catchall_5d

    :try_start_f
    invoke-static {}, Ljava/lang/Thread;->getAllStackTraces()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_50

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/StackTraceElement;

    invoke-static {v2}, Lcom/kwad/sdk/crash/utils/f;->a([Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_39

    const-string v2, "(no managed stack frames)\n"

    :cond_39
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/BufferedWriter;->newLine()V

    invoke-virtual {v1, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_4f
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_4f} :catch_5a
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_4f} :catch_57
    .catchall {:try_start_f .. :try_end_4f} :catchall_54

    goto :goto_1b

    :cond_50
    invoke-static {v1}, Lcom/kwad/sdk/crash/utils/b;->a(Ljava/io/Writer;)V

    goto :goto_69

    :catchall_54
    move-exception p0

    move-object v0, v1

    goto :goto_6a

    :catch_57
    move-exception p0

    move-object v0, v1

    goto :goto_60

    :catch_5a
    move-exception p0

    move-object v0, v1

    goto :goto_60

    :catchall_5d
    move-exception p0

    goto :goto_6a

    :catch_5f
    move-exception p0

    :goto_60
    :try_start_60
    invoke-static {p0}, Lcom/kwad/sdk/core/d/a;->b(Ljava/lang/Throwable;)V
    :try_end_63
    .catchall {:try_start_60 .. :try_end_63} :catchall_5d

    goto :goto_66

    :catch_64
    move-exception p0

    goto :goto_60

    :goto_66
    invoke-static {v0}, Lcom/kwad/sdk/crash/utils/b;->a(Ljava/io/Writer;)V

    :goto_69
    return-void

    :goto_6a
    invoke-static {v0}, Lcom/kwad/sdk/crash/utils/b;->a(Ljava/io/Writer;)V

    throw p0

    :catch_6e
    move-exception p0

    invoke-static {p0}, Lcom/kwad/sdk/core/d/a;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static d(Ljava/io/File;)V
    .registers 15

    :try_start_0
    new-instance v0, Landroid/os/Debug$MemoryInfo;

    invoke-direct {v0}, Landroid/os/Debug$MemoryInfo;-><init>()V

    invoke-static {v0}, Landroid/os/Debug;->getMemoryInfo(Landroid/os/Debug$MemoryInfo;)V

    const-string v1, "android.app.ActivityThread"

    const-string v2, "currentActivityThread"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v4}, Lcom/kwad/sdk/utils/l;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "mAppThread"

    invoke-static {v1, v2}, Lcom/kwad/sdk/utils/l;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const/high16 v2, 0x3c000000    # 0.0078125f

    invoke-static {p0, v2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    const/16 v4, 0x1a

    invoke-static {v4}, Lcom/kwad/sdk/crash/utils/SystemUtil;->a(I)Z

    move-result v5

    if-nez v5, :cond_2d

    check-cast v2, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    :cond_2d
    const/16 v5, 0x18

    invoke-static {v5}, Lcom/kwad/sdk/crash/utils/SystemUtil;->a(I)Z

    move-result v5
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_33} :catch_ef

    const/4 v6, 0x7

    const/4 v7, 0x5

    const/4 v8, 0x4

    const/4 v9, 0x3

    const/4 v10, 0x6

    const-string v11, "dumpMemInfo"

    const/4 v12, 0x2

    const/4 v13, 0x1

    if-eqz v5, :cond_6c

    const/16 v5, 0x8

    :try_start_40
    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v3

    aput-object v0, v5, v13

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v5, v12

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v5, v9

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v5, v8

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v5, v7

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v5, v10

    new-array v0, v3, [Ljava/lang/String;

    aput-object v0, v5, v6

    invoke-static {v1, v11, v5}, Lcom/kwad/sdk/utils/l;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c1

    :cond_6c
    const/16 v5, 0x17

    invoke-static {v5}, Lcom/kwad/sdk/crash/utils/SystemUtil;->a(I)Z

    move-result v5

    if-eqz v5, :cond_9a

    new-array v5, v6, [Ljava/lang/Object;

    aput-object v2, v5, v3

    aput-object v0, v5, v13

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v5, v12

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v5, v9

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v5, v8

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v5, v7

    new-array v0, v3, [Ljava/lang/String;

    aput-object v0, v5, v10

    invoke-static {v1, v11, v5}, Lcom/kwad/sdk/utils/l;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c1

    :cond_9a
    const/16 v5, 0x13

    invoke-static {v5}, Lcom/kwad/sdk/crash/utils/SystemUtil;->a(I)Z

    move-result v5

    if-eqz v5, :cond_c1

    new-array v5, v10, [Ljava/lang/Object;

    aput-object v2, v5, v3

    aput-object v0, v5, v13

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v5, v12

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v5, v9

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v5, v8

    new-array v0, v3, [Ljava/lang/String;

    aput-object v0, v5, v7

    invoke-static {v1, v11, v5}, Lcom/kwad/sdk/utils/l;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c1
    :goto_c1
    const/high16 v0, 0x3a000000

    invoke-static {p0, v0}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    invoke-static {v4}, Lcom/kwad/sdk/crash/utils/SystemUtil;->a(I)Z

    move-result v0

    if-nez v0, :cond_d3

    check-cast p0, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p0

    :cond_d3
    const-string v0, "dumpGfxInfo"

    new-array v2, v12, [Ljava/lang/Object;

    aput-object p0, v2, v3

    new-array p0, v13, [Ljava/lang/String;

    invoke-static {}, Lcom/kwad/sdk/crash/d;->a()Lcom/kwad/sdk/crash/d;

    move-result-object v4

    invoke-virtual {v4}, Lcom/kwad/sdk/crash/d;->f()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/kwad/sdk/crash/utils/SystemUtil;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, p0, v3

    aput-object p0, v2, v13

    invoke-static {v1, v0, v2}, Lcom/kwad/sdk/utils/l;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_ee
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_ee} :catch_ef

    goto :goto_f3

    :catch_ef
    move-exception p0

    invoke-static {p0}, Lcom/kwad/sdk/core/d/a;->b(Ljava/lang/Throwable;)V

    :goto_f3
    return-void
.end method

.method private static e(Ljava/io/File;)V
    .registers 4

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_61

    :cond_d
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "File \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "\' exists but is a directory"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2c
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_62

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_5e

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_3f

    goto :goto_5e

    :cond_3f
    new-instance p0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Directory \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' could not be created"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5e
    :goto_5e
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z

    :goto_61
    return-void

    :cond_62
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Could not find parent directory"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
