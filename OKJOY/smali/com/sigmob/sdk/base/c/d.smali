.class public Lcom/sigmob/sdk/base/c/d;
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

    const/4 v1, 0x0

    new-instance v2, Lcom/sigmob/sdk/base/c/d$1;

    invoke-direct {v2}, Lcom/sigmob/sdk/base/c/d$1;-><init>()V

    aput-object v2, v0, v1

    sput-object v0, Lcom/sigmob/sdk/base/c/d;->b:[Ljavax/net/ssl/TrustManager;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljavax/net/ssl/SSLSocketFactory;-><init>()V

    return-void
.end method

.method public static a()Lcom/sigmob/sdk/base/c/d;
    .registers 6

    const/4 v0, 0x0

    new-instance v1, Lcom/sigmob/sdk/base/c/d;

    invoke-direct {v1}, Lcom/sigmob/sdk/base/c/d;-><init>()V

    :try_start_6
    const-string v2, "SSL"

    invoke-static {v2}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;
    :try_end_b
    .catch Ljava/security/KeyManagementException; {:try_start_6 .. :try_end_b} :catch_1a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_6 .. :try_end_b} :catch_20

    move-result-object v3

    const/4 v2, 0x0

    :try_start_d
    sget-object v4, Lcom/sigmob/sdk/base/c/d;->b:[Ljavax/net/ssl/TrustManager;

    new-instance v5, Ljava/security/SecureRandom;

    invoke-direct {v5}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v3, v2, v4, v5}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    :try_end_17
    .catch Ljava/security/KeyManagementException; {:try_start_d .. :try_end_17} :catch_30
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_d .. :try_end_17} :catch_2e

    :goto_17
    if-nez v3, :cond_26

    :goto_19
    return-object v0

    :catch_1a
    move-exception v2

    move-object v3, v0

    :goto_1c
    invoke-virtual {v2}, Ljava/security/KeyManagementException;->printStackTrace()V

    goto :goto_17

    :catch_20
    move-exception v2

    move-object v3, v0

    :goto_22
    invoke-virtual {v2}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_17

    :cond_26
    invoke-virtual {v3}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    iput-object v0, v1, Lcom/sigmob/sdk/base/c/d;->a:Ljavax/net/ssl/SSLSocketFactory;

    move-object v0, v1

    goto :goto_19

    :catch_2e
    move-exception v2

    goto :goto_22

    :catch_30
    move-exception v2

    goto :goto_1c
.end method

