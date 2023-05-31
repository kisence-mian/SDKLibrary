.class public abstract Lcom/pgl/a/a/b;
.super Ljava/lang/Object;


# static fields
.field private static p:Ljavax/net/ssl/HostnameVerifier;


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

.field private q:Ljava/net/HttpURLConnection;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/pgl/a/a/c;

    invoke-direct {v0}, Lcom/pgl/a/a/c;-><init>()V

    sput-object v0, Lcom/pgl/a/a/b;->p:Ljavax/net/ssl/HostnameVerifier;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/pgl/a/a/b;->a:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/pgl/a/a/b;->g:I

    iput-object v2, p0, Lcom/pgl/a/a/b;->h:[B

    const/16 v0, 0x2710

    iput v0, p0, Lcom/pgl/a/a/b;->i:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/pgl/a/a/b;->j:I

    iput v1, p0, Lcom/pgl/a/a/b;->k:I

    iput-boolean v1, p0, Lcom/pgl/a/a/b;->l:Z

    iput-boolean v1, p0, Lcom/pgl/a/a/b;->o:Z

    iput-object v2, p0, Lcom/pgl/a/a/b;->q:Ljava/net/HttpURLConnection;

    if-eqz p2, :cond_25

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_27

    :cond_25
    const-string p2, ""

    :cond_27
    iput-object p1, p0, Lcom/pgl/a/a/b;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/pgl/a/a/b;->c:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/pgl/a/a/b;)I
    .registers 2

    iget v0, p0, Lcom/pgl/a/a/b;->k:I

    return v0
.end method

.method static synthetic a(Lcom/pgl/a/a/b;I)I
    .registers 2

    iput p1, p0, Lcom/pgl/a/a/b;->k:I

    return p1
.end method

