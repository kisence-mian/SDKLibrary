.class public Lcom/tencent/smtt/sdk/TbsDownloader;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/smtt/sdk/TbsDownloader$TbsDownloaderCallback;
    }
.end annotation


# static fields
.field public static final DEBUG_DISABLE_DOWNLOAD:Z = false

.field public static DOWNLOAD_OVERSEA_TBS:Z = false

.field public static final LOGTAG:Ljava/lang/String; = "TbsDownload"

.field public static final TBS_METADATA:Ljava/lang/String; = "com.tencent.mm.BuildInfo.CLIENT_VERSION"

.field static a:Z

.field private static b:Ljava/lang/String;

.field private static c:Landroid/content/Context;

.field private static d:Landroid/os/Handler;

.field private static e:Ljava/lang/String;

.field private static f:Ljava/lang/Object;

.field private static g:Lcom/tencent/smtt/sdk/ag;

.field private static h:Landroid/os/HandlerThread;

.field private static i:Z

.field private static j:Z

.field private static k:Z

.field private static l:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x0

    sput-boolean v1, Lcom/tencent/smtt/sdk/TbsDownloader;->DOWNLOAD_OVERSEA_TBS:Z

    new-array v0, v1, [B

    sput-object v0, Lcom/tencent/smtt/sdk/TbsDownloader;->f:Ljava/lang/Object;

    sput-boolean v1, Lcom/tencent/smtt/sdk/TbsDownloader;->i:Z

    sput-boolean v1, Lcom/tencent/smtt/sdk/TbsDownloader;->j:Z

    sput-boolean v1, Lcom/tencent/smtt/sdk/TbsDownloader;->k:Z

    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/tencent/smtt/sdk/TbsDownloader;->l:J

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Landroid/content/Context;
    .registers 1

    sget-object v0, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    return-object v0
.end method

.method protected static a(I)Ljava/io/File;
    .registers 9

    const/4 v3, 0x0

    invoke-static {}, Lcom/tencent/smtt/sdk/TbsShareManager;->getCoreProviderAppList()[Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x0

    array-length v5, v4

    move v2, v3

    :goto_8
    if-ge v2, v5, :cond_56

    aget-object v1, v4, v2

    sget-object v6, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_61

    new-instance v0, Ljava/io/File;

    sget-object v6, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    const/4 v7, 0x4

    invoke-static {v6, v1, v7, v3}, Lcom/tencent/smtt/utils/k;->a(Landroid/content/Context;Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v6

    sget-object v1, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/smtt/sdk/TbsDownloader;->getOverSea(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_57

    const-string v1, "x5.oversea.tbs.org"

    :goto_2d
    invoke-direct {v0, v6, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_65

    sget-object v1, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/tencent/smtt/utils/a;->a(Landroid/content/Context;Ljava/io/File;)I

    move-result v1

    if-ne v1, p0, :cond_5a

    const-string v1, "TbsDownload"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "local tbs version fond,path = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_56
    return-object v0

    :cond_57
    const-string v1, "x5.tbs.org"

    goto :goto_2d

    :cond_5a
    const-string v1, "TbsDownload"

    const-string v6, "version is not match"

    invoke-static {v1, v6}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_61
    :goto_61
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_8

    :cond_65
    const-string v1, "TbsDownload"

    const-string v6, "can not find local backup core file"

    invoke-static {v1, v6}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_61
.end method

.method static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 7

    sget-object v0, Lcom/tencent/smtt/sdk/TbsDownloader;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    sget-object v0, Lcom/tencent/smtt/sdk/TbsDownloader;->b:Ljava/lang/String;

    :goto_a
    return-object v0

    :cond_b
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    :try_start_16
    new-instance v0, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-virtual {v1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    const-string v5, "ISO8859-1"

    invoke-direct {v0, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_23} :catch_98

    :goto_23
    if-nez v0, :cond_9b

    const-string v0, "1.0"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_2a
    const-string v0, "; "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_ab

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4e

    const-string v1, "-"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4e
    :goto_4e
    const-string v0, "REL"

    sget-object v1, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6e

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    :try_start_5a
    new-instance v0, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    const-string v4, "ISO8859-1"

    invoke-direct {v0, v2, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_67} :catch_b1

    :goto_67
    if-nez v0, :cond_b4

    const-string v0, "; "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_6e
    :goto_6e
    sget-object v0, Landroid/os/Build;->ID:Ljava/lang/String;

    if-nez v0, :cond_c3

    const-string v0, ""

    :goto_74
    const-string v1, "[\u4e00-\u9fa5]"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_c6

    const-string v0, " Build/"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "00"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_88
    :goto_88
    const-string v0, "Mozilla/5.0 (Linux; U; Android %s) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 Mobile Safari/533.1"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/smtt/sdk/TbsDownloader;->b:Ljava/lang/String;

    goto/16 :goto_a

    :catch_98
    move-exception v0

    move-object v0, v1

    goto :goto_23

    :cond_9b
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_a5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2a

    :cond_a5
    const-string v0, "1.0"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2a

    :cond_ab
    const-string v0, "en"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4e

    :catch_b1
    move-exception v0

    move-object v0, v1

    goto :goto_67

    :cond_b4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_6e

    const-string v1, "; "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_6e

    :cond_c3
    sget-object v0, Landroid/os/Build;->ID:Ljava/lang/String;

    goto :goto_74

    :cond_c6
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_88

    const-string v1, " Build/"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_88
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    if-nez p0, :cond_4

    const-string p0, ""

    :cond_4
    return-object p0
.end method

.method private static a(Lorg/json/JSONArray;)V
    .registers 10

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/tencent/smtt/sdk/TbsDownloader;->f()[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    move v3, v1

    :goto_8
    if-ge v3, v5, :cond_55

    aget-object v0, v4, v3

    sget-object v6, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v6, v0}, Lcom/tencent/smtt/sdk/TbsShareManager;->getSharedTbsCoreVersion(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_3a

    sget-object v7, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v7, v0, v2}, Lcom/tencent/smtt/sdk/TbsShareManager;->getPackageContext(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/Context;

    move-result-object v7

    if-eqz v7, :cond_3e

    invoke-static {}, Lcom/tencent/smtt/sdk/am;->a()Lcom/tencent/smtt/sdk/am;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/tencent/smtt/sdk/am;->f(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_3e

    const-string v6, "TbsDownload"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "host check failed,packageName = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3a
    :goto_3a
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_8

    :cond_3e
    move v0, v1

    :goto_3f
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v0, v7, :cond_ab

    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->optInt(I)I

    move-result v7

    if-ne v7, v6, :cond_52

    move v0, v2

    :goto_4c
    if-nez v0, :cond_3a

    invoke-virtual {p0, v6}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    goto :goto_3a

    :cond_52
    add-int/lit8 v0, v0, 0x1

    goto :goto_3f

    :cond_55
    invoke-static {}, Lcom/tencent/smtt/sdk/TbsDownloader;->f()[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    move v3, v1

    :goto_5b
    if-ge v3, v5, :cond_a8

    aget-object v0, v4, v3

    sget-object v6, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v6, v0}, Lcom/tencent/smtt/sdk/TbsShareManager;->getCoreShareDecoupleCoreVersion(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_8d

    sget-object v7, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v7, v0, v2}, Lcom/tencent/smtt/sdk/TbsShareManager;->getPackageContext(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/Context;

    move-result-object v7

    if-eqz v7, :cond_91

    invoke-static {}, Lcom/tencent/smtt/sdk/am;->a()Lcom/tencent/smtt/sdk/am;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/tencent/smtt/sdk/am;->f(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_91

    const-string v6, "TbsDownload"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "host check failed,packageName = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8d
    :goto_8d
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_5b

    :cond_91
    move v0, v1

    :goto_92
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v0, v7, :cond_a9

    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->optInt(I)I

    move-result v7

    if-ne v7, v6, :cond_a5

    move v0, v2

    :goto_9f
    if-nez v0, :cond_8d

    invoke-virtual {p0, v6}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    goto :goto_8d

    :cond_a5
    add-int/lit8 v0, v0, 0x1

    goto :goto_92

    :cond_a8
    return-void

    :cond_a9
    move v0, v1

    goto :goto_9f

    :cond_ab
    move v0, v1

    goto :goto_4c
.end method

.method private static a(ZLcom/tencent/smtt/sdk/TbsDownloader$TbsDownloaderCallback;)V
    .registers 6

    const/16 v3, 0x64

    const/4 v0, 0x0

    const-string v1, "TbsDownload"

    const-string v2, "[TbsDownloader.queryConfig]"

    invoke-static {v1, v2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/tencent/smtt/sdk/TbsDownloader;->d:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    sget-object v1, Lcom/tencent/smtt/sdk/TbsDownloader;->d:Landroid/os/Handler;

    invoke-static {v1, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    if-eqz p1, :cond_19

    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    :cond_19
    iput v0, v1, Landroid/os/Message;->arg1:I

    if-eqz p0, :cond_1e

    const/4 v0, 0x1

    :cond_1e
    iput v0, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private static a(Landroid/content/Context;ZLcom/tencent/smtt/sdk/TbsDownloader$TbsDownloaderCallback;)Z
    .registers 9

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v2

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x8

    if-ge v3, v4, :cond_12

    const/16 v1, -0x66

    invoke-virtual {v2, v1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V

    :cond_11
    :goto_11
    return v0

    :cond_12
    sget-boolean v3, Lcom/tencent/smtt/sdk/QbSdk;->c:Z

    if-nez v3, :cond_2a

    sget-object v3, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v3}, Lcom/tencent/smtt/sdk/TbsShareManager;->isThirdPartyApp(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2a

    invoke-static {}, Lcom/tencent/smtt/sdk/TbsDownloader;->c()Z

    move-result v3

    if-nez v3, :cond_2a

    if-eqz p2, :cond_11

    invoke-interface {p2, v0, v0}, Lcom/tencent/smtt/sdk/TbsDownloader$TbsDownloaderCallback;->onNeedDownloadFinish(ZI)V

    goto :goto_11

    :cond_2a
    iget-object v3, v2, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v4, "is_oversea"

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_70

    if-eqz p1, :cond_4c

    const-string v3, "com.tencent.mm"

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4c

    const-string v3, "TbsDownload"

    const-string v4, "needDownload-oversea is true, but not WX"

    invoke-static {v3, v4}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move p1, v0

    :cond_4c
    iget-object v3, v2, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    const-string v4, "is_oversea"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->commit()V

    sput-boolean p1, Lcom/tencent/smtt/sdk/TbsDownloader;->j:Z

    const-string v3, "TbsDownload"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "needDownload-first-called--isoversea = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_70
    invoke-static {p0}, Lcom/tencent/smtt/sdk/TbsDownloader;->getOverSea(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_b0

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-eq v3, v4, :cond_b0

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x11

    if-eq v3, v4, :cond_b0

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x12

    if-eq v3, v4, :cond_b0

    const-string v1, "TbsDownload"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "needDownload- return false,  because of  version is "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", and overea"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_a9

    invoke-interface {p2, v0, v0}, Lcom/tencent/smtt/sdk/TbsDownloader$TbsDownloaderCallback;->onNeedDownloadFinish(ZI)V

    :cond_a9
    const/16 v1, -0x67

    invoke-virtual {v2, v1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V

    goto/16 :goto_11

    :cond_b0
    iget-object v3, v2, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v4, "device_cpuabi"

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/tencent/smtt/sdk/TbsDownloader;->e:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_e0

    :try_start_c0
    const-string v3, "i686|mips|x86_64"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    sget-object v4, Lcom/tencent/smtt/sdk/TbsDownloader;->e:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
    :try_end_cb
    .catch Ljava/lang/Exception; {:try_start_c0 .. :try_end_cb} :catch_e3

    move-result-object v1

    :goto_cc
    if-eqz v1, :cond_e0

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_e0

    if-eqz p2, :cond_d9

    invoke-interface {p2, v0, v0}, Lcom/tencent/smtt/sdk/TbsDownloader$TbsDownloaderCallback;->onNeedDownloadFinish(ZI)V

    :cond_d9
    const/16 v1, -0x68

    invoke-virtual {v2, v1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V

    goto/16 :goto_11

    :cond_e0
    const/4 v0, 0x1

    goto/16 :goto_11

    :catch_e3
    move-exception v3

    goto :goto_cc
.end method

.method private static a(Landroid/content/Context;ZZ)Z
    .registers 31

    const/4 v9, 0x0

    invoke-static/range {p0 .. p0}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v10

    const/4 v8, 0x0

    if-nez p1, :cond_26f

    iget-object v4, v10, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v5, "app_versionname"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iget-object v4, v10, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v5, "app_versioncode"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v12

    iget-object v4, v10, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v5, "app_metadata"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    sget-object v4, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v4}, Lcom/tencent/smtt/utils/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v14

    sget-object v4, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v4}, Lcom/tencent/smtt/utils/b;->b(Landroid/content/Context;)I

    move-result v15

    sget-object v4, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    const-string v5, "com.tencent.mm.BuildInfo.CLIENT_VERSION"

    invoke-static {v4, v5}, Lcom/tencent/smtt/utils/b;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string v4, "TbsDownload"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "[TbsDownloader.needSendQueryRequest] appVersionName="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " oldAppVersionName="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " appVersionCode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " oldAppVersionCode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " appMetadata="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " oldAppVersionMetadata="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-object v4, v10, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v5, "last_check"

    const-wide/16 v18, 0x0

    move-wide/from16 v0, v18

    invoke-interface {v4, v5, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    const-string v17, "TbsDownload"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "[TbsDownloader.needSendQueryRequest] timeLastCheck="

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " timeNow="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_de

    iget-object v0, v10, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    move-object/from16 v17, v0

    const-string v18, "last_check"

    invoke-interface/range {v17 .. v18}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v17

    const-string v18, "TbsDownload"

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "[TbsDownloader.needSendQueryRequest] hasLaskCheckKey="

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v17, :cond_de

    const-wide/16 v18, 0x0

    cmp-long v17, v4, v18

    if-nez v17, :cond_de

    move-wide v4, v6

    :cond_de
    iget-object v0, v10, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    move-object/from16 v17, v0

    const-string v18, "last_request_success"

    const-wide/16 v20, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-wide/from16 v2, v20

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v18

    iget-object v0, v10, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    move-object/from16 v17, v0

    const-string v20, "count_request_fail_in_24hours"

    const-wide/16 v22, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-wide/from16 v2, v22

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v20

    invoke-virtual {v10}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getRetryInterval()J

    move-result-wide v22

    const-string v10, "TbsDownload"

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v24, "retryInterval = "

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v24, " s"

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v10, v0}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/smtt/sdk/TbsPVConfig;->releaseInstance()V

    sget-object v10, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v10}, Lcom/tencent/smtt/sdk/TbsPVConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsPVConfig;

    move-result-object v10

    invoke-virtual {v10}, Lcom/tencent/smtt/sdk/TbsPVConfig;->getEmergentCoreVersion()I

    move-result v10

    sget-object v17, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static/range {v17 .. v17}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    move-object/from16 v17, v0

    const-string v24, "tbs_download_version"

    const/16 v25, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v17

    sub-long v24, v6, v4

    const-wide/16 v26, 0x3e8

    mul-long v26, v26, v22

    cmp-long v24, v24, v26

    if-lez v24, :cond_188

    const/4 v4, 0x1

    :goto_160
    if-nez v4, :cond_187

    sget-object v5, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v5}, Lcom/tencent/smtt/sdk/TbsShareManager;->isThirdPartyApp(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_187

    sget-object v5, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v5}, Lcom/tencent/smtt/sdk/TbsLogReport;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tencent/smtt/sdk/TbsLogReport;->tbsLogInfo()Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;

    move-result-object v5

    const/16 v6, -0x77

    invoke-virtual {v5, v6}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->setErrorCode(I)V

    invoke-virtual {v5, v8}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->setFailDetail(Ljava/lang/String;)V

    sget-object v6, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v6}, Lcom/tencent/smtt/sdk/TbsLogReport;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v6

    sget-object v7, Lcom/tencent/smtt/sdk/TbsLogReport$EventType;->TYPE_DOWNLOAD:Lcom/tencent/smtt/sdk/TbsLogReport$EventType;

    invoke-virtual {v6, v7, v5}, Lcom/tencent/smtt/sdk/TbsLogReport;->eventReport(Lcom/tencent/smtt/sdk/TbsLogReport$EventType;Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;)V

    :cond_187
    return v4

    :cond_188
    invoke-static {}, Lcom/tencent/smtt/sdk/am;->a()Lcom/tencent/smtt/sdk/am;

    move-result-object v24

    sget-object v25, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-virtual/range {v24 .. v25}, Lcom/tencent/smtt/sdk/am;->j(Landroid/content/Context;)I

    move-result v24

    move/from16 v0, v24

    if-le v10, v0, :cond_19c

    move/from16 v0, v17

    if-le v10, v0, :cond_19c

    const/4 v4, 0x1

    goto :goto_160

    :cond_19c
    sget-object v10, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v10}, Lcom/tencent/smtt/sdk/TbsShareManager;->isThirdPartyApp(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_1bc

    const-wide/16 v24, 0x0

    cmp-long v10, v18, v24

    if-lez v10, :cond_1bc

    sub-long v18, v6, v18

    const-wide/16 v24, 0x3e8

    mul-long v22, v22, v24

    cmp-long v10, v18, v22

    if-lez v10, :cond_1bc

    const-wide/16 v18, 0xb

    cmp-long v10, v20, v18

    if-gez v10, :cond_1bc

    const/4 v4, 0x1

    goto :goto_160

    :cond_1bc
    sget-object v10, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v10}, Lcom/tencent/smtt/sdk/TbsShareManager;->isThirdPartyApp(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_1dd

    sget-object v10, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v10}, Lcom/tencent/smtt/sdk/TbsShareManager;->findCoreForThirdPartyApp(Landroid/content/Context;)I

    move-result v10

    if-nez v10, :cond_1dd

    invoke-static {}, Lcom/tencent/smtt/sdk/TbsDownloader;->e()Z

    move-result v10

    if-nez v10, :cond_1dd

    const/4 v4, 0x1

    invoke-static {}, Lcom/tencent/smtt/sdk/am;->a()Lcom/tencent/smtt/sdk/am;

    move-result-object v5

    sget-object v6, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-virtual {v5, v6}, Lcom/tencent/smtt/sdk/am;->d(Landroid/content/Context;)V

    goto :goto_160

    :cond_1dd
    if-eqz v14, :cond_1f6

    if-eqz v15, :cond_1f6

    if-eqz v16, :cond_1f6

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f3

    if-ne v15, v12, :cond_1f3

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_272

    :cond_1f3
    const/4 v4, 0x1

    goto/16 :goto_160

    :cond_1f6
    sget-object v10, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v10}, Lcom/tencent/smtt/sdk/TbsShareManager;->isThirdPartyApp(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_272

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v10, "timeNow - timeLastCheck is "

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v4, v6, v4

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " TbsShareManager.findCoreForThirdPartyApp(sAppContext) is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v5}, Lcom/tencent/smtt/sdk/TbsShareManager;->findCoreForThirdPartyApp(Landroid/content/Context;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " sendRequestWithSameHostCoreVersion() is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/tencent/smtt/sdk/TbsDownloader;->e()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " appVersionName is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " appVersionCode is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " appMetadata is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " oldAppVersionName is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " oldAppVersionCode is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " oldAppVersionMetadata is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_26b
    move-object v8, v4

    move v4, v9

    goto/16 :goto_160

    :cond_26f
    const/4 v4, 0x1

    goto/16 :goto_160

    :cond_272
    move-object v4, v8

    goto :goto_26b
.end method

.method private static a(Ljava/lang/String;IZZ)Z
    .registers 36
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    const-string v2, "TbsDownload"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[TbsDownloader.readResponse] response="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v14

    invoke-static/range {p0 .. p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_38

    if-eqz p2, :cond_32

    const/16 v2, -0x6c

    invoke-virtual {v14, v2}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V

    :goto_29
    const-string v2, "TbsDownload"

    const-string v3, "[TbsDownloader.readResponse] return #1,response is empty..."

    invoke-static {v2, v3}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_31
    return v2

    :cond_32
    const/16 v2, -0xd0

    invoke-virtual {v14, v2}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V

    goto :goto_29

    :cond_38
    new-instance v15, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "RET"

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_6a

    if-eqz p2, :cond_64

    const/16 v3, -0x6d

    invoke-virtual {v14, v3}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V

    :goto_4e
    const-string v3, "TbsDownload"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[TbsDownloader.readResponse] return #2,returnCode="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    goto :goto_31

    :cond_64
    const/16 v3, -0xd1

    invoke-virtual {v14, v3}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V

    goto :goto_4e

    :cond_6a
    const-string v2, "RESPONSECODE"

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v16

    const-string v2, "DOWNLOADURL"

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v2, "URLLIST"

    const-string v3, ""

    invoke-virtual {v15, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const-string v2, "TBSAPKSERVERVERSION"

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v19

    const-string v2, "DOWNLOADMAXFLOW"

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v20

    const-string v2, "DOWNLOAD_MIN_FREE_SPACE"

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v21

    const-string v2, "DOWNLOAD_SUCCESS_MAX_RETRYTIMES"

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v22

    const-string v2, "DOWNLOAD_FAILED_MAX_RETRYTIMES"

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v23

    const-string v2, "DOWNLOAD_SINGLE_TIMEOUT"

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v24

    const-string v2, "TBSAPKFILESIZE"

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v26

    const-string v2, "RETRY_INTERVAL"

    const-wide/16 v4, 0x0

    invoke-virtual {v15, v2, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v12

    const-string v2, "FLOWCTR"

    const/4 v3, -0x1

    invoke-virtual {v15, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v28

    const/4 v2, 0x0

    :try_start_b8
    const-string v3, "USEBBACKUPVER"

    invoke-virtual {v15, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_bd
    .catch Ljava/lang/Exception; {:try_start_b8 .. :try_end_bd} :catch_819

    move-result v2

    :goto_be
    iget-object v3, v14, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    const-string v4, "use_backup_version"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_ed

    sget-boolean v2, Lcom/tencent/smtt/sdk/QbSdk;->i:Z

    if-eqz v2, :cond_ed

    sget-object v2, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/smtt/sdk/TbsShareManager;->isThirdPartyApp(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_ed

    :try_start_d7
    const-string v2, "BUGLY"

    const/4 v3, 0x0

    invoke-virtual {v15, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {}, Lcom/tencent/smtt/sdk/TbsExtensionFunctionManager;->getInstance()Lcom/tencent/smtt/sdk/TbsExtensionFunctionManager;

    move-result-object v3

    sget-object v4, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    const-string v5, "bugly_switch.txt"

    const/4 v6, 0x1

    if-ne v2, v6, :cond_270

    const/4 v2, 0x1

    :goto_ea
    invoke-virtual {v3, v4, v5, v2}, Lcom/tencent/smtt/sdk/TbsExtensionFunctionManager;->setFunctionEnable(Landroid/content/Context;Ljava/lang/String;Z)Z
    :try_end_ed
    .catch Ljava/lang/Throwable; {:try_start_d7 .. :try_end_ed} :catch_273

    :cond_ed
    :goto_ed
    if-eqz p2, :cond_18c

    :try_start_ef
    const-string v2, "TEMPLATESWITCH"

    const/4 v3, 0x0

    invoke-virtual {v15, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    and-int/lit8 v2, v3, 0x1

    if-eqz v2, :cond_28e

    const/4 v2, 0x1

    :goto_fb
    invoke-static {}, Lcom/tencent/smtt/sdk/TbsExtensionFunctionManager;->getInstance()Lcom/tencent/smtt/sdk/TbsExtensionFunctionManager;

    move-result-object v4

    sget-object v5, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    const-string v6, "cookie_switch.txt"

    invoke-virtual {v4, v5, v6, v2}, Lcom/tencent/smtt/sdk/TbsExtensionFunctionManager;->setFunctionEnable(Landroid/content/Context;Ljava/lang/String;Z)Z

    const-string v4, "TbsDownload"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "useCookieCompatiable:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/tencent/smtt/utils/TbsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    and-int/lit8 v2, v3, 0x2

    if-eqz v2, :cond_291

    const/4 v2, 0x1

    :goto_11f
    invoke-static {}, Lcom/tencent/smtt/sdk/TbsExtensionFunctionManager;->getInstance()Lcom/tencent/smtt/sdk/TbsExtensionFunctionManager;

    move-result-object v4

    sget-object v5, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    const-string v6, "disable_get_apk_version_switch.txt"

    invoke-virtual {v4, v5, v6, v2}, Lcom/tencent/smtt/sdk/TbsExtensionFunctionManager;->setFunctionEnable(Landroid/content/Context;Ljava/lang/String;Z)Z

    const-string v4, "TbsDownload"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "disableGetApkVersionByReadFile:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/tencent/smtt/utils/TbsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    and-int/lit8 v2, v3, 0x4

    if-eqz v2, :cond_294

    const/4 v2, 0x1

    :goto_143
    invoke-static {}, Lcom/tencent/smtt/sdk/TbsExtensionFunctionManager;->getInstance()Lcom/tencent/smtt/sdk/TbsExtensionFunctionManager;

    move-result-object v4

    sget-object v5, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    const-string v6, "disable_unpreinit.txt"

    invoke-virtual {v4, v5, v6, v2}, Lcom/tencent/smtt/sdk/TbsExtensionFunctionManager;->setFunctionEnable(Landroid/content/Context;Ljava/lang/String;Z)Z

    invoke-static {v2}, Lcom/tencent/smtt/sdk/QbSdk;->setDisableUnpreinitBySwitch(Z)V

    const-string v4, "TbsDownload"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "disableUnpreinitBySwitch:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    and-int/lit8 v2, v3, 0x8

    if-eqz v2, :cond_297

    const/4 v2, 0x1

    :goto_16a
    invoke-static {}, Lcom/tencent/smtt/sdk/TbsExtensionFunctionManager;->getInstance()Lcom/tencent/smtt/sdk/TbsExtensionFunctionManager;

    move-result-object v3

    sget-object v4, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    const-string v5, "disable_use_host_backup_core.txt"

    invoke-virtual {v3, v4, v5, v2}, Lcom/tencent/smtt/sdk/TbsExtensionFunctionManager;->setFunctionEnable(Landroid/content/Context;Ljava/lang/String;Z)Z

    invoke-static {v2}, Lcom/tencent/smtt/sdk/QbSdk;->setDisableUseHostBackupCoreBySwitch(Z)V

    const-string v3, "TbsDownload"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "disableUseHostBackupCoreBySwitch:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_18c
    .catch Ljava/lang/Throwable; {:try_start_ef .. :try_end_18c} :catch_29a

    :cond_18c
    :goto_18c
    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    const/4 v3, 0x1

    const-string v5, ""

    :try_start_195
    const-string v10, "PKGMD5"

    invoke-virtual {v15, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_19a
    .catch Ljava/lang/Exception; {:try_start_195 .. :try_end_19a} :catch_2be

    move-result-object v10

    :try_start_19b
    const-string v9, "RESETX5"

    invoke-virtual {v15, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_1a0
    .catch Ljava/lang/Exception; {:try_start_19b .. :try_end_1a0} :catch_7ef

    move-result v9

    :try_start_1a1
    const-string v8, "UPLOADLOG"

    invoke-virtual {v15, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_1a6
    .catch Ljava/lang/Exception; {:try_start_1a1 .. :try_end_1a6} :catch_7f9

    move-result v8

    :try_start_1a7
    const-string v7, "RESETTOKEN"

    invoke-virtual {v15, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_825

    const-string v7, "RESETTOKEN"

    invoke-virtual {v15, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_1b4
    .catch Ljava/lang/Exception; {:try_start_1a7 .. :try_end_1b4} :catch_804

    move-result v2

    if-eqz v2, :cond_2b5

    const/4 v2, 0x1

    :goto_1b8
    move v7, v2

    :goto_1b9
    :try_start_1b9
    const-string v2, "SETTOKEN"

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1c7

    const-string v2, "SETTOKEN"

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :cond_1c7
    const-string v2, "ENABLE_LOAD_RENAME_FILE_LOCK"

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1d9

    const-string v2, "ENABLE_LOAD_RENAME_FILE_LOCK"

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_2b8

    const/4 v2, 0x1

    :goto_1d8
    move v6, v2

    :cond_1d9
    const-string v2, "ENABLE_LOAD_RENAME_FILE_LOCK_WAIT"

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_822

    const-string v2, "ENABLE_LOAD_RENAME_FILE_LOCK_WAIT"

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_1e6
    .catch Ljava/lang/Exception; {:try_start_1b9 .. :try_end_1e6} :catch_810

    move-result v2

    if-eqz v2, :cond_2bb

    const/4 v2, 0x1

    :goto_1ea
    move-object v11, v10

    move v10, v9

    move v9, v8

    move v8, v7

    move v7, v6

    move v6, v2

    :goto_1f0
    :try_start_1f0
    const-string v2, "RESETDECOUPLECORE"

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_1f5
    .catch Ljava/lang/Exception; {:try_start_1f0 .. :try_end_1f5} :catch_2ce

    move-result v2

    :goto_1f6
    const/4 v3, 0x0

    :try_start_1f7
    const-string v4, "RESETTODECOUPLECORE"

    invoke-virtual {v15, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_1fc
    .catch Ljava/lang/Exception; {:try_start_1f7 .. :try_end_1fc} :catch_7ec

    move-result v3

    :goto_1fd
    sget-object v4, Lcom/tencent/smtt/sdk/TbsDownloader;->f:Ljava/lang/Object;

    monitor-enter v4

    if-eqz v8, :cond_20f

    :try_start_202
    iget-object v8, v14, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    const-string v29, "tbs_deskey_token"

    const-string v30, ""

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_20f
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_243

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v29, 0x60

    move/from16 v0, v29

    if-ne v8, v0, :cond_243

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "&"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/tencent/smtt/utils/o;->c()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v8, v14, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    const-string v29, "tbs_deskey_token"

    move-object/from16 v0, v29

    invoke-interface {v8, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_243
    monitor-exit v4
    :try_end_244
    .catchall {:try_start_202 .. :try_end_244} :catchall_2d2

    const/4 v4, 0x1

    if-ne v10, v4, :cond_2df

    if-eqz p2, :cond_2d5

    const/16 v2, -0x6e

    invoke-virtual {v14, v2}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V

    :goto_24e
    sget-object v4, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    const/4 v2, 0x1

    if-ne v3, v2, :cond_2dc

    const/4 v2, 0x1

    :goto_254
    invoke-static {v4, v2}, Lcom/tencent/smtt/sdk/QbSdk;->reset(Landroid/content/Context;Z)V

    const-string v2, "TbsDownload"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[TbsDownloader.readResponse] return #3,needResetTbs=1,isQuery="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    goto/16 :goto_31

    :cond_270
    const/4 v2, 0x0

    goto/16 :goto_ea

    :catch_273
    move-exception v2

    const-string v3, "qbsdk"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "throwable:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_ed

    :cond_28e
    const/4 v2, 0x0

    goto/16 :goto_fb

    :cond_291
    const/4 v2, 0x0

    goto/16 :goto_11f

    :cond_294
    const/4 v2, 0x0

    goto/16 :goto_143

    :cond_297
    const/4 v2, 0x0

    goto/16 :goto_16a

    :catch_29a
    move-exception v2

    const-string v3, "qbsdk"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "throwable:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_18c

    :cond_2b5
    const/4 v2, 0x0

    goto/16 :goto_1b8

    :cond_2b8
    const/4 v2, 0x0

    goto/16 :goto_1d8

    :cond_2bb
    const/4 v2, 0x0

    goto/16 :goto_1ea

    :catch_2be
    move-exception v10

    move-object/from16 v31, v5

    move v5, v6

    move v6, v2

    move-object/from16 v2, v31

    :goto_2c5
    move v10, v8

    move-object v11, v9

    move v8, v6

    move v9, v7

    move v7, v5

    move v6, v3

    move-object v5, v2

    goto/16 :goto_1f0

    :catch_2ce
    move-exception v2

    move v2, v4

    goto/16 :goto_1f6

    :catchall_2d2
    move-exception v2

    :try_start_2d3
    monitor-exit v4
    :try_end_2d4
    .catchall {:try_start_2d3 .. :try_end_2d4} :catchall_2d2

    throw v2

    :cond_2d5
    const/16 v2, -0xd2

    invoke-virtual {v14, v2}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V

    goto/16 :goto_24e

    :cond_2dc
    const/4 v2, 0x0

    goto/16 :goto_254

    :cond_2df
    if-nez v7, :cond_2e4

    invoke-virtual {v14, v7}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setTbsCoreLoadRenameFileLockEnable(Z)V

    :cond_2e4
    if-nez v6, :cond_2e9

    invoke-virtual {v14, v6}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setTbsCoreLoadRenameFileLockWaitEnable(Z)V

    :cond_2e9
    const/4 v3, 0x1

    if-ne v2, v3, :cond_2f1

    sget-object v2, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/smtt/sdk/QbSdk;->resetDecoupleCore(Landroid/content/Context;)V

    :cond_2f1
    const/4 v2, 0x1

    if-ne v9, v2, :cond_306

    sget-object v2, Lcom/tencent/smtt/sdk/TbsDownloader;->d:Landroid/os/Handler;

    const/16 v3, 0x68

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    sget-object v2, Lcom/tencent/smtt/sdk/TbsDownloader;->d:Landroid/os/Handler;

    const/16 v3, 0x68

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    :cond_306
    const-wide/32 v4, 0x15180

    const/4 v2, 0x1

    move/from16 v0, v28

    if-ne v0, v2, :cond_81c

    const-wide/32 v2, 0x93a80

    cmp-long v2, v12, v2

    if-lez v2, :cond_81f

    const-wide/32 v2, 0x93a80

    :goto_318
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-lez v6, :cond_81c

    :goto_31e
    invoke-static {}, Lcom/tencent/smtt/sdk/TbsDownloader;->getRetryIntervalInSeconds()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-ltz v4, :cond_32c

    invoke-static {}, Lcom/tencent/smtt/sdk/TbsDownloader;->getRetryIntervalInSeconds()J

    move-result-wide v2

    :cond_32c
    iget-object v4, v14, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    const-string v5, "retry_interval"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz p2, :cond_3e9

    :try_start_33b
    const-string v4, "DECOUPLECOREVERSION"

    invoke-virtual {v15, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_340
    .catch Ljava/lang/Exception; {:try_start_33b .. :try_end_340} :catch_7e9

    move-result v2

    :goto_341
    :try_start_341
    sget-object v4, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v4}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v4

    iget-object v4, v4, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v5, "tbs_downloaddecouplecore"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_34f
    .catch Ljava/lang/Exception; {:try_start_341 .. :try_end_34f} :catch_7e6

    move-result v3

    :goto_350
    if-eqz p2, :cond_366

    sget-object v4, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v4}, Lcom/tencent/smtt/sdk/TbsShareManager;->isThirdPartyApp(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_366

    if-nez v2, :cond_366

    invoke-static {}, Lcom/tencent/smtt/sdk/am;->a()Lcom/tencent/smtt/sdk/am;

    move-result-object v2

    sget-object v4, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-virtual {v2, v4}, Lcom/tencent/smtt/sdk/am;->i(Landroid/content/Context;)I

    move-result v2

    :cond_366
    const-string v4, "TbsDownload"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "in response decoupleCoreVersion is "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, v14, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    const-string v5, "tbs_decouplecoreversion"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v14, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    const-string v5, "tbs_downloaddecouplecore"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v4}, Lcom/tencent/smtt/sdk/TbsShareManager;->isThirdPartyApp(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_3bb

    if-lez v2, :cond_3fa

    invoke-static {}, Lcom/tencent/smtt/sdk/am;->a()Lcom/tencent/smtt/sdk/am;

    move-result-object v4

    sget-object v5, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lcom/tencent/smtt/sdk/am;->i(Landroid/content/Context;)I

    move-result v4

    if-eq v2, v4, :cond_3fa

    invoke-static {}, Lcom/tencent/smtt/sdk/am;->a()Lcom/tencent/smtt/sdk/am;

    move-result-object v4

    sget-object v5, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lcom/tencent/smtt/sdk/am;->j(Landroid/content/Context;)I

    move-result v4

    if-ne v2, v4, :cond_3fa

    invoke-static {}, Lcom/tencent/smtt/sdk/am;->a()Lcom/tencent/smtt/sdk/am;

    move-result-object v2

    sget-object v4, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-virtual {v2, v4}, Lcom/tencent/smtt/sdk/am;->o(Landroid/content/Context;)Z

    :cond_3bb
    :goto_3bb
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_40c

    sget-object v2, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/smtt/sdk/TbsShareManager;->isThirdPartyApp(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_40c

    iget-object v2, v14, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    const-string v3, "tbs_needdownload"

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v14}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->commit()V

    if-eqz p2, :cond_3df

    sget-object v2, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    const/4 v3, 0x0

    move/from16 v0, v19

    invoke-static {v2, v0, v3}, Lcom/tencent/smtt/sdk/TbsShareManager;->writeCoreInfoForThirdPartyApp(Landroid/content/Context;IZ)V

    :cond_3df
    const-string v2, "TbsDownload"

    const-string v3, "[TbsDownloader.readResponse] return #4,current app is third app..."

    invoke-static {v2, v3}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    goto/16 :goto_31

    :cond_3e9
    :try_start_3e9
    sget-object v4, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v4}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v4

    iget-object v4, v4, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v5, "tbs_decouplecoreversion"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_3f7
    .catch Ljava/lang/Exception; {:try_start_3e9 .. :try_end_3f7} :catch_7e9

    move-result v2

    goto/16 :goto_341

    :cond_3fa
    if-nez v2, :cond_3bb

    :try_start_3fc
    invoke-static {}, Lcom/tencent/smtt/sdk/am;->a()Lcom/tencent/smtt/sdk/am;

    move-result-object v2

    sget-object v4, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-virtual {v2, v4}, Lcom/tencent/smtt/sdk/am;->q(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/smtt/utils/k;->b(Ljava/io/File;)V
    :try_end_409
    .catch Ljava/lang/Throwable; {:try_start_3fc .. :try_end_409} :catch_40a

    goto :goto_3bb

    :catch_40a
    move-exception v2

    goto :goto_3bb

    :cond_40c
    const-string v2, "TbsDownload"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "in response responseCode is "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v16, :cond_472

    iget-object v2, v14, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    const-string v3, "tbs_responsecode"

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v14, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    const-string v3, "tbs_needdownload"

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_45f

    iget-object v2, v14, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    const-string v3, "tbs_download_interrupt_code_reason"

    const/16 v4, -0x6f

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_447
    invoke-virtual {v14}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->commit()V

    sget-object v2, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/smtt/sdk/TbsShareManager;->isThirdPartyApp(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_455

    invoke-static {}, Lcom/tencent/smtt/sdk/TbsDownloader;->startDecoupleCoreIfNeeded()Z

    :cond_455
    const-string v2, "TbsDownload"

    const-string v3, "[TbsDownloader.readResponse] return #5,responseCode=0"

    invoke-static {v2, v3}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    goto/16 :goto_31

    :cond_45f
    iget-object v2, v14, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    const-string v3, "tbs_download_interrupt_code_reason"

    const/16 v4, -0xd3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, -0xd3

    invoke-virtual {v14, v2}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V

    goto :goto_447

    :cond_472
    sget-object v2, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v2

    iget-object v2, v2, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v4, "tbs_download_version"

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    move/from16 v0, v19

    if-le v4, v0, :cond_493

    sget-object v2, Lcom/tencent/smtt/sdk/TbsDownloader;->g:Lcom/tencent/smtt/sdk/ag;

    invoke-virtual {v2}, Lcom/tencent/smtt/sdk/ag;->d()V

    invoke-static {}, Lcom/tencent/smtt/sdk/am;->a()Lcom/tencent/smtt/sdk/am;

    move-result-object v2

    sget-object v5, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-virtual {v2, v5}, Lcom/tencent/smtt/sdk/am;->p(Landroid/content/Context;)V

    :cond_493
    const/4 v2, 0x0

    sget-object v5, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v5}, Lcom/tencent/smtt/sdk/TbsShareManager;->isThirdPartyApp(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_4cb

    invoke-static {}, Lcom/tencent/smtt/sdk/am;->a()Lcom/tencent/smtt/sdk/am;

    move-result-object v5

    sget-object v6, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-virtual {v5, v6}, Lcom/tencent/smtt/sdk/am;->h(Landroid/content/Context;)I

    move-result v5

    move/from16 v0, v19

    if-lt v5, v0, :cond_4ab

    const/4 v2, 0x1

    :cond_4ab
    const-string v6, "TbsDownload"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "tmpCoreVersion is "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " tbsDownloadVersion is"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4cb
    move/from16 v0, p1

    move/from16 v1, v19

    if-ge v0, v1, :cond_4d9

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4d9

    if-eqz v2, :cond_592

    :cond_4d9
    const/4 v2, 0x1

    if-eq v3, v2, :cond_592

    iget-object v2, v14, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    const-string v3, "tbs_needdownload"

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v2, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_56a

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_538

    iget-object v2, v14, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    const-string v3, "tbs_download_interrupt_code_reason"

    const/16 v5, -0x7c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_4fa
    invoke-virtual {v14}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->commit()V

    const-string v2, "TbsDownload"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "version error or downloadUrl empty ,return ahead tbsLocalVersion="

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " tbsDownloadVersion="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " tbsLastDownloadVersion="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " downloadUrl="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    goto/16 :goto_31

    :cond_538
    if-gtz v19, :cond_548

    iget-object v2, v14, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    const-string v3, "tbs_download_interrupt_code_reason"

    const/16 v5, -0x7d

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4fa

    :cond_548
    move/from16 v0, p1

    move/from16 v1, v19

    if-lt v0, v1, :cond_55c

    iget-object v2, v14, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    const-string v3, "tbs_download_interrupt_code_reason"

    const/16 v5, -0x7f

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4fa

    :cond_55c
    iget-object v2, v14, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    const-string v3, "tbs_download_interrupt_code_reason"

    const/16 v5, -0x70

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4fa

    :cond_56a
    const/16 v2, -0xd4

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_584

    const/16 v2, -0xd9

    :cond_574
    :goto_574
    iget-object v3, v14, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    const-string v5, "tbs_download_interrupt_code_reason"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v14, v2}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V

    goto/16 :goto_4fa

    :cond_584
    if-gtz v19, :cond_589

    const/16 v2, -0xda

    goto :goto_574

    :cond_589
    move/from16 v0, p1

    move/from16 v1, v19

    if-lt v0, v1, :cond_574

    const/16 v2, -0xdb

    goto :goto_574

    :cond_592
    iget-object v2, v14, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v4, "tbs_downloadurl"

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5c0

    sget-object v2, Lcom/tencent/smtt/sdk/TbsDownloader;->g:Lcom/tencent/smtt/sdk/ag;

    invoke-virtual {v2}, Lcom/tencent/smtt/sdk/ag;->d()V

    iget-object v2, v14, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    const-string v4, "tbs_download_failed_retrytimes"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v14, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    const-string v4, "tbs_download_success_retrytimes"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5c0
    iget-object v2, v14, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    const-string v4, "tbs_download_version"

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "TbsDownload"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "put KEY_TBS_DOWNLOAD_V is "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-lez v19, :cond_606

    const/4 v2, 0x1

    if-ne v3, v2, :cond_6b9

    iget-object v2, v14, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    const-string v4, "tbs_download_version_type"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_5f2
    const-string v2, "TbsDownload"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "put KEY_TBS_DOWNLOAD_V_TYPE is "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_606
    iget-object v2, v14, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    const-string v3, "tbs_downloadurl"

    move-object/from16 v0, v17

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v14, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    const-string v3, "tbs_downloadurl_list"

    move-object/from16 v0, v18

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v14, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    const-string v3, "tbs_responsecode"

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v14, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    const-string v3, "tbs_download_maxflow"

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v14, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    const-string v3, "tbs_download_min_free_space"

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v14, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    const-string v3, "tbs_download_success_max_retrytimes"

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v14, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    const-string v3, "tbs_download_failed_max_retrytimes"

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v14, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    const-string v3, "tbs_single_timeout"

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v14, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    const-string v3, "tbs_apkfilesize"

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v14}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->commit()V

    if-eqz v11, :cond_671

    iget-object v2, v14, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    const-string v3, "tbs_apk_md5"

    invoke-interface {v2, v3, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_671
    if-nez p3, :cond_6da

    invoke-static {}, Lcom/tencent/smtt/sdk/am;->a()Lcom/tencent/smtt/sdk/am;

    move-result-object v2

    sget-object v3, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    move/from16 v0, v19

    invoke-virtual {v2, v3, v0}, Lcom/tencent/smtt/sdk/am;->b(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_6da

    if-eqz p2, :cond_6c7

    iget-object v2, v14, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    const-string v3, "tbs_download_interrupt_code_reason"

    const/16 v4, -0x71

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_690
    iget-object v2, v14, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    const-string v3, "tbs_needdownload"

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "TbsDownload"

    const-string v3, "[TbsDownloader.readResponse] ##6 set needDownload=false"

    invoke-static {v2, v3}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_6a0
    const-string v2, "stop_pre_oat"

    const/4 v3, 0x0

    invoke-virtual {v15, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_6b3

    iget-object v2, v14, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    const-string v3, "tbs_stop_preoat"

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6b3
    invoke-virtual {v14}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->commit()V

    const/4 v2, 0x1

    goto/16 :goto_31

    :cond_6b9
    iget-object v2, v14, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    const-string v4, "tbs_download_version_type"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5f2

    :cond_6c7
    iget-object v2, v14, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    const-string v3, "tbs_download_interrupt_code_reason"

    const/16 v4, -0xd5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, -0xd5

    invoke-virtual {v14, v2}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V

    goto :goto_690

    :cond_6da
    if-nez p3, :cond_753

    sget-object v3, Lcom/tencent/smtt/sdk/TbsDownloader;->g:Lcom/tencent/smtt/sdk/ag;

    const/4 v2, 0x1

    move/from16 v0, v16

    if-eq v0, v2, :cond_6e8

    const/4 v2, 0x2

    move/from16 v0, v16

    if-ne v0, v2, :cond_745

    :cond_6e8
    const/4 v2, 0x1

    :goto_6e9
    move/from16 v0, p3

    invoke-virtual {v3, v0, v2}, Lcom/tencent/smtt/sdk/ag;->a(ZZ)Z

    move-result v2

    if-eqz v2, :cond_753

    iget-object v2, v14, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    const-string v3, "tbs_needdownload"

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/smtt/sdk/TbsLogReport;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/smtt/sdk/TbsLogReport;->tbsLogInfo()Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;

    move-result-object v2

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->setErrorCode(I)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "use local backup apk in needDownload"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/tencent/smtt/sdk/TbsDownloader;->g:Lcom/tencent/smtt/sdk/ag;

    iget-object v4, v4, Lcom/tencent/smtt/sdk/ag;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->setFailDetail(Ljava/lang/String;)V

    sget-object v3, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v3}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v3

    iget-object v3, v3, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v4, "tbs_downloaddecouplecore"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_747

    sget-object v3, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v3}, Lcom/tencent/smtt/sdk/TbsLogReport;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v3

    sget-object v4, Lcom/tencent/smtt/sdk/TbsLogReport$EventType;->TYPE_DOWNLOAD_DECOUPLE:Lcom/tencent/smtt/sdk/TbsLogReport$EventType;

    invoke-virtual {v3, v4, v2}, Lcom/tencent/smtt/sdk/TbsLogReport;->eventReport(Lcom/tencent/smtt/sdk/TbsLogReport$EventType;Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;)V

    :goto_73c
    const-string v2, "TbsDownload"

    const-string v3, "[TbsDownloader.readResponse] ##7 set needDownload=false"

    invoke-static {v2, v3}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6a0

    :cond_745
    const/4 v2, 0x0

    goto :goto_6e9

    :cond_747
    sget-object v3, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v3}, Lcom/tencent/smtt/sdk/TbsLogReport;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v3

    sget-object v4, Lcom/tencent/smtt/sdk/TbsLogReport$EventType;->TYPE_DOWNLOAD:Lcom/tencent/smtt/sdk/TbsLogReport$EventType;

    invoke-virtual {v3, v4, v2}, Lcom/tencent/smtt/sdk/TbsLogReport;->eventReport(Lcom/tencent/smtt/sdk/TbsLogReport$EventType;Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;)V

    goto :goto_73c

    :cond_753
    sget-object v2, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v2

    iget-object v2, v2, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "tbs_download_version_type"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_7cd

    sget-object v2, Lcom/tencent/smtt/sdk/TbsDownloader;->g:Lcom/tencent/smtt/sdk/ag;

    invoke-virtual {v2}, Lcom/tencent/smtt/sdk/ag;->a()Z

    move-result v2

    if-eqz v2, :cond_7cd

    iget-object v2, v14, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    const-string v3, "tbs_needdownload"

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/smtt/sdk/TbsLogReport;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/smtt/sdk/TbsLogReport;->tbsLogInfo()Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;

    move-result-object v2

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->setErrorCode(I)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "installDecoupleCoreFromBackup"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/tencent/smtt/sdk/TbsDownloader;->g:Lcom/tencent/smtt/sdk/ag;

    iget-object v4, v4, Lcom/tencent/smtt/sdk/ag;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->setFailDetail(Ljava/lang/String;)V

    sget-object v3, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v3}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v3

    iget-object v3, v3, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v4, "tbs_downloaddecouplecore"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_7c1

    sget-object v3, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v3}, Lcom/tencent/smtt/sdk/TbsLogReport;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v3

    sget-object v4, Lcom/tencent/smtt/sdk/TbsLogReport$EventType;->TYPE_DOWNLOAD_DECOUPLE:Lcom/tencent/smtt/sdk/TbsLogReport$EventType;

    invoke-virtual {v3, v4, v2}, Lcom/tencent/smtt/sdk/TbsLogReport;->eventReport(Lcom/tencent/smtt/sdk/TbsLogReport$EventType;Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;)V

    :goto_7b8
    const-string v2, "TbsDownload"

    const-string v3, "[TbsDownloader.readResponse] ##8 set needDownload=false"

    invoke-static {v2, v3}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6a0

    :cond_7c1
    sget-object v3, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v3}, Lcom/tencent/smtt/sdk/TbsLogReport;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v3

    sget-object v4, Lcom/tencent/smtt/sdk/TbsLogReport$EventType;->TYPE_DOWNLOAD:Lcom/tencent/smtt/sdk/TbsLogReport$EventType;

    invoke-virtual {v3, v4, v2}, Lcom/tencent/smtt/sdk/TbsLogReport;->eventReport(Lcom/tencent/smtt/sdk/TbsLogReport$EventType;Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;)V

    goto :goto_7b8

    :cond_7cd
    if-nez p2, :cond_7d4

    const/16 v2, -0xd8

    invoke-virtual {v14, v2}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V

    :cond_7d4
    iget-object v2, v14, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    const-string v3, "tbs_needdownload"

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "TbsDownload"

    const-string v3, "[TbsDownloader.readResponse] ##9 set needDownload=true"

    invoke-static {v2, v3}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6a0

    :catch_7e6
    move-exception v4

    goto/16 :goto_350

    :catch_7e9
    move-exception v4

    goto/16 :goto_341

    :catch_7ec
    move-exception v4

    goto/16 :goto_1fd

    :catch_7ef
    move-exception v9

    move-object v9, v10

    move/from16 v31, v6

    move v6, v2

    move-object v2, v5

    move/from16 v5, v31

    goto/16 :goto_2c5

    :catch_7f9
    move-exception v8

    move v8, v9

    move-object v9, v10

    move/from16 v31, v2

    move-object v2, v5

    move v5, v6

    move/from16 v6, v31

    goto/16 :goto_2c5

    :catch_804
    move-exception v7

    move v7, v8

    move v8, v9

    move-object v9, v10

    move-object/from16 v31, v5

    move v5, v6

    move v6, v2

    move-object/from16 v2, v31

    goto/16 :goto_2c5

    :catch_810
    move-exception v2

    move-object v2, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v9

    move-object v9, v10

    goto/16 :goto_2c5

    :catch_819
    move-exception v3

    goto/16 :goto_be

    :cond_81c
    move-wide v2, v4

    goto/16 :goto_31e

    :cond_81f
    move-wide v2, v12

    goto/16 :goto_318

    :cond_822
    move v2, v3

    goto/16 :goto_1ea

    :cond_825
    move v7, v2

    goto/16 :goto_1b9
.end method

.method static synthetic a(ZZ)Z
    .registers 3

    invoke-static {p0, p1}, Lcom/tencent/smtt/sdk/TbsDownloader;->b(ZZ)Z

    move-result v0

    return v0
.end method

.method static synthetic a(ZZZ)Z
    .registers 4

    invoke-static {p0, p1, p2}, Lcom/tencent/smtt/sdk/TbsDownloader;->c(ZZZ)Z

    move-result v0

    return v0
.end method

.method static synthetic b()Lcom/tencent/smtt/sdk/ag;
    .registers 1

    sget-object v0, Lcom/tencent/smtt/sdk/TbsDownloader;->g:Lcom/tencent/smtt/sdk/ag;

    return-object v0
.end method

.method protected static b(I)Ljava/io/File;
    .registers 10

    const/4 v8, 0x4

    const/4 v3, 0x0

    invoke-static {}, Lcom/tencent/smtt/sdk/TbsShareManager;->getCoreProviderAppList()[Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x0

    array-length v5, v4

    move v2, v3

    :goto_9
    if-ge v2, v5, :cond_49

    aget-object v6, v4, v2

    new-instance v1, Ljava/io/File;

    sget-object v0, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v0, v6, v8, v3}, Lcom/tencent/smtt/utils/k;->a(Landroid/content/Context;Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v7

    sget-object v0, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsDownloader;->getOverSea(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4a

    const-string v0, "x5.oversea.tbs.org"

    :goto_1f
    invoke-direct {v1, v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4d

    sget-object v0, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/a;->a(Landroid/content/Context;Ljava/io/File;)I

    move-result v0

    if-ne v0, p0, :cond_4d

    const-string v0, "TbsDownload"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "local tbs version fond,path = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    :cond_49
    :goto_49
    return-object v0

    :cond_4a
    const-string v0, "x5.tbs.org"

    goto :goto_1f

    :cond_4d
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v1, v6, v8, v3}, Lcom/tencent/smtt/utils/k;->a(Landroid/content/Context;Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v1

    const-string v6, "x5.tbs.decouple"

    invoke-direct {v0, v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_81

    sget-object v1, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/tencent/smtt/utils/a;->a(Landroid/content/Context;Ljava/io/File;)I

    move-result v1

    if-ne v1, p0, :cond_81

    const-string v1, "TbsDownload"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "local tbs version fond,path = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_49

    :cond_81
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_9
.end method

.method private static b(ZZZ)Lorg/json/JSONObject;
    .registers 16

    const/4 v5, -0x1

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v0, "TbsDownload"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[TbsDownloader.postJsonData]isQuery: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " forDecoupleCore is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v7

    sget-object v0, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsDownloader;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    sget-object v0, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/utils/b;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    sget-object v0, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/utils/b;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    sget-object v0, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/utils/b;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    const-string v0, ""

    const-string v2, ""

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2c1

    move-object v6, v1

    :goto_4e
    :try_start_4e
    sget-object v0, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    const-string v12, "phone"

    invoke-virtual {v0, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_1dc

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_5d} :catch_1d8

    move-result-object v0

    :goto_5e
    if-eqz v0, :cond_2be

    :goto_60
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_65
    const-string v1, "TIMEZONEID"

    invoke-virtual {v2, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "COUNTRYISO"

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "PROTOCOLVERSION"

    const/4 v1, 0x1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    sget-object v0, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsShareManager;->isThirdPartyApp(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1f0

    sget-boolean v0, Lcom/tencent/smtt/sdk/QbSdk;->c:Z

    if-eqz v0, :cond_1df

    sget-object v0, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tencent/smtt/sdk/TbsShareManager;->a(Landroid/content/Context;Z)I

    move-result v0

    :cond_88
    :goto_88
    move v1, v0

    :goto_89
    if-eqz p0, :cond_278

    const-string v0, "FUNCTION"

    const/4 v5, 0x2

    invoke-virtual {v2, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :goto_91
    sget-object v0, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsShareManager;->isThirdPartyApp(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_287

    invoke-static {}, Lcom/tencent/smtt/sdk/TbsDownloader;->g()Lorg/json/JSONArray;

    move-result-object v0

    const-string v5, "TBSVLARR"

    invoke-virtual {v2, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v5, v7, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    const-string v6, "last_thirdapp_sendrequest_coreversion"

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v7}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->commit()V

    sget-boolean v0, Lcom/tencent/smtt/sdk/QbSdk;->c:Z

    if-eqz v0, :cond_ba

    const-string v0, "THIRDREQ"

    const/4 v5, 0x1

    invoke-virtual {v2, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_ba
    :goto_ba
    sget-object v0, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v5, "APPN"

    invoke-virtual {v2, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "APPVN"

    iget-object v5, v7, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v6, "app_versionname"

    const/4 v12, 0x0

    invoke-interface {v5, v6, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/tencent/smtt/sdk/TbsDownloader;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "APPVC"

    iget-object v5, v7, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v6, "app_versioncode"

    const/4 v12, 0x0

    invoke-interface {v5, v6, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v2, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "APPMETA"

    iget-object v5, v7, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v6, "app_metadata"

    const/4 v12, 0x0

    invoke-interface {v5, v6, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/tencent/smtt/sdk/TbsDownloader;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "TBSSDKV"

    const v5, 0xaa71

    invoke-virtual {v2, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "TBSV"

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v5, "DOWNLOADDECOUPLECORE"

    if-eqz p2, :cond_2a5

    move v0, v4

    :goto_109
    invoke-virtual {v2, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v5, v7, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    const-string v6, "tbs_downloaddecouplecore"

    if-eqz p2, :cond_2a8

    move v0, v4

    :goto_113
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v5, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v7}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->commit()V

    if-eqz v1, :cond_12a

    const-string v0, "TBSBACKUPV"

    sget-object v5, Lcom/tencent/smtt/sdk/TbsDownloader;->g:Lcom/tencent/smtt/sdk/ag;

    invoke-virtual {v5}, Lcom/tencent/smtt/sdk/ag;->b()I

    move-result v5

    invoke-virtual {v2, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_12a
    const-string v0, "CPU"

    sget-object v5, Lcom/tencent/smtt/sdk/TbsDownloader;->e:Ljava/lang/String;

    invoke-virtual {v2, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "UA"

    invoke-virtual {v2, v0, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "IMSI"

    invoke-static {v9}, Lcom/tencent/smtt/sdk/TbsDownloader;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "IMEI"

    invoke-static {v10}, Lcom/tencent/smtt/sdk/TbsDownloader;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "ANDROID_ID"

    invoke-static {v11}, Lcom/tencent/smtt/sdk/TbsDownloader;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v0, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsShareManager;->isThirdPartyApp(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_178

    if-eqz v1, :cond_2ae

    const-string v5, "STATUS"

    sget-object v0, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/tencent/smtt/sdk/QbSdk;->a(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_2ab

    move v0, v3

    :goto_166
    invoke-virtual {v2, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :goto_169
    const-string v0, "TBSDV"

    invoke-static {}, Lcom/tencent/smtt/sdk/am;->a()Lcom/tencent/smtt/sdk/am;

    move-result-object v1

    sget-object v5, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-virtual {v1, v5}, Lcom/tencent/smtt/sdk/am;->i(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_178
    sget-object v0, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "request_full_package"

    const/4 v5, 0x0

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sget-object v0, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    const-string v5, "can_unlzma"

    const/4 v6, 0x0

    invoke-static {v0, v5, v6}, Lcom/tencent/smtt/sdk/QbSdk;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2b6

    instance-of v5, v0, Ljava/lang/Boolean;

    if-eqz v5, :cond_2b6

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_19c
    if-eqz v0, :cond_1a1

    if-nez v1, :cond_1a1

    move v3, v4

    :cond_1a1
    if-eqz v3, :cond_1a9

    const-string v0, "REQUEST_LZMA"

    const/4 v1, 0x1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_1a9
    sget-object v0, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsDownloader;->getOverSea(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1b7

    const-string v0, "OVERSEA"

    const/4 v1, 0x1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_1b7
    if-eqz p1, :cond_1bf

    const-string v0, "DOWNLOAD_FOREGROUND"

    const/4 v1, 0x1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1bf
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_1bf} :catch_282

    :cond_1bf
    :goto_1bf
    const-string v0, "TbsDownload"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "[TbsDownloader.postJsonData] jsonData="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :catch_1d8
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1dc
    move-object v0, v1

    goto/16 :goto_5e

    :cond_1df
    :try_start_1df
    sget-object v0, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "tbs_download_version"

    const/4 v5, 0x0

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto/16 :goto_88

    :cond_1f0
    invoke-static {}, Lcom/tencent/smtt/sdk/am;->a()Lcom/tencent/smtt/sdk/am;

    move-result-object v0

    sget-object v1, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/am;->n(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_249

    invoke-static {}, Lcom/tencent/smtt/sdk/am;->a()Lcom/tencent/smtt/sdk/am;

    move-result-object v1

    sget-object v6, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-virtual {v1, v6}, Lcom/tencent/smtt/sdk/am;->m(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_249

    const-string v0, "com.tencent.mobileqq"

    sget-object v1, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2bc

    invoke-static {}, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->clear()V

    sget-object v0, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadUpload;

    move-result-object v0

    iget-object v1, v0, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->a:Ljava/util/Map;

    const-string v6, "tbs_local_core_version"

    const/4 v12, -0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v1, v6, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->commit()V

    invoke-static {}, Lcom/tencent/smtt/sdk/TbsPVConfig;->releaseInstance()V

    sget-object v0, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsPVConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsPVConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/TbsPVConfig;->getLocalCoreVersionMoreTimes()I

    move-result v0

    if-ne v0, v4, :cond_2bc

    invoke-static {}, Lcom/tencent/smtt/sdk/am;->a()Lcom/tencent/smtt/sdk/am;

    move-result-object v0

    sget-object v1, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/am;->j(Landroid/content/Context;)I

    move-result v0

    :cond_249
    :goto_249
    const-string v1, "TbsDownload"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "[TbsDownloader.postJsonData] tbsLocalVersion="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " isDownloadForeground="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2b9

    invoke-static {}, Lcom/tencent/smtt/sdk/am;->a()Lcom/tencent/smtt/sdk/am;

    move-result-object v1

    sget-object v5, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-virtual {v1, v5}, Lcom/tencent/smtt/sdk/am;->m(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_88

    move v0, v3

    goto/16 :goto_88

    :cond_278
    const-string v5, "FUNCTION"

    if-nez v1, :cond_285

    move v0, v3

    :goto_27d
    invoke-virtual {v2, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto/16 :goto_91

    :catch_282
    move-exception v0

    goto/16 :goto_1bf

    :cond_285
    move v0, v4

    goto :goto_27d

    :cond_287
    invoke-static {}, Lcom/tencent/smtt/sdk/TbsDownloader;->i()Lorg/json/JSONArray;

    move-result-object v0

    sget-object v5, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v5}, Lcom/tencent/smtt/utils/Apn;->getApnType(Landroid/content/Context;)I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_ba

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-eqz v5, :cond_ba

    if-nez v1, :cond_ba

    if-eqz p0, :cond_ba

    const-string v5, "TBSBACKUPARR"

    invoke-virtual {v2, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_ba

    :cond_2a5
    move v0, v3

    goto/16 :goto_109

    :cond_2a8
    move v0, v3

    goto/16 :goto_113

    :cond_2ab
    move v0, v4

    goto/16 :goto_166

    :cond_2ae
    const-string v0, "STATUS"

    const/4 v1, 0x0

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_2b4
    .catch Ljava/lang/Exception; {:try_start_1df .. :try_end_2b4} :catch_282

    goto/16 :goto_169

    :cond_2b6
    move v0, v3

    goto/16 :goto_19c

    :cond_2b9
    move v1, v0

    goto/16 :goto_89

    :cond_2bc
    move v0, v5

    goto :goto_249

    :cond_2be
    move-object v0, v2

    goto/16 :goto_60

    :cond_2c1
    move-object v6, v0

    goto/16 :goto_4e
.end method

.method static b(Landroid/content/Context;)V
    .registers 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    const/16 v3, 0xb

    const/4 v2, 0x4

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->clear()V

    invoke-static {p0}, Lcom/tencent/smtt/sdk/TbsLogReport;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/TbsLogReport;->clear()V

    invoke-static {p0}, Lcom/tencent/smtt/sdk/ag;->c(Landroid/content/Context;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_40

    const-string v0, "tbs_extension_config"

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    :goto_1f
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_47

    const-string v0, "tbs_preloadx5_check_cfg_file"

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    :goto_34
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void

    :cond_40
    const-string v0, "tbs_extension_config"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    goto :goto_1f

    :cond_47
    const-string v0, "tbs_preloadx5_check_cfg_file"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    goto :goto_34
.end method

.method private static b(Lorg/json/JSONArray;)V
    .registers 5

    const/4 v1, 0x0

    invoke-static {}, Lcom/tencent/smtt/sdk/TbsShareManager;->getHostCorePathAppDefined()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_26

    invoke-static {}, Lcom/tencent/smtt/sdk/am;->a()Lcom/tencent/smtt/sdk/am;

    move-result-object v0

    invoke-static {}, Lcom/tencent/smtt/sdk/TbsShareManager;->getHostCorePathAppDefined()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/smtt/sdk/am;->a(Ljava/lang/String;)I

    move-result v2

    move v0, v1

    :goto_14
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_21

    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->optInt(I)I

    move-result v3

    if-ne v3, v2, :cond_27

    const/4 v1, 0x1

    :cond_21
    if-nez v1, :cond_26

    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    :cond_26
    return-void

    :cond_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_14
.end method

.method private static b(ZZ)Z
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/tencent/smtt/sdk/TbsDownloader;->c(ZZZ)Z

    move-result v0

    return v0
.end method

.method private static c(Lorg/json/JSONArray;)V
    .registers 10

    const/4 v2, 0x1

    const/4 v1, 0x0

    sget-object v0, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsPVConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsPVConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/TbsPVConfig;->isDisableHostBackupCore()Z

    move-result v0

    if-nez v0, :cond_a6

    invoke-static {}, Lcom/tencent/smtt/sdk/TbsDownloader;->f()[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    move v3, v1

    :goto_14
    if-ge v3, v5, :cond_a6

    aget-object v6, v4, v3

    sget-object v0, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v0, v6}, Lcom/tencent/smtt/sdk/TbsShareManager;->getBackupCoreVersion(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    if-lez v7, :cond_5d

    sget-object v0, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v0, v6, v1}, Lcom/tencent/smtt/sdk/TbsShareManager;->getPackageContext(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_4a

    invoke-static {}, Lcom/tencent/smtt/sdk/am;->a()Lcom/tencent/smtt/sdk/am;

    move-result-object v8

    invoke-virtual {v8, v0}, Lcom/tencent/smtt/sdk/am;->f(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4a

    const-string v0, "TbsDownload"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "host check failed,packageName = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_46
    :goto_46
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_14

    :cond_4a
    move v0, v1

    :goto_4b
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v0, v8, :cond_a9

    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->optInt(I)I

    move-result v8

    if-ne v8, v7, :cond_8c

    move v0, v2

    :goto_58
    if-nez v0, :cond_5d

    invoke-virtual {p0, v7}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    :cond_5d
    sget-object v0, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v0, v6}, Lcom/tencent/smtt/sdk/TbsShareManager;->getBackupDecoupleCoreVersion(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    if-lez v7, :cond_46

    sget-object v0, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v0, v6, v1}, Lcom/tencent/smtt/sdk/TbsShareManager;->getPackageContext(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_8f

    invoke-static {}, Lcom/tencent/smtt/sdk/am;->a()Lcom/tencent/smtt/sdk/am;

    move-result-object v8

    invoke-virtual {v8, v0}, Lcom/tencent/smtt/sdk/am;->f(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_8f

    const-string v0, "TbsDownload"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "host check failed,packageName = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_46

    :cond_8c
    add-int/lit8 v0, v0, 0x1

    goto :goto_4b

    :cond_8f
    move v0, v1

    :goto_90
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v0, v6, :cond_a7

    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->optInt(I)I

    move-result v6

    if-ne v6, v7, :cond_a3

    move v0, v2

    :goto_9d
    if-nez v0, :cond_46

    invoke-virtual {p0, v7}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    goto :goto_46

    :cond_a3
    add-int/lit8 v0, v0, 0x1

    goto :goto_90

    :cond_a6
    return-void

    :cond_a7
    move v0, v1

    goto :goto_9d

    :cond_a9
    move v0, v1

    goto :goto_58
.end method

.method private static c()Z
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Lcom/tencent/smtt/sdk/TbsShareManager;->getCoreProviderAppList()[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    move v1, v0

    :goto_7
    if-ge v1, v3, :cond_14

    aget-object v4, v2, v1

    sget-object v5, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v5, v4}, Lcom/tencent/smtt/sdk/TbsShareManager;->getSharedTbsCoreVersion(Landroid/content/Context;Ljava/lang/String;)I
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_10} :catch_18

    move-result v4

    if-lez v4, :cond_15

    const/4 v0, 0x1

    :cond_14
    :goto_14
    return v0

    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :catch_18
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_14
.end method

.method private static c(ZZZ)Z
    .registers 21

    if-eqz p0, :cond_57

    sget-object v2, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadUpload;

    move-result-object v2

    iget-object v3, v2, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->a:Ljava/util/Map;

    const-string v4, "tbs_needdownload_code"

    const/16 v5, 0x90

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->commit()V

    :cond_18
    :goto_18
    sget-object v2, Lcom/tencent/smtt/sdk/QbSdk;->n:Ljava/util/Map;

    if-eqz v2, :cond_89

    sget-object v2, Lcom/tencent/smtt/sdk/QbSdk;->n:Ljava/util/Map;

    sget-object v3, Lcom/tencent/smtt/sdk/QbSdk;->KEY_SET_SENDREQUEST_AND_UPLOAD:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_89

    sget-object v2, Lcom/tencent/smtt/sdk/QbSdk;->n:Ljava/util/Map;

    sget-object v3, Lcom/tencent/smtt/sdk/QbSdk;->KEY_SET_SENDREQUEST_AND_UPLOAD:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "false"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_89

    const-string v2, "TbsDownload"

    const-string v3, "[TbsDownloader.sendRequest] -- SET_SENDREQUEST_AND_UPLOAD is false"

    invoke-static {v2, v3}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_70

    sget-object v2, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadUpload;

    move-result-object v2

    iget-object v3, v2, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->a:Ljava/util/Map;

    const-string v4, "tbs_needdownload_code"

    const/16 v5, 0x91

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->commit()V

    :cond_55
    :goto_55
    const/4 v2, 0x0

    :goto_56
    return v2

    :cond_57
    if-nez p2, :cond_18

    sget-object v2, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadUpload;

    move-result-object v2

    iget-object v3, v2, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->a:Ljava/util/Map;

    const-string v4, "tbs_startdownload_code"

    const/16 v5, 0xa4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->commit()V

    goto :goto_18

    :cond_70
    if-nez p2, :cond_55

    sget-object v2, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadUpload;

    move-result-object v2

    iget-object v3, v2, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->a:Ljava/util/Map;

    const-string v4, "tbs_startdownload_code"

    const/16 v5, 0xa5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->commit()V

    goto :goto_55

    :cond_89
    const-string v2, "TbsDownload"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[TbsDownloader.sendRequest]isQuery: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " forDecoupleCore is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/smtt/sdk/am;->a()Lcom/tencent/smtt/sdk/am;

    move-result-object v2

    sget-object v3, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/tencent/smtt/sdk/am;->c(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_f2

    const-string v2, "TbsDownload"

    const-string v3, "[TbsDownloader.sendRequest] -- isTbsLocalInstalled!"

    invoke-static {v2, v3}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_d9

    sget-object v2, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadUpload;

    move-result-object v2

    iget-object v3, v2, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->a:Ljava/util/Map;

    const-string v4, "tbs_needdownload_code"

    const/16 v5, 0x92

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->commit()V

    :cond_d6
    :goto_d6
    const/4 v2, 0x0

    goto/16 :goto_56

    :cond_d9
    if-nez p2, :cond_d6

    sget-object v2, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadUpload;

    move-result-object v2

    iget-object v3, v2, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->a:Ljava/util/Map;

    const-string v4, "tbs_startdownload_code"

    const/16 v5, 0xa6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->commit()V

    goto :goto_d6

    :cond_f2
    const/4 v3, 0x0

    sget-object v2, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v7

    new-instance v4, Ljava/io/File;

    sget-object v2, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    const/4 v5, 0x1

    invoke-static {v2, v5}, Lcom/tencent/smtt/utils/k;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    sget-object v2, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/smtt/sdk/TbsDownloader;->getOverSea(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_298

    const-string v2, "x5.oversea.tbs.org"

    :goto_10c
    invoke-direct {v4, v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Ljava/io/File;

    sget-object v2, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    const/4 v6, 0x2

    invoke-static {v2, v6}, Lcom/tencent/smtt/utils/k;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    sget-object v2, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/smtt/sdk/TbsDownloader;->getOverSea(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_29c

    const-string v2, "x5.oversea.tbs.org"

    :goto_122
    invoke-direct {v5, v6, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Ljava/io/File;

    sget-object v2, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    const/4 v8, 0x3

    invoke-static {v2, v8}, Lcom/tencent/smtt/utils/k;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v8

    sget-object v2, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/smtt/sdk/TbsDownloader;->getOverSea(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2a0

    const-string v2, "x5.oversea.tbs.org"

    :goto_138
    invoke-direct {v6, v8, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v8, Ljava/io/File;

    sget-object v2, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    const/4 v9, 0x4

    invoke-static {v2, v9}, Lcom/tencent/smtt/utils/k;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v9

    sget-object v2, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/smtt/sdk/TbsDownloader;->getOverSea(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2a4

    const-string v2, "x5.oversea.tbs.org"

    :goto_14e
    invoke-direct {v8, v9, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_160

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2a8

    invoke-virtual {v6, v8}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    :cond_160
    :goto_160
    sget-object v2, Lcom/tencent/smtt/sdk/TbsDownloader;->e:Ljava/lang/String;

    if-nez v2, :cond_176

    invoke-static {}, Lcom/tencent/smtt/utils/b;->a()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/tencent/smtt/sdk/TbsDownloader;->e:Ljava/lang/String;

    iget-object v2, v7, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    const-string v4, "device_cpuabi"

    sget-object v5, Lcom/tencent/smtt/sdk/TbsDownloader;->e:Ljava/lang/String;

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v7}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->commit()V

    :cond_176
    const/4 v2, 0x0

    sget-object v4, Lcom/tencent/smtt/sdk/TbsDownloader;->e:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1d2

    const/4 v4, 0x0

    :try_start_180
    const-string v5, "i686|mips|x86_64"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    sget-object v6, Lcom/tencent/smtt/sdk/TbsDownloader;->e:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
    :try_end_18b
    .catch Ljava/lang/Exception; {:try_start_180 .. :try_end_18b} :catch_3df

    move-result-object v4

    :goto_18c
    if-eqz v4, :cond_1d2

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_1d2

    sget-object v2, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/smtt/sdk/TbsShareManager;->isThirdPartyApp(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2ca

    sget-object v2, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/smtt/sdk/TbsLogReport;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/smtt/sdk/TbsLogReport;->tbsLogInfo()Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;

    move-result-object v2

    if-eqz p0, :cond_2be

    const/16 v4, -0x68

    invoke-virtual {v7, v4}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V

    const/16 v4, -0x68

    invoke-virtual {v2, v4}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->setErrorCode(I)V

    :goto_1b2
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "mycpu is "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/tencent/smtt/sdk/TbsDownloader;->e:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->setFailDetail(Ljava/lang/String;)V

    sget-object v4, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v4}, Lcom/tencent/smtt/sdk/TbsLogReport;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v4

    sget-object v5, Lcom/tencent/smtt/sdk/TbsLogReport$EventType;->TYPE_DOWNLOAD:Lcom/tencent/smtt/sdk/TbsLogReport$EventType;

    invoke-virtual {v4, v5, v2}, Lcom/tencent/smtt/sdk/TbsLogReport;->eventReport(Lcom/tencent/smtt/sdk/TbsLogReport$EventType;Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;)V

    :goto_1d1
    const/4 v2, 0x1

    :cond_1d2
    iget-object v4, v7, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    const-string v5, "app_versionname"

    sget-object v6, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v6}, Lcom/tencent/smtt/utils/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v7, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    const-string v5, "app_versioncode"

    sget-object v6, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v6}, Lcom/tencent/smtt/utils/b;->b(Landroid/content/Context;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v7}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->commit()V

    invoke-static/range {p0 .. p2}, Lcom/tencent/smtt/sdk/TbsDownloader;->b(ZZZ)Lorg/json/JSONObject;

    move-result-object v8

    const/4 v4, -0x1

    :try_start_1f8
    const-string v5, "TBSV"

    invoke-virtual {v8, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_1fd
    .catch Ljava/lang/Exception; {:try_start_1f8 .. :try_end_1fd} :catch_2da

    move-result v4

    move v6, v4

    :goto_1ff
    if-nez v2, :cond_204

    const/4 v4, -0x1

    if-eq v6, v4, :cond_2fb

    :cond_204
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sget-object v4, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v4}, Lcom/tencent/smtt/sdk/TbsShareManager;->isThirdPartyApp(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_240

    iget-object v4, v7, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v5, "request_fail"

    const-wide/16 v12, 0x0

    invoke-interface {v4, v5, v12, v13}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iget-object v9, v7, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v12, "count_request_fail_in_24hours"

    const-wide/16 v14, 0x0

    invoke-interface {v9, v12, v14, v15}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v12

    sub-long v4, v10, v4

    invoke-virtual {v7}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getRetryInterval()J

    move-result-wide v14

    const-wide/16 v16, 0x3e8

    mul-long v14, v14, v16

    cmp-long v4, v4, v14

    if-gez v4, :cond_2de

    const-wide/16 v4, 0x1

    add-long/2addr v4, v12

    :goto_235
    iget-object v9, v7, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    const-string v12, "count_request_fail_in_24hours"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v9, v12, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_240
    iget-object v4, v7, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    const-string v5, "request_fail"

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v4, v5, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v7, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    const-string v5, "app_versionname"

    sget-object v9, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v9}, Lcom/tencent/smtt/utils/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v5, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v7, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    const-string v5, "app_versioncode"

    sget-object v9, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v9}, Lcom/tencent/smtt/utils/b;->b(Landroid/content/Context;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v4, v5, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v7, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    const-string v5, "app_metadata"

    sget-object v9, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    const-string v10, "com.tencent.mm.BuildInfo.CLIENT_VERSION"

    invoke-static {v9, v10}, Lcom/tencent/smtt/utils/b;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v5, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v7}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->commit()V

    if-eqz v2, :cond_2fb

    if-eqz p0, :cond_2e2

    sget-object v2, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadUpload;

    move-result-object v2

    iget-object v3, v2, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->a:Ljava/util/Map;

    const-string v4, "tbs_needdownload_code"

    const/16 v5, 0x93

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->commit()V

    :cond_295
    :goto_295
    const/4 v2, 0x0

    goto/16 :goto_56

    :cond_298
    const-string v2, "x5.tbs.org"

    goto/16 :goto_10c

    :cond_29c
    const-string v2, "x5.tbs.org"

    goto/16 :goto_122

    :cond_2a0
    const-string v2, "x5.tbs.org"

    goto/16 :goto_138

    :cond_2a4
    const-string v2, "x5.tbs.org"

    goto/16 :goto_14e

    :cond_2a8
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2b3

    invoke-virtual {v5, v8}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    goto/16 :goto_160

    :cond_2b3
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_160

    invoke-virtual {v4, v8}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    goto/16 :goto_160

    :cond_2be
    const/16 v4, -0xcd

    invoke-virtual {v7, v4}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V

    const/16 v4, -0xcd

    invoke-virtual {v2, v4}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->setErrorCode(I)V

    goto/16 :goto_1b2

    :cond_2ca
    if-eqz p0, :cond_2d3

    const/16 v2, -0x68

    invoke-virtual {v7, v2}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V

    goto/16 :goto_1d1

    :cond_2d3
    const/16 v2, -0xcd

    invoke-virtual {v7, v2}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V

    goto/16 :goto_1d1

    :catch_2da
    move-exception v5

    move v6, v4

    goto/16 :goto_1ff

    :cond_2de
    const-wide/16 v4, 0x1

    goto/16 :goto_235

    :cond_2e2
    if-nez p2, :cond_295

    sget-object v2, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadUpload;

    move-result-object v2

    iget-object v3, v2, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->a:Ljava/util/Map;

    const-string v4, "tbs_startdownload_code"

    const/16 v5, 0xa7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->commit()V

    goto :goto_295

    :cond_2fb
    const/4 v2, -0x1

    if-eq v6, v2, :cond_3a9

    :try_start_2fe
    sget-object v2, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/smtt/utils/v;->a(Landroid/content/Context;)Lcom/tencent/smtt/utils/v;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/smtt/utils/v;->d()Ljava/lang/String;

    move-result-object v2

    const-string v4, "TbsDownload"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v9, "[TbsDownloader.sendRequest] postUrl="

    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_367

    sget-object v4, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v4}, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadUpload;

    move-result-object v4

    iget-object v5, v4, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->a:Ljava/util/Map;

    const-string v9, "tbs_needdownload_code"

    const/16 v10, 0x94

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v5, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, v4, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->a:Ljava/util/Map;

    const-string v9, "tbs_needdownload_sent"

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v5, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4}, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->commit()V

    const-string v4, "TbsDownload"

    const-string v5, "sendRequest query 148"

    invoke-static {v4, v5}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_347
    :goto_347
    invoke-virtual {v8}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "utf-8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    new-instance v5, Lcom/tencent/smtt/sdk/ak;

    move/from16 v0, p0

    invoke-direct {v5, v7, v0}, Lcom/tencent/smtt/sdk/ak;-><init>(Lcom/tencent/smtt/sdk/TbsDownloadConfig;Z)V

    const/4 v8, 0x0

    invoke-static {v2, v4, v5, v8}, Lcom/tencent/smtt/utils/n;->a(Ljava/lang/String;[BLcom/tencent/smtt/utils/n$a;Z)Ljava/lang/String;

    move-result-object v2

    move/from16 v0, p0

    move/from16 v1, p1

    invoke-static {v2, v6, v0, v1}, Lcom/tencent/smtt/sdk/TbsDownloader;->a(Ljava/lang/String;IZZ)Z

    move-result v2

    goto/16 :goto_56

    :cond_367
    if-nez p2, :cond_347

    sget-object v4, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v4}, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadUpload;

    move-result-object v4

    iget-object v5, v4, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->a:Ljava/util/Map;

    const-string v9, "tbs_startdownload_code"

    const/16 v10, 0xa8

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v5, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, v4, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->a:Ljava/util/Map;

    const-string v9, "tbs_startdownload_sent"

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v5, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4}, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->commit()V

    const-string v4, "TbsDownload"

    const-string v5, "sendRequest download 168"

    invoke-static {v4, v5}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_392
    .catch Ljava/lang/Throwable; {:try_start_2fe .. :try_end_392} :catch_393

    goto :goto_347

    :catch_393
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    if-eqz p0, :cond_3a1

    const/16 v2, -0x6a

    invoke-virtual {v7, v2}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V

    move v2, v3

    goto/16 :goto_56

    :cond_3a1
    const/16 v2, -0xce

    invoke-virtual {v7, v2}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V

    move v2, v3

    goto/16 :goto_56

    :cond_3a9
    if-eqz p0, :cond_3c4

    sget-object v2, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadUpload;

    move-result-object v2

    iget-object v4, v2, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->a:Ljava/util/Map;

    const-string v5, "tbs_needdownload_code"

    const/16 v6, 0x95

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->commit()V

    move v2, v3

    goto/16 :goto_56

    :cond_3c4
    if-nez p2, :cond_3dc

    sget-object v2, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadUpload;

    move-result-object v2

    iget-object v4, v2, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->a:Ljava/util/Map;

    const-string v5, "tbs_startdownload_code"

    const/16 v6, 0xa9

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->commit()V

    :cond_3dc
    move v2, v3

    goto/16 :goto_56

    :catch_3df
    move-exception v5

    goto/16 :goto_18c
.end method

.method private static declared-synchronized d()V
    .registers 3

    const-class v1, Lcom/tencent/smtt/sdk/TbsDownloader;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/tencent/smtt/sdk/TbsDownloader;->h:Landroid/os/HandlerThread;

    if-nez v0, :cond_23

    invoke-static {}, Lcom/tencent/smtt/sdk/al;->a()Lcom/tencent/smtt/sdk/al;

    move-result-object v0

    sput-object v0, Lcom/tencent/smtt/sdk/TbsDownloader;->h:Landroid/os/HandlerThread;
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_31

    :try_start_d
    new-instance v0, Lcom/tencent/smtt/sdk/ag;

    sget-object v2, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/tencent/smtt/sdk/ag;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tencent/smtt/sdk/TbsDownloader;->g:Lcom/tencent/smtt/sdk/ag;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_16} :catch_25
    .catchall {:try_start_d .. :try_end_16} :catchall_31

    :try_start_16
    new-instance v0, Lcom/tencent/smtt/sdk/aj;

    sget-object v2, Lcom/tencent/smtt/sdk/TbsDownloader;->h:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/tencent/smtt/sdk/aj;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/tencent/smtt/sdk/TbsDownloader;->d:Landroid/os/Handler;
    :try_end_23
    .catchall {:try_start_16 .. :try_end_23} :catchall_31

    :cond_23
    :goto_23
    monitor-exit v1

    return-void

    :catch_25
    move-exception v0

    const/4 v0, 0x1

    :try_start_27
    sput-boolean v0, Lcom/tencent/smtt/sdk/TbsDownloader;->i:Z

    const-string v0, "TbsDownload"

    const-string v2, "TbsApkDownloader init has Exception"

    invoke-static {v0, v2}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_30
    .catchall {:try_start_27 .. :try_end_30} :catchall_31

    goto :goto_23

    :catchall_31
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static e()Z
    .registers 4

    :try_start_0
    invoke-static {}, Lcom/tencent/smtt/sdk/TbsDownloader;->g()Lorg/json/JSONArray;

    move-result-object v0

    sget-object v1, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v1

    iget-object v1, v1, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v2, "last_thirdapp_sendrequest_coreversion"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1b} :catch_1d

    move-result v0

    :goto_1c
    return v0

    :catch_1d
    move-exception v0

    const/4 v0, 0x0

    goto :goto_1c
.end method

.method private static f()[Ljava/lang/String;
    .registers 5

    const/4 v4, 0x0

    invoke-static {}, Lcom/tencent/smtt/sdk/QbSdk;->getOnlyDownload()Z

    move-result v0

    if-eqz v0, :cond_17

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    sget-object v1, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    :goto_16
    return-object v0

    :cond_17
    invoke-static {}, Lcom/tencent/smtt/sdk/TbsShareManager;->getCoreProviderAppList()[Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    sget-object v0, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsShareManager;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    array-length v3, v1

    add-int/lit8 v0, v3, 0x1

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {v1, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-object v2, v0, v3

    goto :goto_16

    :cond_3c
    move-object v0, v1

    goto :goto_16
.end method

.method private static g()Lorg/json/JSONArray;
    .registers 1

    sget-object v0, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsShareManager;->isThirdPartyApp(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_17

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsDownloader;->a(Lorg/json/JSONArray;)V

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsDownloader;->c(Lorg/json/JSONArray;)V

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsDownloader;->b(Lorg/json/JSONArray;)V

    :goto_16
    return-object v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public static getCoreShareDecoupleCoreVersion()I
    .registers 2

    invoke-static {}, Lcom/tencent/smtt/sdk/am;->a()Lcom/tencent/smtt/sdk/am;

    move-result-object v0

    sget-object v1, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/am;->i(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public static getCoreShareDecoupleCoreVersionByContext(Landroid/content/Context;)I
    .registers 2

    invoke-static {}, Lcom/tencent/smtt/sdk/am;->a()Lcom/tencent/smtt/sdk/am;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/smtt/sdk/am;->i(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public static declared-synchronized getOverSea(Landroid/content/Context;)Z
    .registers 5

    const-class v1, Lcom/tencent/smtt/sdk/TbsDownloader;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, Lcom/tencent/smtt/sdk/TbsDownloader;->k:Z

    if-nez v0, :cond_4f

    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/smtt/sdk/TbsDownloader;->k:Z

    invoke-static {p0}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    iget-object v2, v0, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "is_oversea"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_39

    iget-object v0, v0, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v2, "is_oversea"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/tencent/smtt/sdk/TbsDownloader;->j:Z

    const-string v0, "TbsDownload"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[TbsDownloader.getOverSea]  first called. sOverSea = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v3, Lcom/tencent/smtt/sdk/TbsDownloader;->j:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_39
    const-string v0, "TbsDownload"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[TbsDownloader.getOverSea]  sOverSea = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v3, Lcom/tencent/smtt/sdk/TbsDownloader;->j:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4f
    sget-boolean v0, Lcom/tencent/smtt/sdk/TbsDownloader;->j:Z
    :try_end_51
    .catchall {:try_start_3 .. :try_end_51} :catchall_53

    monitor-exit v1

    return v0

    :catchall_53
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getRetryIntervalInSeconds()J
    .registers 2

    sget-wide v0, Lcom/tencent/smtt/sdk/TbsDownloader;->l:J

    return-wide v0
.end method

.method public static getsTbsHandlerThread()Landroid/os/HandlerThread;
    .registers 1

    sget-object v0, Lcom/tencent/smtt/sdk/TbsDownloader;->h:Landroid/os/HandlerThread;

    return-object v0
.end method

.method private static h()Z
    .registers 10

    const-wide/16 v8, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    sget-object v2, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v2

    iget-object v3, v2, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v4, "tbs_download_success_retrytimes"

    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getDownloadSuccessMaxRetrytimes()I

    move-result v4

    if-lt v3, v4, :cond_25

    const-string v3, "TbsDownload"

    const-string v4, "[TbsDownloader.needStartDownload] out of success retrytimes"

    invoke-static {v3, v4, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v1, -0x73

    invoke-virtual {v2, v1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V

    :goto_24
    return v0

    :cond_25
    iget-object v3, v2, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v4, "tbs_download_failed_retrytimes"

    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getDownloadFailedMaxRetrytimes()I

    move-result v4

    if-lt v3, v4, :cond_40

    const-string v3, "TbsDownload"

    const-string v4, "[TbsDownloader.needStartDownload] out of failed retrytimes"

    invoke-static {v3, v4, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v1, -0x74

    invoke-virtual {v2, v1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V

    goto :goto_24

    :cond_40
    sget-object v3, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v3}, Lcom/tencent/smtt/utils/k;->b(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_55

    const-string v3, "TbsDownload"

    const-string v4, "[TbsDownloader.needStartDownload] local rom freespace limit"

    invoke-static {v3, v4, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v1, -0x75

    invoke-virtual {v2, v1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V

    goto :goto_24

    :cond_55
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v3, v2, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v6, "tbs_downloadstarttime"

    invoke-interface {v3, v6, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/32 v6, 0x5265c00

    cmp-long v3, v4, v6

    if-gtz v3, :cond_9a

    iget-object v3, v2, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v4, "tbs_downloadflow"

    invoke-interface {v3, v4, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    const-string v3, "TbsDownload"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "[TbsDownloader.needStartDownload] downloadFlow="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getDownloadMaxflow()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-ltz v3, :cond_9a

    const-string v3, "TbsDownload"

    const-string v4, "[TbsDownloader.needStartDownload] failed because you exceeded max flow!"

    invoke-static {v3, v4, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v1, -0x78

    invoke-virtual {v2, v1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V

    goto :goto_24

    :cond_9a
    move v0, v1

    goto :goto_24
.end method

.method private static i()Lorg/json/JSONArray;
    .registers 10

    const/4 v1, 0x0

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    invoke-static {}, Lcom/tencent/smtt/sdk/TbsShareManager;->getCoreProviderAppList()[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    move v2, v1

    :goto_c
    if-ge v2, v5, :cond_59

    aget-object v0, v4, v2

    new-instance v6, Ljava/io/File;

    sget-object v7, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    const/4 v8, 0x4

    invoke-static {v7, v0, v8, v1}, Lcom/tencent/smtt/utils/k;->a(Landroid/content/Context;Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v7

    sget-object v0, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsDownloader;->getOverSea(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_53

    const-string v0, "x5.oversea.tbs.org"

    :goto_23
    invoke-direct {v6, v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4f

    sget-object v0, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v0, v6}, Lcom/tencent/smtt/utils/a;->a(Landroid/content/Context;Ljava/io/File;)I

    move-result v0

    int-to-long v6, v0

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-lez v0, :cond_4f

    move v0, v1

    :goto_3a
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v0, v8, :cond_5a

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->optInt(I)I

    move-result v8

    int-to-long v8, v8

    cmp-long v8, v8, v6

    if-nez v8, :cond_56

    const/4 v0, 0x1

    :goto_4a
    if-nez v0, :cond_4f

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    :cond_4f
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_c

    :cond_53
    const-string v0, "x5.tbs.org"

    goto :goto_23

    :cond_56
    add-int/lit8 v0, v0, 0x1

    goto :goto_3a

    :cond_59
    return-object v3

    :cond_5a
    move v0, v1

    goto :goto_4a
.end method

.method public static isDownloadForeground()Z
    .registers 1

    sget-object v0, Lcom/tencent/smtt/sdk/TbsDownloader;->g:Lcom/tencent/smtt/sdk/ag;

    if-eqz v0, :cond_e

    sget-object v0, Lcom/tencent/smtt/sdk/TbsDownloader;->g:Lcom/tencent/smtt/sdk/ag;

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/ag;->e()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static declared-synchronized isDownloading()Z
    .registers 4

    const-class v1, Lcom/tencent/smtt/sdk/TbsDownloader;

    monitor-enter v1

    :try_start_3
    const-string v0, "TbsDownload"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[TbsDownloader.isDownloading] is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v3, Lcom/tencent/smtt/sdk/TbsDownloader;->a:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/tencent/smtt/sdk/TbsDownloader;->a:Z
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_1d

    monitor-exit v1

    return v0

    :catchall_1d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static needDownload(Landroid/content/Context;Z)Z
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/tencent/smtt/sdk/TbsDownloader;->needDownload(Landroid/content/Context;ZZLcom/tencent/smtt/sdk/TbsDownloader$TbsDownloaderCallback;)Z

    move-result v0

    return v0
.end method

.method public static needDownload(Landroid/content/Context;ZZLcom/tencent/smtt/sdk/TbsDownloader$TbsDownloaderCallback;)Z
    .registers 15

    const/16 v8, 0x66

    const/4 v2, 0x1

    const/16 v10, 0x67

    const/4 v1, 0x0

    invoke-static {}, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->clear()V

    invoke-static {p0}, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadUpload;

    move-result-object v4

    iget-object v0, v4, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->a:Ljava/util/Map;

    const-string v3, "tbs_needdownload_code"

    const/16 v5, 0x8c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4}, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->commit()V

    const-string v0, "TbsDownload"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "[TbsDownloader.needDownload] oversea="

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ",isDownloadForeground="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/tencent/smtt/utils/TbsLog;->initIfNeed(Landroid/content/Context;)V

    sget-boolean v0, Lcom/tencent/smtt/sdk/am;->b:Z

    if-eqz v0, :cond_6c

    if-eqz p3, :cond_47

    invoke-interface {p3, v1, v1}, Lcom/tencent/smtt/sdk/TbsDownloader$TbsDownloaderCallback;->onNeedDownloadFinish(ZI)V

    :cond_47
    const-string v0, "TbsDownload"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[TbsDownloader.needDownload]#1,return "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v4, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->a:Ljava/util/Map;

    const-string v2, "tbs_needdownload_return"

    const/16 v3, 0xab

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4}, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->commit()V

    :goto_6b
    return v1

    :cond_6c
    const-string v0, "TbsDownload"

    invoke-static {v0, p0}, Lcom/tencent/smtt/utils/TbsLog;->app_extra(Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v5

    const/16 v0, -0x64

    invoke-virtual {v5, v0}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V

    sget-object v0, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v0, p1, p3}, Lcom/tencent/smtt/sdk/TbsDownloader;->a(Landroid/content/Context;ZLcom/tencent/smtt/sdk/TbsDownloader$TbsDownloaderCallback;)Z

    move-result v0

    if-nez v0, :cond_bd

    const-string v0, "TbsDownload"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[TbsDownloader.needDownload]#2,return "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v4, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->a:Ljava/util/Map;

    const-string v2, "tbs_needdownload_code"

    const/16 v3, 0x8d

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4}, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->commit()V

    iget-object v0, v4, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->a:Ljava/util/Map;

    const-string v2, "tbs_needdownload_return"

    const/16 v3, 0xac

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4}, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->commit()V

    goto :goto_6b

    :cond_bd
    invoke-static {}, Lcom/tencent/smtt/sdk/TbsDownloader;->d()V

    sget-boolean v0, Lcom/tencent/smtt/sdk/TbsDownloader;->i:Z

    if-eqz v0, :cond_104

    if-eqz p3, :cond_c9

    invoke-interface {p3, v1, v1}, Lcom/tencent/smtt/sdk/TbsDownloader$TbsDownloaderCallback;->onNeedDownloadFinish(ZI)V

    :cond_c9
    const/16 v0, -0x69

    invoke-virtual {v5, v0}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V

    const-string v0, "TbsDownload"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[TbsDownloader.needDownload]#3,return "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v4, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->a:Ljava/util/Map;

    const-string v2, "tbs_needdownload_code"

    const/16 v3, 0x8e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4}, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->commit()V

    iget-object v0, v4, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->a:Ljava/util/Map;

    const-string v2, "tbs_needdownload_return"

    const/16 v3, 0xad

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4}, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->commit()V

    goto/16 :goto_6b

    :cond_104
    sget-object v0, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v0, p2, v1}, Lcom/tencent/smtt/sdk/TbsDownloader;->a(Landroid/content/Context;ZZ)Z

    move-result v6

    const-string v0, "TbsDownload"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v7, "[TbsDownloader.needDownload],needSendRequest="

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v6, :cond_1c3

    invoke-static {p2, p3}, Lcom/tencent/smtt/sdk/TbsDownloader;->a(ZLcom/tencent/smtt/sdk/TbsDownloader$TbsDownloaderCallback;)V

    const/16 v0, -0x72

    invoke-virtual {v5, v0}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V

    :goto_128
    sget-object v0, Lcom/tencent/smtt/sdk/TbsDownloader;->d:Landroid/os/Handler;

    invoke-virtual {v0, v8}, Landroid/os/Handler;->removeMessages(I)V

    sget-object v0, Lcom/tencent/smtt/sdk/TbsDownloader;->d:Landroid/os/Handler;

    invoke-static {v0, v8}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    sget-boolean v0, Lcom/tencent/smtt/sdk/QbSdk;->c:Z

    if-nez v0, :cond_140

    invoke-static {p0}, Lcom/tencent/smtt/sdk/TbsShareManager;->isThirdPartyApp(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_24c

    :cond_140
    iget-object v0, v5, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "tbs_needdownload"

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    const-string v0, "TbsDownload"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "[TbsDownloader.needDownload] hasNeedDownloadKey="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v3, :cond_1d5

    invoke-static {p0}, Lcom/tencent/smtt/sdk/TbsShareManager;->isThirdPartyApp(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1d5

    move v0, v2

    :goto_165
    const-string v7, "TbsDownload"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "[TbsDownloader.needDownload]#4,needDownload="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",hasNeedDownloadKey="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_1ec

    invoke-static {}, Lcom/tencent/smtt/sdk/TbsDownloader;->h()Z

    move-result v2

    if-nez v2, :cond_1de

    const-string v0, "TbsDownload"

    const-string v2, "[TbsDownloader.needDownload]#5,set needDownload = false"

    invoke-static {v0, v2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v1

    :goto_193
    if-nez v6, :cond_19a

    if-eqz p3, :cond_19a

    invoke-interface {p3, v1, v1}, Lcom/tencent/smtt/sdk/TbsDownloader$TbsDownloaderCallback;->onNeedDownloadFinish(ZI)V

    :cond_19a
    const-string v0, "TbsDownload"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "[TbsDownloader.needDownload] needDownload="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v4, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->a:Ljava/util/Map;

    const-string v3, "tbs_needdownload_return"

    if-eqz v2, :cond_248

    const/16 v0, 0xaa

    :goto_1b6
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4}, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->commit()V

    move v1, v2

    goto/16 :goto_6b

    :cond_1c3
    iget-object v0, v4, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->a:Ljava/util/Map;

    const-string v3, "tbs_needdownload_code"

    const/16 v7, 0x8f

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4}, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->commit()V

    goto/16 :goto_128

    :cond_1d5
    iget-object v0, v5, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v7, "tbs_needdownload"

    invoke-interface {v0, v7, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_165

    :cond_1de
    const/16 v2, -0x76

    invoke-virtual {v5, v2}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V

    const-string v2, "TbsDownload"

    const-string v3, "[TbsDownloader.needDownload]#6"

    invoke-static {v2, v3}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v0

    goto :goto_193

    :cond_1ec
    invoke-static {}, Lcom/tencent/smtt/sdk/am;->a()Lcom/tencent/smtt/sdk/am;

    move-result-object v3

    sget-object v7, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-virtual {v3, v7}, Lcom/tencent/smtt/sdk/am;->n(Landroid/content/Context;)I

    move-result v3

    const-string v7, "TbsDownload"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "[TbsDownloader.needDownload]#7,tbsLocalVersion="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",needSendRequest="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v6, :cond_218

    if-gtz v3, :cond_240

    :cond_218
    sget-object v7, Lcom/tencent/smtt/sdk/TbsDownloader;->d:Landroid/os/Handler;

    invoke-virtual {v7, v10}, Landroid/os/Handler;->removeMessages(I)V

    if-gtz v3, :cond_234

    if-nez v6, :cond_234

    sget-object v2, Lcom/tencent/smtt/sdk/TbsDownloader;->d:Landroid/os/Handler;

    sget-object v3, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v2, v10, v1, v1, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    :goto_22c
    const/16 v2, -0x79

    invoke-virtual {v5, v2}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V

    move v2, v0

    goto/16 :goto_193

    :cond_234
    sget-object v3, Lcom/tencent/smtt/sdk/TbsDownloader;->d:Landroid/os/Handler;

    sget-object v7, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v3, v10, v2, v1, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_22c

    :cond_240
    const/16 v2, -0x77

    invoke-virtual {v5, v2}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V

    move v2, v0

    goto/16 :goto_193

    :cond_248
    const/16 v0, 0xae

    goto/16 :goto_1b6

    :cond_24c
    move v0, v1

    move v3, v1

    goto/16 :goto_165
.end method

.method public static needDownloadDecoupleCore()Z
    .registers 8

    const/4 v1, 0x1

    const/4 v0, 0x0

    sget-object v2, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/smtt/sdk/TbsShareManager;->isThirdPartyApp(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_b

    :cond_a
    :goto_a
    return v0

    :cond_b
    sget-object v2, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v2

    iget-object v2, v2, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "tbs_downloaddecouplecore"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v1, :cond_a

    sget-object v2, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v2

    iget-object v2, v2, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "last_download_decouple_core"

    const-wide/16 v4, 0x0

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-object v6, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v6}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getRetryInterval()J

    move-result-wide v6

    sub-long v2, v4, v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-ltz v2, :cond_a

    sget-object v2, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v2

    iget-object v2, v2, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "tbs_decouplecoreversion"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-lez v2, :cond_a

    invoke-static {}, Lcom/tencent/smtt/sdk/am;->a()Lcom/tencent/smtt/sdk/am;

    move-result-object v3

    sget-object v4, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/tencent/smtt/sdk/am;->i(Landroid/content/Context;)I

    move-result v3

    if-eq v2, v3, :cond_a

    sget-object v3, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v3}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v3

    iget-object v3, v3, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v4, "tbs_download_version"

    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-eq v3, v2, :cond_a

    move v0, v1

    goto :goto_a
.end method

.method public static needSendRequest(Landroid/content/Context;Z)Z
    .registers 9

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {p0}, Lcom/tencent/smtt/utils/TbsLog;->initIfNeed(Landroid/content/Context;)V

    sget-object v0, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v0, p1, v3}, Lcom/tencent/smtt/sdk/TbsDownloader;->a(Landroid/content/Context;ZLcom/tencent/smtt/sdk/TbsDownloader$TbsDownloaderCallback;)Z

    move-result v0

    if-nez v0, :cond_15

    :cond_14
    :goto_14
    return v2

    :cond_15
    invoke-static {}, Lcom/tencent/smtt/sdk/am;->a()Lcom/tencent/smtt/sdk/am;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/smtt/sdk/am;->n(Landroid/content/Context;)I

    move-result v0

    const-string v3, "TbsDownload"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[TbsDownloader.needSendRequest] localTbsVersion="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-gtz v0, :cond_14

    sget-object v0, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v0, v2, v1}, Lcom/tencent/smtt/sdk/TbsDownloader;->a(Landroid/content/Context;ZZ)Z

    move-result v0

    if-eqz v0, :cond_3d

    move v2, v1

    goto :goto_14

    :cond_3d
    sget-object v0, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    iget-object v3, v0, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v4, "tbs_needdownload"

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "TbsDownload"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "[TbsDownloader.needSendRequest] hasNeedDownloadKey="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v3, :cond_94

    move v0, v1

    :goto_62
    const-string v3, "TbsDownload"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[TbsDownloader.needSendRequest] needDownload="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_9d

    invoke-static {}, Lcom/tencent/smtt/sdk/TbsDownloader;->h()Z

    move-result v0

    if-eqz v0, :cond_9d

    :goto_7e
    const-string v0, "TbsDownload"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[TbsDownloader.needSendRequest] ret="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v1

    goto :goto_14

    :cond_94
    iget-object v0, v0, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "tbs_needdownload"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_62

    :cond_9d
    move v1, v2

    goto :goto_7e
.end method

.method public static setAppContext(Landroid/content/Context;)V
    .registers 2

    if-eqz p0, :cond_e

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    :cond_e
    return-void
.end method

.method public static setRetryIntervalInSeconds(Landroid/content/Context;J)V
    .registers 8

    if-nez p0, :cond_3

    :goto_2
    return-void

    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v1, "com.tencent.qqlive"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    sput-wide p1, Lcom/tencent/smtt/sdk/TbsDownloader;->l:J

    :cond_13
    const-string v0, "TbsDownload"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mRetryIntervalInSeconds is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-wide v2, Lcom/tencent/smtt/sdk/TbsDownloader;->l:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public static startDecoupleCoreIfNeeded()Z
    .registers 9

    const/16 v8, 0x6c

    const/4 v1, 0x1

    const/4 v0, 0x0

    const-string v2, "TbsDownload"

    const-string v3, "startDecoupleCoreIfNeeded "

    invoke-static {v2, v3}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/smtt/sdk/TbsShareManager;->isThirdPartyApp(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_14

    :cond_13
    :goto_13
    return v0

    :cond_14
    const-string v2, "TbsDownload"

    const-string v3, "startDecoupleCoreIfNeeded #1"

    invoke-static {v2, v3}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v2

    iget-object v2, v2, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "tbs_downloaddecouplecore"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v1, :cond_13

    sget-object v2, Lcom/tencent/smtt/sdk/TbsDownloader;->d:Landroid/os/Handler;

    if-eqz v2, :cond_13

    const-string v2, "TbsDownload"

    const-string v3, "startDecoupleCoreIfNeeded #2"

    invoke-static {v2, v3}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v2

    iget-object v2, v2, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "last_download_decouple_core"

    const-wide/16 v4, 0x0

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-object v6, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v6}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getRetryInterval()J

    move-result-wide v6

    sub-long v2, v4, v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-ltz v2, :cond_13

    const-string v2, "TbsDownload"

    const-string v3, "startDecoupleCoreIfNeeded #3"

    invoke-static {v2, v3}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v2

    iget-object v2, v2, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "tbs_decouplecoreversion"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-lez v2, :cond_119

    invoke-static {}, Lcom/tencent/smtt/sdk/am;->a()Lcom/tencent/smtt/sdk/am;

    move-result-object v3

    sget-object v4, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/tencent/smtt/sdk/am;->i(Landroid/content/Context;)I

    move-result v3

    if-eq v2, v3, :cond_119

    sget-object v3, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v3}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v3

    iget-object v3, v3, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v4, "tbs_download_version"

    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v2, :cond_a0

    sget-object v3, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v3}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v3

    iget-object v3, v3, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v4, "tbs_download_version_type"

    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_d3

    :cond_a0
    const-string v2, "TbsDownload"

    const-string v3, "startDecoupleCoreIfNeeded #4"

    invoke-static {v2, v3}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sput-boolean v1, Lcom/tencent/smtt/sdk/TbsDownloader;->a:Z

    sget-object v2, Lcom/tencent/smtt/sdk/TbsDownloader;->d:Landroid/os/Handler;

    invoke-virtual {v2, v8}, Landroid/os/Handler;->removeMessages(I)V

    sget-object v2, Lcom/tencent/smtt/sdk/TbsDownloader;->d:Landroid/os/Handler;

    sget-object v3, Lcom/tencent/smtt/sdk/QbSdk;->m:Lcom/tencent/smtt/sdk/TbsListener;

    invoke-static {v2, v8, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    iput v0, v2, Landroid/os/Message;->arg1:I

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    sget-object v0, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    const-string v2, "last_download_decouple_core"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v1

    goto/16 :goto_13

    :cond_d3
    const-string v1, "TbsDownload"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "startDecoupleCoreIfNeeded no need, KEY_TBS_DOWNLOAD_V is "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v4}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v4

    iget-object v4, v4, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v5, "tbs_download_version"

    invoke-interface {v4, v5, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " deCoupleCoreVersion is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " KEY_TBS_DOWNLOAD_V_TYPE is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v3}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v3

    iget-object v3, v3, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v4, "tbs_download_version_type"

    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_13

    :cond_119
    const-string v1, "TbsDownload"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "startDecoupleCoreIfNeeded no need, deCoupleCoreVersion is "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " getTbsCoreShareDecoupleCoreVersion is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/tencent/smtt/sdk/am;->a()Lcom/tencent/smtt/sdk/am;

    move-result-object v3

    sget-object v4, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/tencent/smtt/sdk/am;->i(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_13
.end method

.method public static startDownload(Landroid/content/Context;)V
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/tencent/smtt/sdk/TbsDownloader;->startDownload(Landroid/content/Context;Z)V

    return-void
.end method

.method public static declared-synchronized startDownload(Landroid/content/Context;Z)V
    .registers 8

    const/4 v0, 0x1

    const-class v1, Lcom/tencent/smtt/sdk/TbsDownloader;

    monitor-enter v1

    :try_start_4
    invoke-static {p0}, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadUpload;

    move-result-object v2

    iget-object v3, v2, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->a:Ljava/util/Map;

    const-string v4, "tbs_startdownload_code"

    const/16 v5, 0xa0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->commit()V

    const-string v3, "TbsDownload"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[TbsDownloader.startDownload] sAppContext="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v3, Lcom/tencent/smtt/sdk/am;->b:Z

    if-eqz v3, :cond_44

    iget-object v0, v2, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->a:Ljava/util/Map;

    const-string v3, "tbs_startdownload_code"

    const/16 v4, 0xa1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->commit()V
    :try_end_42
    .catchall {:try_start_4 .. :try_end_42} :catchall_7f

    :goto_42
    monitor-exit v1

    return-void

    :cond_44
    const/4 v3, 0x1

    :try_start_45
    sput-boolean v3, Lcom/tencent/smtt/sdk/TbsDownloader;->a:Z

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    sput-object v3, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v3}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v3

    const/16 v4, -0xc8

    invoke-virtual {v3, v4}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x8

    if-ge v3, v4, :cond_82

    sget-object v0, Lcom/tencent/smtt/sdk/QbSdk;->m:Lcom/tencent/smtt/sdk/TbsListener;

    const/16 v3, 0x6e

    invoke-interface {v0, v3}, Lcom/tencent/smtt/sdk/TbsListener;->onDownloadFinish(I)V

    sget-object v0, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    const/16 v3, -0xc9

    invoke-virtual {v0, v3}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V

    iget-object v0, v2, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->a:Ljava/util/Map;

    const-string v3, "tbs_startdownload_code"

    const/16 v4, 0xa2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->commit()V
    :try_end_7e
    .catchall {:try_start_45 .. :try_end_7e} :catchall_7f

    goto :goto_42

    :catchall_7f
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_82
    :try_start_82
    invoke-static {}, Lcom/tencent/smtt/sdk/TbsDownloader;->d()V

    sget-boolean v3, Lcom/tencent/smtt/sdk/TbsDownloader;->i:Z

    if-eqz v3, :cond_ac

    sget-object v0, Lcom/tencent/smtt/sdk/QbSdk;->m:Lcom/tencent/smtt/sdk/TbsListener;

    const/16 v3, 0x79

    invoke-interface {v0, v3}, Lcom/tencent/smtt/sdk/TbsListener;->onDownloadFinish(I)V

    sget-object v0, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    const/16 v3, -0xca

    invoke-virtual {v0, v3}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V

    iget-object v0, v2, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->a:Ljava/util/Map;

    const-string v3, "tbs_startdownload_code"

    const/16 v4, 0xa3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->commit()V

    goto :goto_42

    :cond_ac
    if-eqz p1, :cond_b1

    invoke-static {}, Lcom/tencent/smtt/sdk/TbsDownloader;->stopDownload()V

    :cond_b1
    sget-object v2, Lcom/tencent/smtt/sdk/TbsDownloader;->d:Landroid/os/Handler;

    const/16 v3, 0x65

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    sget-object v2, Lcom/tencent/smtt/sdk/TbsDownloader;->d:Landroid/os/Handler;

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    sget-object v2, Lcom/tencent/smtt/sdk/TbsDownloader;->d:Landroid/os/Handler;

    const/16 v3, 0x65

    sget-object v4, Lcom/tencent/smtt/sdk/QbSdk;->m:Lcom/tencent/smtt/sdk/TbsListener;

    invoke-static {v2, v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    if-eqz p1, :cond_d2

    :goto_cb
    iput v0, v2, Landroid/os/Message;->arg1:I

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V
    :try_end_d0
    .catchall {:try_start_82 .. :try_end_d0} :catchall_7f

    goto/16 :goto_42

    :cond_d2
    const/4 v0, 0x0

    goto :goto_cb
.end method

.method public static stopDownload()V
    .registers 2

    sget-boolean v0, Lcom/tencent/smtt/sdk/TbsDownloader;->i:Z

    if-eqz v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    const-string v0, "TbsDownload"

    const-string v1, "[TbsDownloader.stopDownload]"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/smtt/sdk/TbsDownloader;->g:Lcom/tencent/smtt/sdk/ag;

    if-eqz v0, :cond_15

    sget-object v0, Lcom/tencent/smtt/sdk/TbsDownloader;->g:Lcom/tencent/smtt/sdk/ag;

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/ag;->c()V

    :cond_15
    sget-object v0, Lcom/tencent/smtt/sdk/TbsDownloader;->d:Landroid/os/Handler;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/tencent/smtt/sdk/TbsDownloader;->d:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    sget-object v0, Lcom/tencent/smtt/sdk/TbsDownloader;->d:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    sget-object v0, Lcom/tencent/smtt/sdk/TbsDownloader;->d:Landroid/os/Handler;

    const/16 v1, 0x6c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_4
.end method
