.class public Lcom/bytedance/sdk/adnet/d/h;
.super Ljavax/net/ssl/SSLSocketFactory;
.source "TLSSocketFactory.java"


# static fields
.field public static final a:Ljavax/net/ssl/X509TrustManager;

.field private static final b:[Ljava/lang/String;


# instance fields
.field private c:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 28
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_22

    .line 29
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "TLSv1"

    aput-object v1, v0, v2

    const-string v1, "TLSv1.1"

    aput-object v1, v0, v3

    const-string v1, "TLSv1.2"

    aput-object v1, v0, v4

    sput-object v0, Lcom/bytedance/sdk/adnet/d/h;->b:[Ljava/lang/String;

    .line 37
    :goto_1a
    new-instance v0, Lcom/bytedance/sdk/adnet/d/h$1;

    invoke-direct {v0}, Lcom/bytedance/sdk/adnet/d/h$1;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/adnet/d/h;->a:Ljavax/net/ssl/X509TrustManager;

    return-void

    .line 30
    :cond_22
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_3e

    .line 31
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "SSLv3"

    aput-object v1, v0, v2

    const-string v1, "TLSv1"

    aput-object v1, v0, v3

    const-string v1, "TLSv1.1"

    aput-object v1, v0, v4

    const-string v1, "TLSv1.2"

    aput-object v1, v0, v5

    sput-object v0, Lcom/bytedance/sdk/adnet/d/h;->b:[Ljava/lang/String;

    goto :goto_1a

    .line 33
    :cond_3e
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "SSLv3"

    aput-object v1, v0, v2

    const-string v1, "TLSv1"

    aput-object v1, v0, v3

    sput-object v0, Lcom/bytedance/sdk/adnet/d/h;->b:[Ljava/lang/String;

    goto :goto_1a
.end method

.method public constructor <init>()V
    .registers 6

    .prologue
    .line 63
    invoke-direct {p0}, Ljavax/net/ssl/SSLSocketFactory;-><init>()V

    .line 65
    :try_start_3
    const-string v0, "TLS"

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .line 66
    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljavax/net/ssl/TrustManager;

    const/4 v3, 0x0

    sget-object v4, Lcom/bytedance/sdk/adnet/d/h;->a:Ljavax/net/ssl/X509TrustManager;

    aput-object v4, v2, v3

    new-instance v3, Ljava/security/SecureRandom;

    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 67
    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/adnet/d/h;->c:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_20} :catch_21

    .line 71
    :goto_20
    return-void

    .line 68
    :catch_21
    move-exception v0

    .line 69
    const-string v1, "TLSSocketFactory"

    const-string v2, "TLSSocketFactory error: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_20
.end method

.method private static a(Ljava/net/Socket;)V
    .registers 2

    .prologue
    .line 56
    instance-of v0, p0, Ljavax/net/ssl/SSLSocket;

    if-eqz v0, :cond_b

    .line 57
    check-cast p0, Ljavax/net/ssl/SSLSocket;

    sget-object v0, Lcom/bytedance/sdk/adnet/d/h;->b:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    .line 59
    :cond_b
    return-void
.end method


# virtual methods
.method public createSocket()Ljava/net/Socket;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 141
    const/4 v0, 0x0

    .line 142
    iget-object v1, p0, Lcom/bytedance/sdk/adnet/d/h;->c:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v1, :cond_e

    .line 143
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/d/h;->c:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    .line 144
    invoke-static {v0}, Lcom/bytedance/sdk/adnet/d/h;->a(Ljava/net/Socket;)V

    .line 146
    :cond_e
    return-object v0
.end method

.method public createSocket(Ljava/lang/String;I)Ljava/net/Socket;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 101
    const/4 v0, 0x0

    .line 102
    iget-object v1, p0, Lcom/bytedance/sdk/adnet/d/h;->c:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v1, :cond_e

    .line 103
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/d/h;->c:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v0

    .line 104
    invoke-static {v0}, Lcom/bytedance/sdk/adnet/d/h;->a(Ljava/net/Socket;)V

    .line 106
    :cond_e
    return-object v0
.end method

.method public createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 111
    const/4 v0, 0x0

    .line 112
    iget-object v1, p0, Lcom/bytedance/sdk/adnet/d/h;->c:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v1, :cond_e

    .line 113
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/d/h;->c:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object v0

    .line 114
    invoke-static {v0}, Lcom/bytedance/sdk/adnet/d/h;->a(Ljava/net/Socket;)V

    .line 116
    :cond_e
    return-object v0
.end method

.method public createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 121
    const/4 v0, 0x0

    .line 122
    iget-object v1, p0, Lcom/bytedance/sdk/adnet/d/h;->c:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v1, :cond_e

    .line 123
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/d/h;->c:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object v0

    .line 124
    invoke-static {v0}, Lcom/bytedance/sdk/adnet/d/h;->a(Ljava/net/Socket;)V

    .line 126
    :cond_e
    return-object v0
.end method

.method public createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 131
    const/4 v0, 0x0

    .line 132
    iget-object v1, p0, Lcom/bytedance/sdk/adnet/d/h;->c:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v1, :cond_e

    .line 133
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/d/h;->c:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object v0

    .line 134
    invoke-static {v0}, Lcom/bytedance/sdk/adnet/d/h;->a(Ljava/net/Socket;)V

    .line 136
    :cond_e
    return-object v0
.end method

.method public createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 91
    const/4 v0, 0x0

    .line 92
    iget-object v1, p0, Lcom/bytedance/sdk/adnet/d/h;->c:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v1, :cond_e

    .line 93
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/d/h;->c:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v0

    .line 94
    invoke-static {v0}, Lcom/bytedance/sdk/adnet/d/h;->a(Ljava/net/Socket;)V

    .line 96
    :cond_e
    return-object v0
.end method

.method public getDefaultCipherSuites()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/d/h;->c:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v0, :cond_b

    .line 76
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/d/h;->c:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->getDefaultCipherSuites()[Ljava/lang/String;

    move-result-object v0

    .line 78
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getSupportedCipherSuites()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/d/h;->c:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v0, :cond_b

    .line 84
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/d/h;->c:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v0

    .line 86
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method
