.class Lcom/tencent/smtt/sdk/o;
.super Ljava/lang/Object;


# static fields
.field static a:Z

.field private static d:Lcom/tencent/smtt/sdk/o;

.field private static g:I

.field private static h:I

.field private static i:I

.field private static k:Ljava/lang/String;


# instance fields
.field private b:Lcom/tencent/smtt/sdk/bh;

.field private c:Lcom/tencent/smtt/sdk/bh;

.field private e:Z

.field private f:Z

.field private j:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    sput-object v1, Lcom/tencent/smtt/sdk/o;->d:Lcom/tencent/smtt/sdk/o;

    sput v0, Lcom/tencent/smtt/sdk/o;->g:I

    sput v0, Lcom/tencent/smtt/sdk/o;->h:I

    sput-boolean v0, Lcom/tencent/smtt/sdk/o;->a:Z

    const/4 v0, 0x3

    sput v0, Lcom/tencent/smtt/sdk/o;->i:I

    sput-object v1, Lcom/tencent/smtt/sdk/o;->k:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/smtt/sdk/o;->b:Lcom/tencent/smtt/sdk/bh;

    iput-object v0, p0, Lcom/tencent/smtt/sdk/o;->c:Lcom/tencent/smtt/sdk/bh;

    iput-boolean v1, p0, Lcom/tencent/smtt/sdk/o;->e:Z

    iput-boolean v1, p0, Lcom/tencent/smtt/sdk/o;->f:Z

    iput-object v0, p0, Lcom/tencent/smtt/sdk/o;->j:Ljava/io/File;

    return-void
.end method

.method public static a(Z)Lcom/tencent/smtt/sdk/o;
    .registers 3

    sget-object v0, Lcom/tencent/smtt/sdk/o;->d:Lcom/tencent/smtt/sdk/o;

    if-nez v0, :cond_15

    if-eqz p0, :cond_15

    const-class v1, Lcom/tencent/smtt/sdk/o;

    monitor-enter v1

    :try_start_9
    sget-object v0, Lcom/tencent/smtt/sdk/o;->d:Lcom/tencent/smtt/sdk/o;

    if-nez v0, :cond_14

    new-instance v0, Lcom/tencent/smtt/sdk/o;

    invoke-direct {v0}, Lcom/tencent/smtt/sdk/o;-><init>()V

    sput-object v0, Lcom/tencent/smtt/sdk/o;->d:Lcom/tencent/smtt/sdk/o;

    :cond_14
    monitor-exit v1
    :try_end_15
    .catchall {:try_start_9 .. :try_end_15} :catchall_18

    :cond_15
    sget-object v0, Lcom/tencent/smtt/sdk/o;->d:Lcom/tencent/smtt/sdk/o;

    return-object v0

    :catchall_18
    move-exception v0

    :try_start_19
    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method static a(I)V
    .registers 1

    sput p0, Lcom/tencent/smtt/sdk/o;->g:I

    return-void
.end method

.method private b(I)V
    .registers 7

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    sget-object v2, Lcom/tencent/smtt/sdk/o;->k:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    :try_start_e
    new-instance v0, Ljava/io/FileOutputStream;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/tencent/smtt/sdk/o;->j:Ljava/io/File;

    const-string v4, "count.prop"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_20
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_20} :catch_21
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_20} :catch_26

    :goto_20
    return-void

    :catch_21
    move-exception v0

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_20

    :catch_26
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_20
.end method

.method public static d()I
    .registers 1

    sget v0, Lcom/tencent/smtt/sdk/o;->g:I

    return v0
.end method

