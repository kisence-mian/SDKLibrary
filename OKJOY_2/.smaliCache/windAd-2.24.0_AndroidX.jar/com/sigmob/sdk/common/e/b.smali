.class public Lcom/sigmob/sdk/common/e/b;
.super Ljavax/net/ssl/SSLSocketFactory;


# static fields
.field private static final b:[Ljavax/net/ssl/TrustManager;


# instance fields
.field private a:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljavax/net/ssl/TrustManager;

    new-instance v1, Lcom/sigmob/sdk/common/e/b$1;

    invoke-direct {v1}, Lcom/sigmob/sdk/common/e/b$1;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/sigmob/sdk/common/e/b;->b:[Ljavax/net/ssl/TrustManager;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljavax/net/ssl/SSLSocketFactory;-><init>()V

    return-void
.end method

.method public static a()Lcom/sigmob/sdk/common/e/b;
    .registers 5

    new-instance v0, Lcom/sigmob/sdk/common/e/b;

    invoke-direct {v0}, Lcom/sigmob/sdk/common/e/b;-><init>()V

    const/4 v1, 0x0

    :try_start_6
    const-string v2, "SSL"

    invoke-static {v2}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v2
    :try_end_c
    .catch Ljava/security/KeyManagementException; {:try_start_6 .. :try_end_c} :catch_22
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_6 .. :try_end_c} :catch_1b

    :try_start_c
    sget-object v3, Lcom/sigmob/sdk/common/e/b;->b:[Ljavax/net/ssl/TrustManager;

    new-instance v4, Ljava/security/SecureRandom;

    invoke-direct {v4}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v2, v1, v3, v4}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    :try_end_16
    .catch Ljava/security/KeyManagementException; {:try_start_c .. :try_end_16} :catch_19
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_c .. :try_end_16} :catch_17

    goto :goto_2b

    :catch_17
    move-exception v3

    goto :goto_1d

    :catch_19
    move-exception v3

    goto :goto_24

    :catch_1b
    move-exception v3

    move-object v2, v1

    :goto_1d
    invoke-virtual {v3}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v3

    goto :goto_28

    :catch_22
    move-exception v3

    move-object v2, v1

    :goto_24
    invoke-virtual {v3}, Ljava/security/KeyManagementException;->getMessage()Ljava/lang/String;

    move-result-object v3

    :goto_28
    invoke-static {v3}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    :goto_2b
    if-nez v2, :cond_2e

    return-object v1

    :cond_2e
    invoke-virtual {v2}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    iput-object v1, v0, Lcom/sigmob/sdk/common/e/b;->a:Ljavax/net/ssl/SSLSocketFactory;

    return-object v0
.end method

