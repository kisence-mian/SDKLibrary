.class public abstract Lcom/tencent/smtt/sdk/TbsBaseConfig;
.super Ljava/lang/Object;


# static fields
.field public static final TAG:Ljava/lang/String; = "TbsBaseConfig"


# instance fields
.field a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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


# virtual methods
.method public clear()V
    .registers 2

    iget-object v0, p0, Lcom/tencent/smtt/sdk/TbsBaseConfig;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/TbsBaseConfig;->commit()V

    return-void
.end method

.method public declared-synchronized commit()V
    .registers 2

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/TbsBaseConfig;->writeTbsDownloadInfo()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    monitor-exit p0

    return-void

    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public abstract getConfigFileName()Ljava/lang/String;
.end method

.method public init(Landroid/content/Context;)V
    .registers 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/smtt/sdk/TbsBaseConfig;->a:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/smtt/sdk/TbsBaseConfig;->b:Landroid/content/Context;

    iget-object v0, p0, Lcom/tencent/smtt/sdk/TbsBaseConfig;->b:Landroid/content/Context;

    if-nez v0, :cond_13

    iput-object p1, p0, Lcom/tencent/smtt/sdk/TbsBaseConfig;->b:Landroid/content/Context;

    :cond_13
    invoke-virtual {p0, p1}, Lcom/tencent/smtt/sdk/TbsBaseConfig;->refreshSyncMap(Landroid/content/Context;)V

    return-void
.end method

.method public declared-synchronized refreshSyncMap(Landroid/content/Context;)V
    .registers 8

    monitor-enter p0

    const/4 v2, 0x0

    :try_start_2
    iget-object v0, p0, Lcom/tencent/smtt/sdk/TbsBaseConfig;->b:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/TbsBaseConfig;->getConfigFileName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/smtt/sdk/TbsBaseConfig;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_b} :catch_6f
    .catchall {:try_start_2 .. :try_end_b} :catchall_60

    move-result-object v0

    if-nez v0, :cond_10

    :cond_e
    :goto_e
    monitor-exit p0

    return-void

    :cond_10
    :try_start_10
    iget-object v1, p0, Lcom/tencent/smtt/sdk/TbsBaseConfig;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_1f} :catch_6f
    .catchall {:try_start_10 .. :try_end_1f} :catchall_60

    :try_start_1f
    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    invoke-virtual {v2, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    invoke-virtual {v2}, Ljava/util/Properties;->stringPropertyNames()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_57

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v4, p0, Lcom/tencent/smtt/sdk/TbsBaseConfig;->a:Ljava/util/Map;

    invoke-virtual {v2, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_44} :catch_45
    .catchall {:try_start_1f .. :try_end_44} :catchall_6d

    goto :goto_2f

    :catch_45
    move-exception v0

    :goto_46
    :try_start_46
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_49
    .catchall {:try_start_46 .. :try_end_49} :catchall_6d

    if-eqz v1, :cond_e

    :try_start_4b
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_4e} :catch_4f
    .catchall {:try_start_4b .. :try_end_4e} :catchall_54

    goto :goto_e

    :catch_4f
    move-exception v0

    :try_start_50
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_53
    .catchall {:try_start_50 .. :try_end_53} :catchall_54

    goto :goto_e

    :catchall_54
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_57
    :try_start_57
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_5a} :catch_5b
    .catchall {:try_start_57 .. :try_end_5a} :catchall_54

    goto :goto_e

    :catch_5b
    move-exception v0

    :try_start_5c
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5f
    .catchall {:try_start_5c .. :try_end_5f} :catchall_54

    goto :goto_e

    :catchall_60
    move-exception v0

    move-object v1, v2

    :goto_62
    if-eqz v1, :cond_67

    :try_start_64
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_67} :catch_68
    .catchall {:try_start_64 .. :try_end_67} :catchall_54

    :cond_67
    :goto_67
    :try_start_67
    throw v0

    :catch_68
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6c
    .catchall {:try_start_67 .. :try_end_6c} :catchall_54

    goto :goto_67

    :catchall_6d
    move-exception v0

    goto :goto_62

    :catch_6f
    move-exception v0

    move-object v1, v2

    goto :goto_46
.end method

