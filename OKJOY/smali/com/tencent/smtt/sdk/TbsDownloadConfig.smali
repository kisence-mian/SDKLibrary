.class public Lcom/tencent/smtt/sdk/TbsDownloadConfig;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/smtt/sdk/TbsDownloadConfig$TbsConfigKey;
    }
.end annotation


# static fields
.field public static final CMD_ID_DOWNLOAD_FILE:I = 0x65

.field public static final CMD_ID_FILE_UPLOAD:I = 0x64

.field public static final DEFAULT_RETRY_INTERVAL_SEC:J = 0x15180L

.field public static final ERROR_DOWNLOAD:I = 0x2

.field public static final ERROR_INSTALL:I = 0x5

.field public static final ERROR_LOAD:I = 0x6

.field public static final ERROR_NONE:I = 0x1

.field public static final ERROR_REPORTED:I = 0x0

.field public static final ERROR_UNZIP:I = 0x4

.field public static final ERROR_VERIFY:I = 0x3

.field private static b:Lcom/tencent/smtt/sdk/TbsDownloadConfig;


# instance fields
.field a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/content/Context;

.field public mPreferences:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    const-string v0, "tbs_download_config"

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->c:Landroid/content/Context;

    iget-object v0, p0, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->c:Landroid/content/Context;

    if-nez v0, :cond_1f

    iput-object p1, p0, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->c:Landroid/content/Context;

    :cond_1f
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/tencent/smtt/sdk/TbsDownloadConfig;
    .registers 2

    const-class v0, Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->b:Lcom/tencent/smtt/sdk/TbsDownloadConfig;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;
    .registers 3

    const-class v1, Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->b:Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    if-nez v0, :cond_e

    new-instance v0, Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    invoke-direct {v0, p0}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->b:Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    :cond_e
    sget-object v0, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->b:Lcom/tencent/smtt/sdk/TbsDownloadConfig;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public clear()V
    .registers 2

    :try_start_0
    iget-object v0, p0, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_12

    :goto_11
    return-void

    :catch_12
    move-exception v0

    goto :goto_11
.end method

.method public declared-synchronized commit()V
    .registers 7

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    iget-object v0, p0, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_11
    :goto_11
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v4, v1, Ljava/lang/String;

    if-eqz v4, :cond_33

    check-cast v1, Ljava/lang/String;

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2c} :catch_2d
    .catchall {:try_start_1 .. :try_end_2c} :catchall_41

    goto :goto_11

    :catch_2d
    move-exception v0

    :try_start_2e
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_41

    :goto_31
    monitor-exit p0

    return-void

    :cond_33
    :try_start_33
    instance-of v4, v1, Ljava/lang/Boolean;

    if-eqz v4, :cond_44

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_40} :catch_2d
    .catchall {:try_start_33 .. :try_end_40} :catchall_41

    goto :goto_11

    :catchall_41
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_44
    :try_start_44
    instance-of v4, v1, Ljava/lang/Long;

    if-eqz v4, :cond_52

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-interface {v2, v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_11

    :cond_52
    instance-of v4, v1, Ljava/lang/Integer;

    if-eqz v4, :cond_60

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_11

    :cond_60
    instance-of v4, v1, Ljava/lang/Float;

    if-eqz v4, :cond_11

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    goto :goto_11

    :cond_6e
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_76} :catch_2d
    .catchall {:try_start_44 .. :try_end_76} :catchall_41

    goto :goto_31
.end method

