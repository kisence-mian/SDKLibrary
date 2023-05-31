.class public Lcom/tencent/smtt/sdk/TbsDownloadUpload;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/smtt/sdk/TbsDownloadUpload$TbsUploadKey;
    }
.end annotation


# static fields
.field private static b:Lcom/tencent/smtt/sdk/TbsDownloadUpload;


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

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field public mPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->a:Ljava/util/Map;

    const-string v0, "tbs_download_upload"

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->mPreferences:Landroid/content/SharedPreferences;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->c:Landroid/content/Context;

    iget-object v0, p0, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->c:Landroid/content/Context;

    if-nez v0, :cond_1f

    iput-object p1, p0, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->c:Landroid/content/Context;

    :cond_1f
    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .registers 5

    const/4 v0, 0x0

    invoke-static {}, Lcom/tencent/smtt/sdk/am;->a()Lcom/tencent/smtt/sdk/am;

    invoke-static {p0}, Lcom/tencent/smtt/sdk/am;->t(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    if-nez v2, :cond_b

    :goto_a
    return-object v0

    :cond_b
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_18

    move-object v0, v1

    goto :goto_a

    :cond_18
    :try_start_18
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1b} :catch_1d

    move-object v0, v1

    goto :goto_a

    :catch_1d
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a
.end method

.method public static declared-synchronized clear()V
    .registers 2

    const-class v0, Lcom/tencent/smtt/sdk/TbsDownloadUpload;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_4
    sput-object v1, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->b:Lcom/tencent/smtt/sdk/TbsDownloadUpload;
    :try_end_6
    .catchall {:try_start_4 .. :try_end_6} :catchall_8

    monitor-exit v0

    return-void

    :catchall_8
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getInstance()Lcom/tencent/smtt/sdk/TbsDownloadUpload;
    .registers 2

    const-class v0, Lcom/tencent/smtt/sdk/TbsDownloadUpload;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->b:Lcom/tencent/smtt/sdk/TbsDownloadUpload;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadUpload;
    .registers 3

    const-class v1, Lcom/tencent/smtt/sdk/TbsDownloadUpload;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->b:Lcom/tencent/smtt/sdk/TbsDownloadUpload;

    if-nez v0, :cond_e

    new-instance v0, Lcom/tencent/smtt/sdk/TbsDownloadUpload;

    invoke-direct {v0, p0}, Lcom/tencent/smtt/sdk/TbsDownloadUpload;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->b:Lcom/tencent/smtt/sdk/TbsDownloadUpload;

    :cond_e
    sget-object v0, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->b:Lcom/tencent/smtt/sdk/TbsDownloadUpload;
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
.method public clearUploadCode()V
    .registers 5

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->a:Ljava/util/Map;

    const-string v1, "tbs_needdownload_code"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->a:Ljava/util/Map;

    const-string v1, "tbs_startdownload_code"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->a:Ljava/util/Map;

    const-string v1, "tbs_needdownload_return"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->a:Ljava/util/Map;

    const-string v1, "tbs_needdownload_sent"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->a:Ljava/util/Map;

    const-string v1, "tbs_startdownload_sent"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->a:Ljava/util/Map;

    const-string v1, "tbs_local_core_version"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->writeTbsDownloadInfo()V

    return-void
.end method