.method public declared-synchronized writeTbsDownloadInfo()V
    .registers 11

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_2
    const-string v0, "TbsBaseConfig"

    const-string v2, "writeTbsDownloadInfo #1"

    invoke-static {v0, v2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_8c

    :try_start_9
    iget-object v0, p0, Lcom/tencent/smtt/sdk/TbsBaseConfig;->b:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/TbsBaseConfig;->getConfigFileName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/smtt/sdk/TbsBaseConfig;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_12} :catch_d9
    .catchall {:try_start_9 .. :try_end_12} :catchall_ba

    move-result-object v2

    if-nez v2, :cond_17

    :cond_15
    :goto_15
    monitor-exit p0

    return-void

    :cond_17
    :try_start_17
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-direct {v3, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_21} :catch_d9
    .catchall {:try_start_17 .. :try_end_21} :catchall_ba

    :try_start_21
    new-instance v4, Ljava/util/Properties;

    invoke-direct {v4}, Ljava/util/Properties;-><init>()V

    invoke-virtual {v4, v3}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    invoke-virtual {v4}, Ljava/util/Properties;->clear()V

    iget-object v0, p0, Lcom/tencent/smtt/sdk/TbsBaseConfig;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_36
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v6, p0, Lcom/tencent/smtt/sdk/TbsBaseConfig;->a:Ljava/util/Map;

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v0, v7}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string v7, "TbsBaseConfig"

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
    :try_end_76
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_76} :catch_77
    .catchall {:try_start_21 .. :try_end_76} :catchall_d1

    goto :goto_36

    :catch_77
    move-exception v0

    move-object v2, v3

    :goto_79
    :try_start_79
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_7c
    .catchall {:try_start_79 .. :try_end_7c} :catchall_d6

    if-eqz v2, :cond_81

    :try_start_7e
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_7e .. :try_end_81} :catch_b5
    .catchall {:try_start_7e .. :try_end_81} :catchall_8c

    :cond_81
    :goto_81
    if-eqz v1, :cond_15

    :try_start_83
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_83 .. :try_end_86} :catch_87
    .catchall {:try_start_83 .. :try_end_86} :catchall_8c

    goto :goto_15

    :catch_87
    move-exception v0

    :try_start_88
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8b
    .catchall {:try_start_88 .. :try_end_8b} :catchall_8c

    goto :goto_15

    :catchall_8c
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_8f
    :try_start_8f
    iget-object v0, p0, Lcom/tencent/smtt/sdk/TbsBaseConfig;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-direct {v2, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_9e
    .catch Ljava/lang/Throwable; {:try_start_8f .. :try_end_9e} :catch_77
    .catchall {:try_start_8f .. :try_end_9e} :catchall_d1

    const/4 v0, 0x0

    :try_start_9f
    invoke-virtual {v4, v2, v0}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_a2
    .catch Ljava/lang/Throwable; {:try_start_9f .. :try_end_a2} :catch_dc
    .catchall {:try_start_9f .. :try_end_a2} :catchall_d3

    :try_start_a2
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_a5
    .catch Ljava/lang/Exception; {:try_start_a2 .. :try_end_a5} :catch_b0
    .catchall {:try_start_a2 .. :try_end_a5} :catchall_8c

    :goto_a5
    :try_start_a5
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_a8
    .catch Ljava/lang/Exception; {:try_start_a5 .. :try_end_a8} :catch_aa
    .catchall {:try_start_a5 .. :try_end_a8} :catchall_8c

    goto/16 :goto_15

    :catch_aa
    move-exception v0

    :try_start_ab
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_15

    :catch_b0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_a5

    :catch_b5
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_b9
    .catchall {:try_start_ab .. :try_end_b9} :catchall_8c

    goto :goto_81

    :catchall_ba
    move-exception v0

    move-object v3, v1

    :goto_bc
    if-eqz v3, :cond_c1

    :try_start_be
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_c1
    .catch Ljava/lang/Exception; {:try_start_be .. :try_end_c1} :catch_c7
    .catchall {:try_start_be .. :try_end_c1} :catchall_8c

    :cond_c1
    :goto_c1
    if-eqz v1, :cond_c6

    :try_start_c3
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_c6
    .catch Ljava/lang/Exception; {:try_start_c3 .. :try_end_c6} :catch_cc
    .catchall {:try_start_c3 .. :try_end_c6} :catchall_8c

    :cond_c6
    :goto_c6
    :try_start_c6
    throw v0

    :catch_c7
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_c1

    :catch_cc
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_d0
    .catchall {:try_start_c6 .. :try_end_d0} :catchall_8c

    goto :goto_c6

    :catchall_d1
    move-exception v0

    goto :goto_bc

    :catchall_d3
    move-exception v0

    move-object v1, v2

    goto :goto_bc

    :catchall_d6
    move-exception v0

    move-object v3, v2

    goto :goto_bc

    :catch_d9
    move-exception v0

    move-object v2, v1

    goto :goto_79

    :catch_dc
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_79
.end method