.method public static a(I)Lcom/sigmob/sdk/common/e/b;
    .registers 3

    new-instance v0, Lcom/sigmob/sdk/common/e/b;

    invoke-direct {v0}, Lcom/sigmob/sdk/common/e/b;-><init>()V

    const/4 v1, 0x0

    invoke-static {p0, v1}, Landroid/net/SSLCertificateSocketFactory;->getDefault(ILandroid/net/SSLSessionCache;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object p0

    iput-object p0, v0, Lcom/sigmob/sdk/common/e/b;->a:Ljavax/net/ssl/SSLSocketFactory;

    return-object v0
.end method

.method private static a(Landroid/net/SSLCertificateSocketFactory;Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)V
    .registers 5

    invoke-static {p0}, Lcom/sigmob/sdk/common/f/m$a;->a(Ljava/lang/Object;)Z

    invoke-static {p1}, Lcom/sigmob/sdk/common/f/m$a;->a(Ljava/lang/Object;)Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_10

    invoke-virtual {p0, p1, p2}, Landroid/net/SSLCertificateSocketFactory;->setHostname(Ljava/net/Socket;Ljava/lang/String;)V

    goto :goto_27

    :cond_10
    :try_start_10
    new-instance p0, Lcom/sigmob/sdk/common/f/n$a;

    const-string v0, "setHostname"

    invoke-direct {p0, p1, v0}, Lcom/sigmob/sdk/common/f/n$a;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    const-class p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/sigmob/sdk/common/f/n$a;->a(Ljava/lang/Class;Ljava/lang/Object;)Lcom/sigmob/sdk/common/f/n$a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sigmob/sdk/common/f/n$a;->a()Ljava/lang/Object;
    :try_end_20
    .catchall {:try_start_10 .. :try_end_20} :catchall_21

    goto :goto_27

    :catchall_21
    move-exception p0

    const-string p0, "Unable to call setHostname() on the socket"

    invoke-static {p0}, Lcom/sigmob/logger/SigmobLog;->d(Ljava/lang/String;)V

    :goto_27
    return-void
.end method

.method private a(Ljava/net/Socket;)V
    .registers 3

    instance-of v0, p1, Ljavax/net/ssl/SSLSocket;

    if-eqz v0, :cond_d

    check-cast p1, Ljavax/net/ssl/SSLSocket;

    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getSupportedProtocols()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    :cond_d
    return-void
.end method

.method private a(Ljava/net/Socket;Ljava/lang/String;)V
    .registers 5

    invoke-static {p1}, Lcom/sigmob/sdk/common/f/m$a;->a(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sigmob/sdk/common/e/b;->a:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v0, :cond_23

    instance-of v1, p1, Ljavax/net/ssl/SSLSocket;

    if-eqz v1, :cond_22

    :try_start_b
    check-cast p1, Ljavax/net/ssl/SSLSocket;

    instance-of v1, v0, Landroid/net/SSLCertificateSocketFactory;

    if-eqz v1, :cond_22

    check-cast v0, Landroid/net/SSLCertificateSocketFactory;

    invoke-static {v0, p1, p2}, Lcom/sigmob/sdk/common/e/b;->a(Landroid/net/SSLCertificateSocketFactory;Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/sigmob/sdk/common/e/b;->a(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)V
    :try_end_19
    .catchall {:try_start_b .. :try_end_19} :catchall_1a

    goto :goto_22

    :catchall_1a
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    :cond_22
    :goto_22
    return-void

    :cond_23
    new-instance p1, Ljava/net/SocketException;

    const-string p2, "SSLSocketFactory was null. Unable to create socket."

    invoke-direct {p1, p2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static a(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)V
    .registers 3

    invoke-static {p0}, Lcom/sigmob/sdk/common/f/m$a;->a(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    invoke-static {}, Ljavax/net/ssl/HttpsURLConnection;->getDefaultHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v0

    invoke-virtual {p0}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object p0

    invoke-interface {v0, p1, p0}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result p0

    if-eqz p0, :cond_15

    return-void

    :cond_15
    new-instance p0, Ljavax/net/ssl/SSLHandshakeException;

    const-string p1, "Server Name Identification failed."

    invoke-direct {p0, p1}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public createSocket()Ljava/net/Socket;
    .registers 3

    iget-object v0, p0, Lcom/sigmob/sdk/common/e/b;->a:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sigmob/sdk/common/e/b;->a(Ljava/net/Socket;)V

    return-object v0

    :cond_c
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "SSLSocketFactory was null. Unable to create socket."

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createSocket(Ljava/lang/String;I)Ljava/net/Socket;
    .registers 4

    iget-object v0, p0, Lcom/sigmob/sdk/common/e/b;->a:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v0, :cond_c

    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sigmob/sdk/common/e/b;->a(Ljava/net/Socket;)V

    return-object p1

    :cond_c
    new-instance p1, Ljava/net/SocketException;

    const-string p2, "SSLSocketFactory was null. Unable to create socket."

    invoke-direct {p1, p2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .registers 6

    iget-object v0, p0, Lcom/sigmob/sdk/common/e/b;->a:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v0, :cond_c

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sigmob/sdk/common/e/b;->a(Ljava/net/Socket;)V

    return-object p1

    :cond_c
    new-instance p1, Ljava/net/SocketException;

    const-string p2, "SSLSocketFactory was null. Unable to create socket."

    invoke-direct {p1, p2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;
    .registers 4

    iget-object v0, p0, Lcom/sigmob/sdk/common/e/b;->a:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v0, :cond_c

    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sigmob/sdk/common/e/b;->a(Ljava/net/Socket;)V

    return-object p1

    :cond_c
    new-instance p1, Ljava/net/SocketException;

    const-string p2, "SSLSocketFactory was null. Unable to create socket."

    invoke-direct {p1, p2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .registers 6

    iget-object v0, p0, Lcom/sigmob/sdk/common/e/b;->a:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v0, :cond_c

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sigmob/sdk/common/e/b;->a(Ljava/net/Socket;)V

    return-object p1

    :cond_c
    new-instance p1, Ljava/net/SocketException;

    const-string p2, "SSLSocketFactory was null. Unable to create socket."

    invoke-direct {p1, p2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .registers 7

    iget-object v0, p0, Lcom/sigmob/sdk/common/e/b;->a:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v0, :cond_2c

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_22

    if-eqz p4, :cond_11

    if-eqz p1, :cond_11

    invoke-virtual {p1}, Ljava/net/Socket;->close()V

    :cond_11
    iget-object p1, p0, Lcom/sigmob/sdk/common/e/b;->a:Ljavax/net/ssl/SSLSocketFactory;

    invoke-static {p2}, Lcom/sigmob/sdk/common/e/c;->a(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p4

    invoke-virtual {p1, p4, p3}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sigmob/sdk/common/e/b;->a(Ljava/net/Socket;)V

    invoke-direct {p0, p1, p2}, Lcom/sigmob/sdk/common/e/b;->a(Ljava/net/Socket;Ljava/lang/String;)V

    return-object p1

    :cond_22
    iget-object v0, p0, Lcom/sigmob/sdk/common/e/b;->a:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sigmob/sdk/common/e/b;->a(Ljava/net/Socket;)V

    return-object p1

    :cond_2c
    new-instance p1, Ljava/net/SocketException;

    const-string p2, "SSLSocketFactory was null. Unable to create socket."

    invoke-direct {p1, p2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getDefaultCipherSuites()[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/common/e/b;->a:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v0, :cond_8

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0

    :cond_8
    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->getDefaultCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedCipherSuites()[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/common/e/b;->a:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v0, :cond_8

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0

    :cond_8
    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