.method private i()I
    .registers 6

    const/4 v0, 0x0

    const/4 v3, 0x0

    :try_start_2
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/tencent/smtt/sdk/o;->j:Ljava/io/File;

    const-string v4, "count.prop"

    invoke-direct {v1, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_12

    :cond_11
    :goto_11
    return v0

    :cond_12
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1c} :catch_3d
    .catchall {:try_start_2 .. :try_end_1c} :catchall_4d

    :try_start_1c
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    sget-object v3, Lcom/tencent/smtt/sdk/o;->k:Ljava/lang/String;

    const-string v4, "1"

    invoke-virtual {v1, v3, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_33} :catch_5c
    .catchall {:try_start_1c .. :try_end_33} :catchall_5a

    move-result v0

    :try_start_34
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_37} :catch_38

    goto :goto_11

    :catch_38
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_11

    :catch_3d
    move-exception v1

    move-object v2, v3

    :goto_3f
    :try_start_3f
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_42
    .catchall {:try_start_3f .. :try_end_42} :catchall_5a

    if-eqz v2, :cond_11

    :try_start_44
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_47} :catch_48

    goto :goto_11

    :catch_48
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_11

    :catchall_4d
    move-exception v0

    move-object v2, v3

    :goto_4f
    if-eqz v2, :cond_54

    :try_start_51
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_54} :catch_55

    :cond_54
    :goto_54
    throw v0

    :catch_55
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_54

    :catchall_5a
    move-exception v0

    goto :goto_4f

    :catch_5c
    move-exception v1

    goto :goto_3f
.end method


