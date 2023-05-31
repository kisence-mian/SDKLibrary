.class Lcom/tencent/smtt/sdk/ag;
.super Ljava/lang/Object;


# static fields
.field private static d:I

.field private static e:I

.field private static final f:[Ljava/lang/String;


# instance fields
.field private A:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private B:I

.field private C:Z

.field a:Ljava/lang/String;

.field b:[Ljava/lang/String;

.field c:I

.field private g:Landroid/content/Context;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/io/File;

.field private l:J

.field private m:I

.field private n:I

.field private o:Z

.field private p:I

.field private q:I

.field private r:Z

.field private s:Z

.field private t:Ljava/net/HttpURLConnection;

.field private u:Ljava/lang/String;

.field private v:Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;

.field private w:Ljava/lang/String;

.field private x:I

.field private y:Z

.field private z:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v0, 0x5

    const/4 v3, 0x1

    sput v0, Lcom/tencent/smtt/sdk/ag;->d:I

    sput v3, Lcom/tencent/smtt/sdk/ag;->e:I

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "tbs_downloading_com.tencent.mtt"

    aput-object v2, v0, v1

    const-string v1, "tbs_downloading_com.tencent.mm"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "tbs_downloading_com.tencent.mobileqq"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "tbs_downloading_com.tencent.tbs"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "tbs_downloading_com.qzone"

    aput-object v2, v0, v1

    sput-object v0, Lcom/tencent/smtt/sdk/ag;->f:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x7530

    iput v0, p0, Lcom/tencent/smtt/sdk/ag;->m:I

    const/16 v0, 0x4e20

    iput v0, p0, Lcom/tencent/smtt/sdk/ag;->n:I

    sget v0, Lcom/tencent/smtt/sdk/ag;->d:I

    iput v0, p0, Lcom/tencent/smtt/sdk/ag;->B:I

    iput-object v2, p0, Lcom/tencent/smtt/sdk/ag;->b:[Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/smtt/sdk/ag;->c:I

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/smtt/sdk/ag;->g:Landroid/content/Context;

    iget-object v0, p0, Lcom/tencent/smtt/sdk/ag;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsLogReport;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/TbsLogReport;->tbsLogInfo()Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/smtt/sdk/ag;->v:Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/tencent/smtt/sdk/ag;->A:Ljava/util/Set;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "tbs_downloading_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/smtt/sdk/ag;->g:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/smtt/sdk/ag;->u:Ljava/lang/String;

    invoke-static {}, Lcom/tencent/smtt/sdk/am;->a()Lcom/tencent/smtt/sdk/am;

    iget-object v0, p0, Lcom/tencent/smtt/sdk/ag;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/am;->t(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/smtt/sdk/ag;->k:Ljava/io/File;

    iget-object v0, p0, Lcom/tencent/smtt/sdk/ag;->k:Ljava/io/File;

    if-nez v0, :cond_5c

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "TbsCorePrivateDir is null!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5c
    invoke-direct {p0}, Lcom/tencent/smtt/sdk/ag;->f()V

    iput-object v2, p0, Lcom/tencent/smtt/sdk/ag;->w:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/smtt/sdk/ag;->x:I

    return-void
.end method

.method private a(JJ)J
    .registers 10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long v2, v0, p1

    iget-object v4, p0, Lcom/tencent/smtt/sdk/ag;->v:Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;

    invoke-virtual {v4, v2, v3}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->setDownConsumeTime(J)V

    iget-object v2, p0, Lcom/tencent/smtt/sdk/ag;->v:Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;

    invoke-virtual {v2, p3, p4}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->setDownloadSize(J)V

    return-wide v0
.end method

.method static a(Landroid/content/Context;)Ljava/io/File;
    .registers 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    const/4 v1, 0x0

    :try_start_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x8

    if-lt v0, v2, :cond_41

    new-instance v0, Ljava/io/File;

    const/4 v2, 0x4

    invoke-static {p0, v2}, Lcom/tencent/smtt/utils/k;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_11
    if-eqz v0, :cond_22

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_22

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_22

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_22} :catch_23

    :cond_22
    :goto_22
    return-object v0

    :catch_23
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v2, "TbsDownload"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[TbsApkDownloader.backupApkPath] Exception is "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_22

    :cond_41
    move-object v0, v1

    goto :goto_11
.end method

.method private static a(Landroid/content/Context;I)Ljava/io/File;
    .registers 6

    const/4 v2, 0x0

    new-instance v1, Ljava/io/File;

    invoke-static {p0, p1}, Lcom/tencent/smtt/utils/k;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_18

    :cond_16
    move-object v0, v2

    :goto_17
    return-object v0

    :cond_18
    new-instance v3, Ljava/io/File;

    invoke-static {p0}, Lcom/tencent/smtt/sdk/TbsDownloader;->getOverSea(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2d

    const-string v0, "x5.oversea.tbs.org"

    :goto_22
    invoke-direct {v3, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_30

    move-object v0, v1

    goto :goto_17

    :cond_2d
    const-string v0, "x5.tbs.org"

    goto :goto_22

    :cond_30
    move-object v0, v2

    goto :goto_17
.end method

.method private a(Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 5

    const/16 v2, 0x400

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_11

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_11
    return-object v0
.end method

.method private a(Ljava/net/URL;)Ljava/lang/String;
    .registers 4

    const-string v0, ""

    :try_start_2
    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_d} :catch_f
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_d} :catch_14

    move-result-object v0

    :goto_e
    return-object v0

    :catch_f
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_e

    :catch_14
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Error;->printStackTrace()V

    goto :goto_e
.end method

.method private a(ILjava/lang/String;Z)V
    .registers 6

    if-nez p3, :cond_8

    iget v0, p0, Lcom/tencent/smtt/sdk/ag;->p:I

    iget v1, p0, Lcom/tencent/smtt/sdk/ag;->B:I

    if-le v0, v1, :cond_12

    :cond_8
    iget-object v0, p0, Lcom/tencent/smtt/sdk/ag;->v:Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;

    invoke-virtual {v0, p1}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->setErrorCode(I)V

    iget-object v0, p0, Lcom/tencent/smtt/sdk/ag;->v:Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;

    invoke-virtual {v0, p2}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->setFailDetail(Ljava/lang/String;)V

    :cond_12
    return-void
.end method

.method private a(J)V
    .registers 6

    iget v0, p0, Lcom/tencent/smtt/sdk/ag;->p:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/smtt/sdk/ag;->p:I

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_10

    :try_start_c
    invoke-direct {p0}, Lcom/tencent/smtt/sdk/ag;->m()J

    move-result-wide p1

    :cond_10
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_13} :catch_14

    :goto_13
    return-void

    :catch_14
    move-exception v0

    goto :goto_13
.end method

.method private a(Ljava/io/Closeable;)V
    .registers 3

    if-eqz p1, :cond_5

    :try_start_2
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6

    :cond_5
    :goto_5
    return-void

    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public static a(Ljava/io/File;Landroid/content/Context;)V
    .registers 8

    const/4 v5, 0x1

    const-class v2, Lcom/tencent/smtt/utils/a;

    monitor-enter v2

    if-eqz p0, :cond_c

    :try_start_6
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_e

    :cond_c
    monitor-exit v2
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_6b

    :goto_d
    return-void

    :cond_e
    :try_start_e
    invoke-static {p1}, Lcom/tencent/smtt/sdk/ag;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_69

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "tbs_download_version_type"

    const/4 v4, 0x0

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v5, :cond_6e

    new-instance v0, Ljava/io/File;

    const-string v1, "x5.tbs.decouple"

    invoke-direct {v0, v3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :goto_2a
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    invoke-static {p0, v0}, Lcom/tencent/smtt/utils/k;->b(Ljava/io/File;Ljava/io/File;)Z

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "tbs_download_version_type"

    const/4 v4, 0x0

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v5, :cond_69

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "tbs_decouplecoreversion"

    const/4 v4, 0x0

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {p1, p0}, Lcom/tencent/smtt/utils/a;->a(Landroid/content/Context;Ljava/io/File;)I

    move-result v1

    if-ne v0, v1, :cond_69

    new-instance v0, Ljava/io/File;

    const-string v1, "x5.tbs.decouple"

    invoke-direct {v0, v3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p1, p0}, Lcom/tencent/smtt/utils/a;->a(Landroid/content/Context;Ljava/io/File;)I

    move-result v1

    invoke-static {p1, v0}, Lcom/tencent/smtt/utils/a;->a(Landroid/content/Context;Ljava/io/File;)I

    move-result v3

    if-eq v1, v3, :cond_69

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    invoke-static {p0, v0}, Lcom/tencent/smtt/utils/k;->b(Ljava/io/File;Ljava/io/File;)Z
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_69} :catch_7c
    .catchall {:try_start_e .. :try_end_69} :catchall_6b

    :cond_69
    :goto_69
    :try_start_69
    monitor-exit v2

    goto :goto_d

    :catchall_6b
    move-exception v0

    monitor-exit v2
    :try_end_6d
    .catchall {:try_start_69 .. :try_end_6d} :catchall_6b

    throw v0

    :cond_6e
    :try_start_6e
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloader;->getOverSea(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_7e

    const-string v1, "x5.oversea.tbs.org"

    :goto_78
    invoke-direct {v0, v3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_2a

    :catch_7c
    move-exception v0

    goto :goto_69

    :cond_7e
    const-string v1, "x5.tbs.org"
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_80} :catch_7c
    .catchall {:try_start_6e .. :try_end_80} :catchall_6b

    goto :goto_78
.end method

.method private a(Ljava/lang/String;)V
    .registers 7

    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/smtt/sdk/ag;->t:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_e

    :try_start_9
    iget-object v0, p0, Lcom/tencent/smtt/sdk/ag;->t:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_e} :catch_48

    :cond_e
    :goto_e
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, p0, Lcom/tencent/smtt/sdk/ag;->t:Ljava/net/HttpURLConnection;

    iget-object v0, p0, Lcom/tencent/smtt/sdk/ag;->t:Ljava/net/HttpURLConnection;

    const-string v1, "User-Agent"

    iget-object v2, p0, Lcom/tencent/smtt/sdk/ag;->g:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/smtt/sdk/TbsDownloader;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/smtt/sdk/ag;->t:Ljava/net/HttpURLConnection;

    const-string v1, "Accept-Encoding"

    const-string v2, "identity"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/smtt/sdk/ag;->t:Ljava/net/HttpURLConnection;

    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/smtt/sdk/ag;->t:Ljava/net/HttpURLConnection;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    iget-object v0, p0, Lcom/tencent/smtt/sdk/ag;->t:Ljava/net/HttpURLConnection;

    iget v1, p0, Lcom/tencent/smtt/sdk/ag;->n:I

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    iget-object v0, p0, Lcom/tencent/smtt/sdk/ag;->t:Ljava/net/HttpURLConnection;

    iget v1, p0, Lcom/tencent/smtt/sdk/ag;->m:I

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    return-void

    :catch_48
    move-exception v0

    const-string v2, "TbsDownload"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[initHttpRequest] mHttpRequest.disconnect() Throwable:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e
.end method

.method static synthetic a(Lcom/tencent/smtt/sdk/ag;)Z
    .registers 2

    invoke-direct {p0}, Lcom/tencent/smtt/sdk/ag;->n()Z

    move-result v0

    return v0
.end method

.method static b(Landroid/content/Context;)Ljava/io/File;
    .registers 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    const/4 v1, 0x0

    :try_start_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x8

    if-lt v0, v2, :cond_40

    const/4 v0, 0x4

    invoke-static {p0, v0}, Lcom/tencent/smtt/sdk/ag;->a(Landroid/content/Context;I)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_13

    const/4 v0, 0x3

    invoke-static {p0, v0}, Lcom/tencent/smtt/sdk/ag;->a(Landroid/content/Context;I)Ljava/io/File;

    move-result-object v0

    :cond_13
    if-nez v0, :cond_1a

    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/tencent/smtt/sdk/ag;->a(Landroid/content/Context;I)Ljava/io/File;

    move-result-object v0

    :cond_1a
    if-nez v0, :cond_21

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/tencent/smtt/sdk/ag;->a(Landroid/content/Context;I)Ljava/io/File;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_20} :catch_22

    move-result-object v0

    :cond_21
    :goto_21
    return-object v0

    :catch_22
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v2, "TbsDownload"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[TbsApkDownloader.backupApkPath] Exception is "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_21

    :cond_40
    move-object v0, v1

    goto :goto_21
.end method

.method private b(Z)V
    .registers 10

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/tencent/smtt/sdk/ag;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/utils/y;->a(Landroid/content/Context;)Z

    iget-object v0, p0, Lcom/tencent/smtt/sdk/ag;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v1

    iget-object v0, v1, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    const-string v2, "request_full_package"

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v1, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    const-string v2, "tbs_needdownload"

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v1, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    const-string v2, "tbs_download_interrupt_code_reason"

    const/16 v3, -0x7b

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->commit()V

    sget-object v2, Lcom/tencent/smtt/sdk/QbSdk;->m:Lcom/tencent/smtt/sdk/TbsListener;

    if-eqz p1, :cond_bc

    const/16 v0, 0x64

    :goto_34
    invoke-interface {v2, v0}, Lcom/tencent/smtt/sdk/TbsListener;->onDownloadFinish(I)V

    iget-object v0, v1, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v2, "tbs_responsecode"

    invoke-interface {v0, v2, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iget-object v0, p0, Lcom/tencent/smtt/sdk/ag;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "tbs_downloaddecouplecore"

    invoke-interface {v0, v3, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    const/4 v0, 0x3

    if-eq v2, v0, :cond_53

    const/16 v0, 0x2710

    if-le v2, v0, :cond_d5

    :cond_53
    iget-object v0, p0, Lcom/tencent/smtt/sdk/ag;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/ag;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_c5

    new-instance v4, Ljava/io/File;

    iget-object v0, p0, Lcom/tencent/smtt/sdk/ag;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsDownloader;->getOverSea(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_c0

    const-string v0, "x5.oversea.tbs.org"

    :goto_67
    invoke-direct {v4, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/smtt/sdk/ag;->g:Landroid/content/Context;

    invoke-static {v0, v4}, Lcom/tencent/smtt/utils/a;->a(Landroid/content/Context;Ljava/io/File;)I

    move-result v3

    new-instance v0, Ljava/io/File;

    iget-object v5, p0, Lcom/tencent/smtt/sdk/ag;->k:Ljava/io/File;

    const-string v6, "x5.tbs"

    invoke-direct {v0, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_c3

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    :goto_83
    iget-object v1, v1, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v5, "tbs_download_version"

    invoke-interface {v1, v5, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v6, "operation"

    invoke-virtual {v5, v6, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "old_core_ver"

    invoke-virtual {v5, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "new_core_ver"

    invoke-virtual {v5, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "old_apk_location"

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "new_apk_location"

    invoke-virtual {v5, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "diff_file_location"

    invoke-virtual {v5, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/smtt/sdk/am;->a()Lcom/tencent/smtt/sdk/am;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/smtt/sdk/ag;->g:Landroid/content/Context;

    invoke-virtual {v0, v1, v5}, Lcom/tencent/smtt/sdk/am;->b(Landroid/content/Context;Landroid/os/Bundle;)V

    :goto_bb
    return-void

    :cond_bc
    const/16 v0, 0x78

    goto/16 :goto_34

    :cond_c0
    const-string v0, "x5.tbs.org"

    goto :goto_67

    :cond_c3
    const/4 v0, 0x0

    goto :goto_83

    :cond_c5
    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/ag;->d()V

    iget-object v0, v1, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    const-string v2, "tbs_needdownload"

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->commit()V

    goto :goto_bb

    :cond_d5
    iget-object v0, v1, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "tbs_download_version"

    invoke-interface {v0, v1, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {}, Lcom/tencent/smtt/sdk/am;->a()Lcom/tencent/smtt/sdk/am;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/smtt/sdk/ag;->g:Landroid/content/Context;

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/tencent/smtt/sdk/ag;->k:Ljava/io/File;

    const-string v5, "x5.tbs"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/tencent/smtt/sdk/am;->a(Landroid/content/Context;Ljava/lang/String;I)V

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/tencent/smtt/sdk/ag;->k:Ljava/io/File;

    const-string v2, "x5.tbs"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/smtt/sdk/ag;->g:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/tencent/smtt/sdk/ag;->a(Ljava/io/File;Landroid/content/Context;)V

    goto :goto_bb
.end method

.method private b(I)Z
    .registers 8

    const/4 v0, 0x0

    :try_start_1
    new-instance v2, Ljava/io/File;

    iget-object v1, p0, Lcom/tencent/smtt/sdk/ag;->k:Ljava/io/File;

    const-string v3, "x5.tbs"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/smtt/sdk/ag;->g:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/smtt/sdk/ag;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_38

    new-instance v4, Ljava/io/File;

    iget-object v1, p0, Lcom/tencent/smtt/sdk/ag;->g:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/smtt/sdk/TbsDownloader;->getOverSea(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_39

    const-string v1, "x5.oversea.tbs.org"

    :goto_1e
    invoke-direct {v4, v3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    invoke-static {v4, v2}, Lcom/tencent/smtt/utils/k;->b(Ljava/io/File;Ljava/io/File;)Z

    iget-object v1, p0, Lcom/tencent/smtt/sdk/ag;->g:Landroid/content/Context;

    const-wide/16 v4, 0x0

    invoke-static {v1, v2, v4, v5, p1}, Lcom/tencent/smtt/utils/a;->a(Landroid/content/Context;Ljava/io/File;JI)Z

    move-result v1

    if-nez v1, :cond_59

    const-string v1, "TbsDownload"

    const-string v2, "[TbsApkDownloader.copyTbsApkFromBackupToInstall] verifyTbsApk error!!"

    invoke-static {v1, v2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_38
    :goto_38
    return v0

    :cond_39
    const-string v1, "x5.tbs.org"
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_3b} :catch_3c

    goto :goto_1e

    :catch_3c
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const-string v2, "TbsDownload"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[TbsApkDownloader.copyTbsApkFromBackupToInstall] Exception is "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_38

    :cond_59
    const/4 v0, 0x1

    goto :goto_38
.end method

.method public static c(Landroid/content/Context;)V
    .registers 4

    :try_start_0
    invoke-static {}, Lcom/tencent/smtt/sdk/am;->a()Lcom/tencent/smtt/sdk/am;

    invoke-static {p0}, Lcom/tencent/smtt/sdk/am;->t(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    const-string v2, "x5.tbs"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    new-instance v1, Ljava/io/File;

    const-string v2, "x5.tbs.temp"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    invoke-static {p0}, Lcom/tencent/smtt/sdk/ag;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_35

    new-instance v1, Ljava/io/File;

    const-string v2, "x5.tbs.org"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    new-instance v1, Ljava/io/File;

    const-string v2, "x5.oversea.tbs.org"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_35} :catch_36

    :cond_35
    :goto_35
    return-void

    :catch_36
    move-exception v0

    goto :goto_35
.end method

.method private c(Z)Z
    .registers 5

    const-string v0, "TbsDownload"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[TbsApkDownloader.deleteFile] isApk="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2b

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/tencent/smtt/sdk/ag;->k:Ljava/io/File;

    const-string v2, "x5.tbs"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :goto_1f
    const/4 v1, 0x1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    :goto_2a
    return v0

    :cond_2b
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/tencent/smtt/sdk/ag;->k:Ljava/io/File;

    const-string v2, "x5.tbs.temp"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_1f

    :cond_35
    move v0, v1

    goto :goto_2a
.end method

.method private c(ZZ)Z
    .registers 13

    const/4 v6, 0x0

    const/4 v5, 0x1

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const-string v0, "TbsDownload"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v7, "[TbsApkDownloader.verifyTbsApk] isTempFile="

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Ljava/io/File;

    iget-object v1, p0, Lcom/tencent/smtt/sdk/ag;->k:Ljava/io/File;

    if-nez p1, :cond_2b

    const-string v0, "x5.tbs"

    :goto_21
    invoke-direct {v7, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2e

    :cond_2a
    :goto_2a
    return v4

    :cond_2b
    const-string v0, "x5.tbs.temp"

    goto :goto_21

    :cond_2e
    iget-object v0, p0, Lcom/tencent/smtt/sdk/ag;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "tbs_apk_md5"

    invoke-interface {v0, v1, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7}, Lcom/tencent/smtt/utils/a;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_48

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6c

    :cond_48
    const-string v0, "TbsDownload"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[TbsApkDownloader.verifyTbsApk] isTempFile="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " md5 failed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2a

    iget-object v0, p0, Lcom/tencent/smtt/sdk/ag;->v:Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;

    const-string v1, "fileMd5 not match"

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->setCheckErrorDetail(Ljava/lang/String;)V

    goto :goto_2a

    :cond_6c
    const-string v0, "TbsDownload"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "[TbsApkDownloader.verifyTbsApk] md5("

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, ") successful!"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_e3

    iget-object v0, p0, Lcom/tencent/smtt/sdk/ag;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "tbs_apkfilesize"

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_205

    cmp-long v0, v8, v2

    if-lez v0, :cond_e3

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v0

    cmp-long v2, v8, v0

    if-eqz v2, :cond_e2

    :goto_a8
    const-string v2, "TbsDownload"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "[TbsApkDownloader.verifyTbsApk] isTempFile="

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " filelength failed"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/smtt/sdk/ag;->v:Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "fileLength:"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",contentLength:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->setCheckErrorDetail(Ljava/lang/String;)V

    goto/16 :goto_2a

    :cond_e2
    move-wide v2, v0

    :cond_e3
    const-string v0, "TbsDownload"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v8, "[TbsApkDownloader.verifyTbsApk] length("

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") successful!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    if-eqz p2, :cond_154

    if-nez p1, :cond_154

    iget-object v0, p0, Lcom/tencent/smtt/sdk/ag;->g:Landroid/content/Context;

    invoke-static {v0, v7}, Lcom/tencent/smtt/utils/a;->a(Landroid/content/Context;Ljava/io/File;)I

    move-result v0

    iget-object v1, p0, Lcom/tencent/smtt/sdk/ag;->g:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v1

    iget-object v1, v1, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v2, "tbs_download_version"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v0, :cond_154

    const-string v2, "TbsDownload"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "[TbsApkDownloader.verifyTbsApk] isTempFile="

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " versionCode failed"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2a

    iget-object v2, p0, Lcom/tencent/smtt/sdk/ag;->v:Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "fileVersion:"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ",configVersion:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->setCheckErrorDetail(Ljava/lang/String;)V

    goto/16 :goto_2a

    :cond_154
    const-string v1, "TbsDownload"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[TbsApkDownloader.verifyTbsApk] tbsApkVersionCode("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ") successful!"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_1bf

    if-nez p1, :cond_1bf

    iget-object v0, p0, Lcom/tencent/smtt/sdk/ag;->g:Landroid/content/Context;

    invoke-static {v0, v4, v7}, Lcom/tencent/smtt/utils/b;->a(Landroid/content/Context;ZLjava/io/File;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "3082023f308201a8a00302010202044c46914a300d06092a864886f70d01010505003064310b30090603550406130238363110300e060355040813074265696a696e673110300e060355040713074265696a696e673110300e060355040a130754656e63656e74310c300a060355040b13035753443111300f0603550403130873616d75656c6d6f301e170d3130303732313036313835305a170d3430303731333036313835305a3064310b30090603550406130238363110300e060355040813074265696a696e673110300e060355040713074265696a696e673110300e060355040a130754656e63656e74310c300a060355040b13035753443111300f0603550403130873616d75656c6d6f30819f300d06092a864886f70d010101050003818d0030818902818100c209077044bd0d63ea00ede5b839914cabcc912a87f0f8b390877e0f7a2583f0d5933443c40431c35a4433bc4c965800141961adc44c9625b1d321385221fd097e5bdc2f44a1840d643ab59dc070cf6c4b4b4d98bed5cbb8046e0a7078ae134da107cdf2bfc9b440fe5cb2f7549b44b73202cc6f7c2c55b8cfb0d333a021f01f0203010001300d06092a864886f70d010105050003818100b007db9922774ef4ccfee81ba514a8d57c410257e7a2eba64bfa17c9e690da08106d32f637ac41fbc9f205176c71bde238c872c3ee2f8313502bee44c80288ea4ef377a6f2cdfe4d3653c145c4acfedbfbadea23b559d41980cc3cdd35d79a68240693739aabf5c5ed26148756cf88264226de394c8a24ac35b712b120d4d23a"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1bf

    const-string v1, "TbsDownload"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[TbsApkDownloader.verifyTbsApk] isTempFile="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " signature failed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2a

    iget-object v1, p0, Lcom/tencent/smtt/sdk/ag;->v:Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "signature:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v0, :cond_1b6

    const-string v0, "null"

    :goto_1a9
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->setCheckErrorDetail(Ljava/lang/String;)V

    goto/16 :goto_2a

    :cond_1b6
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1a9

    :cond_1bf
    const-string v0, "TbsDownload"

    const-string v1, "[TbsApkDownloader.verifyTbsApk] signature successful!"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1e7

    :try_start_1c8
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/tencent/smtt/sdk/ag;->k:Ljava/io/File;

    const-string v2, "x5.tbs"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_1d4
    .catch Ljava/lang/Exception; {:try_start_1c8 .. :try_end_1d4} :catch_1e3

    move-result v0

    move-object v1, v6

    :goto_1d6
    if-nez v0, :cond_1e8

    const/16 v0, 0x6d

    invoke-direct {p0, v1}, Lcom/tencent/smtt/sdk/ag;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, v5}, Lcom/tencent/smtt/sdk/ag;->a(ILjava/lang/String;Z)V

    goto/16 :goto_2a

    :catch_1e3
    move-exception v0

    move-object v1, v0

    move v0, v4

    goto :goto_1d6

    :cond_1e7
    move v0, v4

    :cond_1e8
    const-string v1, "TbsDownload"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[TbsApkDownloader.verifyTbsApk] rename("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ") successful!"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v5

    goto/16 :goto_2a

    :cond_205
    move-wide v0, v2

    goto/16 :goto_a8
.end method

.method private f()V
    .registers 4

    const/4 v2, 0x0

    iput v2, p0, Lcom/tencent/smtt/sdk/ag;->p:I

    iput v2, p0, Lcom/tencent/smtt/sdk/ag;->q:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/tencent/smtt/sdk/ag;->l:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/smtt/sdk/ag;->j:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/tencent/smtt/sdk/ag;->o:Z

    iput-boolean v2, p0, Lcom/tencent/smtt/sdk/ag;->r:Z

    iput-boolean v2, p0, Lcom/tencent/smtt/sdk/ag;->s:Z

    iput-boolean v2, p0, Lcom/tencent/smtt/sdk/ag;->y:Z

    return-void
.end method

.method private g()V
    .registers 9

    const/16 v7, 0x65

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v0, "TbsDownload"

    const-string v1, "[TbsApkDownloader.closeHttpRequest]"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/smtt/sdk/ag;->t:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_2a

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/ag;->r:Z

    if-nez v0, :cond_23

    iget-object v0, p0, Lcom/tencent/smtt/sdk/ag;->v:Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;

    iget-object v1, p0, Lcom/tencent/smtt/sdk/ag;->t:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/tencent/smtt/sdk/ag;->a(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->setResolveIp(Ljava/lang/String;)V

    :cond_23
    :try_start_23
    iget-object v0, p0, Lcom/tencent/smtt/sdk/ag;->t:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_28} :catch_b7

    :goto_28
    iput-object v6, p0, Lcom/tencent/smtt/sdk/ag;->t:Ljava/net/HttpURLConnection;

    :cond_2a
    iget-object v0, p0, Lcom/tencent/smtt/sdk/ag;->v:Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;

    iget v1, v0, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->a:I

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/ag;->r:Z

    if-nez v0, :cond_ea

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/ag;->y:Z

    if-eqz v0, :cond_ea

    iget-object v0, p0, Lcom/tencent/smtt/sdk/ag;->v:Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->setEventTime(J)V

    iget-object v0, p0, Lcom/tencent/smtt/sdk/ag;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/utils/Apn;->getApnInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_49

    const-string v0, ""

    :cond_49
    iget-object v2, p0, Lcom/tencent/smtt/sdk/ag;->g:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/smtt/utils/Apn;->getApnType(Landroid/content/Context;)I

    move-result v2

    iget-object v3, p0, Lcom/tencent/smtt/sdk/ag;->v:Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;

    invoke-virtual {v3, v0}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->setApn(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tencent/smtt/sdk/ag;->v:Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;

    invoke-virtual {v3, v2}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->setNetworkType(I)V

    iget v3, p0, Lcom/tencent/smtt/sdk/ag;->x:I

    if-ne v2, v3, :cond_65

    iget-object v2, p0, Lcom/tencent/smtt/sdk/ag;->w:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6a

    :cond_65
    iget-object v0, p0, Lcom/tencent/smtt/sdk/ag;->v:Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;

    invoke-virtual {v0, v4}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->setNetworkChange(I)V

    :cond_6a
    iget-object v0, p0, Lcom/tencent/smtt/sdk/ag;->v:Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;

    iget v0, v0, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->a:I

    if-eqz v0, :cond_78

    iget-object v0, p0, Lcom/tencent/smtt/sdk/ag;->v:Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;

    iget v0, v0, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->a:I

    const/16 v2, 0x6b

    if-ne v0, v2, :cond_8b

    :cond_78
    iget-object v0, p0, Lcom/tencent/smtt/sdk/ag;->v:Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->getDownFinalFlag()I

    move-result v0

    if-nez v0, :cond_8b

    iget-object v0, p0, Lcom/tencent/smtt/sdk/ag;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/utils/Apn;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_d2

    invoke-direct {p0, v7, v6, v5}, Lcom/tencent/smtt/sdk/ag;->a(ILjava/lang/String;Z)V

    :cond_8b
    :goto_8b
    iget-object v0, p0, Lcom/tencent/smtt/sdk/ag;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v2, "tbs_downloaddecouplecore"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v5, :cond_dc

    iget-object v0, p0, Lcom/tencent/smtt/sdk/ag;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsLogReport;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v0

    sget-object v2, Lcom/tencent/smtt/sdk/TbsLogReport$EventType;->TYPE_DOWNLOAD_DECOUPLE:Lcom/tencent/smtt/sdk/TbsLogReport$EventType;

    iget-object v3, p0, Lcom/tencent/smtt/sdk/ag;->v:Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;

    invoke-virtual {v0, v2, v3}, Lcom/tencent/smtt/sdk/TbsLogReport;->eventReport(Lcom/tencent/smtt/sdk/TbsLogReport$EventType;Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;)V

    :goto_a8
    iget-object v0, p0, Lcom/tencent/smtt/sdk/ag;->v:Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->resetArgs()V

    const/16 v0, 0x64

    if-eq v1, v0, :cond_b6

    sget-object v0, Lcom/tencent/smtt/sdk/QbSdk;->m:Lcom/tencent/smtt/sdk/TbsListener;

    invoke-interface {v0, v1}, Lcom/tencent/smtt/sdk/TbsListener;->onDownloadFinish(I)V

    :cond_b6
    :goto_b6
    return-void

    :catch_b7
    move-exception v0

    const-string v1, "TbsDownload"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[closeHttpRequest] mHttpRequest.disconnect() Throwable:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_28

    :cond_d2
    invoke-direct {p0}, Lcom/tencent/smtt/sdk/ag;->l()Z

    move-result v0

    if-nez v0, :cond_8b

    invoke-direct {p0, v7, v6, v5}, Lcom/tencent/smtt/sdk/ag;->a(ILjava/lang/String;Z)V

    goto :goto_8b

    :cond_dc
    iget-object v0, p0, Lcom/tencent/smtt/sdk/ag;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsLogReport;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v0

    sget-object v2, Lcom/tencent/smtt/sdk/TbsLogReport$EventType;->TYPE_DOWNLOAD:Lcom/tencent/smtt/sdk/TbsLogReport$EventType;

    iget-object v3, p0, Lcom/tencent/smtt/sdk/ag;->v:Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;

    invoke-virtual {v0, v2, v3}, Lcom/tencent/smtt/sdk/TbsLogReport;->eventReport(Lcom/tencent/smtt/sdk/TbsLogReport$EventType;Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;)V

    goto :goto_a8

    :cond_ea
    sput-boolean v4, Lcom/tencent/smtt/sdk/TbsDownloader;->a:Z

    goto :goto_b6
.end method

.method private h()Z
    .registers 7

    const/4 v3, 0x0

    new-instance v1, Ljava/io/File;

    iget-object v0, p0, Lcom/tencent/smtt/sdk/ag;->g:Landroid/content/Context;

    const/4 v2, 0x4

    invoke-static {v0, v2}, Lcom/tencent/smtt/utils/k;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/tencent/smtt/sdk/ag;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsDownloader;->getOverSea(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3e

    const-string v0, "x5.oversea.tbs.org"

    :goto_14
    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/smtt/sdk/ag;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v2, "use_backup_version"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_35

    iget-object v0, p0, Lcom/tencent/smtt/sdk/ag;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v2, "tbs_download_version"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    :cond_35
    iget-object v2, p0, Lcom/tencent/smtt/sdk/ag;->g:Landroid/content/Context;

    const-wide/16 v4, 0x0

    invoke-static {v2, v1, v4, v5, v0}, Lcom/tencent/smtt/utils/a;->a(Landroid/content/Context;Ljava/io/File;JI)Z

    move-result v0

    return v0

    :cond_3e
    const-string v0, "x5.tbs.org"

    goto :goto_14
.end method

.method private i()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/tencent/smtt/sdk/ag;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "tbs_downloaddecouplecore"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_13

    :cond_12
    :goto_12
    return-void

    :cond_13
    new-instance v1, Ljava/io/File;

    iget-object v0, p0, Lcom/tencent/smtt/sdk/ag;->g:Landroid/content/Context;

    const/4 v2, 0x4

    invoke-static {v0, v2}, Lcom/tencent/smtt/utils/k;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/tencent/smtt/sdk/ag;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsDownloader;->getOverSea(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_38

    const-string v0, "x5.oversea.tbs.org"

    :goto_26
    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_32} :catch_33

    goto :goto_12

    :catch_33
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_12

    :cond_38
    :try_start_38
    const-string v0, "x5.tbs.org"
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_3a} :catch_33

    goto :goto_26
.end method

.method private j()Z
    .registers 5

    const/4 v0, 0x0

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/tencent/smtt/sdk/ag;->k:Ljava/io/File;

    const-string v3, "x5.tbs.temp"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_11

    const/4 v0, 0x1

    :cond_11
    return v0
.end method

.method private k()J
    .registers 6

    const-wide/16 v0, 0x0

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/tencent/smtt/sdk/ag;->k:Ljava/io/File;

    const-string v4, "x5.tbs.temp"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v0

    :cond_15
    return-wide v0
.end method

.method private l()Z
    .registers 8

    const/4 v0, 0x0

    const/4 v3, 0x0

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    const-string v2, "www.qq.com"

    :try_start_8
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "ping "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_1e} :catch_51
    .catchall {:try_start_8 .. :try_end_1e} :catchall_61

    move-result-object v5

    :try_start_1f
    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_24} :catch_7b
    .catchall {:try_start_1f .. :try_end_24} :catchall_6e

    :try_start_24
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_29} :catch_7f
    .catchall {:try_start_24 .. :try_end_29} :catchall_71

    move v1, v0

    :cond_2a
    :try_start_2a
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_41

    const-string v6, "TTL"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_40

    const-string v6, "ttl"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_3d} :catch_84
    .catchall {:try_start_2a .. :try_end_3d} :catchall_73

    move-result v3

    if-eqz v3, :cond_4b

    :cond_40
    const/4 v0, 0x1

    :cond_41
    :goto_41
    invoke-direct {p0, v5}, Lcom/tencent/smtt/sdk/ag;->a(Ljava/io/Closeable;)V

    invoke-direct {p0, v4}, Lcom/tencent/smtt/sdk/ag;->a(Ljava/io/Closeable;)V

    invoke-direct {p0, v2}, Lcom/tencent/smtt/sdk/ag;->a(Ljava/io/Closeable;)V

    :goto_4a
    return v0

    :cond_4b
    add-int/lit8 v1, v1, 0x1

    const/4 v3, 0x5

    if-lt v1, v3, :cond_2a

    goto :goto_41

    :catch_51
    move-exception v1

    move-object v2, v3

    move-object v4, v3

    :goto_54
    :try_start_54
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_57
    .catchall {:try_start_54 .. :try_end_57} :catchall_76

    invoke-direct {p0, v4}, Lcom/tencent/smtt/sdk/ag;->a(Ljava/io/Closeable;)V

    invoke-direct {p0, v3}, Lcom/tencent/smtt/sdk/ag;->a(Ljava/io/Closeable;)V

    invoke-direct {p0, v2}, Lcom/tencent/smtt/sdk/ag;->a(Ljava/io/Closeable;)V

    goto :goto_4a

    :catchall_61
    move-exception v0

    move-object v4, v3

    move-object v5, v3

    :goto_64
    invoke-direct {p0, v5}, Lcom/tencent/smtt/sdk/ag;->a(Ljava/io/Closeable;)V

    invoke-direct {p0, v4}, Lcom/tencent/smtt/sdk/ag;->a(Ljava/io/Closeable;)V

    invoke-direct {p0, v3}, Lcom/tencent/smtt/sdk/ag;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_6e
    move-exception v0

    move-object v4, v3

    goto :goto_64

    :catchall_71
    move-exception v0

    goto :goto_64

    :catchall_73
    move-exception v0

    move-object v3, v2

    goto :goto_64

    :catchall_76
    move-exception v0

    move-object v5, v4

    move-object v4, v3

    move-object v3, v2

    goto :goto_64

    :catch_7b
    move-exception v1

    move-object v2, v3

    move-object v4, v5

    goto :goto_54

    :catch_7f
    move-exception v1

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    goto :goto_54

    :catch_84
    move-exception v1

    move-object v3, v4

    move-object v4, v5

    goto :goto_54
.end method

.method private m()J
    .registers 5

    iget v0, p0, Lcom/tencent/smtt/sdk/ag;->p:I

    packed-switch v0, :pswitch_data_14

    const-wide/32 v0, 0x30d40

    :goto_8
    return-wide v0

    :pswitch_9
    const-wide/16 v0, 0x4e20

    iget v2, p0, Lcom/tencent/smtt/sdk/ag;->p:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    goto :goto_8

    :pswitch_10
    const-wide/32 v0, 0x186a0

    goto :goto_8

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_9
        :pswitch_9
        :pswitch_10
        :pswitch_10
    .end packed-switch
.end method

.method private n()Z
    .registers 10

    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/tencent/smtt/sdk/ag;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/utils/Apn;->getApnType(Landroid/content/Context;)I

    move-result v0

    const/4 v4, 0x3

    if-ne v0, v4, :cond_ba

    move v0, v1

    :goto_d
    const-string v4, "TbsDownload"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "[TbsApkDwonloader.detectWifiNetworkAvailable] isWifi="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_82

    iget-object v0, p0, Lcom/tencent/smtt/sdk/ag;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/utils/Apn;->getWifiSSID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "TbsDownload"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "[TbsApkDwonloader.detectWifiNetworkAvailable] localBSSID="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_3d
    new-instance v0, Ljava/net/URL;

    const-string v5, "http://pms.mb.qq.com/rsp204"

    invoke-direct {v0, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_4a
    .catch Ljava/lang/Throwable; {:try_start_3d .. :try_end_4a} :catch_c3
    .catchall {:try_start_3d .. :try_end_4a} :catchall_d2

    const/4 v3, 0x0

    :try_start_4b
    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    const/16 v3, 0x2710

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const/16 v3, 0x2710

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    const-string v5, "TbsDownload"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "[TbsApkDwonloader.detectWifiNetworkAvailable] responseCode="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_77
    .catch Ljava/lang/Throwable; {:try_start_4b .. :try_end_77} :catch_e2
    .catchall {:try_start_4b .. :try_end_77} :catchall_db

    const/16 v5, 0xcc

    if-ne v3, v5, :cond_bd

    :goto_7b
    if-eqz v0, :cond_e9

    :try_start_7d
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_80} :catch_bf

    move-object v3, v4

    move v2, v1

    :cond_82
    :goto_82
    if-nez v2, :cond_aa

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_aa

    iget-object v0, p0, Lcom/tencent/smtt/sdk/ag;->A:Ljava/util/Set;

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_aa

    iget-object v0, p0, Lcom/tencent/smtt/sdk/ag;->A:Ljava/util/Set;

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/tencent/smtt/sdk/ag;->o()V

    iget-object v0, p0, Lcom/tencent/smtt/sdk/ag;->z:Landroid/os/Handler;

    const/16 v1, 0x96

    invoke-virtual {v0, v1, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/smtt/sdk/ag;->z:Landroid/os/Handler;

    const-wide/32 v4, 0x1d4c0

    invoke-virtual {v1, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_aa
    if-eqz v2, :cond_b9

    iget-object v0, p0, Lcom/tencent/smtt/sdk/ag;->A:Ljava/util/Set;

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b9

    iget-object v0, p0, Lcom/tencent/smtt/sdk/ag;->A:Ljava/util/Set;

    invoke-interface {v0, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_b9
    return v2

    :cond_ba
    move v0, v2

    goto/16 :goto_d

    :cond_bd
    move v1, v2

    goto :goto_7b

    :catch_bf
    move-exception v0

    move-object v3, v4

    move v2, v1

    goto :goto_82

    :catch_c3
    move-exception v0

    move-object v1, v3

    :goto_c5
    :try_start_c5
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_c8
    .catchall {:try_start_c5 .. :try_end_c8} :catchall_df

    if-eqz v1, :cond_e7

    :try_start_ca
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_cd
    .catch Ljava/lang/Exception; {:try_start_ca .. :try_end_cd} :catch_cf

    move-object v3, v4

    goto :goto_82

    :catch_cf
    move-exception v0

    move-object v3, v4

    goto :goto_82

    :catchall_d2
    move-exception v0

    :goto_d3
    if-eqz v3, :cond_d8

    :try_start_d5
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_d8
    .catch Ljava/lang/Exception; {:try_start_d5 .. :try_end_d8} :catch_d9

    :cond_d8
    :goto_d8
    throw v0

    :catch_d9
    move-exception v1

    goto :goto_d8

    :catchall_db
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    goto :goto_d3

    :catchall_df
    move-exception v0

    move-object v3, v1

    goto :goto_d3

    :catch_e2
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_c5

    :cond_e7
    move-object v3, v4

    goto :goto_82

    :cond_e9
    move-object v3, v4

    move v2, v1

    goto :goto_82
.end method

.method private o()V
    .registers 3

    iget-object v0, p0, Lcom/tencent/smtt/sdk/ag;->z:Landroid/os/Handler;

    if-nez v0, :cond_13

    new-instance v0, Lcom/tencent/smtt/sdk/ah;

    invoke-static {}, Lcom/tencent/smtt/sdk/al;->a()Lcom/tencent/smtt/sdk/al;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/smtt/sdk/al;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/tencent/smtt/sdk/ah;-><init>(Lcom/tencent/smtt/sdk/ag;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/tencent/smtt/sdk/ag;->z:Landroid/os/Handler;

    :cond_13
    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 5

    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/tencent/smtt/sdk/ag;->k:Ljava/io/File;

    const-string v2, "x5.tbs"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/smtt/sdk/ag;->g:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/tencent/smtt/utils/a;->a(Landroid/content/Context;Ljava/io/File;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v2, v1, :cond_16

    if-lez p1, :cond_19

    if-ne p1, v1, :cond_19

    :cond_16
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_19} :catch_1a

    :cond_19
    :goto_19
    return-void

    :catch_1a
    move-exception v0

    goto :goto_19
.end method

.method public a()Z
    .registers 8

    const-string v0, "TbsApkDownloader"

    const-string v1, "verifyAndInstallDecoupleCoreFromBackup #1"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_7
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/tencent/smtt/sdk/ag;->g:Landroid/content/Context;

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/tencent/smtt/utils/k;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "x5.tbs.decouple"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4d

    const-string v1, "TbsApkDownloader"

    const-string v2, "verifyAndInstallDecoupleCoreFromBackup #2"

    invoke-static {v1, v2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_22
    :goto_22
    iget-object v1, p0, Lcom/tencent/smtt/sdk/ag;->g:Landroid/content/Context;

    const-wide/16 v2, 0x0

    iget-object v4, p0, Lcom/tencent/smtt/sdk/ag;->g:Landroid/content/Context;

    invoke-static {v4}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v4

    iget-object v4, v4, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v5, "tbs_decouplecoreversion"

    const/4 v6, -0x1

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v1, v0, v2, v3, v4}, Lcom/tencent/smtt/utils/a;->a(Landroid/content/Context;Ljava/io/File;JI)Z

    move-result v0

    if-eqz v0, :cond_6f

    const-string v0, "TbsApkDownloader"

    const-string v1, "verifyAndInstallDecoupleCoreFromBackup #3"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/smtt/sdk/am;->a()Lcom/tencent/smtt/sdk/am;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/smtt/sdk/ag;->g:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/am;->e(Landroid/content/Context;)Z

    move-result v0

    :goto_4c
    return v0

    :cond_4d
    iget-object v1, p0, Lcom/tencent/smtt/sdk/ag;->g:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v1

    iget-object v1, v1, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v2, "tbs_decouplecoreversion"

    const/4 v3, -0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Lcom/tencent/smtt/sdk/TbsDownloader;->b(I)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_22

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-static {v1, v0}, Lcom/tencent/smtt/utils/k;->b(Ljava/io/File;Ljava/io/File;)Z

    goto :goto_22

    :catch_6c
    move-exception v0

    :cond_6d
    :goto_6d
    const/4 v0, 0x0

    goto :goto_4c

    :cond_6f
    const-string v0, "TbsApkDownloader"

    const-string v1, "verifyAndInstallDecoupleCoreFromBackup no backup file !!!"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/tencent/smtt/sdk/ag;->g:Landroid/content/Context;

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/tencent/smtt/utils/k;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "x5.tbs.decouple"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_6d

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_8d} :catch_6c

    goto :goto_6d
.end method

.method public a(Z)Z
    .registers 6

    const/4 v0, 0x0

    if-eqz p1, :cond_18

    invoke-direct {p0}, Lcom/tencent/smtt/sdk/ag;->n()Z

    move-result v1

    if-nez v1, :cond_18

    invoke-static {}, Lcom/tencent/smtt/sdk/QbSdk;->getDownloadWithoutWifi()Z

    move-result v1

    if-eqz v1, :cond_17

    iget-object v1, p0, Lcom/tencent/smtt/sdk/ag;->g:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/smtt/utils/Apn;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_18

    :cond_17
    :goto_17
    return v0

    :cond_18
    iget-object v1, p0, Lcom/tencent/smtt/sdk/ag;->b:[Ljava/lang/String;

    if-eqz v1, :cond_17

    iget v1, p0, Lcom/tencent/smtt/sdk/ag;->c:I

    if-ltz v1, :cond_17

    iget v1, p0, Lcom/tencent/smtt/sdk/ag;->c:I

    iget-object v2, p0, Lcom/tencent/smtt/sdk/ag;->b:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_17

    iget-object v1, p0, Lcom/tencent/smtt/sdk/ag;->b:[Ljava/lang/String;

    iget v2, p0, Lcom/tencent/smtt/sdk/ag;->c:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/tencent/smtt/sdk/ag;->c:I

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/tencent/smtt/sdk/ag;->j:Ljava/lang/String;

    iput v0, p0, Lcom/tencent/smtt/sdk/ag;->p:I

    iput v0, p0, Lcom/tencent/smtt/sdk/ag;->q:I

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/tencent/smtt/sdk/ag;->l:J

    iput-boolean v0, p0, Lcom/tencent/smtt/sdk/ag;->o:Z

    iput-boolean v0, p0, Lcom/tencent/smtt/sdk/ag;->r:Z

    iput-boolean v0, p0, Lcom/tencent/smtt/sdk/ag;->s:Z

    iput-boolean v0, p0, Lcom/tencent/smtt/sdk/ag;->y:Z

    const/4 v0, 0x1

    goto :goto_17
.end method

.method public a(ZZ)Z
    .registers 12

    const/16 v8, -0xd6

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/tencent/smtt/sdk/ag;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "use_backup_version"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {}, Lcom/tencent/smtt/sdk/am;->a()Lcom/tencent/smtt/sdk/am;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/smtt/sdk/ag;->g:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/tencent/smtt/sdk/am;->j(Landroid/content/Context;)I

    move-result v4

    if-nez v0, :cond_37

    iget-object v0, p0, Lcom/tencent/smtt/sdk/ag;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "tbs_download_version"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v3, "by default key"

    iput-object v3, p0, Lcom/tencent/smtt/sdk/ag;->a:Ljava/lang/String;

    move v3, v0

    :goto_31
    if-eqz v3, :cond_35

    if-ne v3, v4, :cond_3d

    :cond_35
    move v1, v2

    :cond_36
    :goto_36
    return v1

    :cond_37
    const-string v3, "by new key"

    iput-object v3, p0, Lcom/tencent/smtt/sdk/ag;->a:Ljava/lang/String;

    move v3, v0

    goto :goto_31

    :cond_3d
    if-eqz p2, :cond_102

    invoke-static {v3}, Lcom/tencent/smtt/sdk/TbsDownloader;->a(I)Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_e2

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_e2

    new-instance v5, Ljava/io/File;

    iget-object v0, p0, Lcom/tencent/smtt/sdk/ag;->g:Landroid/content/Context;

    const/4 v6, 0x4

    invoke-static {v0, v6}, Lcom/tencent/smtt/utils/k;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/tencent/smtt/sdk/ag;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsDownloader;->getOverSea(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_db

    const-string v0, "x5.oversea.tbs.org"

    :goto_5e
    invoke-direct {v5, v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_61
    iget-object v0, p0, Lcom/tencent/smtt/sdk/ag;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v6, "tbs_download_version_type"

    const/4 v7, 0x0

    invoke-interface {v0, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v1, :cond_e2

    invoke-static {v4, v5}, Lcom/tencent/smtt/utils/k;->b(Ljava/io/File;Ljava/io/File;)Z
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_75} :catch_de

    move v0, v1

    :goto_76
    invoke-direct {p0}, Lcom/tencent/smtt/sdk/ag;->h()Z

    move-result v5

    if-eqz v5, :cond_f2

    invoke-direct {p0, v3}, Lcom/tencent/smtt/sdk/ag;->b(I)Z

    move-result v3

    if-eqz v3, :cond_102

    iget-object v3, p0, Lcom/tencent/smtt/sdk/ag;->g:Landroid/content/Context;

    invoke-static {v3}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v3

    iget-object v3, v3, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    const-string v4, "tbs_download_interrupt_code_reason"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/tencent/smtt/sdk/ag;->g:Landroid/content/Context;

    invoke-static {v3}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V

    invoke-direct {p0, v2}, Lcom/tencent/smtt/sdk/ag;->b(Z)V

    if-eqz v0, :cond_36

    const/16 v0, 0x64

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "use local backup apk in startDownload"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/tencent/smtt/sdk/ag;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v3, v1}, Lcom/tencent/smtt/sdk/ag;->a(ILjava/lang/String;Z)V

    iget-object v0, p0, Lcom/tencent/smtt/sdk/ag;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "tbs_downloaddecouplecore"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_e4

    iget-object v0, p0, Lcom/tencent/smtt/sdk/ag;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsLogReport;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v0

    sget-object v2, Lcom/tencent/smtt/sdk/TbsLogReport$EventType;->TYPE_DOWNLOAD_DECOUPLE:Lcom/tencent/smtt/sdk/TbsLogReport$EventType;

    iget-object v3, p0, Lcom/tencent/smtt/sdk/ag;->v:Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;

    invoke-virtual {v0, v2, v3}, Lcom/tencent/smtt/sdk/TbsLogReport;->eventReport(Lcom/tencent/smtt/sdk/TbsLogReport$EventType;Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;)V

    :goto_d4
    iget-object v0, p0, Lcom/tencent/smtt/sdk/ag;->v:Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->resetArgs()V

    goto/16 :goto_36

    :cond_db
    const-string v0, "x5.tbs.org"

    goto :goto_5e

    :catch_de
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_e2
    move v0, v2

    goto :goto_76

    :cond_e4
    iget-object v0, p0, Lcom/tencent/smtt/sdk/ag;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsLogReport;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v0

    sget-object v2, Lcom/tencent/smtt/sdk/TbsLogReport$EventType;->TYPE_DOWNLOAD:Lcom/tencent/smtt/sdk/TbsLogReport$EventType;

    iget-object v3, p0, Lcom/tencent/smtt/sdk/ag;->v:Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;

    invoke-virtual {v0, v2, v3}, Lcom/tencent/smtt/sdk/TbsLogReport;->eventReport(Lcom/tencent/smtt/sdk/TbsLogReport$EventType;Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;)V

    goto :goto_d4

    :cond_f2
    invoke-direct {p0}, Lcom/tencent/smtt/sdk/ag;->i()V

    iget-object v0, p0, Lcom/tencent/smtt/sdk/ag;->g:Landroid/content/Context;

    const-wide/16 v6, 0x0

    invoke-static {v0, v4, v6, v7, v3}, Lcom/tencent/smtt/utils/a;->a(Landroid/content/Context;Ljava/io/File;JI)Z

    move-result v0

    if-nez v0, :cond_102

    invoke-static {v4}, Lcom/tencent/smtt/utils/k;->b(Ljava/io/File;)V

    :cond_102
    invoke-direct {p0, v2, p2}, Lcom/tencent/smtt/sdk/ag;->c(ZZ)Z

    move-result v0

    if-eqz v0, :cond_127

    iget-object v0, p0, Lcom/tencent/smtt/sdk/ag;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    const-string v3, "tbs_download_interrupt_code_reason"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/smtt/sdk/ag;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V

    invoke-direct {p0, v2}, Lcom/tencent/smtt/sdk/ag;->b(Z)V

    goto/16 :goto_36

    :cond_127
    invoke-direct {p0, v1}, Lcom/tencent/smtt/sdk/ag;->c(Z)Z

    move-result v0

    if-nez v0, :cond_145

    invoke-direct {p0, v1}, Lcom/tencent/smtt/sdk/ag;->c(Z)Z

    move-result v0

    if-nez v0, :cond_145

    const-string v0, "TbsDownload"

    const-string v1, "[TbsApkDownloader] delete file failed!"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/smtt/sdk/ag;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    const/16 v1, -0x12d

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V

    :cond_145
    move v1, v2

    goto/16 :goto_36
.end method

.method public b()I
    .registers 5

    iget-object v0, p0, Lcom/tencent/smtt/sdk/ag;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/ag;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_a

    const/4 v0, 0x0

    :goto_9
    return v0

    :cond_a
    iget-object v2, p0, Lcom/tencent/smtt/sdk/ag;->g:Landroid/content/Context;

    new-instance v3, Ljava/io/File;

    iget-object v0, p0, Lcom/tencent/smtt/sdk/ag;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsDownloader;->getOverSea(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_20

    const-string v0, "x5.oversea.tbs.org"

    :goto_18
    invoke-direct {v3, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v2, v3}, Lcom/tencent/smtt/utils/a;->a(Landroid/content/Context;Ljava/io/File;)I

    move-result v0

    goto :goto_9

    :cond_20
    const-string v0, "x5.tbs.org"

    goto :goto_18
.end method

.method public b(ZZ)V
    .registers 35

    invoke-static {}, Lcom/tencent/smtt/sdk/am;->a()Lcom/tencent/smtt/sdk/am;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/tencent/smtt/sdk/ag;->g:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lcom/tencent/smtt/sdk/am;->c(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_21

    if-nez p1, :cond_21

    const/4 v4, 0x0

    sput-boolean v4, Lcom/tencent/smtt/sdk/TbsDownloader;->a:Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/smtt/sdk/ag;->g:Landroid/content/Context;

    invoke-static {v4}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v4

    const/16 v5, -0x142

    invoke-virtual {v4, v5}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V

    :goto_20
    return-void

    :cond_21
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/smtt/sdk/ag;->g:Landroid/content/Context;

    invoke-static {v4}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v4

    iget-object v4, v4, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v5, "tbs_responsecode"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_3b

    const/4 v5, 0x2

    if-eq v4, v5, :cond_3b

    const/4 v5, 0x4

    if-ne v4, v5, :cond_50

    :cond_3b
    const/4 v4, 0x1

    move/from16 v19, v4

    :goto_3e
    if-nez p2, :cond_54

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/tencent/smtt/sdk/ag;->a(ZZ)Z

    move-result v4

    if-eqz v4, :cond_54

    const/4 v4, 0x0

    sput-boolean v4, Lcom/tencent/smtt/sdk/TbsDownloader;->a:Z

    goto :goto_20

    :cond_50
    const/4 v4, 0x0

    move/from16 v19, v4

    goto :goto_3e

    :cond_54
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/tencent/smtt/sdk/ag;->C:Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/smtt/sdk/ag;->g:Landroid/content/Context;

    invoke-static {v4}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v4

    iget-object v4, v4, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v5, "tbs_downloadurl"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/tencent/smtt/sdk/ag;->h:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/smtt/sdk/ag;->g:Landroid/content/Context;

    invoke-static {v4}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v4

    iget-object v4, v4, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v5, "tbs_downloadurl_list"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "TbsDownload"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "backupUrlStrings:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/tencent/smtt/sdk/ag;->b:[Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcom/tencent/smtt/sdk/ag;->c:I

    if-nez p1, :cond_bd

    if-eqz v4, :cond_bd

    const-string v5, ""

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_bd

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/tencent/smtt/sdk/ag;->b:[Ljava/lang/String;

    :cond_bd
    const-string v5, "TbsDownload"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "[TbsApkDownloader.startDownload] mDownloadUrl="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/tencent/smtt/sdk/ag;->h:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " backupUrlStrings="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " mLocation="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/tencent/smtt/sdk/ag;->j:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " mCanceled="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/tencent/smtt/sdk/ag;->r:Z

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " mHttpRequest="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/tencent/smtt/sdk/ag;->t:Ljava/net/HttpURLConnection;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/smtt/sdk/ag;->h:Ljava/lang/String;

    if-nez v4, :cond_12b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/smtt/sdk/ag;->j:Ljava/lang/String;

    if-nez v4, :cond_12b

    sget-object v4, Lcom/tencent/smtt/sdk/QbSdk;->m:Lcom/tencent/smtt/sdk/TbsListener;

    const/16 v5, 0x6e

    invoke-interface {v4, v5}, Lcom/tencent/smtt/sdk/TbsListener;->onDownloadFinish(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/smtt/sdk/ag;->g:Landroid/content/Context;

    invoke-static {v4}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v4

    const/16 v5, -0x12e

    invoke-virtual {v4, v5}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V

    goto/16 :goto_20

    :cond_12b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/smtt/sdk/ag;->t:Ljava/net/HttpURLConnection;

    if-eqz v4, :cond_14d

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/tencent/smtt/sdk/ag;->r:Z

    if-nez v4, :cond_14d

    sget-object v4, Lcom/tencent/smtt/sdk/QbSdk;->m:Lcom/tencent/smtt/sdk/TbsListener;

    const/16 v5, 0x6e

    invoke-interface {v4, v5}, Lcom/tencent/smtt/sdk/TbsListener;->onDownloadFinish(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/smtt/sdk/ag;->g:Landroid/content/Context;

    invoke-static {v4}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v4

    const/16 v5, -0x12f

    invoke-virtual {v4, v5}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V

    goto/16 :goto_20

    :cond_14d
    if-nez p1, :cond_17e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/smtt/sdk/ag;->A:Ljava/util/Set;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/tencent/smtt/sdk/ag;->g:Landroid/content/Context;

    invoke-static {v5}, Lcom/tencent/smtt/utils/Apn;->getWifiSSID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17e

    const-string v4, "TbsDownload"

    const-string v5, "[TbsApkDownloader.startDownload] WIFI Unavailable"

    invoke-static {v4, v5}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Lcom/tencent/smtt/sdk/QbSdk;->m:Lcom/tencent/smtt/sdk/TbsListener;

    const/16 v5, 0x6e

    invoke-interface {v4, v5}, Lcom/tencent/smtt/sdk/TbsListener;->onDownloadFinish(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/smtt/sdk/ag;->g:Landroid/content/Context;

    invoke-static {v4}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v4

    const/16 v5, -0x130

    invoke-virtual {v4, v5}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V

    goto/16 :goto_20

    :cond_17e
    invoke-direct/range {p0 .. p0}, Lcom/tencent/smtt/sdk/ag;->f()V

    const-string v4, "TbsDownload"

    const-string v5, "STEP 1/2 begin downloading..."

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/smtt/sdk/ag;->g:Landroid/content/Context;

    invoke-static {v4}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getDownloadMaxflow()J

    move-result-wide v24

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/smtt/sdk/ag;->g:Landroid/content/Context;

    invoke-static {v4}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v4

    iget-object v4, v4, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v5, "tbs_downloadflow"

    const-wide/16 v8, 0x0

    invoke-interface {v4, v5, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    if-eqz p1, :cond_25c

    sget v7, Lcom/tencent/smtt/sdk/ag;->e:I

    move-object/from16 v0, p0

    iput v7, v0, Lcom/tencent/smtt/sdk/ag;->B:I

    :cond_1b0
    :goto_1b0
    move-object/from16 v0, p0

    iget v7, v0, Lcom/tencent/smtt/sdk/ag;->p:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/tencent/smtt/sdk/ag;->B:I

    if-gt v7, v8, :cond_1d8

    move-object/from16 v0, p0

    iget v7, v0, Lcom/tencent/smtt/sdk/ag;->q:I

    const/16 v8, 0x8

    if-le v7, v8, :cond_264

    const/16 v4, 0x7b

    const/4 v5, 0x0

    const/4 v7, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v7}, Lcom/tencent/smtt/sdk/ag;->a(ILjava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/smtt/sdk/ag;->g:Landroid/content/Context;

    invoke-static {v4}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v4

    const/16 v5, -0x132

    invoke-virtual {v4, v5}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V

    :cond_1d8
    :goto_1d8
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/tencent/smtt/sdk/ag;->r:Z

    if-nez v4, :cond_257

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/tencent/smtt/sdk/ag;->s:Z

    if-eqz v4, :cond_22a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/smtt/sdk/ag;->b:[Ljava/lang/String;

    if-nez v4, :cond_1f5

    if-nez v6, :cond_1f5

    const/4 v4, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v4, v1}, Lcom/tencent/smtt/sdk/ag;->c(ZZ)Z

    move-result v6

    :cond_1f5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/tencent/smtt/sdk/ag;->v:Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;

    if-eqz v6, :cond_e5a

    const/4 v4, 0x1

    :goto_1fc
    invoke-virtual {v5, v4}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->setUnpkgFlag(I)V

    if-nez v19, :cond_e60

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/tencent/smtt/sdk/ag;->v:Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;

    if-eqz v6, :cond_e5d

    const/4 v4, 0x1

    :goto_208
    invoke-virtual {v5, v4}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->setPatchUpdateFlag(I)V

    :goto_20b
    if-eqz v6, :cond_e6a

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/tencent/smtt/sdk/ag;->b(Z)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/smtt/sdk/ag;->g:Landroid/content/Context;

    invoke-static {v4}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v4

    const/16 v5, -0x13d

    invoke-virtual {v4, v5}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V

    const/16 v4, 0x64

    const-string v5, "success"

    const/4 v7, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v7}, Lcom/tencent/smtt/sdk/ag;->a(ILjava/lang/String;Z)V

    :cond_22a
    :goto_22a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/smtt/sdk/ag;->g:Landroid/content/Context;

    invoke-static {v4}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v4

    if-eqz v6, :cond_e7f

    iget-object v5, v4, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v7, "tbs_download_success_retrytimes"

    const/4 v8, 0x0

    invoke-interface {v5, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    iget-object v7, v4, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    const-string v8, "tbs_download_success_retrytimes"

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v7, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_24a
    :goto_24a
    invoke-virtual {v4}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->commit()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/tencent/smtt/sdk/ag;->v:Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;

    if-eqz v6, :cond_ea5

    const/4 v4, 0x1

    :goto_254
    invoke-virtual {v5, v4}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->setDownFinalFlag(I)V

    :cond_257
    invoke-direct/range {p0 .. p0}, Lcom/tencent/smtt/sdk/ag;->g()V

    goto/16 :goto_20

    :cond_25c
    sget v7, Lcom/tencent/smtt/sdk/ag;->d:I

    move-object/from16 v0, p0

    iput v7, v0, Lcom/tencent/smtt/sdk/ag;->B:I

    goto/16 :goto_1b0

    :cond_264
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    if-nez p1, :cond_364

    :try_start_26a
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/tencent/smtt/sdk/ag;->g:Landroid/content/Context;

    invoke-static {v7}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v7

    iget-object v7, v7, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v8, "tbs_downloadstarttime"

    const-wide/16 v10, 0x0

    invoke-interface {v7, v8, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    sub-long v8, v20, v8

    const-wide/32 v10, 0x5265c00

    cmp-long v7, v8, v10

    if-lez v7, :cond_30b

    const-string v7, "TbsDownload"

    const-string v8, "[TbsApkDownloader.startDownload] OVER DOWNLOAD_PERIOD"

    invoke-static {v7, v8}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/tencent/smtt/sdk/ag;->g:Landroid/content/Context;

    invoke-static {v7}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v7

    iget-object v7, v7, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    const-string v8, "tbs_downloadstarttime"

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/tencent/smtt/sdk/ag;->g:Landroid/content/Context;

    invoke-static {v7}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v7

    iget-object v7, v7, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    const-string v8, "tbs_downloadflow"

    const-wide/16 v10, 0x0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/tencent/smtt/sdk/ag;->g:Landroid/content/Context;

    invoke-static {v7}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v7

    invoke-virtual {v7}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->commit()V
    :try_end_2bf
    .catch Ljava/lang/Throwable; {:try_start_26a .. :try_end_2bf} :catch_539
    .catchall {:try_start_26a .. :try_end_2bf} :catchall_5d2

    const-wide/16 v8, 0x0

    :goto_2c1
    :try_start_2c1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/smtt/sdk/ag;->g:Landroid/content/Context;

    invoke-static {v4}, Lcom/tencent/smtt/utils/k;->b(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_363

    const-string v4, "TbsDownload"

    const-string v5, "DownloadBegin FreeSpace too small"

    const/4 v7, 0x1

    invoke-static {v4, v5, v7}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v4, 0x69

    const/4 v5, 0x0

    const/4 v7, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v7}, Lcom/tencent/smtt/sdk/ag;->a(ILjava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/smtt/sdk/ag;->g:Landroid/content/Context;

    invoke-static {v4}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v4

    const/16 v5, -0x134

    invoke-virtual {v4, v5}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V
    :try_end_2e9
    .catch Ljava/lang/Throwable; {:try_start_2c1 .. :try_end_2e9} :catch_b47
    .catchall {:try_start_2c1 .. :try_end_2e9} :catchall_ea8

    if-nez p1, :cond_1d8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/smtt/sdk/ag;->g:Landroid/content/Context;

    invoke-static {v4}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v4

    iget-object v4, v4, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    const-string v5, "tbs_downloadflow"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v4, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/smtt/sdk/ag;->g:Landroid/content/Context;

    invoke-static {v4}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->commit()V

    goto/16 :goto_1d8

    :cond_30b
    :try_start_30b
    const-string v7, "TbsDownload"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "[TbsApkDownloader.startDownload] downloadFlow="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    cmp-long v7, v4, v24

    if-ltz v7, :cond_f06

    const-string v7, "TbsDownload"

    const-string v8, "STEP 1/2 begin downloading...failed because you exceeded max flow!"

    const/4 v9, 0x1

    invoke-static {v7, v8, v9}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v7, 0x70

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v8, v9}, Lcom/tencent/smtt/sdk/ag;->a(ILjava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/tencent/smtt/sdk/ag;->g:Landroid/content/Context;

    invoke-static {v7}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v7

    const/16 v8, -0x133

    invoke-virtual {v7, v8}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V
    :try_end_341
    .catch Ljava/lang/Throwable; {:try_start_30b .. :try_end_341} :catch_539
    .catchall {:try_start_30b .. :try_end_341} :catchall_5d2

    if-nez p1, :cond_1d8

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/tencent/smtt/sdk/ag;->g:Landroid/content/Context;

    invoke-static {v7}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v7

    iget-object v7, v7, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    const-string v8, "tbs_downloadflow"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v7, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/smtt/sdk/ag;->g:Landroid/content/Context;

    invoke-static {v4}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->commit()V

    goto/16 :goto_1d8

    :cond_363
    move-wide v4, v8

    :cond_364
    const/4 v7, 0x1

    :try_start_365
    move-object/from16 v0, p0

    iput-boolean v7, v0, Lcom/tencent/smtt/sdk/ag;->y:Z

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/tencent/smtt/sdk/ag;->j:Ljava/lang/String;

    if-eqz v7, :cond_4e8

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/tencent/smtt/sdk/ag;->j:Ljava/lang/String;

    :goto_373
    const-string v8, "TbsDownload"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "try url:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",mRetryTimes:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p0

    iget v10, v0, Lcom/tencent/smtt/sdk/ag;->p:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    invoke-static {v8, v9, v10}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/tencent/smtt/sdk/ag;->i:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3a7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/tencent/smtt/sdk/ag;->v:Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;

    invoke-virtual {v8, v7}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->setDownloadUrl(Ljava/lang/String;)V

    :cond_3a7
    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/tencent/smtt/sdk/ag;->i:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/tencent/smtt/sdk/ag;->a(Ljava/lang/String;)V

    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/tencent/smtt/sdk/ag;->o:Z

    if-nez v7, :cond_40d

    invoke-direct/range {p0 .. p0}, Lcom/tencent/smtt/sdk/ag;->k()J

    move-result-wide v14

    const-string v7, "TbsDownload"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "[TbsApkDownloader.startDownload] range="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/tencent/smtt/sdk/ag;->l:J

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-gtz v7, :cond_4ee

    const-string v7, "TbsDownload"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "STEP 1/2 begin downloading...current"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-static {v7, v8, v9}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/tencent/smtt/sdk/ag;->t:Ljava/net/HttpURLConnection;

    const-string v8, "Range"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "bytes="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_40d
    :goto_40d
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/tencent/smtt/sdk/ag;->v:Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;

    const-wide/16 v10, 0x0

    cmp-long v7, v14, v10

    if-nez v7, :cond_5ad

    const/4 v7, 0x0

    :goto_418
    invoke-virtual {v8, v7}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->setDownloadCancel(I)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/tencent/smtt/sdk/ag;->g:Landroid/content/Context;

    invoke-static {v7}, Lcom/tencent/smtt/utils/Apn;->getApnType(Landroid/content/Context;)I

    move-result v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/tencent/smtt/sdk/ag;->g:Landroid/content/Context;

    invoke-static {v8}, Lcom/tencent/smtt/utils/Apn;->getApnInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/tencent/smtt/sdk/ag;->w:Ljava/lang/String;

    if-nez v9, :cond_5b0

    move-object/from16 v0, p0

    iget v9, v0, Lcom/tencent/smtt/sdk/ag;->x:I

    const/4 v10, -0x1

    if-ne v9, v10, :cond_5b0

    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/tencent/smtt/sdk/ag;->w:Ljava/lang/String;

    move-object/from16 v0, p0

    iput v7, v0, Lcom/tencent/smtt/sdk/ag;->x:I

    :cond_440
    :goto_440
    move-object/from16 v0, p0

    iget v7, v0, Lcom/tencent/smtt/sdk/ag;->p:I

    if-lez v7, :cond_453

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/tencent/smtt/sdk/ag;->t:Ljava/net/HttpURLConnection;

    const-string v8, "Referer"

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/tencent/smtt/sdk/ag;->h:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_453
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/tencent/smtt/sdk/ag;->t:Ljava/net/HttpURLConnection;

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v7

    const-string v8, "TbsDownload"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "[TbsApkDownloader.startDownload] responseCode="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/tencent/smtt/sdk/ag;->v:Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;

    invoke-virtual {v8, v7}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->setHttpCode(I)V

    if-nez p1, :cond_4b3

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/tencent/smtt/sdk/ag;->g:Landroid/content/Context;

    invoke-static {v8}, Lcom/tencent/smtt/sdk/TbsDownloader;->getOverSea(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_4b3

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/tencent/smtt/sdk/ag;->g:Landroid/content/Context;

    invoke-static {v8}, Lcom/tencent/smtt/utils/Apn;->getApnType(Landroid/content/Context;)I

    move-result v8

    const/4 v9, 0x3

    if-eq v8, v9, :cond_493

    invoke-static {}, Lcom/tencent/smtt/sdk/QbSdk;->getDownloadWithoutWifi()Z

    move-result v8

    if-eqz v8, :cond_49d

    :cond_493
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/tencent/smtt/sdk/ag;->g:Landroid/content/Context;

    invoke-static {v8}, Lcom/tencent/smtt/utils/Apn;->getApnType(Landroid/content/Context;)I

    move-result v8

    if-nez v8, :cond_4b3

    :cond_49d
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/smtt/sdk/ag;->c()V

    sget-object v8, Lcom/tencent/smtt/sdk/QbSdk;->m:Lcom/tencent/smtt/sdk/TbsListener;

    if-eqz v8, :cond_4ab

    sget-object v8, Lcom/tencent/smtt/sdk/QbSdk;->m:Lcom/tencent/smtt/sdk/TbsListener;

    const/16 v9, 0x6f

    invoke-interface {v8, v9}, Lcom/tencent/smtt/sdk/TbsListener;->onDownloadFinish(I)V

    :cond_4ab
    const-string v8, "TbsDownload"

    const-string v9, "Download is canceled due to NOT_WIFI error!"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_4b3
    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/tencent/smtt/sdk/ag;->r:Z

    if-eqz v8, :cond_5f6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/tencent/smtt/sdk/ag;->g:Landroid/content/Context;

    invoke-static {v7}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v7

    const/16 v8, -0x135

    invoke-virtual {v7, v8}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V
    :try_end_4c6
    .catch Ljava/lang/Throwable; {:try_start_365 .. :try_end_4c6} :catch_539
    .catchall {:try_start_365 .. :try_end_4c6} :catchall_5d2

    if-nez p1, :cond_1d8

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/tencent/smtt/sdk/ag;->g:Landroid/content/Context;

    invoke-static {v7}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v7

    iget-object v7, v7, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    const-string v8, "tbs_downloadflow"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v7, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/smtt/sdk/ag;->g:Landroid/content/Context;

    invoke-static {v4}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->commit()V

    goto/16 :goto_1d8

    :cond_4e8
    :try_start_4e8
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/tencent/smtt/sdk/ag;->h:Ljava/lang/String;

    goto/16 :goto_373

    :cond_4ee
    const-string v7, "TbsDownload"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "#1 STEP 1/2 begin downloading...current/total="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/tencent/smtt/sdk/ag;->l:J

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-static {v7, v8, v9}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/tencent/smtt/sdk/ag;->t:Ljava/net/HttpURLConnection;

    const-string v8, "Range"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "bytes="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/tencent/smtt/sdk/ag;->l:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_537
    .catch Ljava/lang/Throwable; {:try_start_4e8 .. :try_end_537} :catch_539
    .catchall {:try_start_4e8 .. :try_end_537} :catchall_5d2

    goto/16 :goto_40d

    :catch_539
    move-exception v7

    :goto_53a
    :try_start_53a
    instance-of v8, v7, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz v8, :cond_e0d

    if-nez p1, :cond_e0d

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/tencent/smtt/sdk/ag;->b:[Ljava/lang/String;

    if-eqz v8, :cond_e0d

    const/4 v8, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/tencent/smtt/sdk/ag;->a(Z)Z

    move-result v8

    if-eqz v8, :cond_e0d

    const-string v8, "TbsDownload"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "[startdownload]url:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/tencent/smtt/sdk/ag;->j:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " download exception\uff1a"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v7, 0x7d

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v8, v9}, Lcom/tencent/smtt/sdk/ag;->a(ILjava/lang/String;Z)V

    :cond_57e
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/tencent/smtt/sdk/ag;->g:Landroid/content/Context;

    invoke-static {v7}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v7

    const/16 v8, -0x13c

    invoke-virtual {v7, v8}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V
    :try_end_58b
    .catchall {:try_start_53a .. :try_end_58b} :catchall_5d2

    if-nez p1, :cond_1b0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/tencent/smtt/sdk/ag;->g:Landroid/content/Context;

    invoke-static {v7}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v7

    iget-object v7, v7, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    const-string v8, "tbs_downloadflow"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/tencent/smtt/sdk/ag;->g:Landroid/content/Context;

    invoke-static {v7}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v7

    invoke-virtual {v7}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->commit()V

    goto/16 :goto_1b0

    :cond_5ad
    const/4 v7, 0x1

    goto/16 :goto_418

    :cond_5b0
    :try_start_5b0
    move-object/from16 v0, p0

    iget v9, v0, Lcom/tencent/smtt/sdk/ag;->x:I

    if-ne v7, v9, :cond_5c0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/tencent/smtt/sdk/ag;->w:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_440

    :cond_5c0
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/tencent/smtt/sdk/ag;->v:Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->setNetworkChange(I)V

    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/tencent/smtt/sdk/ag;->w:Ljava/lang/String;

    move-object/from16 v0, p0

    iput v7, v0, Lcom/tencent/smtt/sdk/ag;->x:I
    :try_end_5d0
    .catch Ljava/lang/Throwable; {:try_start_5b0 .. :try_end_5d0} :catch_539
    .catchall {:try_start_5b0 .. :try_end_5d0} :catchall_5d2

    goto/16 :goto_440

    :catchall_5d2
    move-exception v6

    move-wide v8, v4

    move-object v4, v6

    :goto_5d5
    if-nez p1, :cond_5f5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/tencent/smtt/sdk/ag;->g:Landroid/content/Context;

    invoke-static {v5}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v5

    iget-object v5, v5, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    const-string v6, "tbs_downloadflow"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/tencent/smtt/sdk/ag;->g:Landroid/content/Context;

    invoke-static {v5}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->commit()V

    :cond_5f5
    throw v4

    :cond_5f6
    const/16 v8, 0xc8

    if-eq v7, v8, :cond_5fe

    const/16 v8, 0xce

    if-ne v7, v8, :cond_b4c

    :cond_5fe
    :try_start_5fe
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/tencent/smtt/sdk/ag;->t:Ljava/net/HttpURLConnection;

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v7

    int-to-long v8, v7

    add-long/2addr v8, v14

    move-object/from16 v0, p0

    iput-wide v8, v0, Lcom/tencent/smtt/sdk/ag;->l:J

    const-string v7, "TbsDownload"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "[TbsApkDownloader.startDownload] mContentLength="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/tencent/smtt/sdk/ag;->l:J

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/tencent/smtt/sdk/ag;->v:Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/tencent/smtt/sdk/ag;->l:J

    invoke-virtual {v7, v8, v9}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->setPkgSize(J)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/tencent/smtt/sdk/ag;->g:Landroid/content/Context;

    invoke-static {v7}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v7

    iget-object v7, v7, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v8, "tbs_apkfilesize"

    const-wide/16 v10, 0x0

    invoke-interface {v7, v8, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-eqz v7, :cond_727

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/tencent/smtt/sdk/ag;->l:J

    cmp-long v7, v10, v8

    if-eqz v7, :cond_727

    const-string v7, "TbsDownload"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "DownloadBegin tbsApkFileSize="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "  but contentLength="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/tencent/smtt/sdk/ag;->l:J

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    invoke-static {v7, v10, v11}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    if-nez p1, :cond_70f

    invoke-direct/range {p0 .. p0}, Lcom/tencent/smtt/sdk/ag;->n()Z

    move-result v7

    if-nez v7, :cond_68a

    invoke-static {}, Lcom/tencent/smtt/sdk/QbSdk;->getDownloadWithoutWifi()Z

    move-result v7

    if-eqz v7, :cond_70f

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/tencent/smtt/sdk/ag;->g:Landroid/content/Context;

    invoke-static {v7}, Lcom/tencent/smtt/utils/Apn;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_70f

    :cond_68a
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/tencent/smtt/sdk/ag;->b:[Ljava/lang/String;

    if-eqz v7, :cond_6bb

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/tencent/smtt/sdk/ag;->a(Z)Z
    :try_end_696
    .catch Ljava/lang/Throwable; {:try_start_5fe .. :try_end_696} :catch_539
    .catchall {:try_start_5fe .. :try_end_696} :catchall_5d2

    move-result v7

    if-eqz v7, :cond_6bb

    if-nez p1, :cond_1b0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/tencent/smtt/sdk/ag;->g:Landroid/content/Context;

    invoke-static {v7}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v7

    iget-object v7, v7, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    const-string v8, "tbs_downloadflow"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/tencent/smtt/sdk/ag;->g:Landroid/content/Context;

    invoke-static {v7}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v7

    invoke-virtual {v7}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->commit()V

    goto/16 :goto_1b0

    :cond_6bb
    const/16 v7, 0x71

    :try_start_6bd
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "tbsApkFileSize="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "  but contentLength="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/tencent/smtt/sdk/ag;->l:J

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v8, v9}, Lcom/tencent/smtt/sdk/ag;->a(ILjava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/tencent/smtt/sdk/ag;->g:Landroid/content/Context;

    invoke-static {v7}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v7

    const/16 v8, -0x136

    invoke-virtual {v7, v8}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V
    :try_end_6ed
    .catch Ljava/lang/Throwable; {:try_start_6bd .. :try_end_6ed} :catch_539
    .catchall {:try_start_6bd .. :try_end_6ed} :catchall_5d2

    :goto_6ed
    if-nez p1, :cond_1d8

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/tencent/smtt/sdk/ag;->g:Landroid/content/Context;

    invoke-static {v7}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v7

    iget-object v7, v7, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    const-string v8, "tbs_downloadflow"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v7, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/smtt/sdk/ag;->g:Landroid/content/Context;

    invoke-static {v4}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->commit()V

    goto/16 :goto_1d8

    :cond_70f
    const/16 v7, 0x65

    :try_start_711
    const-string v8, "WifiNetworkUnAvailable"

    const/4 v9, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v8, v9}, Lcom/tencent/smtt/sdk/ag;->a(ILjava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/tencent/smtt/sdk/ag;->g:Landroid/content/Context;

    invoke-static {v7}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v7

    const/16 v8, -0x130

    invoke-virtual {v7, v8}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V

    goto :goto_6ed

    :cond_727
    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x0

    const-string v7, "TbsDownload"

    const-string v11, "[TbsApkDownloader.startDownload] begin readResponse"

    invoke-static {v7, v11}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_731
    .catch Ljava/lang/Throwable; {:try_start_711 .. :try_end_731} :catch_539
    .catchall {:try_start_711 .. :try_end_731} :catchall_5d2

    :try_start_731
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/tencent/smtt/sdk/ag;->t:Ljava/net/HttpURLConnection;

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_738
    .catch Ljava/io/IOException; {:try_start_731 .. :try_end_738} :catch_ed2
    .catchall {:try_start_731 .. :try_end_738} :catchall_eab

    move-result-object v17

    if-eqz v17, :cond_eff

    :try_start_73b
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/tencent/smtt/sdk/ag;->t:Ljava/net/HttpURLConnection;

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_7cb

    const-string v9, "gzip"

    invoke-virtual {v7, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_7cb

    new-instance v16, Ljava/util/zip/GZIPInputStream;

    invoke-direct/range {v16 .. v17}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_752
    .catch Ljava/io/IOException; {:try_start_73b .. :try_end_752} :catch_7e6
    .catchall {:try_start_73b .. :try_end_752} :catchall_eb6

    :goto_752
    const/16 v7, 0x2000

    :try_start_754
    new-array v0, v7, [B

    move-object/from16 v26, v0

    new-instance v18, Ljava/io/FileOutputStream;

    new-instance v7, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/tencent/smtt/sdk/ag;->k:Ljava/io/File;

    const-string v9, "x5.tbs.temp"

    invoke-direct {v7, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v8, 0x1

    move-object/from16 v0, v18

    invoke-direct {v0, v7, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_76b
    .catch Ljava/io/IOException; {:try_start_754 .. :try_end_76b} :catch_ed5
    .catchall {:try_start_754 .. :try_end_76b} :catchall_ebf

    :try_start_76b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_76e
    .catch Ljava/io/IOException; {:try_start_76b .. :try_end_76e} :catch_edc
    .catchall {:try_start_76b .. :try_end_76e} :catchall_ec6

    move-result-wide v12

    const/4 v7, 0x0

    move-wide/from16 v10, v20

    move-wide v8, v4

    move-wide/from16 v20, v14

    move-wide v4, v14

    :goto_776
    :try_start_776
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/tencent/smtt/sdk/ag;->r:Z

    if-eqz v14, :cond_845

    const-string v4, "TbsDownload"

    const-string v5, "STEP 1/2 begin downloading...Canceled!"

    const/4 v10, 0x1

    invoke-static {v4, v5, v10}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/smtt/sdk/ag;->g:Landroid/content/Context;

    invoke-static {v4}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v4

    const/16 v5, -0x135

    invoke-virtual {v4, v5}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V
    :try_end_791
    .catch Ljava/io/IOException; {:try_start_776 .. :try_end_791} :catch_ee5
    .catchall {:try_start_776 .. :try_end_791} :catchall_ecb

    move-wide v4, v8

    :goto_792
    if-eqz v7, :cond_a07

    :try_start_794
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/tencent/smtt/sdk/ag;->a(Ljava/io/Closeable;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/tencent/smtt/sdk/ag;->a(Ljava/io/Closeable;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/tencent/smtt/sdk/ag;->a(Ljava/io/Closeable;)V
    :try_end_7a9
    .catch Ljava/lang/Throwable; {:try_start_794 .. :try_end_7a9} :catch_539
    .catchall {:try_start_794 .. :try_end_7a9} :catchall_5d2

    if-nez p1, :cond_1b0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/tencent/smtt/sdk/ag;->g:Landroid/content/Context;

    invoke-static {v7}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v7

    iget-object v7, v7, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    const-string v8, "tbs_downloadflow"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/tencent/smtt/sdk/ag;->g:Landroid/content/Context;

    invoke-static {v7}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v7

    invoke-virtual {v7}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->commit()V

    goto/16 :goto_1b0

    :cond_7cb
    if-eqz v7, :cond_841

    :try_start_7cd
    const-string v9, "deflate"

    invoke-virtual {v7, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_841

    new-instance v16, Ljava/util/zip/InflaterInputStream;

    new-instance v7, Ljava/util/zip/Inflater;

    const/4 v9, 0x1

    invoke-direct {v7, v9}, Ljava/util/zip/Inflater;-><init>(Z)V

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v7}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;)V
    :try_end_7e4
    .catch Ljava/io/IOException; {:try_start_7cd .. :try_end_7e4} :catch_7e6
    .catchall {:try_start_7cd .. :try_end_7e4} :catchall_eb6

    goto/16 :goto_752

    :catch_7e6
    move-exception v7

    move-object/from16 v9, v17

    :goto_7e9
    :try_start_7e9
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    instance-of v11, v7, Ljava/net/SocketTimeoutException;

    if-nez v11, :cond_7f4

    instance-of v11, v7, Ljava/net/SocketException;

    if-eqz v11, :cond_a52

    :cond_7f4
    const v11, 0x186a0

    move-object/from16 v0, p0

    iput v11, v0, Lcom/tencent/smtt/sdk/ag;->m:I

    const-wide/16 v12, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/tencent/smtt/sdk/ag;->a(J)V

    const/16 v11, 0x67

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/tencent/smtt/sdk/ag;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v7, v12}, Lcom/tencent/smtt/sdk/ag;->a(ILjava/lang/String;Z)V
    :try_end_810
    .catchall {:try_start_7e9 .. :try_end_810} :catchall_b28

    :try_start_810
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/tencent/smtt/sdk/ag;->a(Ljava/io/Closeable;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/tencent/smtt/sdk/ag;->a(Ljava/io/Closeable;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/tencent/smtt/sdk/ag;->a(Ljava/io/Closeable;)V
    :try_end_81f
    .catch Ljava/lang/Throwable; {:try_start_810 .. :try_end_81f} :catch_539
    .catchall {:try_start_810 .. :try_end_81f} :catchall_5d2

    if-nez p1, :cond_1b0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/tencent/smtt/sdk/ag;->g:Landroid/content/Context;

    invoke-static {v7}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v7

    iget-object v7, v7, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    const-string v8, "tbs_downloadflow"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/tencent/smtt/sdk/ag;->g:Landroid/content/Context;

    invoke-static {v7}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v7

    invoke-virtual {v7}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->commit()V

    goto/16 :goto_1b0

    :cond_841
    move-object/from16 v16, v17

    goto/16 :goto_752

    :cond_845
    const/4 v14, 0x0

    const/16 v15, 0x2000

    :try_start_848
    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v14, v15}, Ljava/io/InputStream;->read([BII)I

    move-result v27

    if-gtz v27, :cond_898

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/smtt/sdk/ag;->b:[Ljava/lang/String;

    if-eqz v4, :cond_87c

    const/4 v4, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v4, v1}, Lcom/tencent/smtt/sdk/ag;->c(ZZ)Z

    move-result v4

    if-nez v4, :cond_87c

    if-nez p1, :cond_873

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/tencent/smtt/sdk/ag;->a(Z)Z

    move-result v4

    if-eqz v4, :cond_873

    const/4 v4, 0x1

    move v7, v4

    move-wide v4, v8

    goto/16 :goto_792

    :cond_873
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/tencent/smtt/sdk/ag;->s:Z

    const/4 v6, 0x0

    move-wide v4, v8

    goto/16 :goto_792

    :cond_87c
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/tencent/smtt/sdk/ag;->s:Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/smtt/sdk/ag;->b:[Ljava/lang/String;

    if-eqz v4, :cond_888

    const/4 v6, 0x1

    :cond_888
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/smtt/sdk/ag;->g:Landroid/content/Context;

    invoke-static {v4}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v4

    const/16 v5, -0x137

    invoke-virtual {v4, v5}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V

    move-wide v4, v8

    goto/16 :goto_792

    :cond_898
    const/4 v14, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v14, v2}, Ljava/io/FileOutputStream;->write([BII)V

    invoke-virtual/range {v18 .. v18}, Ljava/io/FileOutputStream;->flush()V

    if-nez p1, :cond_93d

    move/from16 v0, v27

    int-to-long v14, v0

    add-long/2addr v8, v14

    cmp-long v14, v8, v24

    if-ltz v14, :cond_8ea

    const-string v4, "TbsDownload"

    const-string v5, "STEP 1/2 begin downloading...failed because you exceeded max flow!"

    const/4 v10, 0x1

    invoke-static {v4, v5, v10}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v4, 0x70

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v10, "downloadFlow="

    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, " downloadMaxflow="

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v24

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v10, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v10}, Lcom/tencent/smtt/sdk/ag;->a(ILjava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/smtt/sdk/ag;->g:Landroid/content/Context;

    invoke-static {v4}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v4

    const/16 v5, -0x133

    invoke-virtual {v4, v5}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V

    move-wide v4, v8

    goto/16 :goto_792

    :cond_8ea
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/tencent/smtt/sdk/ag;->g:Landroid/content/Context;

    invoke-static {v14}, Lcom/tencent/smtt/utils/k;->b(Landroid/content/Context;)Z

    move-result v14

    if-nez v14, :cond_93d

    const-string v4, "TbsDownload"

    const-string v5, "DownloadEnd FreeSpace too small "

    const/4 v10, 0x1

    invoke-static {v4, v5, v10}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v4, 0x69

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v10, "freespace="

    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/smtt/utils/y;->a()J

    move-result-wide v10

    invoke-virtual {v5, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, ",and minFreeSpace="

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/tencent/smtt/sdk/ag;->g:Landroid/content/Context;

    invoke-static {v10}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v10

    invoke-virtual {v10}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getDownloadMinFreeSpace()J

    move-result-wide v10

    invoke-virtual {v5, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v10, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v10}, Lcom/tencent/smtt/sdk/ag;->a(ILjava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/smtt/sdk/ag;->g:Landroid/content/Context;

    invoke-static {v4}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v4

    const/16 v5, -0x134

    invoke-virtual {v4, v5}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V
    :try_end_93a
    .catch Ljava/io/IOException; {:try_start_848 .. :try_end_93a} :catch_ee5
    .catchall {:try_start_848 .. :try_end_93a} :catchall_ecb

    move-wide v4, v8

    goto/16 :goto_792

    :cond_93d
    move-wide v14, v8

    move/from16 v0, v27

    int-to-long v8, v0

    :try_start_941
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11, v8, v9}, Lcom/tencent/smtt/sdk/ag;->a(JJ)J

    move-result-wide v22

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    move/from16 v0, v27

    int-to-long v8, v0

    add-long v8, v8, v20

    sub-long v20, v10, v12

    const-wide/16 v28, 0x3e8

    cmp-long v20, v20, v28

    if-lez v20, :cond_efb

    const-string v12, "TbsDownload"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v20, "#2 STEP 1/2 begin downloading...current/total="

    move-object/from16 v0, v20

    invoke-direct {v13, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v20, "/"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/tencent/smtt/sdk/ag;->l:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    invoke-virtual {v13, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-static {v12, v13, v0}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    sget-object v12, Lcom/tencent/smtt/sdk/QbSdk;->m:Lcom/tencent/smtt/sdk/TbsListener;

    if-eqz v12, :cond_9a2

    long-to-double v12, v8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/tencent/smtt/sdk/ag;->l:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    long-to-double v0, v0

    move-wide/from16 v20, v0

    div-double v12, v12, v20

    const-wide/high16 v20, 0x4059000000000000L    # 100.0

    mul-double v12, v12, v20

    double-to-int v12, v12

    sget-object v13, Lcom/tencent/smtt/sdk/QbSdk;->m:Lcom/tencent/smtt/sdk/TbsListener;

    invoke-interface {v13, v12}, Lcom/tencent/smtt/sdk/TbsListener;->onDownloadProgress(I)V

    :cond_9a2
    if-nez p1, :cond_9f9

    sub-long v12, v8, v4

    const-wide/32 v20, 0x100000

    cmp-long v12, v12, v20

    if-lez v12, :cond_9f9

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/smtt/sdk/ag;->g:Landroid/content/Context;

    invoke-static {v4}, Lcom/tencent/smtt/sdk/TbsDownloader;->getOverSea(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_9f8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/smtt/sdk/ag;->g:Landroid/content/Context;

    invoke-static {v4}, Lcom/tencent/smtt/utils/Apn;->getApnType(Landroid/content/Context;)I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_9c8

    invoke-static {}, Lcom/tencent/smtt/sdk/QbSdk;->getDownloadWithoutWifi()Z

    move-result v4

    if-eqz v4, :cond_9d2

    :cond_9c8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/smtt/sdk/ag;->g:Landroid/content/Context;

    invoke-static {v4}, Lcom/tencent/smtt/utils/Apn;->getApnType(Landroid/content/Context;)I

    move-result v4

    if-nez v4, :cond_9f8

    :cond_9d2
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/smtt/sdk/ag;->c()V

    sget-object v4, Lcom/tencent/smtt/sdk/QbSdk;->m:Lcom/tencent/smtt/sdk/TbsListener;

    if-eqz v4, :cond_9e0

    sget-object v4, Lcom/tencent/smtt/sdk/QbSdk;->m:Lcom/tencent/smtt/sdk/TbsListener;

    const/16 v5, 0x6f

    invoke-interface {v4, v5}, Lcom/tencent/smtt/sdk/TbsListener;->onDownloadFinish(I)V

    :cond_9e0
    const-string v4, "TbsDownload"

    const-string v5, "Download is paused due to NOT_WIFI error!"

    const/4 v8, 0x0

    invoke-static {v4, v5, v8}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/smtt/sdk/ag;->g:Landroid/content/Context;

    invoke-static {v4}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v4

    const/16 v5, -0x130

    invoke-virtual {v4, v5}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V
    :try_end_9f5
    .catch Ljava/io/IOException; {:try_start_941 .. :try_end_9f5} :catch_ef0
    .catchall {:try_start_941 .. :try_end_9f5} :catchall_ece

    move-wide v4, v14

    goto/16 :goto_792

    :cond_9f8
    move-wide v4, v8

    :cond_9f9
    move-wide/from16 v30, v10

    move-wide v10, v4

    move-wide/from16 v4, v30

    :goto_9fe
    move-wide v12, v4

    move-wide/from16 v20, v8

    move-wide v4, v10

    move-wide v8, v14

    move-wide/from16 v10, v22

    goto/16 :goto_776

    :cond_a07
    move-wide v8, v4

    :goto_a08
    :try_start_a08
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/tencent/smtt/sdk/ag;->a(Ljava/io/Closeable;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/tencent/smtt/sdk/ag;->a(Ljava/io/Closeable;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/tencent/smtt/sdk/ag;->a(Ljava/io/Closeable;)V

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/tencent/smtt/sdk/ag;->s:Z

    if-nez v4, :cond_a30

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/smtt/sdk/ag;->g:Landroid/content/Context;

    invoke-static {v4}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v4

    const/16 v5, -0x13f

    invoke-virtual {v4, v5}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V
    :try_end_a30
    .catch Ljava/lang/Throwable; {:try_start_a08 .. :try_end_a30} :catch_b47
    .catchall {:try_start_a08 .. :try_end_a30} :catchall_ea8

    :cond_a30
    if-nez p1, :cond_1d8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/smtt/sdk/ag;->g:Landroid/content/Context;

    invoke-static {v4}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v4

    iget-object v4, v4, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    const-string v5, "tbs_downloadflow"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v4, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/smtt/sdk/ag;->g:Landroid/content/Context;

    invoke-static {v4}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->commit()V

    goto/16 :goto_1d8

    :cond_a52
    if-nez p1, :cond_acd

    :try_start_a54
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/tencent/smtt/sdk/ag;->g:Landroid/content/Context;

    invoke-static {v11}, Lcom/tencent/smtt/utils/k;->b(Landroid/content/Context;)Z

    move-result v11

    if-nez v11, :cond_acd

    const/16 v7, 0x69

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "freespace="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/smtt/utils/y;->a()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ",and minFreeSpace="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/tencent/smtt/sdk/ag;->g:Landroid/content/Context;

    invoke-static {v12}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v12

    invoke-virtual {v12}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getDownloadMinFreeSpace()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v11, v12}, Lcom/tencent/smtt/sdk/ag;->a(ILjava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/tencent/smtt/sdk/ag;->g:Landroid/content/Context;

    invoke-static {v7}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v7

    const/16 v11, -0x134

    invoke-virtual {v7, v11}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V
    :try_end_a9c
    .catchall {:try_start_a54 .. :try_end_a9c} :catchall_b28

    :try_start_a9c
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/tencent/smtt/sdk/ag;->a(Ljava/io/Closeable;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/tencent/smtt/sdk/ag;->a(Ljava/io/Closeable;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/tencent/smtt/sdk/ag;->a(Ljava/io/Closeable;)V
    :try_end_aab
    .catch Ljava/lang/Throwable; {:try_start_a9c .. :try_end_aab} :catch_539
    .catchall {:try_start_a9c .. :try_end_aab} :catchall_5d2

    if-nez p1, :cond_1d8

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/tencent/smtt/sdk/ag;->g:Landroid/content/Context;

    invoke-static {v7}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v7

    iget-object v7, v7, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    const-string v8, "tbs_downloadflow"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v7, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/smtt/sdk/ag;->g:Landroid/content/Context;

    invoke-static {v4}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->commit()V

    goto/16 :goto_1d8

    :cond_acd
    const-wide/16 v12, 0x0

    :try_start_acf
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/tencent/smtt/sdk/ag;->a(J)V

    invoke-direct/range {p0 .. p0}, Lcom/tencent/smtt/sdk/ag;->j()Z

    move-result v11

    if-nez v11, :cond_b19

    const/16 v11, 0x6a

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/tencent/smtt/sdk/ag;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v7, v12}, Lcom/tencent/smtt/sdk/ag;->a(ILjava/lang/String;Z)V
    :try_end_ae8
    .catchall {:try_start_acf .. :try_end_ae8} :catchall_b28

    :goto_ae8
    :try_start_ae8
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/tencent/smtt/sdk/ag;->a(Ljava/io/Closeable;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/tencent/smtt/sdk/ag;->a(Ljava/io/Closeable;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/tencent/smtt/sdk/ag;->a(Ljava/io/Closeable;)V
    :try_end_af7
    .catch Ljava/lang/Throwable; {:try_start_ae8 .. :try_end_af7} :catch_539
    .catchall {:try_start_ae8 .. :try_end_af7} :catchall_5d2

    if-nez p1, :cond_1b0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/tencent/smtt/sdk/ag;->g:Landroid/content/Context;

    invoke-static {v7}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v7

    iget-object v7, v7, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    const-string v8, "tbs_downloadflow"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/tencent/smtt/sdk/ag;->g:Landroid/content/Context;

    invoke-static {v7}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v7

    invoke-virtual {v7}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->commit()V

    goto/16 :goto_1b0

    :cond_b19
    const/16 v11, 0x68

    :try_start_b1b
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/tencent/smtt/sdk/ag;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v7, v12}, Lcom/tencent/smtt/sdk/ag;->a(ILjava/lang/String;Z)V
    :try_end_b27
    .catchall {:try_start_b1b .. :try_end_b27} :catchall_b28

    goto :goto_ae8

    :catchall_b28
    move-exception v7

    move-object/from16 v16, v8

    move-object/from16 v17, v9

    move-object/from16 v18, v10

    move-wide v8, v4

    move-object v4, v7

    :goto_b31
    :try_start_b31
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/tencent/smtt/sdk/ag;->a(Ljava/io/Closeable;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/tencent/smtt/sdk/ag;->a(Ljava/io/Closeable;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/tencent/smtt/sdk/ag;->a(Ljava/io/Closeable;)V

    throw v4
    :try_end_b47
    .catch Ljava/lang/Throwable; {:try_start_b31 .. :try_end_b47} :catch_b47
    .catchall {:try_start_b31 .. :try_end_b47} :catchall_ea8

    :catch_b47
    move-exception v4

    move-object v7, v4

    move-wide v4, v8

    goto/16 :goto_53a

    :cond_b4c
    const/16 v8, 0x12c

    if-lt v7, v8, :cond_bcc

    const/16 v8, 0x133

    if-gt v7, v8, :cond_bcc

    :try_start_b54
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/tencent/smtt/sdk/ag;->t:Ljava/net/HttpURLConnection;

    const-string v8, "Location"

    invoke-virtual {v7, v8}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_b94

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/tencent/smtt/sdk/ag;->j:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/tencent/smtt/sdk/ag;->q:I

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    iput v7, v0, Lcom/tencent/smtt/sdk/ag;->q:I
    :try_end_b72
    .catch Ljava/lang/Throwable; {:try_start_b54 .. :try_end_b72} :catch_539
    .catchall {:try_start_b54 .. :try_end_b72} :catchall_5d2

    if-nez p1, :cond_1b0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/tencent/smtt/sdk/ag;->g:Landroid/content/Context;

    invoke-static {v7}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v7

    iget-object v7, v7, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    const-string v8, "tbs_downloadflow"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/tencent/smtt/sdk/ag;->g:Landroid/content/Context;

    invoke-static {v7}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v7

    invoke-virtual {v7}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->commit()V

    goto/16 :goto_1b0

    :cond_b94
    const/16 v7, 0x7c

    const/4 v8, 0x0

    const/4 v9, 0x1

    :try_start_b98
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v8, v9}, Lcom/tencent/smtt/sdk/ag;->a(ILjava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/tencent/smtt/sdk/ag;->g:Landroid/content/Context;

    invoke-static {v7}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v7

    const/16 v8, -0x138

    invoke-virtual {v7, v8}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V
    :try_end_baa
    .catch Ljava/lang/Throwable; {:try_start_b98 .. :try_end_baa} :catch_539
    .catchall {:try_start_b98 .. :try_end_baa} :catchall_5d2

    if-nez p1, :cond_1d8

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/tencent/smtt/sdk/ag;->g:Landroid/content/Context;

    invoke-static {v7}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v7

    iget-object v7, v7, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    const-string v8, "tbs_downloadflow"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v7, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/smtt/sdk/ag;->g:Landroid/content/Context;

    invoke-static {v4}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->commit()V

    goto/16 :goto_1d8

    :cond_bcc
    const/16 v8, 0x66

    :try_start_bce
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9, v10}, Lcom/tencent/smtt/sdk/ag;->a(ILjava/lang/String;Z)V

    const/16 v8, 0x1a0

    if-ne v7, v8, :cond_c4c

    const/4 v7, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v7, v1}, Lcom/tencent/smtt/sdk/ag;->c(ZZ)Z

    move-result v7

    if-eqz v7, :cond_c17

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/tencent/smtt/sdk/ag;->g:Landroid/content/Context;

    invoke-static {v7}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v7

    const/16 v8, -0xd6

    invoke-virtual {v7, v8}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V
    :try_end_bf5
    .catch Ljava/lang/Throwable; {:try_start_bce .. :try_end_bf5} :catch_539
    .catchall {:try_start_bce .. :try_end_bf5} :catchall_5d2

    if-nez p1, :cond_1d8

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/tencent/smtt/sdk/ag;->g:Landroid/content/Context;

    invoke-static {v7}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v7

    iget-object v7, v7, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    const-string v8, "tbs_downloadflow"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v7, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/smtt/sdk/ag;->g:Landroid/content/Context;

    invoke-static {v4}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->commit()V

    goto/16 :goto_1d8

    :cond_c17
    const/4 v7, 0x0

    :try_start_c18
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/tencent/smtt/sdk/ag;->c(Z)Z

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/tencent/smtt/sdk/ag;->g:Landroid/content/Context;

    invoke-static {v7}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v7

    const/16 v8, -0x139

    invoke-virtual {v7, v8}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V
    :try_end_c2a
    .catch Ljava/lang/Throwable; {:try_start_c18 .. :try_end_c2a} :catch_539
    .catchall {:try_start_c18 .. :try_end_c2a} :catchall_5d2

    if-nez p1, :cond_1d8

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/tencent/smtt/sdk/ag;->g:Landroid/content/Context;

    invoke-static {v7}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v7

    iget-object v7, v7, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    const-string v8, "tbs_downloadflow"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v7, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/smtt/sdk/ag;->g:Landroid/content/Context;

    invoke-static {v4}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->commit()V

    goto/16 :goto_1d8

    :cond_c4c
    const/16 v8, 0x193

    if-eq v7, v8, :cond_c54

    const/16 v8, 0x196

    if-ne v7, v8, :cond_c8d

    :cond_c54
    :try_start_c54
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/tencent/smtt/sdk/ag;->l:J

    const-wide/16 v10, -0x1

    cmp-long v8, v8, v10

    if-nez v8, :cond_c8d

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/tencent/smtt/sdk/ag;->g:Landroid/content/Context;

    invoke-static {v7}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v7

    const/16 v8, -0x13a

    invoke-virtual {v7, v8}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V
    :try_end_c6b
    .catch Ljava/lang/Throwable; {:try_start_c54 .. :try_end_c6b} :catch_539
    .catchall {:try_start_c54 .. :try_end_c6b} :catchall_5d2

    if-nez p1, :cond_1d8

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/tencent/smtt/sdk/ag;->g:Landroid/content/Context;

    invoke-static {v7}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v7

    iget-object v7, v7, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    const-string v8, "tbs_downloadflow"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v7, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/smtt/sdk/ag;->g:Landroid/content/Context;

    invoke-static {v4}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->commit()V

    goto/16 :goto_1d8

    :cond_c8d
    const/16 v8, 0xca

    if-ne v7, v8, :cond_cb3

    if-nez p1, :cond_1b0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/tencent/smtt/sdk/ag;->g:Landroid/content/Context;

    invoke-static {v7}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v7

    iget-object v7, v7, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    const-string v8, "tbs_downloadflow"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/tencent/smtt/sdk/ag;->g:Landroid/content/Context;

    invoke-static {v7}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v7

    invoke-virtual {v7}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->commit()V

    goto/16 :goto_1b0

    :cond_cb3
    :try_start_cb3
    move-object/from16 v0, p0

    iget v8, v0, Lcom/tencent/smtt/sdk/ag;->p:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/tencent/smtt/sdk/ag;->B:I

    if-ge v8, v9, :cond_d2b

    const/16 v8, 0x1f7

    if-ne v7, v8, :cond_d2b

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/tencent/smtt/sdk/ag;->t:Ljava/net/HttpURLConnection;

    const-string v8, "Retry-After"

    invoke-virtual {v7, v8}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Lcom/tencent/smtt/sdk/ag;->a(J)V

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/tencent/smtt/sdk/ag;->r:Z

    if-eqz v7, :cond_d09

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/tencent/smtt/sdk/ag;->g:Landroid/content/Context;

    invoke-static {v7}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v7

    const/16 v8, -0x135

    invoke-virtual {v7, v8}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V
    :try_end_ce7
    .catch Ljava/lang/Throwable; {:try_start_cb3 .. :try_end_ce7} :catch_539
    .catchall {:try_start_cb3 .. :try_end_ce7} :catchall_5d2

    if-nez p1, :cond_1d8

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/tencent/smtt/sdk/ag;->g:Landroid/content/Context;

    invoke-static {v7}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v7

    iget-object v7, v7, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    const-string v8, "tbs_downloadflow"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v7, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/smtt/sdk/ag;->g:Landroid/content/Context;

    invoke-static {v4}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->commit()V

    goto/16 :goto_1d8

    :cond_d09
    if-nez p1, :cond_1b0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/tencent/smtt/sdk/ag;->g:Landroid/content/Context;

    invoke-static {v7}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v7

    iget-object v7, v7, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    const-string v8, "tbs_downloadflow"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/tencent/smtt/sdk/ag;->g:Landroid/content/Context;

    invoke-static {v7}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v7

    invoke-virtual {v7}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->commit()V

    goto/16 :goto_1b0

    :cond_d2b
    :try_start_d2b
    move-object/from16 v0, p0

    iget v8, v0, Lcom/tencent/smtt/sdk/ag;->p:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/tencent/smtt/sdk/ag;->B:I

    if-ge v8, v9, :cond_da3

    const/16 v8, 0x198

    if-eq v7, v8, :cond_d45

    const/16 v8, 0x1f8

    if-eq v7, v8, :cond_d45

    const/16 v8, 0x1f6

    if-eq v7, v8, :cond_d45

    const/16 v8, 0x198

    if-ne v7, v8, :cond_da3

    :cond_d45
    const-wide/16 v8, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Lcom/tencent/smtt/sdk/ag;->a(J)V

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/tencent/smtt/sdk/ag;->r:Z

    if-eqz v7, :cond_d81

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/tencent/smtt/sdk/ag;->g:Landroid/content/Context;

    invoke-static {v7}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v7

    const/16 v8, -0x135

    invoke-virtual {v7, v8}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V
    :try_end_d5f
    .catch Ljava/lang/Throwable; {:try_start_d2b .. :try_end_d5f} :catch_539
    .catchall {:try_start_d2b .. :try_end_d5f} :catchall_5d2

    if-nez p1, :cond_1d8

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/tencent/smtt/sdk/ag;->g:Landroid/content/Context;

    invoke-static {v7}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v7

    iget-object v7, v7, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    const-string v8, "tbs_downloadflow"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v7, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/smtt/sdk/ag;->g:Landroid/content/Context;

    invoke-static {v4}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->commit()V

    goto/16 :goto_1d8

    :cond_d81
    if-nez p1, :cond_1b0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/tencent/smtt/sdk/ag;->g:Landroid/content/Context;

    invoke-static {v7}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v7

    iget-object v7, v7, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    const-string v8, "tbs_downloadflow"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/tencent/smtt/sdk/ag;->g:Landroid/content/Context;

    invoke-static {v7}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v7

    invoke-virtual {v7}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->commit()V

    goto/16 :goto_1b0

    :cond_da3
    :try_start_da3
    invoke-direct/range {p0 .. p0}, Lcom/tencent/smtt/sdk/ag;->k()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-gtz v8, :cond_dde

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/tencent/smtt/sdk/ag;->o:Z

    if-nez v8, :cond_dde

    const/16 v8, 0x19a

    if-eq v7, v8, :cond_dde

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iput-boolean v7, v0, Lcom/tencent/smtt/sdk/ag;->o:Z
    :try_end_dbc
    .catch Ljava/lang/Throwable; {:try_start_da3 .. :try_end_dbc} :catch_539
    .catchall {:try_start_da3 .. :try_end_dbc} :catchall_5d2

    if-nez p1, :cond_1b0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/tencent/smtt/sdk/ag;->g:Landroid/content/Context;

    invoke-static {v7}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v7

    iget-object v7, v7, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    const-string v8, "tbs_downloadflow"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/tencent/smtt/sdk/ag;->g:Landroid/content/Context;

    invoke-static {v7}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v7

    invoke-virtual {v7}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->commit()V

    goto/16 :goto_1b0

    :cond_dde
    :try_start_dde
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/tencent/smtt/sdk/ag;->g:Landroid/content/Context;

    invoke-static {v7}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v7

    const/16 v8, -0x13b

    invoke-virtual {v7, v8}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V
    :try_end_deb
    .catch Ljava/lang/Throwable; {:try_start_dde .. :try_end_deb} :catch_539
    .catchall {:try_start_dde .. :try_end_deb} :catchall_5d2

    if-nez p1, :cond_1d8

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/tencent/smtt/sdk/ag;->g:Landroid/content/Context;

    invoke-static {v7}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v7

    iget-object v7, v7, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    const-string v8, "tbs_downloadflow"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v7, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/smtt/sdk/ag;->g:Landroid/content/Context;

    invoke-static {v4}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->commit()V

    goto/16 :goto_1d8

    :cond_e0d
    :try_start_e0d
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    const-wide/16 v8, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Lcom/tencent/smtt/sdk/ag;->a(J)V

    const/16 v8, 0x6b

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/tencent/smtt/sdk/ag;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v7, v9}, Lcom/tencent/smtt/sdk/ag;->a(ILjava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/tencent/smtt/sdk/ag;->r:Z

    if-eqz v7, :cond_57e

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/tencent/smtt/sdk/ag;->g:Landroid/content/Context;

    invoke-static {v7}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v7

    const/16 v8, -0x135

    invoke-virtual {v7, v8}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V
    :try_end_e38
    .catchall {:try_start_e0d .. :try_end_e38} :catchall_5d2

    if-nez p1, :cond_1d8

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/tencent/smtt/sdk/ag;->g:Landroid/content/Context;

    invoke-static {v7}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v7

    iget-object v7, v7, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    const-string v8, "tbs_downloadflow"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v7, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/smtt/sdk/ag;->g:Landroid/content/Context;

    invoke-static {v4}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->commit()V

    goto/16 :goto_1d8

    :cond_e5a
    const/4 v4, 0x0

    goto/16 :goto_1fc

    :cond_e5d
    const/4 v4, 0x2

    goto/16 :goto_208

    :cond_e60
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/smtt/sdk/ag;->v:Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->setPatchUpdateFlag(I)V

    goto/16 :goto_20b

    :cond_e6a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/smtt/sdk/ag;->g:Landroid/content/Context;

    invoke-static {v4}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v4

    const/16 v5, -0x13e

    invoke-virtual {v4, v5}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/tencent/smtt/sdk/ag;->c(Z)Z

    goto/16 :goto_22a

    :cond_e7f
    iget-object v5, v4, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v7, "tbs_download_failed_retrytimes"

    const/4 v8, 0x0

    invoke-interface {v5, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    iget-object v7, v4, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    const-string v8, "tbs_download_failed_retrytimes"

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getDownloadFailedMaxRetrytimes()I

    move-result v7

    if-ne v5, v7, :cond_24a

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/tencent/smtt/sdk/ag;->v:Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;

    const/4 v7, 0x2

    invoke-virtual {v5, v7}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->setDownloadCancel(I)V

    goto/16 :goto_24a

    :cond_ea5
    const/4 v4, 0x0

    goto/16 :goto_254

    :catchall_ea8
    move-exception v4

    goto/16 :goto_5d5

    :catchall_eab
    move-exception v7

    move-object/from16 v16, v8

    move-object/from16 v17, v9

    move-object/from16 v18, v10

    move-wide v8, v4

    move-object v4, v7

    goto/16 :goto_b31

    :catchall_eb6
    move-exception v7

    move-object/from16 v16, v8

    move-object/from16 v18, v10

    move-wide v8, v4

    move-object v4, v7

    goto/16 :goto_b31

    :catchall_ebf
    move-exception v7

    move-wide v8, v4

    move-object/from16 v18, v10

    move-object v4, v7

    goto/16 :goto_b31

    :catchall_ec6
    move-exception v7

    move-wide v8, v4

    move-object v4, v7

    goto/16 :goto_b31

    :catchall_ecb
    move-exception v4

    goto/16 :goto_b31

    :catchall_ece
    move-exception v4

    move-wide v8, v14

    goto/16 :goto_b31

    :catch_ed2
    move-exception v7

    goto/16 :goto_7e9

    :catch_ed5
    move-exception v7

    move-object/from16 v8, v16

    move-object/from16 v9, v17

    goto/16 :goto_7e9

    :catch_edc
    move-exception v7

    move-object/from16 v8, v16

    move-object/from16 v9, v17

    move-object/from16 v10, v18

    goto/16 :goto_7e9

    :catch_ee5
    move-exception v4

    move-object v7, v4

    move-object/from16 v10, v18

    move-wide v4, v8

    move-object/from16 v9, v17

    move-object/from16 v8, v16

    goto/16 :goto_7e9

    :catch_ef0
    move-exception v4

    move-object v7, v4

    move-object/from16 v8, v16

    move-object/from16 v9, v17

    move-object/from16 v10, v18

    move-wide v4, v14

    goto/16 :goto_7e9

    :cond_efb
    move-wide v10, v4

    move-wide v4, v12

    goto/16 :goto_9fe

    :cond_eff
    move-object/from16 v16, v8

    move-object/from16 v18, v10

    move-wide v8, v4

    goto/16 :goto_a08

    :cond_f06
    move-wide v8, v4

    goto/16 :goto_2c1
.end method

.method public c()V
    .registers 6

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/tencent/smtt/sdk/ag;->r:Z

    iget-object v0, p0, Lcom/tencent/smtt/sdk/ag;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsShareManager;->isThirdPartyApp(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lcom/tencent/smtt/sdk/ag;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsLogReport;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/TbsLogReport;->tbsLogInfo()Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;

    move-result-object v0

    const/16 v1, -0x135

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->setErrorCode(I)V

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->setFailDetail(Ljava/lang/Throwable;)V

    iget-object v1, p0, Lcom/tencent/smtt/sdk/ag;->g:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v1

    iget-object v1, v1, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v2, "tbs_downloaddecouplecore"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_3f

    iget-object v1, p0, Lcom/tencent/smtt/sdk/ag;->g:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/smtt/sdk/TbsLogReport;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v1

    sget-object v2, Lcom/tencent/smtt/sdk/TbsLogReport$EventType;->TYPE_DOWNLOAD_DECOUPLE:Lcom/tencent/smtt/sdk/TbsLogReport$EventType;

    invoke-virtual {v1, v2, v0}, Lcom/tencent/smtt/sdk/TbsLogReport;->eventReport(Lcom/tencent/smtt/sdk/TbsLogReport$EventType;Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;)V

    :cond_3e
    :goto_3e
    return-void

    :cond_3f
    iget-object v1, p0, Lcom/tencent/smtt/sdk/ag;->g:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/smtt/sdk/TbsLogReport;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v1

    sget-object v2, Lcom/tencent/smtt/sdk/TbsLogReport$EventType;->TYPE_DOWNLOAD:Lcom/tencent/smtt/sdk/TbsLogReport$EventType;

    invoke-virtual {v1, v2, v0}, Lcom/tencent/smtt/sdk/TbsLogReport;->eventReport(Lcom/tencent/smtt/sdk/TbsLogReport$EventType;Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;)V

    goto :goto_3e
.end method

.method public d()V
    .registers 2

    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/ag;->c()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/tencent/smtt/sdk/ag;->c(Z)Z

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/tencent/smtt/sdk/ag;->c(Z)Z

    return-void
.end method

.method public e()Z
    .registers 4

    const-string v0, "TbsDownload"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[TbsApkDownloader.isDownloadForeground] mIsDownloadForeground="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/tencent/smtt/sdk/ag;->C:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/ag;->C:Z

    return v0
.end method