.method public declared-synchronized commit()V
    .registers 2

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->writeTbsDownloadInfo()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    monitor-exit p0

    return-void

    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLocalCoreVersion()I
    .registers 2

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->i:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getNeedDownloadCode()I
    .registers 3

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->g:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_d

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    const/16 v0, 0x94

    :goto_8
    monitor-exit p0

    return v0

    :cond_a
    :try_start_a
    iget v0, p0, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->d:I
    :try_end_c
    .catchall {:try_start_a .. :try_end_c} :catchall_d

    goto :goto_8

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getNeedDownloadReturn()I
    .registers 2

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->f:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getStartDownloadCode()I
    .registers 3

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->h:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_d

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    const/16 v0, 0xa8

    :goto_8
    monitor-exit p0

    return v0

    :cond_a
    :try_start_a
    iget v0, p0, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->e:I
    :try_end_c
    .catchall {:try_start_a .. :try_end_c} :catchall_d

    goto :goto_8

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized readTbsDownloadInfo(Landroid/content/Context;)V
    .registers 6

    monitor-enter p0

    const/4 v2, 0x0

    :try_start_2
    iget-object v0, p0, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->c:Landroid/content/Context;

    const-string v1, "download_upload"

    invoke-static {v0, v1}, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_9} :catch_d0
    .catchall {:try_start_2 .. :try_end_9} :catchall_e2

    move-result-object v0

    if-nez v0, :cond_e

    :cond_c
    :goto_c
    monitor-exit p0

    return-void

    :cond_e
    :try_start_e
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_18} :catch_d0
    .catchall {:try_start_e .. :try_end_18} :catchall_e2

    :try_start_18
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    const-string v2, "tbs_needdownload_code"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3b

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->d:I

    :cond_3b
    const-string v2, "tbs_startdownload_code"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_56

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->e:I

    :cond_56
    const-string v2, "tbs_needdownload_return"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_71

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->f:I

    :cond_71
    const-string v2, "tbs_needdownload_sent"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8c

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->g:I

    :cond_8c
    const-string v2, "tbs_startdownload_sent"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a7

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->h:I

    :cond_a7
    const-string v2, "tbs_local_core_version"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->i:I
    :try_end_c2
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_c2} :catch_f1
    .catchall {:try_start_18 .. :try_end_c2} :catchall_ef

    :cond_c2
    :try_start_c2
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_c5
    .catch Ljava/lang/Exception; {:try_start_c2 .. :try_end_c5} :catch_c7
    .catchall {:try_start_c2 .. :try_end_c5} :catchall_cd

    goto/16 :goto_c

    :catch_c7
    move-exception v0

    :try_start_c8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_cb
    .catchall {:try_start_c8 .. :try_end_cb} :catchall_cd

    goto/16 :goto_c

    :catchall_cd
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_d0
    move-exception v0

    move-object v1, v2

    :goto_d2
    :try_start_d2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_d5
    .catchall {:try_start_d2 .. :try_end_d5} :catchall_ef

    if-eqz v1, :cond_c

    :try_start_d7
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_da
    .catch Ljava/lang/Exception; {:try_start_d7 .. :try_end_da} :catch_dc
    .catchall {:try_start_d7 .. :try_end_da} :catchall_cd

    goto/16 :goto_c

    :catch_dc
    move-exception v0

    :try_start_dd
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_e0
    .catchall {:try_start_dd .. :try_end_e0} :catchall_cd

    goto/16 :goto_c

    :catchall_e2
    move-exception v0

    move-object v1, v2

    :goto_e4
    if-eqz v1, :cond_e9

    :try_start_e6
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_e9
    .catch Ljava/lang/Exception; {:try_start_e6 .. :try_end_e9} :catch_ea
    .catchall {:try_start_e6 .. :try_end_e9} :catchall_cd

    :cond_e9
    :goto_e9
    :try_start_e9
    throw v0

    :catch_ea
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_ee
    .catchall {:try_start_e9 .. :try_end_ee} :catchall_cd

    goto :goto_e9

    :catchall_ef
    move-exception v0

    goto :goto_e4

    :catch_f1
    move-exception v0

    goto :goto_d2
.end method