# virtual methods
.method public a()Lcom/tencent/smtt/sdk/bh;
    .registers 2

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/o;->e:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/tencent/smtt/sdk/o;->b:Lcom/tencent/smtt/sdk/bh;

    :goto_6
    return-object v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public declared-synchronized a(Landroid/content/Context;ZZ)V
    .registers 16

    const/4 v2, 0x1

    const/4 v1, 0x0

    monitor-enter p0

    const/16 v0, 0x3e7

    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_7
    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/tencent/smtt/utils/TbsLog;->addLog(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/tencent/smtt/utils/TbsLog;->initIfNeed(Landroid/content/Context;)V

    const-string v0, "SDKEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "init -- context: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", isPreIniting: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget v0, Lcom/tencent/smtt/sdk/o;->h:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/tencent/smtt/sdk/o;->h:I

    invoke-static {}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->getInstance()Lcom/tencent/smtt/sdk/TbsCoreLoadStat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->a()V

    invoke-static {}, Lcom/tencent/smtt/sdk/am;->a()Lcom/tencent/smtt/sdk/am;

    move-result-object v3

    sget v0, Lcom/tencent/smtt/sdk/o;->h:I

    if-ne v0, v2, :cond_9e

    move v0, v2

    :goto_43
    invoke-virtual {v3, p1, v0}, Lcom/tencent/smtt/sdk/am;->b(Landroid/content/Context;Z)V

    invoke-static {}, Lcom/tencent/smtt/sdk/am;->a()Lcom/tencent/smtt/sdk/am;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/smtt/sdk/am;->l(Landroid/content/Context;)V

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/tencent/smtt/sdk/TbsShareManager;->forceToLoadX5ForThirdApp(Landroid/content/Context;Z)V

    invoke-static {p1, p2, p3}, Lcom/tencent/smtt/sdk/QbSdk;->a(Landroid/content/Context;ZZ)Z

    move-result v4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v3, 0x7

    if-lt v0, v3, :cond_a0

    move v3, v2

    :goto_5b
    if-eqz v4, :cond_a2

    if-eqz v3, :cond_a2

    move v0, v2

    :goto_60
    if-eqz v0, :cond_96

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {}, Lcom/tencent/smtt/sdk/am;->a()Lcom/tencent/smtt/sdk/am;

    move-result-object v0

    invoke-static {}, Lcom/tencent/smtt/sdk/o;->d()I

    move-result v5

    invoke-virtual {v0, p1, v5}, Lcom/tencent/smtt/sdk/am;->e(Landroid/content/Context;I)Z

    move-result v0

    const-string v5, "SDKEngine"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "isTbsCoreLegal: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "; cost: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long v6, v10, v6

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_96
    if-eqz v0, :cond_1a9

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/o;->e:Z
    :try_end_9a
    .catchall {:try_start_7 .. :try_end_9a} :catchall_116

    if-eqz v0, :cond_a4

    :goto_9c
    monitor-exit p0

    return-void

    :cond_9e
    move v0, v1

    goto :goto_43

    :cond_a0
    move v3, v1

    goto :goto_5b

    :cond_a2
    move v0, v1

    goto :goto_60

    :cond_a4
    :try_start_a4
    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsShareManager;->isThirdPartyApp(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_123

    const/16 v0, 0x3e3

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/tencent/smtt/utils/TbsLog;->addLog(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsShareManager;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_119

    new-instance v1, Ljava/io/File;

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsShareManager;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/smtt/sdk/am;->a()Lcom/tencent/smtt/sdk/am;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/smtt/sdk/am;->r(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsShareManager;->e(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v2

    if-nez v0, :cond_156

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/smtt/sdk/o;->e:Z

    const-string v0, "SDKEngine::useSystemWebView by error_tbs_core_dexopt_dir null!"

    invoke-static {p1, v0}, Lcom/tencent/smtt/sdk/QbSdk;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_d8
    .catch Ljava/lang/Throwable; {:try_start_a4 .. :try_end_d8} :catch_d9
    .catchall {:try_start_a4 .. :try_end_d8} :catchall_116

    goto :goto_9c

    :catch_d9
    move-exception v0

    :try_start_da
    const-string v1, "SDKEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "useSystemWebView by exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->getInstance()Lcom/tencent/smtt/sdk/TbsCoreLoadStat;

    move-result-object v1

    const/16 v2, 0x147

    invoke-virtual {v1, p1, v2, v0}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->a(Landroid/content/Context;ILjava/lang/Throwable;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/tencent/smtt/sdk/o;->e:Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SDKEngine::useSystemWebView by exception: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/tencent/smtt/sdk/QbSdk;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_10c
    :goto_10c
    invoke-static {p1}, Lcom/tencent/smtt/sdk/am;->t(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/smtt/sdk/o;->j:Ljava/io/File;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/smtt/sdk/o;->f:Z
    :try_end_115
    .catchall {:try_start_da .. :try_end_115} :catchall_116

    goto :goto_9c

    :catchall_116
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_119
    const/4 v0, 0x0

    :try_start_11a
    iput-boolean v0, p0, Lcom/tencent/smtt/sdk/o;->e:Z

    const-string v0, "SDKEngine::useSystemWebView by error_host_unavailable"

    invoke-static {p1, v0}, Lcom/tencent/smtt/sdk/QbSdk;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_9c

    :cond_123
    const/16 v0, 0x3e4

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/tencent/smtt/utils/TbsLog;->addLog(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/tencent/smtt/sdk/am;->a()Lcom/tencent/smtt/sdk/am;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/smtt/sdk/am;->r(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    sget v3, Lcom/tencent/smtt/sdk/o;->g:I

    const/16 v4, 0x635c

    if-eq v3, v4, :cond_140

    sget v3, Lcom/tencent/smtt/sdk/o;->g:I

    const/16 v4, 0x635d

    if-ne v3, v4, :cond_141

    :cond_140
    move v1, v2

    :cond_141
    if-eqz v1, :cond_153

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    :goto_147
    if-nez v0, :cond_155

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/smtt/sdk/o;->e:Z

    const-string v0, "SDKEngine::useSystemWebView by tbs_core_share_dir null!"

    invoke-static {p1, v0}, Lcom/tencent/smtt/sdk/QbSdk;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_9c

    :cond_153
    move-object v2, p1

    goto :goto_147

    :cond_155
    move-object v1, v0

    :cond_156
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v2, v3}, Lcom/tencent/smtt/sdk/QbSdk;->getDexLoaderFileList(Landroid/content/Context;Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/tencent/smtt/sdk/TbsShareManager;->getHostCorePathAppDefined()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_195

    invoke-static {}, Lcom/tencent/smtt/sdk/TbsShareManager;->getHostCorePathAppDefined()Ljava/lang/String;

    move-result-object v4

    :goto_168
    const-string v0, "SDKEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "SDKEngine init optDir is "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/smtt/sdk/o;->c:Lcom/tencent/smtt/sdk/bh;

    if-eqz v0, :cond_19a

    iget-object v0, p0, Lcom/tencent/smtt/sdk/o;->c:Lcom/tencent/smtt/sdk/bh;

    iput-object v0, p0, Lcom/tencent/smtt/sdk/o;->b:Lcom/tencent/smtt/sdk/bh;

    iget-object v0, p0, Lcom/tencent/smtt/sdk/o;->b:Lcom/tencent/smtt/sdk/bh;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    sget-object v6, Lcom/tencent/smtt/sdk/QbSdk;->d:Ljava/lang/String;

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/tencent/smtt/sdk/bh;->a(Landroid/content/Context;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    :goto_190
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/smtt/sdk/o;->e:Z

    goto/16 :goto_10c

    :cond_195
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    goto :goto_168

    :cond_19a
    new-instance v0, Lcom/tencent/smtt/sdk/bh;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    sget-object v6, Lcom/tencent/smtt/sdk/QbSdk;->d:Ljava/lang/String;

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/tencent/smtt/sdk/bh;-><init>(Landroid/content/Context;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/smtt/sdk/o;->b:Lcom/tencent/smtt/sdk/bh;
    :try_end_1a8
    .catch Ljava/lang/Throwable; {:try_start_11a .. :try_end_1a8} :catch_d9
    .catchall {:try_start_11a .. :try_end_1a8} :catchall_116

    goto :goto_190

    :cond_1a9
    :try_start_1a9
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "can_load_x5="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; is_compatible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SDKEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SDKEngine.init canLoadTbs=false; failure: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v1, Lcom/tencent/smtt/sdk/QbSdk;->a:Z

    if-eqz v1, :cond_1de

    iget-boolean v1, p0, Lcom/tencent/smtt/sdk/o;->e:Z

    if-nez v1, :cond_10c

    :cond_1de
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/tencent/smtt/sdk/o;->e:Z

    invoke-static {}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->getInstance()Lcom/tencent/smtt/sdk/TbsCoreLoadStat;

    move-result-object v1

    const/16 v2, 0x195

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, v2, v3}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->a(Landroid/content/Context;ILjava/lang/Throwable;)V
    :try_end_1ef
    .catchall {:try_start_1a9 .. :try_end_1ef} :catchall_116

    goto/16 :goto_10c
.end method

.method a(Ljava/lang/String;)V
    .registers 2

    sput-object p1, Lcom/tencent/smtt/sdk/o;->k:Ljava/lang/String;

    return-void
.end method

.method public b()Z
    .registers 2

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/o;->e:Z

    return v0
.end method

.method b(Z)Z
    .registers 2

    sput-boolean p1, Lcom/tencent/smtt/sdk/o;->a:Z

    return p1
.end method

.method c()Lcom/tencent/smtt/sdk/bh;
    .registers 2

    iget-object v0, p0, Lcom/tencent/smtt/sdk/o;->b:Lcom/tencent/smtt/sdk/bh;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/tencent/smtt/sdk/o;->b:Lcom/tencent/smtt/sdk/bh;

    if-eqz v0, :cond_8

    sget-boolean v0, Lcom/tencent/smtt/sdk/QbSdk;->a:Z

    if-eqz v0, :cond_b

    :cond_8
    const-string v0, "system webview get nothing..."

    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Lcom/tencent/smtt/sdk/o;->b:Lcom/tencent/smtt/sdk/bh;

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/bh;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method f()Z
    .registers 5

    const/4 v0, 0x0

    sget-boolean v1, Lcom/tencent/smtt/sdk/o;->a:Z

    if-eqz v1, :cond_14

    sget-object v1, Lcom/tencent/smtt/sdk/o;->k:Ljava/lang/String;

    if-nez v1, :cond_a

    :cond_9
    :goto_9
    return v0

    :cond_a
    invoke-direct {p0}, Lcom/tencent/smtt/sdk/o;->i()I

    move-result v1

    if-nez v1, :cond_17

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/tencent/smtt/sdk/o;->b(I)V

    :cond_14
    :goto_14
    sget-boolean v0, Lcom/tencent/smtt/sdk/o;->a:Z

    goto :goto_9

    :cond_17
    add-int/lit8 v2, v1, 0x1

    sget v3, Lcom/tencent/smtt/sdk/o;->i:I

    if-gt v2, v3, :cond_9

    add-int/lit8 v0, v1, 0x1

    invoke-direct {p0, v0}, Lcom/tencent/smtt/sdk/o;->b(I)V

    goto :goto_14
.end method

.method g()Z
    .registers 2

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/o;->f:Z

    return v0
.end method

.method public h()Z
    .registers 2

    invoke-static {}, Lcom/tencent/smtt/sdk/QbSdk;->useSoftWare()Z

    move-result v0

    return v0
.end method
