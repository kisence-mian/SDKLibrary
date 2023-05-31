.class final Lcom/tencent/smtt/utils/i;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/tencent/smtt/utils/d$a;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/tencent/smtt/utils/d$a;)V
    .registers 3

    iput-object p1, p0, Lcom/tencent/smtt/utils/i;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/tencent/smtt/utils/i;->b:Lcom/tencent/smtt/utils/d$a;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 8

    const/4 v1, 0x0

    const/4 v3, 0x0

    :try_start_2
    new-instance v0, Ljava/net/URL;

    const-string v2, "http://soft.tbs.imtt.qq.com/17421/tbs_res_imtt_tbs_DebugPlugin_DebugPlugin.tbs"

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v4

    const/16 v2, 0x1388

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1e} :catch_85
    .catchall {:try_start_2 .. :try_end_1e} :catchall_64

    move-result-object v2

    :try_start_1f
    new-instance v0, Ljava/io/File;

    iget-object v5, p0, Lcom/tencent/smtt/utils/i;->a:Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/tencent/smtt/utils/k;->d(Ljava/io/File;)Ljava/io/FileOutputStream;

    move-result-object v1

    const/16 v0, 0x2000

    new-array v5, v0, [B

    move v0, v3

    :goto_2f
    invoke-virtual {v2, v5}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_53

    add-int/2addr v0, v3

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6, v3}, Ljava/io/OutputStream;->write([BII)V

    mul-int/lit8 v3, v0, 0x64

    div-int/2addr v3, v4

    iget-object v6, p0, Lcom/tencent/smtt/utils/i;->b:Lcom/tencent/smtt/utils/d$a;

    invoke-interface {v6, v3}, Lcom/tencent/smtt/utils/d$a;->a(I)V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_42} :catch_43
    .catchall {:try_start_1f .. :try_end_42} :catchall_83

    goto :goto_2f

    :catch_43
    move-exception v0

    :goto_44
    :try_start_44
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v3, p0, Lcom/tencent/smtt/utils/i;->b:Lcom/tencent/smtt/utils/d$a;

    invoke-interface {v3, v0}, Lcom/tencent/smtt/utils/d$a;->a(Ljava/lang/Throwable;)V
    :try_end_4c
    .catchall {:try_start_44 .. :try_end_4c} :catchall_83

    :try_start_4c
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_4f} :catch_77

    :goto_4f
    :try_start_4f
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_52} :catch_7c

    :goto_52
    return-void

    :cond_53
    :try_start_53
    iget-object v0, p0, Lcom/tencent/smtt/utils/i;->b:Lcom/tencent/smtt/utils/d$a;

    invoke-interface {v0}, Lcom/tencent/smtt/utils/d$a;->a()V
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_58} :catch_43
    .catchall {:try_start_53 .. :try_end_58} :catchall_83

    :try_start_58
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_5b} :catch_7e

    :goto_5b
    :try_start_5b
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_5e} :catch_5f

    goto :goto_52

    :catch_5f
    move-exception v0

    :goto_60
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_52

    :catchall_64
    move-exception v0

    move-object v2, v1

    :goto_66
    :try_start_66
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_69} :catch_6d

    :goto_69
    :try_start_69
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_6c} :catch_72

    :goto_6c
    throw v0

    :catch_6d
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_69

    :catch_72
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6c

    :catch_77
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4f

    :catch_7c
    move-exception v0

    goto :goto_60

    :catch_7e
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5b

    :catchall_83
    move-exception v0

    goto :goto_66

    :catch_85
    move-exception v0

    move-object v2, v1

    goto :goto_44
.end method