.method public declared-synchronized writeTbsDownloadInfo()V
    .registers 11

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_2
    const-string v0, "TbsDownloadUpload"

    const-string v2, "writeTbsDownloadInfo #1"

    invoke-static {v0, v2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_87

    :try_start_9
    iget-object v0, p0, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->c:Landroid/content/Context;

    const-string v2, "download_upload"

    invoke-static {v0, v2}, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_10} :catch_d4
    .catchall {:try_start_9 .. :try_end_10} :catchall_b5

    move-result-object v2

    if-nez v2, :cond_15

    :cond_13
    :goto_13
    monitor-exit p0

    return-void

    :cond_15
    :try_start_15
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-direct {v3, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_1f} :catch_d4
    .catchall {:try_start_15 .. :try_end_1f} :catchall_b5

    :try_start_1f
    new-instance v4, Ljava/util/Properties;

    invoke-direct {v4}, Ljava/util/Properties;-><init>()V

    invoke-virtual {v4, v3}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    iget-object v0, p0, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_31
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v6, p0, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->a:Ljava/util/Map;

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v0, v7}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string v7, "TbsDownloadUpload"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "writeTbsDownloadInfo key is "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, " value is "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_71
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_71} :catch_72
    .catchall {:try_start_1f .. :try_end_71} :catchall_cc

    goto :goto_31

    :catch_72
    move-exception v0

    move-object v2, v3

    :goto_74
    :try_start_74
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_77
    .catchall {:try_start_74 .. :try_end_77} :catchall_d1

    if-eqz v2, :cond_7c

    :try_start_79
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_7c
    .catch Ljava/lang/Exception; {:try_start_79 .. :try_end_7c} :catch_b0
    .catchall {:try_start_79 .. :try_end_7c} :catchall_87

    :cond_7c
    :goto_7c
    if-eqz v1, :cond_13

    :try_start_7e
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_7e .. :try_end_81} :catch_82
    .catchall {:try_start_7e .. :try_end_81} :catchall_87

    goto :goto_13

    :catch_82
    move-exception v0

    :try_start_83
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_86
    .catchall {:try_start_83 .. :try_end_86} :catchall_87

    goto :goto_13

    :catchall_87
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_8a
    :try_start_8a
    iget-object v0, p0, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-direct {v2, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_99
    .catch Ljava/lang/Throwable; {:try_start_8a .. :try_end_99} :catch_72
    .catchall {:try_start_8a .. :try_end_99} :catchall_cc

    const/4 v0, 0x0

    :try_start_9a
    invoke-virtual {v4, v2, v0}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_9d
    .catch Ljava/lang/Throwable; {:try_start_9a .. :try_end_9d} :catch_d7
    .catchall {:try_start_9a .. :try_end_9d} :catchall_ce

    :try_start_9d
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_a0
    .catch Ljava/lang/Exception; {:try_start_9d .. :try_end_a0} :catch_ab
    .catchall {:try_start_9d .. :try_end_a0} :catchall_87

    :goto_a0
    :try_start_a0
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_a3
    .catch Ljava/lang/Exception; {:try_start_a0 .. :try_end_a3} :catch_a5
    .catchall {:try_start_a0 .. :try_end_a3} :catchall_87

    goto/16 :goto_13

    :catch_a5
    move-exception v0

    :try_start_a6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_13

    :catch_ab
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_a0

    :catch_b0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_b4
    .catchall {:try_start_a6 .. :try_end_b4} :catchall_87

    goto :goto_7c

    :catchall_b5
    move-exception v0

    move-object v3, v1

    :goto_b7
    if-eqz v3, :cond_bc

    :try_start_b9
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_bc
    .catch Ljava/lang/Exception; {:try_start_b9 .. :try_end_bc} :catch_c2
    .catchall {:try_start_b9 .. :try_end_bc} :catchall_87

    :cond_bc
    :goto_bc
    if-eqz v1, :cond_c1

    :try_start_be
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_c1
    .catch Ljava/lang/Exception; {:try_start_be .. :try_end_c1} :catch_c7
    .catchall {:try_start_be .. :try_end_c1} :catchall_87

    :cond_c1
    :goto_c1
    :try_start_c1
    throw v0

    :catch_c2
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_bc

    :catch_c7
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_cb
    .catchall {:try_start_c1 .. :try_end_cb} :catchall_87

    goto :goto_c1

    :catchall_cc
    move-exception v0

    goto :goto_b7

    :catchall_ce
    move-exception v0

    move-object v1, v2

    goto :goto_b7

    :catchall_d1
    move-exception v0

    move-object v3, v2

    goto :goto_b7

    :catch_d4
    move-exception v0

    move-object v2, v1

    goto :goto_74

    :catch_d7
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_74
.end method