.method public declared-synchronized getDownloadFailedMaxRetrytimes()I
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "tbs_download_failed_max_retrytimes"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_10

    move-result v0

    if-nez v0, :cond_e

    const/16 v0, 0x64

    :cond_e
    monitor-exit p0

    return v0

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDownloadInterruptCode()I
    .registers 9

    const/16 v3, -0x77

    monitor-enter p0

    :try_start_3
    iget-object v0, p0, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "tbs_download_interrupt_code"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_a7

    move-result v0

    if-nez v0, :cond_65

    :try_start_d
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "shared_prefs"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v2, "tbs_download_config"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_24} :catch_61
    .catchall {:try_start_d .. :try_end_24} :catchall_a7

    move-result v0

    if-nez v0, :cond_51

    const/16 v0, -0x61

    :cond_29
    :goto_29
    :try_start_29
    iget-object v1, p0, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->c:Landroid/content/Context;

    if-eqz v1, :cond_9a

    const-string v1, "com.tencent.mobileqq"

    iget-object v2, p0, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9a

    const-string v1, "CN"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_4a
    .catchall {:try_start_29 .. :try_end_4a} :catchall_a7

    move-result v1

    if-nez v1, :cond_9a

    const/16 v0, -0x140

    :goto_4f
    monitor-exit p0

    return v0

    :cond_51
    :try_start_51
    iget-object v0, p0, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "tbs_needdownload"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z
    :try_end_58
    .catch Ljava/lang/Throwable; {:try_start_51 .. :try_end_58} :catch_61
    .catchall {:try_start_51 .. :try_end_58} :catchall_a7

    move-result v0

    if-nez v0, :cond_5e

    const/16 v0, -0x60

    goto :goto_29

    :cond_5e
    const/16 v0, -0x65

    goto :goto_29

    :catch_61
    move-exception v0

    const/16 v0, -0x5f

    goto :goto_29

    :cond_65
    :try_start_65
    iget-object v0, p0, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "tbs_download_interrupt_code"

    const/16 v2, -0x63

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v3, :cond_75

    const/16 v1, -0x79

    if-ne v0, v1, :cond_7f

    :cond_75
    iget-object v0, p0, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "tbs_download_interrupt_code_reason"

    const/16 v2, -0x77

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    :cond_7f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v1, p0, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v4, "tbs_download_interrupt_time"

    const-wide/16 v6, 0x0

    invoke-interface {v1, v4, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x5265c00

    cmp-long v1, v2, v4

    if-lez v1, :cond_29

    const v1, 0x17ed0

    sub-int/2addr v0, v1

    goto :goto_29

    :cond_9a
    iget-object v1, p0, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v2, "tbs_install_interrupt_code"

    const/4 v3, -0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_a2
    .catchall {:try_start_65 .. :try_end_a2} :catchall_a7

    move-result v1

    mul-int/lit16 v0, v0, 0x3e8

    add-int/2addr v0, v1

    goto :goto_4f

    :catchall_a7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDownloadMaxflow()J
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "tbs_download_maxflow"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_16

    move-result v0

    if-nez v0, :cond_e

    const/16 v0, 0x14

    :cond_e
    shl-int/lit8 v0, v0, 0xa

    int-to-long v0, v0

    const/16 v2, 0xa

    shl-long/2addr v0, v2

    monitor-exit p0

    return-wide v0

    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDownloadMinFreeSpace()J
    .registers 5

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_2
    iget-object v1, p0, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v2, "tbs_download_min_free_space"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_a
    .catchall {:try_start_2 .. :try_end_a} :catchall_17

    move-result v1

    if-nez v1, :cond_15

    :goto_d
    shl-int/lit8 v0, v0, 0xa

    int-to-long v0, v0

    const/16 v2, 0xa

    shl-long/2addr v0, v2

    monitor-exit p0

    return-wide v0

    :cond_15
    move v0, v1

    goto :goto_d

    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDownloadSingleTimeout()J
    .registers 7

    const-wide/16 v4, 0x0

    monitor-enter p0

    :try_start_3
    iget-object v0, p0, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "tbs_single_timeout"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_16

    move-result-wide v0

    cmp-long v2, v0, v4

    if-nez v2, :cond_14

    const-wide/32 v0, 0x124f80

    :cond_14
    monitor-exit p0

    return-wide v0

    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDownloadSuccessMaxRetrytimes()I
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "tbs_download_success_max_retrytimes"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_f

    move-result v0

    if-nez v0, :cond_d

    const/4 v0, 0x3

    :cond_d
    monitor-exit p0

    return v0

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getRetryInterval()J
    .registers 5

    monitor-enter p0

    :try_start_1
    invoke-static {}, Lcom/tencent/smtt/sdk/TbsDownloader;->getRetryIntervalInSeconds()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_11

    invoke-static {}, Lcom/tencent/smtt/sdk/TbsDownloader;->getRetryIntervalInSeconds()J
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_1d

    move-result-wide v0

    :goto_f
    monitor-exit p0

    return-wide v0

    :cond_11
    :try_start_11
    iget-object v0, p0, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "retry_interval"

    const-wide/32 v2, 0x15180

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J
    :try_end_1b
    .catchall {:try_start_11 .. :try_end_1b} :catchall_1d

    move-result-wide v0

    goto :goto_f

    :catchall_1d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTbsCoreLoadRenameFileLockEnable()Z
    .registers 5

    const/4 v0, 0x1

    monitor-enter p0

    :try_start_2
    iget-object v1, p0, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v2, "tbs_core_load_rename_file_lock_enable"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_a} :catch_10
    .catchall {:try_start_2 .. :try_end_a} :catchall_d

    move-result v0

    :goto_b
    monitor-exit p0

    return v0

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_10
    move-exception v1

    goto :goto_b
.end method

.method public declared-synchronized getTbsCoreLoadRenameFileLockWaitEnable()Z
    .registers 5

    const/4 v0, 0x1

    monitor-enter p0

    :try_start_2
    iget-object v1, p0, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v2, "tbs_core_load_rename_file_lock_wait_enable"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_a} :catch_10
    .catchall {:try_start_2 .. :try_end_a} :catchall_d

    move-result v0

    :goto_b
    monitor-exit p0

    return v0

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_10
    move-exception v1

    goto :goto_b
