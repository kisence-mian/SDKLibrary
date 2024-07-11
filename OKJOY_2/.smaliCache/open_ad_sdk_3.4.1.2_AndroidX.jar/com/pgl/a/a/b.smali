.class public abstract Lcom/pgl/a/a/b;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/lang/String;

.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:I

.field private f:[B

.field private g:I

.field private h:[B

.field private i:I

.field private j:I

.field private k:I

.field private l:Z

.field private m:Landroid/os/HandlerThread;

.field private n:Landroid/os/Handler;

.field private o:Z

.field private p:Ljava/net/HttpURLConnection;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/pgl/a/a/b;->a:Ljava/lang/String;

    const/4 v1, -0x1

    iput v1, p0, Lcom/pgl/a/a/b;->g:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/pgl/a/a/b;->h:[B

    const/16 v2, 0x2710

    iput v2, p0, Lcom/pgl/a/a/b;->i:I

    const/4 v2, 0x1

    iput v2, p0, Lcom/pgl/a/a/b;->j:I

    const/4 v2, 0x0

    iput v2, p0, Lcom/pgl/a/a/b;->k:I

    iput-boolean v2, p0, Lcom/pgl/a/a/b;->l:Z

    iput-boolean v2, p0, Lcom/pgl/a/a/b;->o:Z

    iput-object v1, p0, Lcom/pgl/a/a/b;->p:Ljava/net/HttpURLConnection;

    if-eqz p2, :cond_25

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_26

    :cond_25
    move-object p2, v0

    :cond_26
    iput-object p1, p0, Lcom/pgl/a/a/b;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/pgl/a/a/b;->c:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/pgl/a/a/b;)I
    .registers 1

    iget p0, p0, Lcom/pgl/a/a/b;->k:I

    return p0
.end method

.method static synthetic a(Lcom/pgl/a/a/b;I)I
    .registers 2

    iput p1, p0, Lcom/pgl/a/a/b;->k:I

    return p1
.end method

.method private a(I)V
    .registers 3

    const-string v0, "GET"

    packed-switch p1, :pswitch_data_1a

    goto :goto_14

    :pswitch_6
    const-string v0, "TRACE"

    goto :goto_14

    :pswitch_9
    const-string v0, "HEAD"

    goto :goto_14

    :pswitch_c
    const-string v0, "DELETE"

    goto :goto_14

    :pswitch_f
    const-string v0, "PUT"

    goto :goto_14

    :pswitch_12
    const-string v0, "POST"

    :goto_14
    :pswitch_14
    iget-object p1, p0, Lcom/pgl/a/a/b;->p:Ljava/net/HttpURLConnection;

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    return-void

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_12
        :pswitch_14
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method private a()Z
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_2
    new-instance v2, Ljava/net/URL;

    iget-object v3, p0, Lcom/pgl/a/a/b;->a:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/pgl/a/a/b;->o:Z

    if-eqz v3, :cond_25

    const-string v3, "TLS"

    invoke-static {v3}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v3

    invoke-static {v3}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    sget-object v3, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    invoke-virtual {v2, v3}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;

    :goto_22
    iput-object v2, p0, Lcom/pgl/a/a/b;->p:Ljava/net/HttpURLConnection;

    goto :goto_2c

    :cond_25
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;

    goto :goto_22

    :goto_2c
    iget-object v2, p0, Lcom/pgl/a/a/b;->p:Ljava/net/HttpURLConnection;

    iget v3, p0, Lcom/pgl/a/a/b;->i:I

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    iget-object v2, p0, Lcom/pgl/a/a/b;->p:Ljava/net/HttpURLConnection;

    iget v3, p0, Lcom/pgl/a/a/b;->i:I

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    iget v2, p0, Lcom/pgl/a/a/b;->d:I

    invoke-direct {p0, v2}, Lcom/pgl/a/a/b;->a(I)V

    iget v2, p0, Lcom/pgl/a/a/b;->e:I

    invoke-direct {p0, v2}, Lcom/pgl/a/a/b;->b(I)V

    iget-object v2, p0, Lcom/pgl/a/a/b;->f:[B

    if-eqz v2, :cond_61

    array-length v2, v2

    if-lez v2, :cond_61

    iget-object v2, p0, Lcom/pgl/a/a/b;->p:Ljava/net/HttpURLConnection;

    invoke-virtual {v2, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    iget-object v2, p0, Lcom/pgl/a/a/b;->p:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    iget-object v3, p0, Lcom/pgl/a/a/b;->f:[B

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    :cond_61
    iget-object v2, p0, Lcom/pgl/a/a/b;->p:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->connect()V
    :try_end_66
    .catchall {:try_start_2 .. :try_end_66} :catchall_91

    :try_start_66
    iget-object v2, p0, Lcom/pgl/a/a/b;->p:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    iput v2, p0, Lcom/pgl/a/a/b;->g:I

    iget-object v2, p0, Lcom/pgl/a/a/b;->p:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2
    :try_end_74
    .catchall {:try_start_66 .. :try_end_74} :catchall_82

    :try_start_74
    invoke-direct {p0, v2}, Lcom/pgl/a/a/b;->a(Ljava/io/InputStream;)[B

    move-result-object v3

    iput-object v3, p0, Lcom/pgl/a/a/b;->h:[B
    :try_end_7a
    .catchall {:try_start_74 .. :try_end_7a} :catchall_80

    if-eqz v2, :cond_87

    :goto_7c
    :try_start_7c
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7f
    .catchall {:try_start_7c .. :try_end_7f} :catchall_91

    goto :goto_87

    :catchall_80
    move-exception v3

    goto :goto_84

    :catchall_82
    move-exception v2

    move-object v2, v1

    :goto_84
    if-eqz v2, :cond_87

    goto :goto_7c

    :cond_87
    :goto_87
    iget-object v2, p0, Lcom/pgl/a/a/b;->p:Ljava/net/HttpURLConnection;

    if-eqz v2, :cond_9b

    :goto_8b
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    iput-object v1, p0, Lcom/pgl/a/a/b;->p:Ljava/net/HttpURLConnection;

    goto :goto_9b

    :catchall_91
    move-exception v0

    :try_start_92
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_95
    .catchall {:try_start_92 .. :try_end_95} :catchall_a5

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/pgl/a/a/b;->p:Ljava/net/HttpURLConnection;

    if-eqz v2, :cond_9b

    goto :goto_8b

    :cond_9b
    :goto_9b
    if-eqz v0, :cond_a4

    iget v1, p0, Lcom/pgl/a/a/b;->g:I

    iget-object v2, p0, Lcom/pgl/a/a/b;->h:[B

    invoke-virtual {p0, v1, v2}, Lcom/pgl/a/a/b;->a(I[B)Z

    :cond_a4
    return v0

    :catchall_a5
    move-exception v0

    iget-object v2, p0, Lcom/pgl/a/a/b;->p:Ljava/net/HttpURLConnection;

    if-eqz v2, :cond_b1

    iget-object v2, p0, Lcom/pgl/a/a/b;->p:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    iput-object v1, p0, Lcom/pgl/a/a/b;->p:Ljava/net/HttpURLConnection;

    :cond_b1
    throw v0
.end method

.method static synthetic a(Lcom/pgl/a/a/b;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/pgl/a/a/b;->l:Z

    return p1
.end method

.method private a(Ljava/io/InputStream;)[B
    .registers 7

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x400

    new-array v2, v1, [B

    :goto_9
    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    if-lez v4, :cond_14

    invoke-virtual {v0, v2, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_9

    :cond_14
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method

.method static synthetic b(Lcom/pgl/a/a/b;)I
    .registers 1

    iget p0, p0, Lcom/pgl/a/a/b;->j:I

    return p0
.end method

.method private b(I)V
    .registers 7

    packed-switch p1, :pswitch_data_9a

    const-string p1, ""

    goto :goto_b

    :pswitch_6
    const-string p1, "application/octet-stream"

    goto :goto_b

    :pswitch_9
    const-string p1, "application/json; charset=utf-8"

    :goto_b
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_18

    iget-object v0, p0, Lcom/pgl/a/a/b;->p:Ljava/net/HttpURLConnection;

    const-string v1, "Content-Type"

    invoke-virtual {v0, v1, p1}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_18
    iget-object p1, p0, Lcom/pgl/a/a/b;->p:Ljava/net/HttpURLConnection;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sessionid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/pgl/a/a/b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Cookie"

    invoke-virtual {p1, v1, v0}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_34
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "zh"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0
    :try_end_42
    .catchall {:try_start_34 .. :try_end_42} :catchall_97

    const-string v1, ","

    const-string v2, "Accept-Language"

    if-eqz v0, :cond_71

    :try_start_48
    iget-object v0, p0, Lcom/pgl/a/a/b;->p:Ljava/net/HttpURLConnection;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ";q=0.9"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_6d
    invoke-virtual {v0, v2, p1}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_98

    :cond_71
    iget-object v0, p0, Lcom/pgl/a/a/b;->p:Ljava/net/HttpURLConnection;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ";q=0.9,en-US;q=0.6,en;q=0.4"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_96
    .catchall {:try_start_48 .. :try_end_96} :catchall_97

    goto :goto_6d

    :catchall_97
    move-exception p1

    :goto_98
    return-void

    nop

    :pswitch_data_9a
    .packed-switch 0x1
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method private b(II[B)V
    .registers 4

    iput p1, p0, Lcom/pgl/a/a/b;->d:I

    iput p2, p0, Lcom/pgl/a/a/b;->e:I

    iput-object p3, p0, Lcom/pgl/a/a/b;->f:[B

    return-void
.end method

.method static synthetic c(Lcom/pgl/a/a/b;)Landroid/os/HandlerThread;
    .registers 1

    iget-object p0, p0, Lcom/pgl/a/a/b;->m:Landroid/os/HandlerThread;

    return-object p0
.end method

.method static synthetic d(Lcom/pgl/a/a/b;)Z
    .registers 1

    invoke-direct {p0}, Lcom/pgl/a/a/b;->a()Z

    move-result p0

    return p0
.end method

.method static synthetic e(Lcom/pgl/a/a/b;)I
    .registers 1

    iget p0, p0, Lcom/pgl/a/a/b;->i:I

    return p0
.end method

.method static synthetic f(Lcom/pgl/a/a/b;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/pgl/a/a/b;->n:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic g(Lcom/pgl/a/a/b;)I
    .registers 3

    iget v0, p0, Lcom/pgl/a/a/b;->k:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/pgl/a/a/b;->k:I

    return v0
.end method


# virtual methods
.method public declared-synchronized a(II[B)V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/pgl/a/a/b;->l:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_36

    if-eqz v0, :cond_7

    monitor-exit p0

    return-void

    :cond_7
    const/4 v0, 0x2

    :try_start_8
    iput v0, p0, Lcom/pgl/a/a/b;->j:I

    invoke-direct {p0, p1, p2, p3}, Lcom/pgl/a/a/b;->b(II[B)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/pgl/a/a/b;->l:Z

    const/4 p2, 0x0

    iput p2, p0, Lcom/pgl/a/a/b;->k:I

    new-instance p2, Landroid/os/HandlerThread;

    const-string p3, "request"

    invoke-direct {p2, p3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/pgl/a/a/b;->m:Landroid/os/HandlerThread;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->start()V

    new-instance p2, Landroid/os/Handler;

    iget-object p3, p0, Lcom/pgl/a/a/b;->m:Landroid/os/HandlerThread;

    invoke-virtual {p3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p3

    new-instance v0, Lcom/pgl/a/a/b$1;

    invoke-direct {v0, p0}, Lcom/pgl/a/a/b$1;-><init>(Lcom/pgl/a/a/b;)V

    invoke-direct {p2, p3, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p2, p0, Lcom/pgl/a/a/b;->n:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_34
    .catchall {:try_start_8 .. :try_end_34} :catchall_36

    monitor-exit p0

    return-void

    :catchall_36
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public abstract a(I[B)Z
.end method
