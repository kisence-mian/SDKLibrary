.class public Lcom/tencent/smtt/sdk/TbsShareManager;
.super Ljava/lang/Object;


# static fields
.field private static a:Landroid/content/Context;

.field private static b:Z

.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;

.field private static e:I

.field private static f:Ljava/lang/String;

.field private static g:Z

.field private static h:Z

.field private static i:Z

.field private static j:Ljava/lang/String;

.field private static k:Z

.field private static l:Z

.field public static mHasQueryed:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    sput-object v1, Lcom/tencent/smtt/sdk/TbsShareManager;->c:Ljava/lang/String;

    sput-boolean v0, Lcom/tencent/smtt/sdk/TbsShareManager;->mHasQueryed:Z

    sput-object v1, Lcom/tencent/smtt/sdk/TbsShareManager;->d:Ljava/lang/String;

    sput v0, Lcom/tencent/smtt/sdk/TbsShareManager;->e:I

    sput-object v1, Lcom/tencent/smtt/sdk/TbsShareManager;->f:Ljava/lang/String;

    sput-boolean v0, Lcom/tencent/smtt/sdk/TbsShareManager;->g:Z

    sput-boolean v0, Lcom/tencent/smtt/sdk/TbsShareManager;->h:Z

    sput-boolean v0, Lcom/tencent/smtt/sdk/TbsShareManager;->i:Z

    sput-object v1, Lcom/tencent/smtt/sdk/TbsShareManager;->j:Ljava/lang/String;

    sput-boolean v0, Lcom/tencent/smtt/sdk/TbsShareManager;->k:Z

    sput-boolean v0, Lcom/tencent/smtt/sdk/TbsShareManager;->l:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Landroid/content/Context;Z)I
    .registers 3

    invoke-static {p0, p1}, Lcom/tencent/smtt/sdk/TbsShareManager;->b(Landroid/content/Context;Z)Z

    sget v0, Lcom/tencent/smtt/sdk/TbsShareManager;->e:I

    return v0
.end method

.method static a()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/tencent/smtt/sdk/TbsShareManager;->d:Ljava/lang/String;

    return-object v0
.end method

