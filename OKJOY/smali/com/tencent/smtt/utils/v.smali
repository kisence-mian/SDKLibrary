.class public Lcom/tencent/smtt/utils/v;
.super Ljava/lang/Object;


# static fields
.field private static c:Lcom/tencent/smtt/utils/v;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/io/File;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/smtt/utils/v;->c:Lcom/tencent/smtt/utils/v;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/smtt/utils/v;->a:Landroid/content/Context;

    iput-object v0, p0, Lcom/tencent/smtt/utils/v;->b:Ljava/io/File;

    const-string v0, "http://log.tbs.qq.com/ajax?c=pu&v=2&k="

    iput-object v0, p0, Lcom/tencent/smtt/utils/v;->d:Ljava/lang/String;

    const-string v0, "http://log.tbs.qq.com/ajax?c=pu&tk="

    iput-object v0, p0, Lcom/tencent/smtt/utils/v;->e:Ljava/lang/String;

    const-string v0, "http://wup.imtt.qq.com:8080"

    iput-object v0, p0, Lcom/tencent/smtt/utils/v;->f:Ljava/lang/String;

    const-string v0, "http://log.tbs.qq.com/ajax?c=dl&k="

    iput-object v0, p0, Lcom/tencent/smtt/utils/v;->g:Ljava/lang/String;

    const-string v0, "http://cfg.imtt.qq.com/tbs?v=2&mk="

    iput-object v0, p0, Lcom/tencent/smtt/utils/v;->h:Ljava/lang/String;

    const-string v0, "http://log.tbs.qq.com/ajax?c=ul&v=2&k="

    iput-object v0, p0, Lcom/tencent/smtt/utils/v;->i:Ljava/lang/String;

    const-string v0, "http://mqqad.html5.qq.com/adjs"

    iput-object v0, p0, Lcom/tencent/smtt/utils/v;->j:Ljava/lang/String;

    const-string v0, "http://log.tbs.qq.com/ajax?c=ucfu&k="

    iput-object v0, p0, Lcom/tencent/smtt/utils/v;->k:Ljava/lang/String;

    const-string v0, "TbsCommonConfig"

    const-string v1, "TbsCommonConfig constructing..."

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/smtt/utils/v;->a:Landroid/content/Context;

    invoke-direct {p0}, Lcom/tencent/smtt/utils/v;->g()V

    return-void
.end method

