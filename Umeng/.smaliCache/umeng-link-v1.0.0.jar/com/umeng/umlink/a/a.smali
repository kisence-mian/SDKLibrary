.class public final Lcom/umeng/umlink/a/a;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljavax/net/ssl/HostnameVerifier;


# direct methods
.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    const/4 v0, 0x0

    :goto_1
    const/4 v1, 0x3

    const/4 v2, 0x0

    if-ge v0, v1, :cond_41

    :try_start_5
    invoke-static {p0, p1}, Lcom/umeng/umlink/a/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljavax/net/ssl/HttpsURLConnection;

    move-result-object v1

    if-eqz v1, :cond_41

    invoke-virtual {v1}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v3

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_41

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    :goto_21
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->read()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2d

    int-to-char v4, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_21

    :cond_2d
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_31} :catch_33

    move-object v2, p0

    goto :goto_41

    :catch_33
    move-exception v1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_41

    const-wide/16 v1, 0x4e20

    :try_start_39
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3c
    .catch Ljava/lang/InterruptedException; {:try_start_39 .. :try_end_3c} :catch_3d

    goto :goto_3e

    :catch_3d
    move-exception v1

    :goto_3e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_41
    :goto_41
    return-object v2
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;)Ljavax/net/ssl/HttpsURLConnection;
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljavax/net/ssl/HttpsURLConnection;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_c} :catch_64

    :try_start_c
    const-string v1, "TLS"

    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v1, v0, v0, v2}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    sget-object v0, Lcom/umeng/umlink/a/a;->a:Ljavax/net/ssl/HostnameVerifier;

    if-nez v0, :cond_2c

    new-instance v0, Lcom/umeng/umlink/a/a$1;

    invoke-direct {v0}, Lcom/umeng/umlink/a/a$1;-><init>()V

    sput-object v0, Lcom/umeng/umlink/a/a;->a:Ljavax/net/ssl/HostnameVerifier;

    :cond_2c
    sget-object v0, Lcom/umeng/umlink/a/a;->a:Ljavax/net/ssl/HostnameVerifier;

    invoke-virtual {p0, v0}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    const-string v0, "POST"

    invoke-virtual {p0, v0}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/16 v0, 0x3a98

    invoke-virtual {p0, v0}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    invoke-virtual {p0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setDoInput(Z)V

    invoke-virtual {p0, v0}, Ljavax/net/ssl/HttpsURLConnection;->setReadTimeout(I)V

    const-string v0, "Content-Type"

    const-string v1, "application/json"

    invoke-virtual {p0, v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljavax/net/ssl/HttpsURLConnection;->connect()V

    invoke-virtual {p0}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_60} :catch_61

    goto :goto_69

    :catch_61
    move-exception p1

    move-object v0, p0

    goto :goto_65

    :catch_64
    move-exception p1

    :goto_65
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    move-object p0, v0

    :goto_69
    return-object p0
.end method