.method private a(I)V
    .registers 4

    packed-switch p1, :pswitch_data_1e

    const-string v0, "GET"

    :goto_5
    iget-object v1, p0, Lcom/pgl/a/a/b;->q:Ljava/net/HttpURLConnection;

    invoke-virtual {v1, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    return-void

    :pswitch_b
    const-string v0, "POST"

    goto :goto_5

    :pswitch_e
    const-string v0, "GET"

    goto :goto_5

    :pswitch_11
    const-string v0, "PUT"

    goto :goto_5

    :pswitch_14
    const-string v0, "DELETE"

    goto :goto_5

    :pswitch_17
    const-string v0, "HEAD"

    goto :goto_5

    :pswitch_1a
    const-string v0, "TRACE"

    goto :goto_5

    nop

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_b
        :pswitch_e
        :pswitch_11
        :pswitch_14
        :pswitch_17
        :pswitch_1a
    .end packed-switch
.end method

.method private a()Z
    .registers 10

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    :try_start_3
    new-instance v4, Ljava/net/URL;

    iget-object v0, p0, Lcom/pgl/a/a/b;->a:Ljava/lang/String;

    invoke-direct {v4, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/pgl/a/a/b;->o:Z

    if-eqz v0, :cond_be

    const/4 v0, 0x1

    new-array v0, v0, [Ljavax/net/ssl/TrustManager;

    const/4 v5, 0x0

    new-instance v6, Lcom/pgl/a/a/d;

    invoke-direct {v6}, Lcom/pgl/a/a/d;-><init>()V

    aput-object v6, v0, v5

    const-string v5, "TLS"

    invoke-static {v5}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v5

    const/4 v6, 0x0

    new-instance v7, Ljava/security/SecureRandom;

    invoke-direct {v7}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v5, v6, v0, v7}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    invoke-virtual {v5}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-static {v0}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    sget-object v0, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    invoke-virtual {v4, v0}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, p0, Lcom/pgl/a/a/b;->q:Ljava/net/HttpURLConnection;

    :goto_39
    const-string v0, "https"

    invoke-virtual {v4}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_52

    iget-object v0, p0, Lcom/pgl/a/a/b;->q:Ljava/net/HttpURLConnection;

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    sget-object v4, Lcom/pgl/a/a/b;->p:Ljavax/net/ssl/HostnameVerifier;

    invoke-virtual {v0, v4}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    :cond_52
    iget-object v0, p0, Lcom/pgl/a/a/b;->q:Ljava/net/HttpURLConnection;

    iget v4, p0, Lcom/pgl/a/a/b;->i:I

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    iget-object v0, p0, Lcom/pgl/a/a/b;->q:Ljava/net/HttpURLConnection;

    iget v4, p0, Lcom/pgl/a/a/b;->i:I

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    iget v0, p0, Lcom/pgl/a/a/b;->d:I

    invoke-direct {p0, v0}, Lcom/pgl/a/a/b;->a(I)V

    iget v0, p0, Lcom/pgl/a/a/b;->e:I

    invoke-direct {p0, v0}, Lcom/pgl/a/a/b;->b(I)V

    iget-object v0, p0, Lcom/pgl/a/a/b;->f:[B

    if-eqz v0, :cond_8a

    iget-object v0, p0, Lcom/pgl/a/a/b;->f:[B

    array-length v0, v0

    if-lez v0, :cond_8a

    iget-object v0, p0, Lcom/pgl/a/a/b;->q:Ljava/net/HttpURLConnection;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    iget-object v0, p0, Lcom/pgl/a/a/b;->q:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iget-object v4, p0, Lcom/pgl/a/a/b;->f:[B

    invoke-virtual {v0, v4}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    :cond_8a
    iget-object v0, p0, Lcom/pgl/a/a/b;->q:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V
    :try_end_8f
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_8f} :catch_c8
    .catchall {:try_start_3 .. :try_end_8f} :catchall_e1

    :try_start_8f
    iget-object v0, p0, Lcom/pgl/a/a/b;->q:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    iput v0, p0, Lcom/pgl/a/a/b;->g:I

    iget-object v0, p0, Lcom/pgl/a/a/b;->q:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_9c
    .catch Ljava/lang/Throwable; {:try_start_8f .. :try_end_9c} :catch_d9
    .catchall {:try_start_8f .. :try_end_9c} :catchall_ee

    move-result-object v0

    :try_start_9d
    invoke-direct {p0, v0}, Lcom/pgl/a/a/b;->a(Ljava/io/InputStream;)[B

    move-result-object v4

    iput-object v4, p0, Lcom/pgl/a/a/b;->h:[B
    :try_end_a3
    .catch Ljava/lang/Throwable; {:try_start_9d .. :try_end_a3} :catch_fb
    .catchall {:try_start_9d .. :try_end_a3} :catchall_f6

    if-eqz v0, :cond_a8

    :try_start_a5
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_a8
    .catch Ljava/lang/Throwable; {:try_start_a5 .. :try_end_a8} :catch_c8
    .catchall {:try_start_a5 .. :try_end_a8} :catchall_e1

    :cond_a8
    :goto_a8
    iget-object v0, p0, Lcom/pgl/a/a/b;->q:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_ff

    iget-object v0, p0, Lcom/pgl/a/a/b;->q:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    iput-object v1, p0, Lcom/pgl/a/a/b;->q:Ljava/net/HttpURLConnection;

    move v0, v2

    :goto_b4
    if-eqz v0, :cond_bd

    iget v1, p0, Lcom/pgl/a/a/b;->g:I

    iget-object v2, p0, Lcom/pgl/a/a/b;->h:[B

    invoke-virtual {p0, v1, v2}, Lcom/pgl/a/a/b;->a(I[B)Z

    :cond_bd
    return v0

    :cond_be
    :try_start_be
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, p0, Lcom/pgl/a/a/b;->q:Ljava/net/HttpURLConnection;
    :try_end_c6
    .catch Ljava/lang/Throwable; {:try_start_be .. :try_end_c6} :catch_c8
    .catchall {:try_start_be .. :try_end_c6} :catchall_e1

    goto/16 :goto_39

    :catch_c8
    move-exception v0

    :try_start_c9
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_cc
    .catchall {:try_start_c9 .. :try_end_cc} :catchall_e1

    iget-object v0, p0, Lcom/pgl/a/a/b;->q:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_fd

    iget-object v0, p0, Lcom/pgl/a/a/b;->q:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    iput-object v1, p0, Lcom/pgl/a/a/b;->q:Ljava/net/HttpURLConnection;

    move v0, v3

    goto :goto_b4

    :catch_d9
    move-exception v0

    move-object v0, v1

    :goto_db
    if-eqz v0, :cond_a8

    :try_start_dd
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_e0
    .catch Ljava/lang/Throwable; {:try_start_dd .. :try_end_e0} :catch_c8
    .catchall {:try_start_dd .. :try_end_e0} :catchall_e1

    goto :goto_a8

    :catchall_e1
    move-exception v0

    iget-object v2, p0, Lcom/pgl/a/a/b;->q:Ljava/net/HttpURLConnection;

    if-eqz v2, :cond_ed

    iget-object v2, p0, Lcom/pgl/a/a/b;->q:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    iput-object v1, p0, Lcom/pgl/a/a/b;->q:Ljava/net/HttpURLConnection;

    :cond_ed
    throw v0

    :catchall_ee
    move-exception v0

    move-object v2, v1

    :goto_f0
    if-eqz v2, :cond_f5

    :try_start_f2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_f5
    throw v0
    :try_end_f6
    .catch Ljava/lang/Throwable; {:try_start_f2 .. :try_end_f6} :catch_c8
    .catchall {:try_start_f2 .. :try_end_f6} :catchall_e1

    :catchall_f6
    move-exception v2

    move-object v8, v2

    move-object v2, v0

    move-object v0, v8

    goto :goto_f0

    :catch_fb
    move-exception v4

    goto :goto_db

    :cond_fd
    move v0, v3

    goto :goto_b4

    :cond_ff
    move v0, v2

    goto :goto_b4
.end method

.method static synthetic a(Lcom/pgl/a/a/b;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/pgl/a/a/b;->l:Z

    return p1
.end method

.method private a(Ljava/io/InputStream;)[B
    .registers 7

    const/16 v4, 0x400

    const/4 v3, 0x0

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-array v1, v4, [B

    :goto_a
    invoke-virtual {p1, v1, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    if-lez v2, :cond_14

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_a

    :cond_14
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/pgl/a/a/b;)I
    .registers 2

    iget v0, p0, Lcom/pgl/a/a/b;->j:I

    return v0
.end method

.method private b(I)V
    .registers 7

    packed-switch p1, :pswitch_data_a0

    const-string v0, ""

    :goto_5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_12

    iget-object v1, p0, Lcom/pgl/a/a/b;->q:Ljava/net/HttpURLConnection;

    const-string v2, "Content-Type"

    invoke-virtual {v1, v2, v0}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_12
    iget-object v0, p0, Lcom/pgl/a/a/b;->q:Ljava/net/HttpURLConnection;

    const-string v1, "Cookie"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sessionid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/pgl/a/a/b;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_2e
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "zh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_71

    iget-object v1, p0, Lcom/pgl/a/a/b;->q:Ljava/net/HttpURLConnection;

    const-string v2, "Accept-Language"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ";q=0.9"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6a
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_6a} :catch_9e

    :goto_6a
    return-void

    :pswitch_6b
    const-string v0, "application/json; charset=utf-8"

    goto :goto_5

    :pswitch_6e
    const-string v0, "application/octet-stream"

    goto :goto_5

    :cond_71
    :try_start_71
    iget-object v1, p0, Lcom/pgl/a/a/b;->q:Ljava/net/HttpURLConnection;

    const-string v2, "Accept-Language"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ";q=0.9,en-US;q=0.6,en;q=0.4"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9d
    .catch Ljava/lang/Throwable; {:try_start_71 .. :try_end_9d} :catch_9e

    goto :goto_6a

    :catch_9e
    move-exception v0

    goto :goto_6a

    :pswitch_data_a0
    .packed-switch 0x1
        :pswitch_6b
        :pswitch_6e
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
    .registers 2

    iget-object v0, p0, Lcom/pgl/a/a/b;->m:Landroid/os/HandlerThread;

    return-object v0
.end method

.method static synthetic d(Lcom/pgl/a/a/b;)Z
    .registers 2

    invoke-direct {p0}, Lcom/pgl/a/a/b;->a()Z

    move-result v0

    return v0
.end method

.method static synthetic e(Lcom/pgl/a/a/b;)I
    .registers 2

    iget v0, p0, Lcom/pgl/a/a/b;->i:I

    return v0
.end method

.method static synthetic f(Lcom/pgl/a/a/b;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/pgl/a/a/b;->n:Landroid/os/Handler;

    return-object v0
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
    .registers 7

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/pgl/a/a/b;->l:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_3a

    if-eqz v0, :cond_7

    :goto_5
    monitor-exit p0

    return-void

    :cond_7
    const/4 v0, 0x2

    :try_start_8
    iput v0, p0, Lcom/pgl/a/a/b;->j:I

    invoke-direct {p0, p1, p2, p3}, Lcom/pgl/a/a/b;->b(II[B)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pgl/a/a/b;->l:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/pgl/a/a/b;->k:I

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "request"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/pgl/a/a/b;->m:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/pgl/a/a/b;->m:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/pgl/a/a/b;->m:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/pgl/a/a/b$1;

    invoke-direct {v2, p0}, Lcom/pgl/a/a/b$1;-><init>(Lcom/pgl/a/a/b;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/pgl/a/a/b;->n:Landroid/os/Handler;

    iget-object v0, p0, Lcom/pgl/a/a/b;->n:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_39
    .catchall {:try_start_8 .. :try_end_39} :catchall_3a

    goto :goto_5

    :catchall_3a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public abstract a(I[B)Z
.end method