.end method

.method public declared-synchronized isOverSea()Z
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "is_oversea"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_c

    move-result v0

    monitor-exit p0

    return v0

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDownloadInterruptCode(I)V
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "tbs_download_interrupt_code"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v1, "tbs_download_interrupt_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_18} :catch_1d
    .catchall {:try_start_1 .. :try_end_18} :catchall_1a

    :goto_18
    monitor-exit p0

    return-void

    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_1d
    move-exception v0

    goto :goto_18
.end method

.method public declared-synchronized setInstallInterruptCode(I)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "tbs_install_interrupt_code"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    monitor-exit p0

    return-void

    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setTbsCoreLoadRenameFileLockEnable(Z)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "tbs_core_load_rename_file_lock_enable"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_f} :catch_14
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    :goto_f
    monitor-exit p0

    return-void

    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_14
    move-exception v0

    goto :goto_f
.end method

.method public declared-synchronized setTbsCoreLoadRenameFileLockWaitEnable(Z)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "tbs_core_load_rename_file_lock_wait_enable"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_f} :catch_14
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    :goto_f
    monitor-exit p0

    return-void

    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_14
    move-exception v0

    goto :goto_f
.end method

.method public declared-synchronized uploadDownloadInterruptCodeIfNeeded(Landroid/content/Context;)V
    .registers 7

    monitor-enter p0

    if-eqz p1, :cond_66

    :try_start_3
    const-string v0, "com.tencent.mm"

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_66

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v2, "tbs_download_interrupt_code"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_1d} :catch_a3
    .catchall {:try_start_3 .. :try_end_1d} :catchall_a0

    move-result v1

    if-nez v1, :cond_7c

    :try_start_20
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->c:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    const-string v4, "shared_prefs"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v3, "tbs_download_config"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_37} :catch_78
    .catchall {:try_start_20 .. :try_end_37} :catchall_a0

    move-result v1

    if-nez v1, :cond_68

    const/16 v1, -0x61

    :cond_3c
    :goto_3c
    if-eqz v0, :cond_66

    :try_start_3e
    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsLogReport;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/TbsLogReport;->tbsLogInfo()Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;

    move-result-object v0

    const/16 v2, 0x80

    invoke-virtual {v0, v2}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->setErrorCode(I)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->setFailDetail(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsLogReport;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v1

    sget-object v2, Lcom/tencent/smtt/sdk/TbsLogReport$EventType;->TYPE_DOWNLOAD:Lcom/tencent/smtt/sdk/TbsLogReport$EventType;

    invoke-virtual {v1, v2, v0}, Lcom/tencent/smtt/sdk/TbsLogReport;->eventReport(Lcom/tencent/smtt/sdk/TbsLogReport$EventType;Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;)V
    :try_end_66
    .catch Ljava/lang/Throwable; {:try_start_3e .. :try_end_66} :catch_a3
    .catchall {:try_start_3e .. :try_end_66} :catchall_a0

    :cond_66
    :goto_66
    monitor-exit p0

    return-void

    :cond_68
    :try_start_68
    iget-object v1, p0, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v2, "tbs_needdownload"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z
    :try_end_6f
    .catch Ljava/lang/Throwable; {:try_start_68 .. :try_end_6f} :catch_78
    .catchall {:try_start_68 .. :try_end_6f} :catchall_a0

    move-result v1

    if-nez v1, :cond_75

    const/16 v1, -0x60

    goto :goto_3c

    :cond_75
    const/16 v1, -0x65

    goto :goto_3c

    :catch_78
    move-exception v1

    const/16 v1, -0x5f

    goto :goto_3c

    :cond_7c
    :try_start_7c
    iget-object v1, p0, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v2, "tbs_download_interrupt_code"

    const/16 v3, -0x63

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_85
    .catch Ljava/lang/Throwable; {:try_start_7c .. :try_end_85} :catch_a3
    .catchall {:try_start_7c .. :try_end_85} :catchall_a0

    move-result v1

    const/16 v2, -0xce

    if-gt v1, v2, :cond_8e

    const/16 v2, -0xdb

    if-ge v1, v2, :cond_3c

    :cond_8e
    const/16 v2, -0x12e

    if-gt v1, v2, :cond_96

    const/16 v2, -0x13c

    if-ge v1, v2, :cond_3c

    :cond_96
    const/16 v2, -0x13e

    if-gt v1, v2, :cond_9e

    const/16 v2, -0x142

    if-ge v1, v2, :cond_3c

    :cond_9e
    const/4 v0, 0x0

    goto :goto_3c

    :catchall_a0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_a3
    move-exception v0

    goto :goto_66
.end method