.method static a(Landroid/content/Context;)V
    .registers 6

    const-string v0, "TbsShareManager"

    const-string v1, "shareTbsCore #1"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_7
    new-instance v0, Lcom/tencent/smtt/sdk/TbsLinuxToolsJni;

    invoke-direct {v0, p0}, Lcom/tencent/smtt/sdk/TbsLinuxToolsJni;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/tencent/smtt/sdk/am;->a()Lcom/tencent/smtt/sdk/am;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/tencent/smtt/sdk/am;->r(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/tencent/smtt/sdk/TbsShareManager;->a(Landroid/content/Context;Lcom/tencent/smtt/sdk/TbsLinuxToolsJni;Ljava/io/File;)V

    invoke-static {}, Lcom/tencent/smtt/sdk/am;->a()Lcom/tencent/smtt/sdk/am;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/tencent/smtt/sdk/am;->s(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    const-string v2, "TbsShareManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "shareTbsCore tbsShareDir is "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "755"

    invoke-virtual {v0, v1, v2}, Lcom/tencent/smtt/sdk/TbsLinuxToolsJni;->a(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_40} :catch_41

    :goto_40
    return-void

    :catch_41
    move-exception v0

    const-string v1, "TbsShareManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "shareTbsCore tbsShareDir error is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ## "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_40
.end method

.method private static a(Landroid/content/Context;I)V
    .registers 12

    const-wide/16 v8, 0x0

    const/4 v6, 0x5

    const/4 v1, 0x0

    sget-object v0, Lcom/tencent/smtt/sdk/TbsShareManager;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsPVConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsPVConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/TbsPVConfig;->isDisableHostBackupCore()Z

    move-result v0

    if-nez v0, :cond_91

    new-array v2, v6, [Ljava/lang/String;

    const-string v0, "com.tencent.tbs"

    aput-object v0, v2, v1

    const/4 v0, 0x1

    const-string v3, "com.tencent.mm"

    aput-object v3, v2, v0

    const/4 v0, 0x2

    const-string v3, "com.tencent.mobileqq"

    aput-object v3, v2, v0

    const/4 v0, 0x3

    const-string v3, "com.qzone"

    aput-object v3, v2, v0

    const/4 v0, 0x4

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const-string v0, "TbsShareManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "find host backup core to unzip #1"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    :goto_4a
    if-ge v0, v6, :cond_91

    aget-object v3, v2, v0

    invoke-static {p0, v3}, Lcom/tencent/smtt/sdk/TbsShareManager;->getBackupCoreVersion(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    if-ne p1, v4, :cond_92

    invoke-static {p0, v3, v1}, Lcom/tencent/smtt/sdk/TbsShareManager;->getPackageContext(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/Context;

    move-result-object v4

    invoke-static {}, Lcom/tencent/smtt/sdk/am;->a()Lcom/tencent/smtt/sdk/am;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/tencent/smtt/sdk/am;->f(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_d6

    invoke-static {p0, v3}, Lcom/tencent/smtt/sdk/TbsShareManager;->getBackupCoreFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-static {p0, v4, v8, v9, p1}, Lcom/tencent/smtt/utils/a;->a(Landroid/content/Context;Ljava/io/File;JI)Z

    move-result v5

    if-eqz v5, :cond_d6

    const-string v0, "TbsShareManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "find host backup core to unzip normal coreVersion is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " packageName is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/smtt/sdk/am;->a()Lcom/tencent/smtt/sdk/am;

    move-result-object v0

    invoke-virtual {v0, p0, v4, p1}, Lcom/tencent/smtt/sdk/am;->b(Landroid/content/Context;Ljava/io/File;I)Z

    :cond_91
    :goto_91
    return-void

    :cond_92
    invoke-static {p0, v3}, Lcom/tencent/smtt/sdk/TbsShareManager;->getBackupDecoupleCoreVersion(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    if-ne p1, v4, :cond_d6

    invoke-static {p0, v3, v1}, Lcom/tencent/smtt/sdk/TbsShareManager;->getPackageContext(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/Context;

    move-result-object v4

    invoke-static {}, Lcom/tencent/smtt/sdk/am;->a()Lcom/tencent/smtt/sdk/am;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/tencent/smtt/sdk/am;->f(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_d6

    invoke-static {p0, v3}, Lcom/tencent/smtt/sdk/TbsShareManager;->getBackupDecoupleCoreFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-static {p0, v4, v8, v9, p1}, Lcom/tencent/smtt/utils/a;->a(Landroid/content/Context;Ljava/io/File;JI)Z

    move-result v5

    if-eqz v5, :cond_d6

    const-string v0, "TbsShareManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "find host backup core to unzip decouple coreVersion is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " packageName is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/smtt/sdk/am;->a()Lcom/tencent/smtt/sdk/am;

    move-result-object v0

    invoke-virtual {v0, p0, v4, p1}, Lcom/tencent/smtt/sdk/am;->b(Landroid/content/Context;Ljava/io/File;I)Z

    goto :goto_91

    :cond_d6
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_4a
.end method

.method private static a(Landroid/content/Context;Lcom/tencent/smtt/sdk/TbsLinuxToolsJni;Ljava/io/File;)V
    .registers 9

    const-string v0, "TbsShareManager"

    const-string v1, "shareAllDirsAndFiles #1"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_15

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_16

    :cond_15
    return-void

    :cond_16
    const-string v0, "TbsShareManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "shareAllDirsAndFiles dir is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "755"

    invoke-virtual {p1, v0, v1}, Lcom/tencent/smtt/sdk/TbsLinuxToolsJni;->a(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_3d
    if-ge v0, v2, :cond_15

    aget-object v3, v1, v0

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_69

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".so"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_5f

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const-string v4, "755"

    invoke-virtual {p1, v3, v4}, Lcom/tencent/smtt/sdk/TbsLinuxToolsJni;->a(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5c
    add-int/lit8 v0, v0, 0x1

    goto :goto_3d

    :cond_5f
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const-string v4, "644"

    invoke-virtual {p1, v3, v4}, Lcom/tencent/smtt/sdk/TbsLinuxToolsJni;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5c

    :cond_69
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_73

    invoke-static {p0, p1, v3}, Lcom/tencent/smtt/sdk/TbsShareManager;->a(Landroid/content/Context;Lcom/tencent/smtt/sdk/TbsLinuxToolsJni;Ljava/io/File;)V

    goto :goto_5c

    :cond_73
    const-string v3, "TbsShareManager"

    const-string v4, "unknown file type."

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_5c
.end method

.method static b(Landroid/content/Context;)V
    .registers 3

    :try_start_0
    new-instance v0, Lcom/tencent/smtt/sdk/TbsLinuxToolsJni;

    invoke-direct {v0, p0}, Lcom/tencent/smtt/sdk/TbsLinuxToolsJni;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/tencent/smtt/sdk/am;->a()Lcom/tencent/smtt/sdk/am;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/tencent/smtt/sdk/am;->q(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/tencent/smtt/sdk/TbsShareManager;->a(Landroid/content/Context;Lcom/tencent/smtt/sdk/TbsLinuxToolsJni;Ljava/io/File;)V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_10} :catch_11

    :goto_10
    return-void

    :catch_11
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_10
.end method

.method static b(Landroid/content/Context;Z)Z
    .registers 3

    invoke-static {p0}, Lcom/tencent/smtt/sdk/TbsShareManager;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    if-eqz p1, :cond_f

    const-string v0, "TbsShareManager::isShareTbsCoreAvailable forceSysWebViewInner!"

    invoke-static {p0, v0}, Lcom/tencent/smtt/sdk/QbSdk;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_f
    const/4 v0, 0x0

    goto :goto_7
.end method

.method static c(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lcom/tencent/smtt/sdk/TbsShareManager;->j(Landroid/content/Context;)Z

    sget-object v0, Lcom/tencent/smtt/sdk/TbsShareManager;->d:Ljava/lang/String;

    return-object v0
.end method

.method private static c(Landroid/content/Context;Z)V
    .registers 10

    const/4 v1, 0x0

    const/4 v0, 0x0

    const/4 v2, 0x0

    :try_start_3
    const-string v3, "core_info"

    invoke-static {p0, v3}, Lcom/tencent/smtt/sdk/TbsShareManager;->getTbsShareFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_8} :catch_77
    .catchall {:try_start_3 .. :try_end_8} :catchall_87

    move-result-object v4

    if-nez v4, :cond_16

    if-eqz v1, :cond_10

    :try_start_d
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_10} :catch_9a

    :cond_10
    :goto_10
    if-eqz v1, :cond_15

    :try_start_12
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_15} :catch_75

    :cond_15
    :goto_15
    return-void

    :cond_16
    :try_start_16
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-direct {v3, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_20} :catch_77
    .catchall {:try_start_16 .. :try_end_20} :catchall_87

    :try_start_20
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    invoke-virtual {v0, v3}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    const-string v2, "core_disabled"

    const-string v5, "false"

    invoke-virtual {v0, v2, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    if-eqz p1, :cond_5c

    invoke-static {}, Lcom/tencent/smtt/sdk/am;->a()Lcom/tencent/smtt/sdk/am;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/tencent/smtt/sdk/am;->r(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0}, Lcom/tencent/smtt/utils/b;->b(Landroid/content/Context;)I

    move-result v6

    const-string v7, "core_packagename"

    invoke-virtual {v0, v7, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string v5, "core_path"

    invoke-virtual {v0, v5, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string v2, "app_version"

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    :cond_5c
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-direct {v2, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_66
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_66} :catch_a7
    .catchall {:try_start_20 .. :try_end_66} :catchall_9f

    const/4 v1, 0x0

    :try_start_67
    invoke-virtual {v0, v2, v1}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_6a
    .catch Ljava/lang/Throwable; {:try_start_67 .. :try_end_6a} :catch_aa
    .catchall {:try_start_67 .. :try_end_6a} :catchall_a1

    if-eqz v3, :cond_6f

    :try_start_6c
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_6f} :catch_9d

    :cond_6f
    :goto_6f
    if-eqz v2, :cond_15

    :try_start_71
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_74} :catch_75

    goto :goto_15

    :catch_75
    move-exception v0

    goto :goto_15

    :catch_77
    move-exception v0

    move-object v2, v1

    :goto_79
    :try_start_79
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_7c
    .catchall {:try_start_79 .. :try_end_7c} :catchall_a4

    if-eqz v2, :cond_81

    :try_start_7e
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_7e .. :try_end_81} :catch_98

    :cond_81
    :goto_81
    if-eqz v1, :cond_15

    :try_start_83
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_83 .. :try_end_86} :catch_75

    goto :goto_15

    :catchall_87
    move-exception v0

    move-object v3, v1

    :goto_89
    if-eqz v3, :cond_8e

    :try_start_8b
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_8e
    .catch Ljava/lang/Exception; {:try_start_8b .. :try_end_8e} :catch_94

    :cond_8e
    :goto_8e
    if-eqz v1, :cond_93

    :try_start_90
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_93
    .catch Ljava/lang/Exception; {:try_start_90 .. :try_end_93} :catch_96

    :cond_93
    :goto_93
    throw v0

    :catch_94
    move-exception v2

    goto :goto_8e

    :catch_96
    move-exception v1

    goto :goto_93

    :catch_98
    move-exception v0

    goto :goto_81

    :catch_9a
    move-exception v0

    goto/16 :goto_10

    :catch_9d
    move-exception v0

    goto :goto_6f

    :catchall_9f
    move-exception v0

    goto :goto_89

    :catchall_a1
    move-exception v0

    move-object v1, v2

    goto :goto_89

    :catchall_a4
    move-exception v0

    move-object v3, v2

    goto :goto_89

    :catch_a7
    move-exception v0

    move-object v2, v3

    goto :goto_79

    :catch_aa
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_79
.end method

.method static d(Landroid/content/Context;)I
    .registers 2

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/tencent/smtt/sdk/TbsShareManager;->a(Landroid/content/Context;Z)I

    move-result v0

    return v0
.end method

.method private static d(Landroid/content/Context;Z)[Ljava/lang/String;
    .registers 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/tencent/smtt/sdk/QbSdk;->getOnlyDownload()Z

    move-result v0

    if-eqz v0, :cond_15

    new-array v0, v1, [Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    :cond_14
    :goto_14
    return-object v0

    :cond_15
    invoke-static {}, Lcom/tencent/smtt/sdk/TbsShareManager;->getCoreProviderAppList()[Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_14

    new-array v0, v1, [Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    goto :goto_14
.end method

.method static e(Landroid/content/Context;)Landroid/content/Context;
    .registers 4

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/tencent/smtt/sdk/TbsShareManager;->j(Landroid/content/Context;)Z

    sget-object v1, Lcom/tencent/smtt/sdk/TbsShareManager;->f:Ljava/lang/String;

    if-eqz v1, :cond_19

    sget-object v1, Lcom/tencent/smtt/sdk/TbsShareManager;->f:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lcom/tencent/smtt/sdk/TbsShareManager;->getPackageContext(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/tencent/smtt/sdk/am;->a()Lcom/tencent/smtt/sdk/am;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/tencent/smtt/sdk/am;->f(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1a

    :cond_19
    :goto_19
    return-object v0

    :cond_1a
    move-object v0, v1

    goto :goto_19
.end method

.method static declared-synchronized f(Landroid/content/Context;)Ljava/lang/String;
    .registers 7

    const/4 v1, 0x0

    const-class v3, Lcom/tencent/smtt/sdk/TbsShareManager;

    monitor-enter v3

    const/4 v0, 0x0

    :try_start_5
    const-string v2, "core_info"

    invoke-static {p0, v2}, Lcom/tencent/smtt/sdk/TbsShareManager;->getTbsShareFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_a} :catch_46
    .catchall {:try_start_5 .. :try_end_a} :catchall_52

    move-result-object v2

    if-nez v2, :cond_15

    if-eqz v1, :cond_12

    :try_start_f
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_12} :catch_61
    .catchall {:try_start_f .. :try_end_12} :catchall_5a

    :cond_12
    :goto_12
    move-object v0, v1

    :cond_13
    :goto_13
    monitor-exit v3

    return-object v0

    :cond_15
    :try_start_15
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_1f} :catch_46
    .catchall {:try_start_15 .. :try_end_1f} :catchall_52

    :try_start_1f
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    invoke-virtual {v0, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    const-string v4, "core_packagename"

    const-string v5, ""

    invoke-virtual {v0, v4, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, ""

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_34} :catch_67
    .catchall {:try_start_1f .. :try_end_34} :catchall_65

    move-result v4

    if-nez v4, :cond_3f

    if-eqz v2, :cond_13

    :try_start_39
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_3c} :catch_3d
    .catchall {:try_start_39 .. :try_end_3c} :catchall_5a

    goto :goto_13

    :catch_3d
    move-exception v1

    goto :goto_13

    :cond_3f
    if-eqz v2, :cond_44

    :try_start_41
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_44} :catch_63
    .catchall {:try_start_41 .. :try_end_44} :catchall_5a

    :cond_44
    :goto_44
    move-object v0, v1

    goto :goto_13

    :catch_46
    move-exception v0

    move-object v2, v1

    :goto_48
    :try_start_48
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4b
    .catchall {:try_start_48 .. :try_end_4b} :catchall_65

    if-eqz v2, :cond_50

    :try_start_4d
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_50} :catch_5f
    .catchall {:try_start_4d .. :try_end_50} :catchall_5a

    :cond_50
    :goto_50
    move-object v0, v1

    goto :goto_13

    :catchall_52
    move-exception v0

    move-object v2, v1

    :goto_54
    if-eqz v2, :cond_59

    :try_start_56
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_59} :catch_5d
    .catchall {:try_start_56 .. :try_end_59} :catchall_5a

    :cond_59
    :goto_59
    :try_start_59
    throw v0
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_5a

    :catchall_5a
    move-exception v0

    monitor-exit v3

    throw v0

    :catch_5d
    move-exception v1

    goto :goto_59

    :catch_5f
    move-exception v0

    goto :goto_50

    :catch_61
    move-exception v0

    goto :goto_12

    :catch_63
    move-exception v0

    goto :goto_44

    :catchall_65
    move-exception v0

    goto :goto_54

    :catch_67
    move-exception v0

    goto :goto_48
.end method

.method public static findCoreForThirdPartyApp(Landroid/content/Context;)I
    .registers 7

    const/4 v1, 0x0

    const/4 v5, 0x0

    invoke-static {p0}, Lcom/tencent/smtt/sdk/TbsShareManager;->n(Landroid/content/Context;)V

    const-string v0, "TbsShareManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "core_info mAvailableCoreVersion is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v3, Lcom/tencent/smtt/sdk/TbsShareManager;->e:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mAvailableCorePath is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/tencent/smtt/sdk/TbsShareManager;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mSrcPackageName is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/tencent/smtt/sdk/TbsShareManager;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/smtt/sdk/TbsShareManager;->f:Ljava/lang/String;

    if-nez v0, :cond_3e

    const-string v0, "TbsShareManager"

    const-string v2, "mSrcPackageName is null !!!"

    invoke-static {v0, v2}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3e
    sget-object v0, Lcom/tencent/smtt/sdk/TbsShareManager;->f:Ljava/lang/String;

    if-eqz v0, :cond_c5

    sget-object v0, Lcom/tencent/smtt/sdk/TbsShareManager;->f:Ljava/lang/String;

    const-string v2, "AppDefined"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c5

    sget v0, Lcom/tencent/smtt/sdk/TbsShareManager;->e:I

    invoke-static {}, Lcom/tencent/smtt/sdk/am;->a()Lcom/tencent/smtt/sdk/am;

    move-result-object v2

    sget-object v3, Lcom/tencent/smtt/sdk/TbsShareManager;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/tencent/smtt/sdk/am;->a(Ljava/lang/String;)I

    move-result v2

    if-eq v0, v2, :cond_8a

    sput v1, Lcom/tencent/smtt/sdk/TbsShareManager;->e:I

    sput-object v5, Lcom/tencent/smtt/sdk/TbsShareManager;->d:Ljava/lang/String;

    sput-object v5, Lcom/tencent/smtt/sdk/TbsShareManager;->f:Ljava/lang/String;

    const-string v0, "TbsShareManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "check AppDefined core is error src is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v3, Lcom/tencent/smtt/sdk/TbsShareManager;->e:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " dest is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/tencent/smtt/sdk/am;->a()Lcom/tencent/smtt/sdk/am;

    move-result-object v3

    sget-object v4, Lcom/tencent/smtt/sdk/TbsShareManager;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/tencent/smtt/sdk/am;->a(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8a
    :goto_8a
    sget v0, Lcom/tencent/smtt/sdk/TbsShareManager;->e:I

    if-lez v0, :cond_c2

    const-string v0, "com.tencent.android.qqdownloader"

    const-string v2, "com.jd.jrapp"

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v4, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a6

    iget-object v0, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_df

    :cond_a6
    const/4 v0, 0x1

    :goto_a7
    if-nez v0, :cond_e1

    sget v0, Lcom/tencent/smtt/sdk/TbsShareManager;->e:I

    invoke-static {p0, v0}, Lcom/tencent/smtt/sdk/QbSdk;->a(Landroid/content/Context;I)Z

    move-result v0

    :goto_af
    if-nez v0, :cond_b5

    sget-boolean v0, Lcom/tencent/smtt/sdk/TbsShareManager;->g:Z

    if-eqz v0, :cond_c2

    :cond_b5
    sput v1, Lcom/tencent/smtt/sdk/TbsShareManager;->e:I

    sput-object v5, Lcom/tencent/smtt/sdk/TbsShareManager;->d:Ljava/lang/String;

    sput-object v5, Lcom/tencent/smtt/sdk/TbsShareManager;->f:Ljava/lang/String;

    const-string v0, "TbsShareManager"

    const-string v1, "core_info error QbSdk.isX5Disabled "

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c2
    sget v0, Lcom/tencent/smtt/sdk/TbsShareManager;->e:I

    return v0

    :cond_c5
    invoke-static {p0}, Lcom/tencent/smtt/sdk/TbsShareManager;->k(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_8a

    invoke-static {p0}, Lcom/tencent/smtt/sdk/TbsShareManager;->l(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_8a

    sput v1, Lcom/tencent/smtt/sdk/TbsShareManager;->e:I

    sput-object v5, Lcom/tencent/smtt/sdk/TbsShareManager;->d:Ljava/lang/String;

    sput-object v5, Lcom/tencent/smtt/sdk/TbsShareManager;->f:Ljava/lang/String;

    const-string v0, "TbsShareManager"

    const-string v2, "core_info error checkCoreInfo is false and checkCoreInOthers is false "

    invoke-static {v0, v2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8a

    :cond_df
    move v0, v1

    goto :goto_a7

    :cond_e1
    move v0, v1

    goto :goto_af
.end method

.method public static forceLoadX5FromTBSDemo(Landroid/content/Context;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_f

    invoke-static {}, Lcom/tencent/smtt/sdk/am;->a()Lcom/tencent/smtt/sdk/am;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v3}, Lcom/tencent/smtt/sdk/am;->a(Landroid/content/Context;[Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_11

    :cond_f
    move v0, v1

    :goto_10
    return v0

    :cond_11
    const-string v2, "com.tencent.tbs"

    invoke-static {p0, v2}, Lcom/tencent/smtt/sdk/TbsShareManager;->getSharedTbsCoreVersion(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_37

    const-string v1, "com.tencent.tbs"

    invoke-static {p0, v1, v0}, Lcom/tencent/smtt/sdk/TbsShareManager;->getPackageContext(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/tencent/smtt/sdk/am;->a()Lcom/tencent/smtt/sdk/am;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/tencent/smtt/sdk/am;->r(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.tencent.tbs"

    const-string v4, "1"

    invoke-static {p0, v2, v3, v1, v4}, Lcom/tencent/smtt/sdk/TbsShareManager;->writeProperties(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10

    :cond_37
    move v0, v1

    goto :goto_10
.end method

.method public static forceToLoadX5ForThirdApp(Landroid/content/Context;Z)V
    .registers 12

    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Lcom/tencent/smtt/sdk/QbSdk;->isNeedInitX5FirstTime()Z

    move-result v1

    if-nez v1, :cond_8

    :cond_7
    :goto_7
    return-void

    :cond_8
    invoke-static {p0}, Lcom/tencent/smtt/sdk/TbsShareManager;->isThirdPartyApp(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {}, Lcom/tencent/smtt/sdk/QbSdk;->getOnlyDownload()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-static {}, Lcom/tencent/smtt/sdk/am;->a()Lcom/tencent/smtt/sdk/am;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/tencent/smtt/sdk/am;->s(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_7

    if-eqz p1, :cond_2d

    new-instance v2, Ljava/io/File;

    const-string v3, "core_info"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_7

    :cond_2d
    sget-object v1, Lcom/tencent/smtt/sdk/TbsShareManager;->c:Ljava/lang/String;

    if-eqz v1, :cond_87

    invoke-static {}, Lcom/tencent/smtt/sdk/am;->a()Lcom/tencent/smtt/sdk/am;

    move-result-object v1

    sget-object v2, Lcom/tencent/smtt/sdk/TbsShareManager;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/tencent/smtt/sdk/am;->a(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_87

    sget-object v0, Lcom/tencent/smtt/sdk/TbsShareManager;->c:Ljava/lang/String;

    sput-object v0, Lcom/tencent/smtt/sdk/TbsShareManager;->d:Ljava/lang/String;

    const-string v0, "AppDefined"

    sput-object v0, Lcom/tencent/smtt/sdk/TbsShareManager;->f:Ljava/lang/String;

    sput v1, Lcom/tencent/smtt/sdk/TbsShareManager;->e:I

    const-string v0, "TbsShareManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "forceToLoadX5ForThirdApp #1 -- mAvailableCoreVersion: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/tencent/smtt/sdk/TbsShareManager;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/Throwable;

    const-string v3, "#"

    invoke-direct {v2, v3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget v0, Lcom/tencent/smtt/sdk/TbsShareManager;->e:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/tencent/smtt/sdk/TbsShareManager;->f:Ljava/lang/String;

    sget-object v2, Lcom/tencent/smtt/sdk/TbsShareManager;->d:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v0, v1, v2, v3}, Lcom/tencent/smtt/sdk/TbsShareManager;->writeProperties(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :catch_85
    move-exception v0

    goto :goto_7

    :cond_87
    const-string v1, "TbsShareManager"

    const-string v2, "forceToLoadX5ForThirdApp #1"

    invoke-static {v1, v2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/tencent/smtt/sdk/TbsShareManager;->h(Landroid/content/Context;)I

    move-result v2

    invoke-static {}, Lcom/tencent/smtt/sdk/am;->a()Lcom/tencent/smtt/sdk/am;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/tencent/smtt/sdk/am;->j(Landroid/content/Context;)I

    move-result v3

    const-string v1, "TbsShareManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "forceToLoadX5ForThirdApp coreVersionFromConfig is "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "TbsShareManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "forceToLoadX5ForThirdApp coreVersionFromCoreShare is "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/smtt/sdk/TbsShareManager;->getCoreProviderAppList()[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    move v1, v0

    :goto_c8
    if-ge v1, v5, :cond_148

    aget-object v6, v4, v1

    invoke-static {p0, v6}, Lcom/tencent/smtt/sdk/TbsShareManager;->getCoreShareDecoupleCoreVersion(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    if-lt v7, v2, :cond_145

    if-lt v7, v3, :cond_145

    if-lez v7, :cond_145

    const/4 v8, 0x1

    invoke-static {p0, v6, v8}, Lcom/tencent/smtt/sdk/TbsShareManager;->getPackageContext(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/Context;

    move-result-object v8

    invoke-static {}, Lcom/tencent/smtt/sdk/am;->a()Lcom/tencent/smtt/sdk/am;

    move-result-object v9

    invoke-virtual {v9, p0, v8}, Lcom/tencent/smtt/sdk/am;->c(Landroid/content/Context;Landroid/content/Context;)Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    sput-object v8, Lcom/tencent/smtt/sdk/TbsShareManager;->d:Ljava/lang/String;

    sput-object v6, Lcom/tencent/smtt/sdk/TbsShareManager;->f:Ljava/lang/String;

    sput v7, Lcom/tencent/smtt/sdk/TbsShareManager;->e:I

    const-string v6, "TbsShareManager"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "forceToLoadX5ForThirdApp #2 -- mAvailableCoreVersion: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v8, Lcom/tencent/smtt/sdk/TbsShareManager;->e:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    new-instance v8, Ljava/lang/Throwable;

    const-string v9, "#"

    invoke-direct {v8, v9}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {v8}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/tencent/smtt/sdk/QbSdk;->canLoadX5FirstTimeThirdApp(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_13c

    invoke-static {p0}, Lcom/tencent/smtt/utils/b;->b(Landroid/content/Context;)I

    move-result v0

    const-string v1, "TbsShareManager"

    const-string v2, "forceToLoadX5ForThirdApp #2"

    invoke-static {v1, v2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget v1, Lcom/tencent/smtt/sdk/TbsShareManager;->e:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/tencent/smtt/sdk/TbsShareManager;->f:Ljava/lang/String;

    sget-object v3, Lcom/tencent/smtt/sdk/TbsShareManager;->d:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v1, v2, v3, v0}, Lcom/tencent/smtt/sdk/TbsShareManager;->writeProperties(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_13c
    const/4 v6, 0x0

    sput v6, Lcom/tencent/smtt/sdk/TbsShareManager;->e:I

    const/4 v6, 0x0

    sput-object v6, Lcom/tencent/smtt/sdk/TbsShareManager;->d:Ljava/lang/String;

    const/4 v6, 0x0

    sput-object v6, Lcom/tencent/smtt/sdk/TbsShareManager;->f:Ljava/lang/String;

    :cond_145
    add-int/lit8 v1, v1, 0x1

    goto :goto_c8

    :cond_148
    array-length v5, v4

    move v1, v0

    :goto_14a
    if-ge v1, v5, :cond_1c3

    aget-object v6, v4, v1

    invoke-static {p0, v6}, Lcom/tencent/smtt/sdk/TbsShareManager;->getSharedTbsCoreVersion(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    if-lt v7, v2, :cond_1c0

    if-lt v7, v3, :cond_1c0

    if-lez v7, :cond_1c0

    const/4 v8, 0x1

    invoke-static {p0, v6, v8}, Lcom/tencent/smtt/sdk/TbsShareManager;->getPackageContext(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/Context;

    move-result-object v8

    invoke-static {}, Lcom/tencent/smtt/sdk/am;->a()Lcom/tencent/smtt/sdk/am;

    move-result-object v9

    invoke-virtual {v9, p0, v8}, Lcom/tencent/smtt/sdk/am;->b(Landroid/content/Context;Landroid/content/Context;)Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    sput-object v8, Lcom/tencent/smtt/sdk/TbsShareManager;->d:Ljava/lang/String;

    sput-object v6, Lcom/tencent/smtt/sdk/TbsShareManager;->f:Ljava/lang/String;

    sput v7, Lcom/tencent/smtt/sdk/TbsShareManager;->e:I

    const-string v6, "TbsShareManager"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "forceToLoadX5ForThirdApp #3 -- mAvailableCoreVersion: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v8, Lcom/tencent/smtt/sdk/TbsShareManager;->e:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    new-instance v8, Ljava/lang/Throwable;

    const-string v9, "#"

    invoke-direct {v8, v9}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {v8}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/tencent/smtt/sdk/QbSdk;->canLoadX5FirstTimeThirdApp(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_1b7

    invoke-static {p0}, Lcom/tencent/smtt/utils/b;->b(Landroid/content/Context;)I

    move-result v0

    sget v1, Lcom/tencent/smtt/sdk/TbsShareManager;->e:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/tencent/smtt/sdk/TbsShareManager;->f:Ljava/lang/String;

    sget-object v3, Lcom/tencent/smtt/sdk/TbsShareManager;->d:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v1, v2, v3, v0}, Lcom/tencent/smtt/sdk/TbsShareManager;->writeProperties(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_1b7
    const/4 v6, 0x0

    sput v6, Lcom/tencent/smtt/sdk/TbsShareManager;->e:I

    const/4 v6, 0x0

    sput-object v6, Lcom/tencent/smtt/sdk/TbsShareManager;->d:Ljava/lang/String;

    const/4 v6, 0x0

    sput-object v6, Lcom/tencent/smtt/sdk/TbsShareManager;->f:Ljava/lang/String;

    :cond_1c0
    add-int/lit8 v1, v1, 0x1

    goto :goto_14a

    :cond_1c3
    sget-object v1, Lcom/tencent/smtt/sdk/TbsShareManager;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/smtt/sdk/TbsPVConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsPVConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/smtt/sdk/TbsPVConfig;->isDisableHostBackupCore()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v5

    if-eq v1, v5, :cond_25d

    array-length v1, v4

    :goto_1de
    if-ge v0, v1, :cond_7

    aget-object v5, v4, v0

    invoke-static {p0, v5}, Lcom/tencent/smtt/sdk/TbsShareManager;->getBackupCoreVersion(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    if-lt v6, v2, :cond_21e

    if-lt v6, v3, :cond_21e

    if-lez v6, :cond_21e

    const-string v0, "TbsShareManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "find host backup core to unzip forceload coreVersion is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " packageName is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v5}, Lcom/tencent/smtt/sdk/TbsShareManager;->getBackupCoreFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {}, Lcom/tencent/smtt/sdk/am;->a()Lcom/tencent/smtt/sdk/am;

    move-result-object v1

    invoke-virtual {v1, p0, v0, v6}, Lcom/tencent/smtt/sdk/am;->a(Landroid/content/Context;Ljava/io/File;I)V

    const-string v0, "TbsShareManager"

    const-string v1, "find host backup core to unzip forceload after unzip "

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_21e
    invoke-static {p0, v5}, Lcom/tencent/smtt/sdk/TbsShareManager;->getBackupDecoupleCoreVersion(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    if-lt v6, v2, :cond_25a

    if-lt v6, v3, :cond_25a

    if-lez v6, :cond_25a

    const-string v0, "TbsShareManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "find host backup core to unzip forceload decouple coreVersion is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " packageName is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v5}, Lcom/tencent/smtt/sdk/TbsShareManager;->getBackupCoreFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {}, Lcom/tencent/smtt/sdk/am;->a()Lcom/tencent/smtt/sdk/am;

    move-result-object v1

    invoke-virtual {v1, p0, v0, v6}, Lcom/tencent/smtt/sdk/am;->a(Landroid/content/Context;Ljava/io/File;I)V

    const-string v0, "TbsShareManager"

    const-string v1, "find host backup decouple core to unzip forceload after unzip "

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_25a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1de

    :cond_25d
    const-string v0, "TbsShareManager"

    const-string v1, "in mainthread so do not find host backup core to install "

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_264
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_264} :catch_85

    goto/16 :goto_7
.end method

.method static g(Landroid/content/Context;)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0}, Lcom/tencent/smtt/sdk/TbsShareManager;->n(Landroid/content/Context;)V

    sget-object v1, Lcom/tencent/smtt/sdk/TbsShareManager;->d:Ljava/lang/String;

    if-eqz v1, :cond_10

    sget-object v1, Lcom/tencent/smtt/sdk/TbsShareManager;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_11

    :cond_10
    :goto_10
    return-object v0

    :cond_11
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/tencent/smtt/sdk/TbsShareManager;->d:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "res.apk"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_22} :catch_27

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    :catch_27
    move-exception v1

    const-string v2, ""

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getTbsResourcesPath exception: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10
.end method

.method public static getBackupCoreFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0, p1, v0}, Lcom/tencent/smtt/sdk/TbsShareManager;->getPackageContext(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    const/4 v2, 0x4

    invoke-static {v0, v2}, Lcom/tencent/smtt/utils/k;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    const-string v2, "x5.tbs.org"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_19} :catch_1d

    move-result v1

    if-eqz v1, :cond_1e

    :goto_1c
    return-object v0

    :catch_1d
    move-exception v0

    :cond_1e
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method public static getBackupCoreVersion(Landroid/content/Context;Ljava/lang/String;)I
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_2
    invoke-static {p0, p1, v1}, Lcom/tencent/smtt/sdk/TbsShareManager;->getPackageContext(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    const/4 v3, 0x4

    invoke-static {v1, v3}, Lcom/tencent/smtt/utils/k;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    const-string v3, "x5.tbs.org"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-static {v1}, Lcom/tencent/smtt/utils/a;->b(Ljava/io/File;)I
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_20} :catch_22

    move-result v0

    :cond_21
    :goto_21
    return v0

    :catch_22
    move-exception v1

    goto :goto_21
.end method

.method public static getBackupDecoupleCoreFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .registers 5

    const/4 v0, 0x1

    :try_start_1
    invoke-static {p0, p1, v0}, Lcom/tencent/smtt/sdk/TbsShareManager;->getPackageContext(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    const/4 v2, 0x4

    invoke-static {v0, v2}, Lcom/tencent/smtt/utils/k;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    const-string v2, "x5.tbs.decouple"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_19} :catch_1d

    move-result v1

    if-eqz v1, :cond_1e

    :goto_1c
    return-object v0

    :catch_1d
    move-exception v0

    :cond_1e
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method public static getBackupDecoupleCoreVersion(Landroid/content/Context;Ljava/lang/String;)I
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_2
    invoke-static {p0, p1, v1}, Lcom/tencent/smtt/sdk/TbsShareManager;->getPackageContext(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    const/4 v3, 0x4

    invoke-static {v1, v3}, Lcom/tencent/smtt/utils/k;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    const-string v3, "x5.tbs.decouple"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-static {v1}, Lcom/tencent/smtt/utils/a;->b(Ljava/io/File;)I
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_20} :catch_22

    move-result v0

    :cond_21
    :goto_21
    return v0

    :catch_22
    move-exception v1

    goto :goto_21
.end method

.method public static getCoreDisabled()Z
    .registers 1

    sget-boolean v0, Lcom/tencent/smtt/sdk/TbsShareManager;->g:Z

    return v0
.end method

.method public static getCoreFormOwn()Z
    .registers 1

    sget-boolean v0, Lcom/tencent/smtt/sdk/TbsShareManager;->k:Z

    return v0
.end method

.method public static getCoreProviderAppList()[Ljava/lang/String;
    .registers 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.tencent.tbs"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.tencent.mm"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.tencent.mobileqq"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.qzone"

    aput-object v2, v0, v1

    return-object v0
.end method

.method public static getCoreShareDecoupleCoreVersion(Landroid/content/Context;Ljava/lang/String;)I
    .registers 4

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/tencent/smtt/sdk/TbsShareManager;->getPackageContext(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-static {}, Lcom/tencent/smtt/sdk/am;->a()Lcom/tencent/smtt/sdk/am;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/smtt/sdk/am;->i(Landroid/content/Context;)I

    move-result v0

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public static getHostCorePathAppDefined()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/tencent/smtt/sdk/TbsShareManager;->c:Ljava/lang/String;

    return-object v0
.end method

.method public static getHostCoreVersions(Landroid/content/Context;)J
    .registers 12

    const-wide/16 v2, 0x0

    invoke-static {}, Lcom/tencent/smtt/sdk/TbsShareManager;->getCoreProviderAppList()[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    const/4 v0, 0x0

    move v10, v0

    move-wide v0, v2

    move v2, v10

    :goto_b
    if-ge v2, v5, :cond_48

    aget-object v3, v4, v2

    const-string v6, "com.tencent.mm"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_26

    invoke-static {p0, v3}, Lcom/tencent/smtt/sdk/TbsShareManager;->getSharedTbsCoreVersion(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    int-to-long v6, v3

    const-wide v8, 0x2540be400L

    mul-long/2addr v6, v8

    add-long/2addr v0, v6

    :cond_23
    :goto_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_26
    const-string v6, "com.tencent.mobileqq"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_39

    invoke-static {p0, v3}, Lcom/tencent/smtt/sdk/TbsShareManager;->getSharedTbsCoreVersion(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    int-to-long v6, v3

    const-wide/32 v8, 0x186a0

    mul-long/2addr v6, v8

    add-long/2addr v0, v6

    goto :goto_23

    :cond_39
    const-string v6, "com.qzone"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_23

    invoke-static {p0, v3}, Lcom/tencent/smtt/sdk/TbsShareManager;->getSharedTbsCoreVersion(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    int-to-long v6, v3

    add-long/2addr v0, v6

    goto :goto_23

    :cond_48
    return-wide v0
.end method

.method public static getPackageContext(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/Context;
    .registers 6

    const/4 v0, 0x0

    if-eqz p2, :cond_1f

    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    invoke-static {p0}, Lcom/tencent/smtt/sdk/TbsPVConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsPVConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/smtt/sdk/TbsPVConfig;->isEnableNoCoreGray()Z

    move-result v1

    if-eqz v1, :cond_1f

    const-string v1, "TbsShareManager"

    const-string v2, "gray no core app,skip get context"

    invoke-static {v1, v2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1e
    return-object v0

    :cond_1f
    const/4 v1, 0x2

    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_23
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_23} :catch_2a
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_23} :catch_25

    move-result-object v0

    goto :goto_1e

    :catch_25
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1e

    :catch_2a
    move-exception v1

    goto :goto_1e
.end method

.method public static getSharedTbsCoreVersion(Landroid/content/Context;Ljava/lang/String;)I
    .registers 4

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/tencent/smtt/sdk/TbsShareManager;->getPackageContext(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-static {}, Lcom/tencent/smtt/sdk/am;->a()Lcom/tencent/smtt/sdk/am;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/smtt/sdk/am;->j(Landroid/content/Context;)I

    move-result v0

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public static getTbsShareFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .registers 5

    const/4 v0, 0x0

    invoke-static {}, Lcom/tencent/smtt/sdk/am;->a()Lcom/tencent/smtt/sdk/am;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/tencent/smtt/sdk/am;->s(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    if-nez v2, :cond_c

    :goto_b
    return-object v0

    :cond_c
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_19

    move-object v0, v1

    goto :goto_b

    :cond_19
    :try_start_19
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_1c} :catch_1e

    move-object v0, v1

    goto :goto_b

    :catch_1e
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b
.end method

.method static declared-synchronized h(Landroid/content/Context;)I
    .registers 7

    const/4 v0, 0x0

    const-class v3, Lcom/tencent/smtt/sdk/TbsShareManager;

    monitor-enter v3

    :try_start_4
    const-string v1, "TbsShareManager"

    const-string v2, "readCoreVersionFromConfig #1"

    invoke-static {v1, v2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_5f

    const/4 v1, 0x0

    :try_start_c
    const-string v2, "core_info"

    invoke-static {p0, v2}, Lcom/tencent/smtt/sdk/TbsShareManager;->getTbsShareFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    if-nez v2, :cond_22

    const-string v2, "TbsShareManager"

    const-string v4, "readCoreVersionFromConfig #2"

    invoke-static {v2, v4}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_1b} :catch_74
    .catchall {:try_start_c .. :try_end_1b} :catchall_86

    if-eqz v1, :cond_20

    :try_start_1d
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_20} :catch_98
    .catchall {:try_start_1d .. :try_end_20} :catchall_5f

    :cond_20
    :goto_20
    monitor-exit v3

    return v0

    :cond_22
    :try_start_22
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_2c} :catch_74
    .catchall {:try_start_22 .. :try_end_2c} :catchall_86

    :try_start_2c
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    const-string v4, "core_version"

    const-string v5, ""

    invoke-virtual {v1, v4, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, ""

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_62

    const-string v0, "TbsShareManager"

    const-string v4, "readCoreVersionFromConfig #3"

    invoke-static {v0, v4}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I
    :try_end_53
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_53} :catch_a2
    .catchall {:try_start_2c .. :try_end_53} :catchall_9d

    move-result v0

    if-eqz v2, :cond_20

    :try_start_56
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_59} :catch_5a
    .catchall {:try_start_56 .. :try_end_59} :catchall_5f

    goto :goto_20

    :catch_5a
    move-exception v1

    :try_start_5b
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5e
    .catchall {:try_start_5b .. :try_end_5e} :catchall_5f

    goto :goto_20

    :catchall_5f
    move-exception v0

    monitor-exit v3

    throw v0

    :cond_62
    :try_start_62
    const-string v1, "TbsShareManager"

    const-string v4, "readCoreVersionFromConfig #4"

    invoke-static {v1, v4}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_69
    .catch Ljava/lang/Throwable; {:try_start_62 .. :try_end_69} :catch_a2
    .catchall {:try_start_62 .. :try_end_69} :catchall_9d

    if-eqz v2, :cond_20

    :try_start_6b
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_6e} :catch_6f
    .catchall {:try_start_6b .. :try_end_6e} :catchall_5f

    goto :goto_20

    :catch_6f
    move-exception v1

    :try_start_70
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_73
    .catchall {:try_start_70 .. :try_end_73} :catchall_5f

    goto :goto_20

    :catch_74
    move-exception v0

    :goto_75
    :try_start_75
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_78
    .catchall {:try_start_75 .. :try_end_78} :catchall_9f

    if-eqz v1, :cond_7d

    :try_start_7a
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_7a .. :try_end_7d} :catch_93
    .catchall {:try_start_7a .. :try_end_7d} :catchall_5f

    :cond_7d
    :goto_7d
    :try_start_7d
    const-string v0, "TbsShareManager"

    const-string v1, "readCoreVersionFromConfig #5"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_84
    .catchall {:try_start_7d .. :try_end_84} :catchall_5f

    const/4 v0, -0x2

    goto :goto_20

    :catchall_86
    move-exception v0

    move-object v2, v1

    :goto_88
    if-eqz v2, :cond_8d

    :try_start_8a
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_8a .. :try_end_8d} :catch_8e
    .catchall {:try_start_8a .. :try_end_8d} :catchall_5f

    :cond_8d
    :goto_8d
    :try_start_8d
    throw v0

    :catch_8e
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8d

    :catch_93
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7d

    :catch_98
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_9c
    .catchall {:try_start_8d .. :try_end_9c} :catchall_5f

    goto :goto_20

    :catchall_9d
    move-exception v0

    goto :goto_88

    :catchall_9f
    move-exception v0

    move-object v2, v1

    goto :goto_88

    :catch_a2
    move-exception v0

    move-object v1, v2

    goto :goto_75
.end method

.method static i(Landroid/content/Context;)Z
    .registers 10

    const/4 v1, 0x1

    const/4 v8, 0x0

    const/4 v0, 0x0

    :try_start_3
    sget v2, Lcom/tencent/smtt/sdk/TbsShareManager;->e:I

    if-nez v2, :cond_a

    invoke-static {p0}, Lcom/tencent/smtt/sdk/TbsShareManager;->findCoreForThirdPartyApp(Landroid/content/Context;)I

    :cond_a
    sget v2, Lcom/tencent/smtt/sdk/TbsShareManager;->e:I

    if-nez v2, :cond_18

    const/16 v1, 0x3e2

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/tencent/smtt/utils/TbsLog;->addLog(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_17
    return v0

    :cond_18
    sget-object v2, Lcom/tencent/smtt/sdk/TbsShareManager;->c:Ljava/lang/String;

    if-nez v2, :cond_2c

    sget v2, Lcom/tencent/smtt/sdk/TbsShareManager;->e:I

    if-eqz v2, :cond_40

    sget-object v2, Lcom/tencent/smtt/sdk/TbsShareManager;->f:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/tencent/smtt/sdk/TbsShareManager;->getSharedTbsCoreVersion(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    sget v3, Lcom/tencent/smtt/sdk/TbsShareManager;->e:I

    if-ne v2, v3, :cond_40

    move v0, v1

    goto :goto_17

    :cond_2c
    sget v2, Lcom/tencent/smtt/sdk/TbsShareManager;->e:I

    if-eqz v2, :cond_40

    invoke-static {}, Lcom/tencent/smtt/sdk/am;->a()Lcom/tencent/smtt/sdk/am;

    move-result-object v2

    sget-object v3, Lcom/tencent/smtt/sdk/TbsShareManager;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/tencent/smtt/sdk/am;->a(Ljava/lang/String;)I

    move-result v2

    sget v3, Lcom/tencent/smtt/sdk/TbsShareManager;->e:I

    if-ne v2, v3, :cond_40

    move v0, v1

    goto :goto_17

    :cond_40
    invoke-static {p0}, Lcom/tencent/smtt/sdk/TbsShareManager;->l(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_48

    move v0, v1

    goto :goto_17

    :cond_48
    invoke-static {}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->getInstance()Lcom/tencent/smtt/sdk/TbsCoreLoadStat;

    move-result-object v1

    const/16 v2, 0x1a2

    new-instance v3, Ljava/lang/Throwable;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "mAvailableCoreVersion="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v5, Lcom/tencent/smtt/sdk/TbsShareManager;->e:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; mSrcPackageName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/tencent/smtt/sdk/TbsShareManager;->f:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; getSharedTbsCoreVersion(ctx, mSrcPackageName) is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/tencent/smtt/sdk/TbsShareManager;->f:Ljava/lang/String;

    invoke-static {p0, v5}, Lcom/tencent/smtt/sdk/TbsShareManager;->getSharedTbsCoreVersion(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; getHostCoreVersions is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p0}, Lcom/tencent/smtt/sdk/TbsShareManager;->getHostCoreVersions(Landroid/content/Context;)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0, v2, v3}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->a(Landroid/content/Context;ILjava/lang/Throwable;)V

    const/4 v1, 0x0

    sput-object v1, Lcom/tencent/smtt/sdk/TbsShareManager;->d:Ljava/lang/String;

    const/4 v1, 0x0

    sput v1, Lcom/tencent/smtt/sdk/TbsShareManager;->e:I

    const/16 v1, 0x3e1

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/tencent/smtt/utils/TbsLog;->addLog(ILjava/lang/String;[Ljava/lang/Object;)V

    const-string v1, "TbsShareManager::isShareTbsCoreAvailableInner forceSysWebViewInner!"

    invoke-static {p0, v1}, Lcom/tencent/smtt/sdk/QbSdk;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_a5
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_a5} :catch_a7

    goto/16 :goto_17

    :catch_a7
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    const/16 v1, 0x3e0

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, v8, v2}, Lcom/tencent/smtt/utils/TbsLog;->addLog(ILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_17
.end method

.method public static isThirdPartyApp(Landroid/content/Context;)Z
    .registers 8

    const/4 v1, 0x1

    const/4 v0, 0x0

    :try_start_2
    sget-object v2, Lcom/tencent/smtt/sdk/TbsShareManager;->a:Landroid/content/Context;

    if-eqz v2, :cond_15

    sget-object v2, Lcom/tencent/smtt/sdk/TbsShareManager;->a:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    sget-boolean v0, Lcom/tencent/smtt/sdk/TbsShareManager;->b:Z

    :goto_14
    return v0

    :cond_15
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sput-object v2, Lcom/tencent/smtt/sdk/TbsShareManager;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/tencent/smtt/sdk/TbsShareManager;->getCoreProviderAppList()[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    move v2, v0

    :goto_25
    if-ge v2, v5, :cond_37

    aget-object v6, v4, v2

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3b

    const/4 v2, 0x0

    sput-boolean v2, Lcom/tencent/smtt/sdk/TbsShareManager;->b:Z
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_32} :catch_33

    goto :goto_14

    :catch_33
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_37
    sput-boolean v1, Lcom/tencent/smtt/sdk/TbsShareManager;->b:Z

    move v0, v1

    goto :goto_14

    :cond_3b
    add-int/lit8 v2, v2, 0x1

    goto :goto_25
.end method

.method static j(Landroid/content/Context;)Z
    .registers 2

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/tencent/smtt/sdk/TbsShareManager;->b(Landroid/content/Context;Z)Z

    move-result v0

    return v0
.end method

.method private static k(Landroid/content/Context;)Z
    .registers 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    sget-object v2, Lcom/tencent/smtt/sdk/TbsShareManager;->f:Ljava/lang/String;

    if-nez v2, :cond_7

    :cond_6
    :goto_6
    return v0

    :cond_7
    sget v2, Lcom/tencent/smtt/sdk/TbsShareManager;->e:I

    sget-object v3, Lcom/tencent/smtt/sdk/TbsShareManager;->f:Ljava/lang/String;

    invoke-static {p0, v3}, Lcom/tencent/smtt/sdk/TbsShareManager;->getSharedTbsCoreVersion(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-ne v2, v3, :cond_13

    move v0, v1

    goto :goto_6

    :cond_13
    sget v2, Lcom/tencent/smtt/sdk/TbsShareManager;->e:I

    sget-object v3, Lcom/tencent/smtt/sdk/TbsShareManager;->f:Ljava/lang/String;

    invoke-static {p0, v3}, Lcom/tencent/smtt/sdk/TbsShareManager;->getCoreShareDecoupleCoreVersion(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-ne v2, v3, :cond_6

    move v0, v1

    goto :goto_6
.end method

.method private static l(Landroid/content/Context;)Z
    .registers 9

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {}, Lcom/tencent/smtt/sdk/QbSdk;->getOnlyDownload()Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_8
    :goto_8
    return v0

    :cond_9
    invoke-static {}, Lcom/tencent/smtt/sdk/TbsShareManager;->getCoreProviderAppList()[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    move v2, v0

    :goto_f
    if-ge v2, v4, :cond_42

    aget-object v5, v3, v2

    sget v6, Lcom/tencent/smtt/sdk/TbsShareManager;->e:I

    if-lez v6, :cond_3f

    sget v6, Lcom/tencent/smtt/sdk/TbsShareManager;->e:I

    invoke-static {p0, v5}, Lcom/tencent/smtt/sdk/TbsShareManager;->getSharedTbsCoreVersion(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    if-ne v6, v7, :cond_3f

    invoke-static {p0, v5, v1}, Lcom/tencent/smtt/sdk/TbsShareManager;->getPackageContext(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/Context;

    move-result-object v6

    invoke-static {}, Lcom/tencent/smtt/sdk/am;->a()Lcom/tencent/smtt/sdk/am;

    move-result-object v7

    invoke-virtual {v7, p0}, Lcom/tencent/smtt/sdk/am;->f(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_3f

    invoke-static {}, Lcom/tencent/smtt/sdk/am;->a()Lcom/tencent/smtt/sdk/am;

    move-result-object v0

    invoke-virtual {v0, p0, v6}, Lcom/tencent/smtt/sdk/am;->b(Landroid/content/Context;Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/smtt/sdk/TbsShareManager;->d:Ljava/lang/String;

    sput-object v5, Lcom/tencent/smtt/sdk/TbsShareManager;->f:Ljava/lang/String;

    move v0, v1

    goto :goto_8

    :cond_3f
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_42
    array-length v4, v3

    move v2, v0

    :goto_44
    if-ge v2, v4, :cond_8

    aget-object v5, v3, v2

    sget v6, Lcom/tencent/smtt/sdk/TbsShareManager;->e:I

    if-lez v6, :cond_74

    sget v6, Lcom/tencent/smtt/sdk/TbsShareManager;->e:I

    invoke-static {p0, v5}, Lcom/tencent/smtt/sdk/TbsShareManager;->getCoreShareDecoupleCoreVersion(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    if-ne v6, v7, :cond_74

    invoke-static {p0, v5, v1}, Lcom/tencent/smtt/sdk/TbsShareManager;->getPackageContext(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/Context;

    move-result-object v6

    invoke-static {}, Lcom/tencent/smtt/sdk/am;->a()Lcom/tencent/smtt/sdk/am;

    move-result-object v7

    invoke-virtual {v7, p0}, Lcom/tencent/smtt/sdk/am;->f(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_74

    invoke-static {}, Lcom/tencent/smtt/sdk/am;->a()Lcom/tencent/smtt/sdk/am;

    move-result-object v0

    invoke-virtual {v0, p0, v6}, Lcom/tencent/smtt/sdk/am;->c(Landroid/content/Context;Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/smtt/sdk/TbsShareManager;->d:Ljava/lang/String;

    sput-object v5, Lcom/tencent/smtt/sdk/TbsShareManager;->f:Ljava/lang/String;

    move v0, v1

    goto :goto_8

    :cond_74
    add-int/lit8 v2, v2, 0x1

    goto :goto_44
.end method

.method private static m(Landroid/content/Context;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p0, :cond_4

    :goto_3
    return v0

    :cond_4
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    const-string v3, ""

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v1, v2, v3, v0}, Lcom/tencent/smtt/sdk/TbsShareManager;->writeProperties(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_3
.end method

.method private static n(Landroid/content/Context;)V
    .registers 8

    sget-boolean v0, Lcom/tencent/smtt/sdk/TbsShareManager;->l:Z

    if-eqz v0, :cond_5

    :goto_4
    return-void

    :cond_5
    const-class v3, Lcom/tencent/smtt/sdk/TbsShareManager;

    monitor-enter v3

    :try_start_8
    sget-boolean v0, Lcom/tencent/smtt/sdk/TbsShareManager;->l:Z

    if-eqz v0, :cond_11

    monitor-exit v3

    goto :goto_4

    :catchall_e
    move-exception v0

    monitor-exit v3
    :try_end_10
    .catchall {:try_start_8 .. :try_end_10} :catchall_e

    throw v0

    :cond_11
    const/4 v2, 0x0

    :try_start_12
    const-string v0, "core_info"

    invoke-static {p0, v0}, Lcom/tencent/smtt/sdk/TbsShareManager;->getTbsShareFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_17} :catch_10e
    .catchall {:try_start_12 .. :try_end_17} :catchall_f4

    move-result-object v0

    if-nez v0, :cond_21

    if-eqz v2, :cond_1f

    :try_start_1c
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1f} :catch_101
    .catchall {:try_start_1c .. :try_end_1f} :catchall_e

    :cond_1f
    :goto_1f
    :try_start_1f
    monitor-exit v3
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_e

    goto :goto_4

    :cond_21
    :try_start_21
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_2b} :catch_10e
    .catchall {:try_start_21 .. :try_end_2b} :catchall_f4

    :try_start_2b
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    const-string v2, "core_version"

    const-string v4, ""

    invoke-virtual {v0, v2, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, ""

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_79

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v4, 0x0

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    sput v2, Lcom/tencent/smtt/sdk/TbsShareManager;->e:I

    const-string v2, "TbsShareManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "loadProperties -- mAvailableCoreVersion: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v5, Lcom/tencent/smtt/sdk/TbsShareManager;->e:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/lang/Throwable;

    const-string v6, "#"

    invoke-direct {v5, v6}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_79
    const-string v2, "core_packagename"

    const-string v4, ""

    invoke-virtual {v0, v2, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, ""

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8b

    sput-object v2, Lcom/tencent/smtt/sdk/TbsShareManager;->f:Ljava/lang/String;

    :cond_8b
    sget-object v2, Lcom/tencent/smtt/sdk/TbsShareManager;->f:Ljava/lang/String;

    if-eqz v2, :cond_a4

    sget-object v2, Lcom/tencent/smtt/sdk/TbsShareManager;->a:Landroid/content/Context;

    if-eqz v2, :cond_a4

    sget-object v2, Lcom/tencent/smtt/sdk/TbsShareManager;->f:Ljava/lang/String;

    sget-object v4, Lcom/tencent/smtt/sdk/TbsShareManager;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e1

    const/4 v2, 0x1

    sput-boolean v2, Lcom/tencent/smtt/sdk/TbsShareManager;->k:Z

    :cond_a4
    :goto_a4
    const-string v2, "core_path"

    const-string v4, ""

    invoke-virtual {v0, v2, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, ""

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b6

    sput-object v2, Lcom/tencent/smtt/sdk/TbsShareManager;->d:Ljava/lang/String;

    :cond_b6
    const-string v2, "app_version"

    const-string v4, ""

    invoke-virtual {v0, v2, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, ""

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c8

    sput-object v2, Lcom/tencent/smtt/sdk/TbsShareManager;->j:Ljava/lang/String;

    :cond_c8
    const-string v2, "core_disabled"

    const-string v4, "false"

    invoke-virtual {v0, v2, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/tencent/smtt/sdk/TbsShareManager;->g:Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/smtt/sdk/TbsShareManager;->l:Z
    :try_end_d9
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_d9} :catch_e5
    .catchall {:try_start_2b .. :try_end_d9} :catchall_10c

    if-eqz v1, :cond_de

    :try_start_db
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_de
    .catch Ljava/lang/Exception; {:try_start_db .. :try_end_de} :catch_107
    .catchall {:try_start_db .. :try_end_de} :catchall_e

    :cond_de
    :goto_de
    :try_start_de
    monitor-exit v3
    :try_end_df
    .catchall {:try_start_de .. :try_end_df} :catchall_e

    goto/16 :goto_4

    :cond_e1
    const/4 v2, 0x0

    :try_start_e2
    sput-boolean v2, Lcom/tencent/smtt/sdk/TbsShareManager;->k:Z
    :try_end_e4
    .catch Ljava/lang/Throwable; {:try_start_e2 .. :try_end_e4} :catch_e5
    .catchall {:try_start_e2 .. :try_end_e4} :catchall_10c

    goto :goto_a4

    :catch_e5
    move-exception v0

    :goto_e6
    :try_start_e6
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_e9
    .catchall {:try_start_e6 .. :try_end_e9} :catchall_10c

    if-eqz v1, :cond_de

    :try_start_eb
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_ee
    .catch Ljava/lang/Exception; {:try_start_eb .. :try_end_ee} :catch_ef
    .catchall {:try_start_eb .. :try_end_ee} :catchall_e

    goto :goto_de

    :catch_ef
    move-exception v0

    :try_start_f0
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_f3
    .catchall {:try_start_f0 .. :try_end_f3} :catchall_e

    goto :goto_de

    :catchall_f4
    move-exception v0

    move-object v1, v2

    :goto_f6
    if-eqz v1, :cond_fb

    :try_start_f8
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_fb
    .catch Ljava/lang/Exception; {:try_start_f8 .. :try_end_fb} :catch_fc
    .catchall {:try_start_f8 .. :try_end_fb} :catchall_e

    :cond_fb
    :goto_fb
    :try_start_fb
    throw v0

    :catch_fc
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_fb

    :catch_101
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1f

    :catch_107
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_10b
    .catchall {:try_start_fb .. :try_end_10b} :catchall_e

    goto :goto_de

    :catchall_10c
    move-exception v0

    goto :goto_f6

    :catch_10e
    move-exception v0

    move-object v1, v2

    goto :goto_e6
.end method

.method public static setHostCorePathAppDefined(Ljava/lang/String;)V
    .registers 1

    sput-object p0, Lcom/tencent/smtt/sdk/TbsShareManager;->c:Ljava/lang/String;

    return-void
.end method

.method public static declared-synchronized writeCoreInfoForThirdPartyApp(Landroid/content/Context;IZ)V
    .registers 14

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-class v3, Lcom/tencent/smtt/sdk/TbsShareManager;

    monitor-enter v3

    :try_start_5
    const-string v2, "TbsShareManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "writeCoreInfoForThirdPartyApp coreVersion is "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_2b

    invoke-static {p0}, Lcom/tencent/smtt/sdk/TbsShareManager;->m(Landroid/content/Context;)Z

    sget-object v0, Lcom/tencent/smtt/sdk/TbsShareManager;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    const/16 v1, -0x191

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V
    :try_end_29
    .catchall {:try_start_5 .. :try_end_29} :catchall_51

    :cond_29
    :goto_29
    monitor-exit v3

    return-void

    :cond_2b
    :try_start_2b
    invoke-static {p0}, Lcom/tencent/smtt/sdk/TbsShareManager;->h(Landroid/content/Context;)I

    move-result v2

    const-string v4, "TbsShareManager"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "writeCoreInfoForThirdPartyApp coreVersionFromConfig is "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-gez v2, :cond_54

    sget-object v0, Lcom/tencent/smtt/sdk/TbsShareManager;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    const/16 v1, -0x192

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V
    :try_end_50
    .catchall {:try_start_2b .. :try_end_50} :catchall_51

    goto :goto_29

    :catchall_51
    move-exception v0

    monitor-exit v3

    throw v0

    :cond_54
    if-ne p1, v2, :cond_70

    :try_start_56
    invoke-static {p0}, Lcom/tencent/smtt/sdk/TbsShareManager;->d(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_61

    if-nez p2, :cond_61

    invoke-static {p0, p1}, Lcom/tencent/smtt/sdk/TbsShareManager;->a(Landroid/content/Context;I)V

    :cond_61
    invoke-static {p0, p2}, Lcom/tencent/smtt/sdk/TbsShareManager;->c(Landroid/content/Context;Z)V

    sget-object v0, Lcom/tencent/smtt/sdk/TbsShareManager;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    const/16 v1, -0x193

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V

    goto :goto_29

    :cond_70
    if-ge p1, v2, :cond_81

    invoke-static {p0}, Lcom/tencent/smtt/sdk/TbsShareManager;->m(Landroid/content/Context;)Z

    sget-object v0, Lcom/tencent/smtt/sdk/TbsShareManager;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    const/16 v1, -0x194

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V

    goto :goto_29

    :cond_81
    invoke-static {}, Lcom/tencent/smtt/sdk/am;->a()Lcom/tencent/smtt/sdk/am;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/tencent/smtt/sdk/am;->j(Landroid/content/Context;)I

    move-result v2

    const-string v4, "TbsShareManager"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "writeCoreInfoForThirdPartyApp coreVersionFromCoreShare is "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-ge p1, v2, :cond_af

    invoke-static {p0}, Lcom/tencent/smtt/sdk/TbsShareManager;->m(Landroid/content/Context;)Z

    sget-object v0, Lcom/tencent/smtt/sdk/TbsShareManager;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    const/16 v1, -0x194

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V

    goto/16 :goto_29

    :cond_af
    invoke-static {p0, p2}, Lcom/tencent/smtt/sdk/TbsShareManager;->d(Landroid/content/Context;Z)[Ljava/lang/String;

    move-result-object v4

    sget-object v2, Lcom/tencent/smtt/sdk/TbsShareManager;->c:Ljava/lang/String;

    if-eqz v2, :cond_1a1

    invoke-static {}, Lcom/tencent/smtt/sdk/am;->a()Lcom/tencent/smtt/sdk/am;

    move-result-object v2

    sget-object v5, Lcom/tencent/smtt/sdk/TbsShareManager;->c:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/tencent/smtt/sdk/am;->a(Ljava/lang/String;)I

    move-result v2

    if-ne p1, v2, :cond_10b

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppDefined"

    sget-object v2, Lcom/tencent/smtt/sdk/TbsShareManager;->c:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v0, v1, v2, v4}, Lcom/tencent/smtt/sdk/TbsShareManager;->writeProperties(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d3
    .catchall {:try_start_56 .. :try_end_d3} :catchall_51

    :try_start_d3
    const-string v0, "core_info"

    invoke-static {p0, v0}, Lcom/tencent/smtt/sdk/TbsShareManager;->getTbsShareFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    sget-boolean v1, Lcom/tencent/smtt/sdk/TbsShareManager;->i:Z

    if-nez v1, :cond_29

    if-eqz v0, :cond_29

    new-instance v1, Lcom/tencent/smtt/sdk/TbsLinuxToolsJni;

    sget-object v2, Lcom/tencent/smtt/sdk/TbsShareManager;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/tencent/smtt/sdk/TbsLinuxToolsJni;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v2, "644"

    invoke-virtual {v1, v0, v2}, Lcom/tencent/smtt/sdk/TbsLinuxToolsJni;->a(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/tencent/smtt/sdk/am;->a()Lcom/tencent/smtt/sdk/am;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/smtt/sdk/am;->s(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v2, "755"

    invoke-virtual {v1, v0, v2}, Lcom/tencent/smtt/sdk/TbsLinuxToolsJni;->a(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/smtt/sdk/TbsShareManager;->i:Z
    :try_end_103
    .catch Ljava/lang/Throwable; {:try_start_d3 .. :try_end_103} :catch_105
    .catchall {:try_start_d3 .. :try_end_103} :catchall_51

    goto/16 :goto_29

    :catch_105
    move-exception v0

    :try_start_106
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_29

    :cond_10b
    invoke-static {}, Lcom/tencent/smtt/sdk/am;->a()Lcom/tencent/smtt/sdk/am;

    move-result-object v2

    sget-object v5, Lcom/tencent/smtt/sdk/TbsShareManager;->c:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/tencent/smtt/sdk/am;->a(Ljava/lang/String;)I

    move-result v2

    if-le p1, v2, :cond_1a1

    array-length v5, v4

    move v2, v0

    :goto_119
    if-ge v2, v5, :cond_1a1

    aget-object v6, v4, v2

    invoke-static {p0, v6}, Lcom/tencent/smtt/sdk/TbsShareManager;->getSharedTbsCoreVersion(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    if-ne p1, v7, :cond_19d

    const/4 v7, 0x1

    invoke-static {p0, v6, v7}, Lcom/tencent/smtt/sdk/TbsShareManager;->getPackageContext(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/Context;

    move-result-object v6

    invoke-static {}, Lcom/tencent/smtt/sdk/am;->a()Lcom/tencent/smtt/sdk/am;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/tencent/smtt/sdk/am;->r(Landroid/content/Context;)Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0}, Lcom/tencent/smtt/utils/b;->b(Landroid/content/Context;)I

    invoke-static {}, Lcom/tencent/smtt/sdk/am;->a()Lcom/tencent/smtt/sdk/am;

    move-result-object v8

    invoke-virtual {v8, v6}, Lcom/tencent/smtt/sdk/am;->f(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_19d

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/tencent/smtt/sdk/TbsShareManager;->c:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/tencent/smtt/sdk/bb;

    invoke-direct {v2}, Lcom/tencent/smtt/sdk/bb;-><init>()V
    :try_end_152
    .catchall {:try_start_106 .. :try_end_152} :catchall_51

    :try_start_152
    invoke-static {v1, v0, v2}, Lcom/tencent/smtt/utils/k;->a(Ljava/io/File;Ljava/io/File;Ljava/io/FileFilter;)Z

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppDefined"

    sget-object v2, Lcom/tencent/smtt/sdk/TbsShareManager;->c:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v0, v1, v2, v4}, Lcom/tencent/smtt/sdk/TbsShareManager;->writeProperties(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "core_info"

    invoke-static {p0, v0}, Lcom/tencent/smtt/sdk/TbsShareManager;->getTbsShareFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    sget-boolean v1, Lcom/tencent/smtt/sdk/TbsShareManager;->i:Z

    if-nez v1, :cond_29

    if-eqz v0, :cond_29

    new-instance v1, Lcom/tencent/smtt/sdk/TbsLinuxToolsJni;

    sget-object v2, Lcom/tencent/smtt/sdk/TbsShareManager;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/tencent/smtt/sdk/TbsLinuxToolsJni;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v2, "644"

    invoke-virtual {v1, v0, v2}, Lcom/tencent/smtt/sdk/TbsLinuxToolsJni;->a(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/tencent/smtt/sdk/am;->a()Lcom/tencent/smtt/sdk/am;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/smtt/sdk/am;->s(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v2, "755"

    invoke-virtual {v1, v0, v2}, Lcom/tencent/smtt/sdk/TbsLinuxToolsJni;->a(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/smtt/sdk/TbsShareManager;->i:Z
    :try_end_195
    .catch Ljava/lang/Throwable; {:try_start_152 .. :try_end_195} :catch_197
    .catchall {:try_start_152 .. :try_end_195} :catchall_51

    goto/16 :goto_29

    :catch_197
    move-exception v0

    :try_start_198
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_29

    :cond_19d
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_119

    :cond_1a1
    array-length v5, v4

    move v2, v0

    :goto_1a3
    if-ge v2, v5, :cond_23c

    aget-object v6, v4, v2

    invoke-static {p0, v6}, Lcom/tencent/smtt/sdk/TbsShareManager;->getSharedTbsCoreVersion(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    if-ne p1, v7, :cond_24f

    const/4 v7, 0x1

    invoke-static {p0, v6, v7}, Lcom/tencent/smtt/sdk/TbsShareManager;->getPackageContext(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/Context;

    move-result-object v7

    invoke-static {}, Lcom/tencent/smtt/sdk/am;->a()Lcom/tencent/smtt/sdk/am;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/tencent/smtt/sdk/am;->r(Landroid/content/Context;)Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0}, Lcom/tencent/smtt/utils/b;->b(Landroid/content/Context;)I

    move-result v9

    invoke-static {}, Lcom/tencent/smtt/sdk/am;->a()Lcom/tencent/smtt/sdk/am;

    move-result-object v10

    invoke-virtual {v10, v7}, Lcom/tencent/smtt/sdk/am;->f(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_2f0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_200

    const-string v0, "TbsShareManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "thirdAPP pre--> delete old core_share Directory:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/smtt/sdk/am;->a()Lcom/tencent/smtt/sdk/am;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/smtt/sdk/am;->r(Landroid/content/Context;)Ljava/io/File;
    :try_end_1f5
    .catchall {:try_start_198 .. :try_end_1f5} :catchall_51

    move-result-object v0

    :try_start_1f6
    invoke-static {v0}, Lcom/tencent/smtt/utils/k;->b(Ljava/io/File;)V

    const-string v0, "TbsShareManager"

    const-string v2, "thirdAPP success--> delete old core_share Directory"

    invoke-static {v0, v2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_200
    .catch Ljava/lang/Throwable; {:try_start_1f6 .. :try_end_200} :catch_245
    .catchall {:try_start_1f6 .. :try_end_200} :catchall_51

    :cond_200
    :goto_200
    :try_start_200
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v0, v6, v8, v2}, Lcom/tencent/smtt/sdk/TbsShareManager;->writeProperties(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_20b
    .catchall {:try_start_200 .. :try_end_20b} :catchall_51

    :try_start_20b
    const-string v0, "core_info"

    invoke-static {p0, v0}, Lcom/tencent/smtt/sdk/TbsShareManager;->getTbsShareFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    sget-boolean v2, Lcom/tencent/smtt/sdk/TbsShareManager;->i:Z

    if-nez v2, :cond_23b

    if-eqz v0, :cond_23b

    new-instance v2, Lcom/tencent/smtt/sdk/TbsLinuxToolsJni;

    sget-object v4, Lcom/tencent/smtt/sdk/TbsShareManager;->a:Landroid/content/Context;

    invoke-direct {v2, v4}, Lcom/tencent/smtt/sdk/TbsLinuxToolsJni;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v4, "644"

    invoke-virtual {v2, v0, v4}, Lcom/tencent/smtt/sdk/TbsLinuxToolsJni;->a(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/tencent/smtt/sdk/am;->a()Lcom/tencent/smtt/sdk/am;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/smtt/sdk/am;->s(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v4, "755"

    invoke-virtual {v2, v0, v4}, Lcom/tencent/smtt/sdk/TbsLinuxToolsJni;->a(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/smtt/sdk/TbsShareManager;->i:Z
    :try_end_23b
    .catch Ljava/lang/Throwable; {:try_start_20b .. :try_end_23b} :catch_24a
    .catchall {:try_start_20b .. :try_end_23b} :catchall_51

    :cond_23b
    :goto_23b
    move v0, v1

    :cond_23c
    :goto_23c
    if-nez v0, :cond_29

    if-nez p2, :cond_29

    :try_start_240
    invoke-static {p0, p1}, Lcom/tencent/smtt/sdk/TbsShareManager;->a(Landroid/content/Context;I)V

    goto/16 :goto_29

    :catch_245
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_200

    :catch_24a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_23b

    :cond_24f
    invoke-static {p0, v6}, Lcom/tencent/smtt/sdk/TbsShareManager;->getCoreShareDecoupleCoreVersion(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    if-ne p1, v7, :cond_2f0

    const/4 v7, 0x1

    invoke-static {p0, v6, v7}, Lcom/tencent/smtt/sdk/TbsShareManager;->getPackageContext(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/Context;

    move-result-object v7

    invoke-static {}, Lcom/tencent/smtt/sdk/am;->a()Lcom/tencent/smtt/sdk/am;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/tencent/smtt/sdk/am;->q(Landroid/content/Context;)Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0}, Lcom/tencent/smtt/utils/b;->b(Landroid/content/Context;)I

    move-result v9

    invoke-static {}, Lcom/tencent/smtt/sdk/am;->a()Lcom/tencent/smtt/sdk/am;

    move-result-object v10

    invoke-virtual {v10, v7}, Lcom/tencent/smtt/sdk/am;->f(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_2f0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a8

    const-string v0, "TbsShareManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "thirdAPP pre--> delete old core_share Directory:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/smtt/sdk/am;->a()Lcom/tencent/smtt/sdk/am;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/smtt/sdk/am;->r(Landroid/content/Context;)Ljava/io/File;
    :try_end_29d
    .catchall {:try_start_240 .. :try_end_29d} :catchall_51

    move-result-object v0

    :try_start_29e
    invoke-static {v0}, Lcom/tencent/smtt/utils/k;->b(Ljava/io/File;)V

    const-string v0, "TbsShareManager"

    const-string v2, "thirdAPP success--> delete old core_share Directory"

    invoke-static {v0, v2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2a8
    .catch Ljava/lang/Throwable; {:try_start_29e .. :try_end_2a8} :catch_2e6
    .catchall {:try_start_29e .. :try_end_2a8} :catchall_51

    :cond_2a8
    :goto_2a8
    :try_start_2a8
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v0, v6, v8, v2}, Lcom/tencent/smtt/sdk/TbsShareManager;->writeProperties(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2b3
    .catchall {:try_start_2a8 .. :try_end_2b3} :catchall_51

    :try_start_2b3
    const-string v0, "core_info"

    invoke-static {p0, v0}, Lcom/tencent/smtt/sdk/TbsShareManager;->getTbsShareFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    sget-boolean v2, Lcom/tencent/smtt/sdk/TbsShareManager;->i:Z

    if-nez v2, :cond_2e3

    if-eqz v0, :cond_2e3

    new-instance v2, Lcom/tencent/smtt/sdk/TbsLinuxToolsJni;

    sget-object v4, Lcom/tencent/smtt/sdk/TbsShareManager;->a:Landroid/content/Context;

    invoke-direct {v2, v4}, Lcom/tencent/smtt/sdk/TbsLinuxToolsJni;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v4, "644"

    invoke-virtual {v2, v0, v4}, Lcom/tencent/smtt/sdk/TbsLinuxToolsJni;->a(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/tencent/smtt/sdk/am;->a()Lcom/tencent/smtt/sdk/am;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/smtt/sdk/am;->s(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v4, "755"

    invoke-virtual {v2, v0, v4}, Lcom/tencent/smtt/sdk/TbsLinuxToolsJni;->a(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/smtt/sdk/TbsShareManager;->i:Z
    :try_end_2e3
    .catch Ljava/lang/Throwable; {:try_start_2b3 .. :try_end_2e3} :catch_2eb
    .catchall {:try_start_2b3 .. :try_end_2e3} :catchall_51

    :cond_2e3
    :goto_2e3
    move v0, v1

    goto/16 :goto_23c

    :catch_2e6
    move-exception v0

    :try_start_2e7
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2a8

    :catch_2eb
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2ef
    .catchall {:try_start_2e7 .. :try_end_2ef} :catchall_51

    goto :goto_2e3

    :cond_2f0
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1a3
.end method

.method public static writeProperties(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    const/4 v0, 0x0

    const/4 v1, 0x0

    const-string v2, "TbsShareManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "writeProperties coreVersion is "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " corePackageName is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " corePath is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "TbsShareManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "writeProperties -- stack: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/Throwable;

    const-string v5, "#"

    invoke-direct {v4, v5}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_4b
    const-string v4, "core_info"

    invoke-static {p0, v4}, Lcom/tencent/smtt/sdk/TbsShareManager;->getTbsShareFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    if-nez v4, :cond_69

    sget-object v0, Lcom/tencent/smtt/sdk/TbsShareManager;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    const/16 v4, -0x195

    invoke-virtual {v0, v4}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V
    :try_end_5e
    .catch Ljava/lang/Throwable; {:try_start_4b .. :try_end_5e} :catch_115
    .catchall {:try_start_4b .. :try_end_5e} :catchall_e2

    if-eqz v1, :cond_63

    :try_start_60
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_63} :catch_100

    :cond_63
    :goto_63
    if-eqz v1, :cond_68

    :try_start_65
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_68} :catch_106

    :cond_68
    :goto_68
    return-void

    :cond_69
    :try_start_69
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-direct {v3, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_73
    .catch Ljava/lang/Throwable; {:try_start_69 .. :try_end_73} :catch_115
    .catchall {:try_start_69 .. :try_end_73} :catchall_e2

    :try_start_73
    new-instance v5, Ljava/util/Properties;

    invoke-direct {v5}, Ljava/util/Properties;-><init>()V

    invoke-virtual {v5, v3}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_7b
    .catch Ljava/lang/Throwable; {:try_start_73 .. :try_end_7b} :catch_d0
    .catchall {:try_start_73 .. :try_end_7b} :catchall_10d

    :try_start_7b
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_7b .. :try_end_7e} :catch_ef
    .catch Ljava/lang/Throwable; {:try_start_7b .. :try_end_7e} :catch_d0
    .catchall {:try_start_7b .. :try_end_7e} :catchall_10d

    move-result v0

    :goto_7f
    if-eqz v0, :cond_c8

    :try_start_81
    const-string v0, "core_version"

    invoke-virtual {v5, v0, p1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "core_disabled"

    const-string v2, "false"

    invoke-virtual {v5, v0, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "core_packagename"

    invoke-virtual {v5, v0, p2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "core_path"

    invoke-virtual {v5, v0, p3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "app_version"

    invoke-virtual {v5, v0, p4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    :goto_9c
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-direct {v2, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_a6
    .catch Ljava/lang/Throwable; {:try_start_81 .. :try_end_a6} :catch_d0
    .catchall {:try_start_81 .. :try_end_a6} :catchall_10d

    const/4 v0, 0x0

    :try_start_a7
    invoke-virtual {v5, v2, v0}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/smtt/sdk/TbsShareManager;->l:Z

    sget-object v0, Lcom/tencent/smtt/sdk/TbsShareManager;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    const/16 v1, -0x196

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V
    :try_end_b8
    .catch Ljava/lang/Throwable; {:try_start_a7 .. :try_end_b8} :catch_118
    .catchall {:try_start_a7 .. :try_end_b8} :catchall_10f

    if-eqz v3, :cond_bd

    :try_start_ba
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_bd
    .catch Ljava/lang/Exception; {:try_start_ba .. :try_end_bd} :catch_108

    :cond_bd
    :goto_bd
    if-eqz v2, :cond_68

    :try_start_bf
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_c2
    .catch Ljava/lang/Exception; {:try_start_bf .. :try_end_c2} :catch_c3

    goto :goto_68

    :catch_c3
    move-exception v0

    :goto_c4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_68

    :cond_c8
    :try_start_c8
    const-string v0, "core_disabled"

    const-string v2, "true"

    invoke-virtual {v5, v0, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_cf
    .catch Ljava/lang/Throwable; {:try_start_c8 .. :try_end_cf} :catch_d0
    .catchall {:try_start_c8 .. :try_end_cf} :catchall_10d

    goto :goto_9c

    :catch_d0
    move-exception v0

    move-object v2, v3

    :goto_d2
    :try_start_d2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_d5
    .catchall {:try_start_d2 .. :try_end_d5} :catchall_112

    if-eqz v2, :cond_da

    :try_start_d7
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_da
    .catch Ljava/lang/Exception; {:try_start_d7 .. :try_end_da} :catch_fb

    :cond_da
    :goto_da
    if-eqz v1, :cond_68

    :try_start_dc
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_df
    .catch Ljava/lang/Exception; {:try_start_dc .. :try_end_df} :catch_e0

    goto :goto_68

    :catch_e0
    move-exception v0

    goto :goto_c4

    :catchall_e2
    move-exception v0

    move-object v3, v1

    :goto_e4
    if-eqz v3, :cond_e9

    :try_start_e6
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_e9
    .catch Ljava/lang/Exception; {:try_start_e6 .. :try_end_e9} :catch_f1

    :cond_e9
    :goto_e9
    if-eqz v1, :cond_ee

    :try_start_eb
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_ee
    .catch Ljava/lang/Exception; {:try_start_eb .. :try_end_ee} :catch_f6

    :cond_ee
    :goto_ee
    throw v0

    :catch_ef
    move-exception v2

    goto :goto_7f

    :catch_f1
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_e9

    :catch_f6
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_ee

    :catch_fb
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_da

    :catch_100
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_63

    :catch_106
    move-exception v0

    goto :goto_c4

    :catch_108
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_bd

    :catchall_10d
    move-exception v0

    goto :goto_e4

    :catchall_10f
    move-exception v0

    move-object v1, v2

    goto :goto_e4

    :catchall_112
    move-exception v0

    move-object v3, v2

    goto :goto_e4

    :catch_115
    move-exception v0

    move-object v2, v1

    goto :goto_d2

    :catch_118
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_d2
.end method