.method public static declared-synchronized a()Lcom/tencent/smtt/utils/v;
    .registers 2

    const-class v0, Lcom/tencent/smtt/utils/v;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/tencent/smtt/utils/v;->c:Lcom/tencent/smtt/utils/v;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/tencent/smtt/utils/v;
    .registers 3

    const-class v1, Lcom/tencent/smtt/utils/v;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/tencent/smtt/utils/v;->c:Lcom/tencent/smtt/utils/v;

    if-nez v0, :cond_e

    new-instance v0, Lcom/tencent/smtt/utils/v;

    invoke-direct {v0, p0}, Lcom/tencent/smtt/utils/v;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tencent/smtt/utils/v;->c:Lcom/tencent/smtt/utils/v;

    :cond_e
    sget-object v0, Lcom/tencent/smtt/utils/v;->c:Lcom/tencent/smtt/utils/v;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized g()V
    .registers 6

    monitor-enter p0

    const/4 v1, 0x0

    :try_start_2
    invoke-direct {p0}, Lcom/tencent/smtt/utils/v;->h()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_16

    const-string v0, "TbsCommonConfig"

    const-string v2, "Config file is null, default values will be applied"

    invoke-static {v0, v2}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_f} :catch_c8
    .catchall {:try_start_2 .. :try_end_f} :catchall_fb

    if-eqz v1, :cond_14

    :try_start_11
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_14} :catch_108
    .catchall {:try_start_11 .. :try_end_14} :catchall_c5

    :cond_14
    :goto_14
    monitor-exit p0

    return-void

    :cond_16
    :try_start_16
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_20} :catch_c8
    .catchall {:try_start_16 .. :try_end_20} :catchall_fb

    :try_start_20
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    invoke-virtual {v0, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    const-string v1, "pv_post_url"

    const-string v3, ""

    invoke-virtual {v0, v1, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, ""

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3a

    iput-object v1, p0, Lcom/tencent/smtt/utils/v;->d:Ljava/lang/String;

    :cond_3a
    const-string v1, "wup_proxy_domain"

    const-string v3, ""

    invoke-virtual {v0, v1, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, ""

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4c

    iput-object v1, p0, Lcom/tencent/smtt/utils/v;->f:Ljava/lang/String;

    :cond_4c
    const-string v1, "tbs_download_stat_post_url"

    const-string v3, ""

    invoke-virtual {v0, v1, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, ""

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5e

    iput-object v1, p0, Lcom/tencent/smtt/utils/v;->g:Ljava/lang/String;

    :cond_5e
    const-string v1, "tbs_downloader_post_url"

    const-string v3, ""

    invoke-virtual {v0, v1, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, ""

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_70

    iput-object v1, p0, Lcom/tencent/smtt/utils/v;->h:Ljava/lang/String;

    :cond_70
    const-string v1, "tbs_log_post_url"

    const-string v3, ""

    invoke-virtual {v0, v1, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, ""

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_82

    iput-object v1, p0, Lcom/tencent/smtt/utils/v;->i:Ljava/lang/String;

    :cond_82
    const-string v1, "tips_url"

    const-string v3, ""

    invoke-virtual {v0, v1, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, ""

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_94

    iput-object v1, p0, Lcom/tencent/smtt/utils/v;->j:Ljava/lang/String;

    :cond_94
    const-string v1, "tbs_cmd_post_url"

    const-string v3, ""

    invoke-virtual {v0, v1, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, ""

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a6

    iput-object v1, p0, Lcom/tencent/smtt/utils/v;->k:Ljava/lang/String;

    :cond_a6
    const-string v1, "pv_post_url_tk"

    const-string v3, ""

    invoke-virtual {v0, v1, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b8

    iput-object v0, p0, Lcom/tencent/smtt/utils/v;->e:Ljava/lang/String;
    :try_end_b8
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_b8} :catch_113
    .catchall {:try_start_20 .. :try_end_b8} :catchall_10e

    :cond_b8
    if-eqz v2, :cond_14

    :try_start_ba
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_bd
    .catch Ljava/io/IOException; {:try_start_ba .. :try_end_bd} :catch_bf
    .catchall {:try_start_ba .. :try_end_bd} :catchall_c5

    goto/16 :goto_14

    :catch_bf
    move-exception v0

    :try_start_c0
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_c3
    .catchall {:try_start_c0 .. :try_end_c3} :catchall_c5

    goto/16 :goto_14

    :catchall_c5
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_c8
    move-exception v0

    :goto_c9
    :try_start_c9
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    new-instance v3, Ljava/io/PrintWriter;

    invoke-direct {v3, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v0, v3}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    const-string v0, "TbsCommonConfig"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "exceptions occurred1:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_ee
    .catchall {:try_start_c9 .. :try_end_ee} :catchall_110

    if-eqz v1, :cond_14

    :try_start_f0
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_f3
    .catch Ljava/io/IOException; {:try_start_f0 .. :try_end_f3} :catch_f5
    .catchall {:try_start_f0 .. :try_end_f3} :catchall_c5

    goto/16 :goto_14

    :catch_f5
    move-exception v0

    :try_start_f6
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_f9
    .catchall {:try_start_f6 .. :try_end_f9} :catchall_c5

    goto/16 :goto_14

    :catchall_fb
    move-exception v0

    move-object v2, v1

    :goto_fd
    if-eqz v2, :cond_102

    :try_start_ff
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_102
    .catch Ljava/io/IOException; {:try_start_ff .. :try_end_102} :catch_103
    .catchall {:try_start_ff .. :try_end_102} :catchall_c5

    :cond_102
    :goto_102
    :try_start_102
    throw v0

    :catch_103
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_102

    :catch_108
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_10c
    .catchall {:try_start_102 .. :try_end_10c} :catchall_c5

    goto/16 :goto_14

    :catchall_10e
    move-exception v0

    goto :goto_fd

    :catchall_110
    move-exception v0

    move-object v2, v1

    goto :goto_fd

    :catch_113
    move-exception v0

    move-object v1, v2

    goto :goto_c9
.end method

.method private h()Ljava/io/File;
    .registers 7

    const/4 v1, 0x0

    :try_start_1
    iget-object v0, p0, Lcom/tencent/smtt/utils/v;->b:Ljava/io/File;

    if-nez v0, :cond_21

    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/tencent/smtt/utils/v;->a:Landroid/content/Context;

    const/4 v3, 0x5

    invoke-static {v2, v3}, Lcom/tencent/smtt/utils/k;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/smtt/utils/v;->b:Ljava/io/File;

    iget-object v0, p0, Lcom/tencent/smtt/utils/v;->b:Ljava/io/File;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/tencent/smtt/utils/v;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_21

    :cond_1f
    move-object v0, v1

    :goto_20
    return-object v0

    :cond_21
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/tencent/smtt/utils/v;->b:Ljava/io/File;

    const-string v3, "tbsnet.conf"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_50

    const-string v2, "TbsCommonConfig"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Get file("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ") failed!"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4e
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_4e} :catch_90

    move-object v0, v1

    goto :goto_20

    :cond_50
    :try_start_50
    const-string v1, "TbsCommonConfig"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "pathc:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/smtt/utils/TbsLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_68
    .catch Ljava/lang/Throwable; {:try_start_50 .. :try_end_68} :catch_69

    goto :goto_20

    :catch_69
    move-exception v1

    :goto_6a
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    new-instance v3, Ljava/io/PrintWriter;

    invoke-direct {v3, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    const-string v1, "TbsCommonConfig"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "exceptions occurred2:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_20

    :catch_90
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    goto :goto_6a
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/tencent/smtt/utils/v;->d:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/tencent/smtt/utils/v;->g:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/tencent/smtt/utils/v;->h:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/tencent/smtt/utils/v;->i:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/tencent/smtt/utils/v;->e:Ljava/lang/String;

    return-object v0
.end method