.method public static a(I)Lcom/sigmob/sdk/base/c/d;
    .registers 3

    new-instance v0, Lcom/sigmob/sdk/base/c/d;

    invoke-direct {v0}, Lcom/sigmob/sdk/base/c/d;-><init>()V

    const/4 v1, 0x0

    invoke-static {p0, v1}, Landroid/net/SSLCertificateSocketFactory;->getDefault(ILandroid/net/SSLSessionCache;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    iput-object v1, v0, Lcom/sigmob/sdk/base/c/d;->a:Ljavax/net/ssl/SSLSocketFactory;

    return-object v0
.end method

.method private static a(Landroid/net/SSLCertificateSocketFactory;Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)V
    .registers 5

    invoke-static {p0}, Lcom/sigmob/sdk/base/common/utils/v;->a(Ljava/lang/Object;)Z

    invoke-static {p1}, Lcom/sigmob/sdk/base/common/utils/v;->a(Ljava/lang/Object;)Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_10

    invoke-virtual {p0, p1, p2}, Landroid/net/SSLCertificateSocketFactory;->setHostname(Ljava/net/Socket;Ljava/lang/String;)V

    :goto_f
    return-void

    :cond_10
    :try_start_10
    new-instance v0, Lcom/sigmob/sdk/base/common/utils/x;

    const-string v1, "setHostname"

    invoke-direct {v0, p1, v1}, Lcom/sigmob/sdk/base/common/utils/x;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v1, Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/sigmob/sdk/base/common/utils/x;->a(Ljava/lang/Class;Ljava/lang/Object;)Lcom/sigmob/sdk/base/common/utils/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/utils/x;->a()Ljava/lang/Object;
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_20} :catch_21

    goto :goto_f

    :catch_21
    move-exception v0

    const-string v0, "Unable to call setHostname() on the socket"

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->d(Ljava/lang/String;)V

    goto :goto_f
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

    invoke-static {p1}, Lcom/sigmob/sdk/base/common/utils/v;->a(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sigmob/sdk/base/c/d;->a:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v0, :cond_f

    new-instance v0, Ljava/net/SocketException;

    const-string v1, "SSLSocketFactory was null. Unable to create socket."

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    instance-of v0, p1, Ljavax/net/ssl/SSLSocket;

    if-eqz v0, :cond_25

    :try_start_13
    check-cast p1, Ljavax/net/ssl/SSLSocket;

    iget-object v0, p0, Lcom/sigmob/sdk/base/c/d;->a:Ljavax/net/ssl/SSLSocketFactory;

    instance-of v0, v0, Landroid/net/SSLCertificateSocketFactory;

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/sigmob/sdk/base/c/d;->a:Ljavax/net/ssl/SSLSocketFactory;

    check-cast v0, Landroid/net/SSLCertificateSocketFactory;

    invoke-static {v0, p1, p2}, Lcom/sigmob/sdk/base/c/d;->a(Landroid/net/SSLCertificateSocketFactory;Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/sigmob/sdk/base/c/d;->a(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)V
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_25} :catch_26

    :cond_25
    :goto_25
    return-void

    :catch_26
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_25
.end method

.method private static a(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)V
    .registers 4

    invoke-static {p0}, Lcom/sigmob/sdk/base/common/utils/v;->a(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    invoke-static {}, Ljavax/net/ssl/HttpsURLConnection;->getDefaultHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v0

    invoke-virtual {p0}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v0

    if-nez v0, :cond_1c

    new-instance v0, Ljavax/net/ssl/SSLHandshakeException;

    const-string v1, "Server Name Identification failed."

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1c
    return-void
.end method


# virtual methods
.method a(Ljavax/net/ssl/SSLSocketFactory;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Lcom/sigmob/sdk/base/c/d;->a:Ljavax/net/ssl/SSLSocketFactory;

    return-void
.end method

.method public createSocket()Ljava/net/Socket;
    .registers 3

    iget-object v0, p0, Lcom/sigmob/sdk/base/c/d;->a:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v0, :cond_c

    new-instance v0, Ljava/net/SocketException;

    const-string v1, "SSLSocketFactory was null. Unable to create socket."

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iget-object v0, p0, Lcom/sigmob/sdk/base/c/d;->a:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sigmob/sdk/base/c/d;->a(Ljava/net/Socket;)V

    return-object v0
.end method

.method public createSocket(Ljava/lang/String;I)Ljava/net/Socket;
    .registers 5

    iget-object v0, p0, Lcom/sigmob/sdk/base/c/d;->a:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v0, :cond_c

    new-instance v0, Ljava/net/SocketException;

    const-string v1, "SSLSocketFactory was null. Unable to create socket."

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iget-object v0, p0, Lcom/sigmob/sdk/base/c/d;->a:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sigmob/sdk/base/c/d;->a(Ljava/net/Socket;)V

    return-object v0
.end method

.method public createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .registers 7

    iget-object v0, p0, Lcom/sigmob/sdk/base/c/d;->a:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v0, :cond_c

    new-instance v0, Ljava/net/SocketException;

    const-string v1, "SSLSocketFactory was null. Unable to create socket."

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iget-object v0, p0, Lcom/sigmob/sdk/base/c/d;->a:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sigmob/sdk/base/c/d;->a(Ljava/net/Socket;)V

    return-object v0
.end method

.method public createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;
    .registers 5

    iget-object v0, p0, Lcom/sigmob/sdk/base/c/d;->a:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v0, :cond_c

    new-instance v0, Ljava/net/SocketException;

    const-string v1, "SSLSocketFactory was null. Unable to create socket."

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iget-object v0, p0, Lcom/sigmob/sdk/base/c/d;->a:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sigmob/sdk/base/c/d;->a(Ljava/net/Socket;)V

    return-object v0
.end method

.method public createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .registers 7

    iget-object v0, p0, Lcom/sigmob/sdk/base/c/d;->a:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v0, :cond_c

    new-instance v0, Ljava/net/SocketException;

    const-string v1, "SSLSocketFactory was null. Unable to create socket."

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iget-object v0, p0, Lcom/sigmob/sdk/base/c/d;->a:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sigmob/sdk/base/c/d;->a(Ljava/net/Socket;)V

    return-object v0
.end method

.method public createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .registers 7

    iget-object v0, p0, Lcom/sigmob/sdk/base/c/d;->a:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v0, :cond_c

    new-instance v0, Ljava/net/SocketException;

    const-string v1, "SSLSocketFactory was null. Unable to create socket."

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_2a

    if-eqz p4, :cond_19

    if-eqz p1, :cond_19

    invoke-virtual {p1}, Ljava/net/Socket;->close()V

    :cond_19
    iget-object v0, p0, Lcom/sigmob/sdk/base/c/d;->a:Ljavax/net/ssl/SSLSocketFactory;

    invoke-static {p2}, Lcom/sigmob/sdk/base/c/g;->a(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sigmob/sdk/base/c/d;->a(Ljava/net/Socket;)V

    invoke-direct {p0, v0, p2}, Lcom/sigmob/sdk/base/c/d;->a(Ljava/net/Socket;Ljava/lang/String;)V

    :goto_29
    return-object v0

    :cond_2a
    iget-object v0, p0, Lcom/sigmob/sdk/base/c/d;->a:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sigmob/sdk/base/c/d;->a(Ljava/net/Socket;)V

    goto :goto_29
.end method

.method public getDefaultCipherSuites()[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/base/c/d;->a:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v0, :cond_8

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    :goto_7
    return-object v0

    :cond_8
    iget-object v0, p0, Lcom/sigmob/sdk/base/c/d;->a:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->getDefaultCipherSuites()[Ljava/lang/String;

    move-result-object v0

    goto :goto_7
.end method

.method public getSupportedCipherSuites()[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/base/c/d;->a:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v0, :cond_8

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    :goto_7
    return-object v0

    :cond_8
    iget-object v0, p0, Lcom/sigmob/sdk/base/c/d;->a:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v0

    goto :goto_7
.end method
