.class public final Lokhttp3/internal/connection/RealConnection;
.super Lokhttp3/internal/framed/FramedConnection$Listener;
.source "RealConnection.java"

# interfaces
.implements Lokhttp3/Connection;


# instance fields
.field public allocationLimit:I

.field public final allocations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/Reference<",
            "Lokhttp3/internal/connection/StreamAllocation;",
            ">;>;"
        }
    .end annotation
.end field

.field public volatile framedConnection:Lokhttp3/internal/framed/FramedConnection;

.field private handshake:Lokhttp3/Handshake;

.field public idleAtNanos:J

.field public noNewStreams:Z

.field private protocol:Lokhttp3/Protocol;

.field private rawSocket:Ljava/net/Socket;

.field private final route:Lokhttp3/Route;

.field public sink:Lokio/BufferedSink;

.field public socket:Ljava/net/Socket;

.field public source:Lokio/BufferedSource;

.field public successCount:I


# direct methods
.method public constructor <init>(Lokhttp3/Route;)V
    .registers 4
    .param p1, "route"    # Lokhttp3/Route;

    .line 85
    invoke-direct {p0}, Lokhttp3/internal/framed/FramedConnection$Listener;-><init>()V

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lokhttp3/internal/connection/RealConnection;->allocations:Ljava/util/List;

    .line 83
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lokhttp3/internal/connection/RealConnection;->idleAtNanos:J

    .line 86
    iput-object p1, p0, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;

    .line 87
    return-void
.end method

.method private buildConnection(IIILokhttp3/internal/connection/ConnectionSpecSelector;)V
    .registers 5
    .param p1, "connectTimeout"    # I
    .param p2, "readTimeout"    # I
    .param p3, "writeTimeout"    # I
    .param p4, "connectionSpecSelector"    # Lokhttp3/internal/connection/ConnectionSpecSelector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 173
    invoke-direct {p0, p1, p2}, Lokhttp3/internal/connection/RealConnection;->connectSocket(II)V

    .line 174
    invoke-direct {p0, p2, p3, p4}, Lokhttp3/internal/connection/RealConnection;->establishProtocol(IILokhttp3/internal/connection/ConnectionSpecSelector;)V

    .line 175
    return-void
.end method

.method private buildTunneledConnection(IIILokhttp3/internal/connection/ConnectionSpecSelector;)V
    .registers 12
    .param p1, "connectTimeout"    # I
    .param p2, "readTimeout"    # I
    .param p3, "writeTimeout"    # I
    .param p4, "connectionSpecSelector"    # Lokhttp3/internal/connection/ConnectionSpecSelector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 145
    invoke-direct {p0}, Lokhttp3/internal/connection/RealConnection;->createTunnelRequest()Lokhttp3/Request;

    move-result-object v0

    .line 146
    .local v0, "tunnelRequest":Lokhttp3/Request;
    invoke-virtual {v0}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v1

    .line 147
    .local v1, "url":Lokhttp3/HttpUrl;
    const/4 v2, 0x0

    .line 148
    .local v2, "attemptedConnections":I
    const/16 v3, 0x15

    .line 150
    .local v3, "maxAttempts":I
    :goto_b
    add-int/lit8 v2, v2, 0x1

    if-gt v2, v3, :cond_29

    .line 154
    invoke-direct {p0, p1, p2}, Lokhttp3/internal/connection/RealConnection;->connectSocket(II)V

    .line 155
    invoke-direct {p0, p2, p3, v0, v1}, Lokhttp3/internal/connection/RealConnection;->createTunnel(IILokhttp3/Request;Lokhttp3/HttpUrl;)Lokhttp3/Request;

    move-result-object v0

    .line 157
    if-nez v0, :cond_1c

    .line 167
    invoke-direct {p0, p2, p3, p4}, Lokhttp3/internal/connection/RealConnection;->establishProtocol(IILokhttp3/internal/connection/ConnectionSpecSelector;)V

    .line 168
    return-void

    .line 161
    :cond_1c
    iget-object v4, p0, Lokhttp3/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;

    invoke-static {v4}, Lokhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    .line 162
    const/4 v4, 0x0

    iput-object v4, p0, Lokhttp3/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;

    .line 163
    iput-object v4, p0, Lokhttp3/internal/connection/RealConnection;->sink:Lokio/BufferedSink;

    .line 164
    iput-object v4, p0, Lokhttp3/internal/connection/RealConnection;->source:Lokio/BufferedSource;

    goto :goto_b

    .line 151
    :cond_29
    new-instance v4, Ljava/net/ProtocolException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Too many tunnel connections attempted: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    goto :goto_43

    :goto_42
    throw v4

    :goto_43
    goto :goto_42
.end method

.method private connectSocket(II)V
    .registers 9
    .param p1, "connectTimeout"    # I
    .param p2, "readTimeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 178
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;

    invoke-virtual {v0}, Lokhttp3/Route;->proxy()Ljava/net/Proxy;

    move-result-object v0

    .line 179
    .local v0, "proxy":Ljava/net/Proxy;
    iget-object v1, p0, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;

    invoke-virtual {v1}, Lokhttp3/Route;->address()Lokhttp3/Address;

    move-result-object v1

    .line 181
    .local v1, "address":Lokhttp3/Address;
    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v2

    sget-object v3, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v2, v3, :cond_23

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v2

    sget-object v3, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v2, v3, :cond_1d

    goto :goto_23

    .line 182
    :cond_1d
    new-instance v2, Ljava/net/Socket;

    invoke-direct {v2, v0}, Ljava/net/Socket;-><init>(Ljava/net/Proxy;)V

    goto :goto_2b

    :cond_23
    :goto_23
    invoke-virtual {v1}, Lokhttp3/Address;->socketFactory()Ljavax/net/SocketFactory;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v2

    :goto_2b
    iput-object v2, p0, Lokhttp3/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;

    .line 185
    invoke-virtual {v2, p2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 187
    :try_start_30
    invoke-static {}, Lokhttp3/internal/platform/Platform;->get()Lokhttp3/internal/platform/Platform;

    move-result-object v2

    iget-object v3, p0, Lokhttp3/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;

    iget-object v4, p0, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;

    invoke-virtual {v4}, Lokhttp3/Route;->socketAddress()Ljava/net/InetSocketAddress;

    move-result-object v4

    invoke-virtual {v2, v3, v4, p1}, Lokhttp3/internal/platform/Platform;->connectSocket(Ljava/net/Socket;Ljava/net/InetSocketAddress;I)V
    :try_end_3f
    .catch Ljava/net/ConnectException; {:try_start_30 .. :try_end_3f} :catch_59

    .line 190
    nop

    .line 191
    iget-object v2, p0, Lokhttp3/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;

    invoke-static {v2}, Lokio/Okio;->source(Ljava/net/Socket;)Lokio/Source;

    move-result-object v2

    invoke-static {v2}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v2

    iput-object v2, p0, Lokhttp3/internal/connection/RealConnection;->source:Lokio/BufferedSource;

    .line 192
    iget-object v2, p0, Lokhttp3/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;

    invoke-static {v2}, Lokio/Okio;->sink(Ljava/net/Socket;)Lokio/Sink;

    move-result-object v2

    invoke-static {v2}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object v2

    iput-object v2, p0, Lokhttp3/internal/connection/RealConnection;->sink:Lokio/BufferedSink;

    .line 193
    return-void

    .line 188
    :catch_59
    move-exception v2

    .line 189
    .local v2, "e":Ljava/net/ConnectException;
    new-instance v3, Ljava/net/ConnectException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to connect to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;

    invoke-virtual {v5}, Lokhttp3/Route;->socketAddress()Ljava/net/InetSocketAddress;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/net/ConnectException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private connectTls(IILokhttp3/internal/connection/ConnectionSpecSelector;)V
    .registers 14
    .param p1, "readTimeout"    # I
    .param p2, "writeTimeout"    # I
    .param p3, "connectionSpecSelector"    # Lokhttp3/internal/connection/ConnectionSpecSelector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 224
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;

    invoke-virtual {v0}, Lokhttp3/Route;->address()Lokhttp3/Address;

    move-result-object v0

    .line 225
    .local v0, "address":Lokhttp3/Address;
    invoke-virtual {v0}, Lokhttp3/Address;->sslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    .line 226
    .local v1, "sslSocketFactory":Ljavax/net/ssl/SSLSocketFactory;
    const/4 v2, 0x0

    .line 227
    .local v2, "success":Z
    const/4 v3, 0x0

    .line 230
    .local v3, "sslSocket":Ljavax/net/ssl/SSLSocket;
    :try_start_c
    iget-object v4, p0, Lokhttp3/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;

    .line 231
    invoke-virtual {v0}, Lokhttp3/Address;->url()Lokhttp3/HttpUrl;

    move-result-object v5

    invoke-virtual {v5}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lokhttp3/Address;->url()Lokhttp3/HttpUrl;

    move-result-object v6

    invoke-virtual {v6}, Lokhttp3/HttpUrl;->port()I

    move-result v6

    const/4 v7, 0x1

    .line 230
    invoke-virtual {v1, v4, v5, v6, v7}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v4

    check-cast v4, Ljavax/net/ssl/SSLSocket;

    move-object v3, v4

    .line 234
    invoke-virtual {p3, v3}, Lokhttp3/internal/connection/ConnectionSpecSelector;->configureSecureSocket(Ljavax/net/ssl/SSLSocket;)Lokhttp3/ConnectionSpec;

    move-result-object v4

    .line 235
    .local v4, "connectionSpec":Lokhttp3/ConnectionSpec;
    invoke-virtual {v4}, Lokhttp3/ConnectionSpec;->supportsTlsExtensions()Z

    move-result v5

    if-eqz v5, :cond_43

    .line 236
    invoke-static {}, Lokhttp3/internal/platform/Platform;->get()Lokhttp3/internal/platform/Platform;

    move-result-object v5

    .line 237
    invoke-virtual {v0}, Lokhttp3/Address;->url()Lokhttp3/HttpUrl;

    move-result-object v6

    invoke-virtual {v6}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lokhttp3/Address;->protocols()Ljava/util/List;

    move-result-object v7

    .line 236
    invoke-virtual {v5, v3, v6, v7}, Lokhttp3/internal/platform/Platform;->configureTlsExtensions(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V

    .line 241
    :cond_43
    invoke-virtual {v3}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 242
    invoke-virtual {v3}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v5

    invoke-static {v5}, Lokhttp3/Handshake;->get(Ljavax/net/ssl/SSLSession;)Lokhttp3/Handshake;

    move-result-object v5

    .line 245
    .local v5, "unverifiedHandshake":Lokhttp3/Handshake;
    invoke-virtual {v0}, Lokhttp3/Address;->hostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v6

    invoke-virtual {v0}, Lokhttp3/Address;->url()Lokhttp3/HttpUrl;

    move-result-object v7

    invoke-virtual {v7}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v6

    if-eqz v6, :cond_bc

    .line 254
    invoke-virtual {v0}, Lokhttp3/Address;->certificatePinner()Lokhttp3/CertificatePinner;

    move-result-object v6

    invoke-virtual {v0}, Lokhttp3/Address;->url()Lokhttp3/HttpUrl;

    move-result-object v7

    invoke-virtual {v7}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v7

    .line 255
    invoke-virtual {v5}, Lokhttp3/Handshake;->peerCertificates()Ljava/util/List;

    move-result-object v8

    .line 254
    invoke-virtual {v6, v7, v8}, Lokhttp3/CertificatePinner;->check(Ljava/lang/String;Ljava/util/List;)V

    .line 258
    invoke-virtual {v4}, Lokhttp3/ConnectionSpec;->supportsTlsExtensions()Z

    move-result v6

    if-eqz v6, :cond_86

    .line 259
    invoke-static {}, Lokhttp3/internal/platform/Platform;->get()Lokhttp3/internal/platform/Platform;

    move-result-object v6

    invoke-virtual {v6, v3}, Lokhttp3/internal/platform/Platform;->getSelectedProtocol(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;

    move-result-object v6

    goto :goto_87

    :cond_86
    const/4 v6, 0x0

    .line 261
    .local v6, "maybeProtocol":Ljava/lang/String;
    :goto_87
    iput-object v3, p0, Lokhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    .line 262
    invoke-static {v3}, Lokio/Okio;->source(Ljava/net/Socket;)Lokio/Source;

    move-result-object v7

    invoke-static {v7}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v7

    iput-object v7, p0, Lokhttp3/internal/connection/RealConnection;->source:Lokio/BufferedSource;

    .line 263
    iget-object v7, p0, Lokhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    invoke-static {v7}, Lokio/Okio;->sink(Ljava/net/Socket;)Lokio/Sink;

    move-result-object v7

    invoke-static {v7}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object v7

    iput-object v7, p0, Lokhttp3/internal/connection/RealConnection;->sink:Lokio/BufferedSink;

    .line 264
    iput-object v5, p0, Lokhttp3/internal/connection/RealConnection;->handshake:Lokhttp3/Handshake;

    .line 265
    if-eqz v6, :cond_a8

    .line 266
    invoke-static {v6}, Lokhttp3/Protocol;->get(Ljava/lang/String;)Lokhttp3/Protocol;

    move-result-object v7

    goto :goto_aa

    :cond_a8
    sget-object v7, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;

    :goto_aa
    iput-object v7, p0, Lokhttp3/internal/connection/RealConnection;->protocol:Lokhttp3/Protocol;
    :try_end_ac
    .catch Ljava/lang/AssertionError; {:try_start_c .. :try_end_ac} :catch_118
    .catchall {:try_start_c .. :try_end_ac} :catchall_116

    .line 268
    const/4 v2, 0x1

    .line 273
    .end local v4    # "connectionSpec":Lokhttp3/ConnectionSpec;
    .end local v5    # "unverifiedHandshake":Lokhttp3/Handshake;
    .end local v6    # "maybeProtocol":Ljava/lang/String;
    if-eqz v3, :cond_b6

    .line 274
    invoke-static {}, Lokhttp3/internal/platform/Platform;->get()Lokhttp3/internal/platform/Platform;

    move-result-object v4

    invoke-virtual {v4, v3}, Lokhttp3/internal/platform/Platform;->afterHandshake(Ljavax/net/ssl/SSLSocket;)V

    .line 276
    :cond_b6
    if-nez v2, :cond_bb

    .line 277
    invoke-static {v3}, Lokhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    .line 280
    :cond_bb
    return-void

    .line 246
    .restart local v4    # "connectionSpec":Lokhttp3/ConnectionSpec;
    .restart local v5    # "unverifiedHandshake":Lokhttp3/Handshake;
    :cond_bc
    :try_start_bc
    invoke-virtual {v5}, Lokhttp3/Handshake;->peerCertificates()Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/security/cert/X509Certificate;

    .line 247
    .local v6, "cert":Ljava/security/cert/X509Certificate;
    new-instance v7, Ljavax/net/ssl/SSLPeerUnverifiedException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Hostname "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Lokhttp3/Address;->url()Lokhttp3/HttpUrl;

    move-result-object v9

    invoke-virtual {v9}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " not verified:\n    certificate: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 248
    invoke-static {v6}, Lokhttp3/CertificatePinner;->pin(Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n    DN: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 249
    invoke-virtual {v6}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v9

    invoke-interface {v9}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n    subjectAltNames: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 250
    invoke-static {v6}, Lokhttp3/internal/tls/OkHostnameVerifier;->allSubjectAltNames(Ljava/security/cert/X509Certificate;)Ljava/util/List;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    .end local v0    # "address":Lokhttp3/Address;
    .end local v1    # "sslSocketFactory":Ljavax/net/ssl/SSLSocketFactory;
    .end local v2    # "success":Z
    .end local v3    # "sslSocket":Ljavax/net/ssl/SSLSocket;
    .end local p1    # "readTimeout":I
    .end local p2    # "writeTimeout":I
    .end local p3    # "connectionSpecSelector":Lokhttp3/internal/connection/ConnectionSpecSelector;
    throw v7
    :try_end_116
    .catch Ljava/lang/AssertionError; {:try_start_bc .. :try_end_116} :catch_118
    .catchall {:try_start_bc .. :try_end_116} :catchall_116

    .line 273
    .end local v4    # "connectionSpec":Lokhttp3/ConnectionSpec;
    .end local v5    # "unverifiedHandshake":Lokhttp3/Handshake;
    .end local v6    # "cert":Ljava/security/cert/X509Certificate;
    .restart local v0    # "address":Lokhttp3/Address;
    .restart local v1    # "sslSocketFactory":Ljavax/net/ssl/SSLSocketFactory;
    .restart local v2    # "success":Z
    .restart local v3    # "sslSocket":Ljavax/net/ssl/SSLSocket;
    .restart local p1    # "readTimeout":I
    .restart local p2    # "writeTimeout":I
    .restart local p3    # "connectionSpecSelector":Lokhttp3/internal/connection/ConnectionSpecSelector;
    :catchall_116
    move-exception v4

    goto :goto_127

    .line 269
    :catch_118
    move-exception v4

    .line 270
    .local v4, "e":Ljava/lang/AssertionError;
    :try_start_119
    invoke-static {v4}, Lokhttp3/internal/Util;->isAndroidGetsocknameError(Ljava/lang/AssertionError;)Z

    move-result v5

    if-eqz v5, :cond_125

    new-instance v5, Ljava/io/IOException;

    invoke-direct {v5, v4}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "address":Lokhttp3/Address;
    .end local v1    # "sslSocketFactory":Ljavax/net/ssl/SSLSocketFactory;
    .end local v2    # "success":Z
    .end local v3    # "sslSocket":Ljavax/net/ssl/SSLSocket;
    .end local p1    # "readTimeout":I
    .end local p2    # "writeTimeout":I
    .end local p3    # "connectionSpecSelector":Lokhttp3/internal/connection/ConnectionSpecSelector;
    throw v5

    .line 271
    .restart local v0    # "address":Lokhttp3/Address;
    .restart local v1    # "sslSocketFactory":Ljavax/net/ssl/SSLSocketFactory;
    .restart local v2    # "success":Z
    .restart local v3    # "sslSocket":Ljavax/net/ssl/SSLSocket;
    .restart local p1    # "readTimeout":I
    .restart local p2    # "writeTimeout":I
    .restart local p3    # "connectionSpecSelector":Lokhttp3/internal/connection/ConnectionSpecSelector;
    :cond_125
    nop

    .end local v0    # "address":Lokhttp3/Address;
    .end local v1    # "sslSocketFactory":Ljavax/net/ssl/SSLSocketFactory;
    .end local v2    # "success":Z
    .end local v3    # "sslSocket":Ljavax/net/ssl/SSLSocket;
    .end local p1    # "readTimeout":I
    .end local p2    # "writeTimeout":I
    .end local p3    # "connectionSpecSelector":Lokhttp3/internal/connection/ConnectionSpecSelector;
    throw v4
    :try_end_127
    .catchall {:try_start_119 .. :try_end_127} :catchall_116

    .line 273
    .end local v4    # "e":Ljava/lang/AssertionError;
    .restart local v0    # "address":Lokhttp3/Address;
    .restart local v1    # "sslSocketFactory":Ljavax/net/ssl/SSLSocketFactory;
    .restart local v2    # "success":Z
    .restart local v3    # "sslSocket":Ljavax/net/ssl/SSLSocket;
    .restart local p1    # "readTimeout":I
    .restart local p2    # "writeTimeout":I
    .restart local p3    # "connectionSpecSelector":Lokhttp3/internal/connection/ConnectionSpecSelector;
    :goto_127
    if-eqz v3, :cond_130

    .line 274
    invoke-static {}, Lokhttp3/internal/platform/Platform;->get()Lokhttp3/internal/platform/Platform;

    move-result-object v5

    invoke-virtual {v5, v3}, Lokhttp3/internal/platform/Platform;->afterHandshake(Ljavax/net/ssl/SSLSocket;)V

    .line 276
    :cond_130
    if-nez v2, :cond_135

    .line 277
    invoke-static {v3}, Lokhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    :cond_135
    throw v4
.end method

.method private createTunnel(IILokhttp3/Request;Lokhttp3/HttpUrl;)Lokhttp3/Request;
    .registers 14
    .param p1, "readTimeout"    # I
    .param p2, "writeTimeout"    # I
    .param p3, "tunnelRequest"    # Lokhttp3/Request;
    .param p4, "url"    # Lokhttp3/HttpUrl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CONNECT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p4, v1}, Lokhttp3/internal/Util;->hostHeader(Lokhttp3/HttpUrl;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " HTTP/1.1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 291
    .local v0, "requestLine":Ljava/lang/String;
    :goto_1e
    new-instance v1, Lokhttp3/internal/http/Http1xStream;

    iget-object v2, p0, Lokhttp3/internal/connection/RealConnection;->source:Lokio/BufferedSource;

    iget-object v3, p0, Lokhttp3/internal/connection/RealConnection;->sink:Lokio/BufferedSink;

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v2, v3}, Lokhttp3/internal/http/Http1xStream;-><init>(Lokhttp3/OkHttpClient;Lokhttp3/internal/connection/StreamAllocation;Lokio/BufferedSource;Lokio/BufferedSink;)V

    .line 292
    .local v1, "tunnelConnection":Lokhttp3/internal/http/Http1xStream;
    iget-object v2, p0, Lokhttp3/internal/connection/RealConnection;->source:Lokio/BufferedSource;

    invoke-interface {v2}, Lokio/BufferedSource;->timeout()Lokio/Timeout;

    move-result-object v2

    int-to-long v5, p1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v5, v6, v3}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 293
    iget-object v2, p0, Lokhttp3/internal/connection/RealConnection;->sink:Lokio/BufferedSink;

    invoke-interface {v2}, Lokio/BufferedSink;->timeout()Lokio/Timeout;

    move-result-object v2

    int-to-long v5, p2

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v5, v6, v3}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 294
    invoke-virtual {p3}, Lokhttp3/Request;->headers()Lokhttp3/Headers;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lokhttp3/internal/http/Http1xStream;->writeRequest(Lokhttp3/Headers;Ljava/lang/String;)V

    .line 295
    invoke-virtual {v1}, Lokhttp3/internal/http/Http1xStream;->finishRequest()V

    .line 296
    invoke-virtual {v1}, Lokhttp3/internal/http/Http1xStream;->readResponse()Lokhttp3/Response$Builder;

    move-result-object v2

    invoke-virtual {v2, p3}, Lokhttp3/Response$Builder;->request(Lokhttp3/Request;)Lokhttp3/Response$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object v2

    .line 299
    .local v2, "response":Lokhttp3/Response;
    invoke-static {v2}, Lokhttp3/internal/http/HttpHeaders;->contentLength(Lokhttp3/Response;)J

    move-result-wide v5

    .line 300
    .local v5, "contentLength":J
    const-wide/16 v7, -0x1

    cmp-long v3, v5, v7

    if-nez v3, :cond_62

    .line 301
    const-wide/16 v5, 0x0

    .line 303
    :cond_62
    invoke-virtual {v1, v5, v6}, Lokhttp3/internal/http/Http1xStream;->newFixedLengthSource(J)Lokio/Source;

    move-result-object v3

    .line 304
    .local v3, "body":Lokio/Source;
    const v7, 0x7fffffff

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v3, v7, v8}, Lokhttp3/internal/Util;->skipAll(Lokio/Source;ILjava/util/concurrent/TimeUnit;)Z

    .line 305
    invoke-interface {v3}, Lokio/Source;->close()V

    .line 307
    invoke-virtual {v2}, Lokhttp3/Response;->code()I

    move-result v7

    sparse-switch v7, :sswitch_data_e4

    .line 328
    new-instance v4, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unexpected response code for CONNECT: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 329
    invoke-virtual {v2}, Lokhttp3/Response;->code()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 319
    :sswitch_95
    iget-object v4, p0, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;

    invoke-virtual {v4}, Lokhttp3/Route;->address()Lokhttp3/Address;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp3/Address;->proxyAuthenticator()Lokhttp3/Authenticator;

    move-result-object v4

    iget-object v7, p0, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;

    invoke-interface {v4, v7, v2}, Lokhttp3/Authenticator;->authenticate(Lokhttp3/Route;Lokhttp3/Response;)Lokhttp3/Request;

    move-result-object p3

    .line 320
    if-eqz p3, :cond_b8

    .line 322
    const-string v4, "Connection"

    invoke-virtual {v2, v4}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "close"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b6

    .line 323
    return-object p3

    .line 331
    .end local v1    # "tunnelConnection":Lokhttp3/internal/http/Http1xStream;
    .end local v2    # "response":Lokhttp3/Response;
    .end local v3    # "body":Lokio/Source;
    .end local v5    # "contentLength":J
    :cond_b6
    goto/16 :goto_1e

    .line 320
    .restart local v1    # "tunnelConnection":Lokhttp3/internal/http/Http1xStream;
    .restart local v2    # "response":Lokhttp3/Response;
    .restart local v3    # "body":Lokio/Source;
    .restart local v5    # "contentLength":J
    :cond_b8
    new-instance v4, Ljava/io/IOException;

    const-string v7, "Failed to authenticate with proxy"

    invoke-direct {v4, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 313
    :sswitch_c0
    iget-object v7, p0, Lokhttp3/internal/connection/RealConnection;->source:Lokio/BufferedSource;

    invoke-interface {v7}, Lokio/BufferedSource;->buffer()Lokio/Buffer;

    move-result-object v7

    invoke-virtual {v7}, Lokio/Buffer;->exhausted()Z

    move-result v7

    if-eqz v7, :cond_d9

    iget-object v7, p0, Lokhttp3/internal/connection/RealConnection;->sink:Lokio/BufferedSink;

    invoke-interface {v7}, Lokio/BufferedSink;->buffer()Lokio/Buffer;

    move-result-object v7

    invoke-virtual {v7}, Lokio/Buffer;->exhausted()Z

    move-result v7

    if-eqz v7, :cond_d9

    .line 316
    return-object v4

    .line 314
    :cond_d9
    new-instance v4, Ljava/io/IOException;

    const-string v7, "TLS tunnel buffered too many bytes!"

    invoke-direct {v4, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_e2

    :goto_e1
    throw v4

    :goto_e2
    goto :goto_e1

    nop

    :sswitch_data_e4
    .sparse-switch
        0xc8 -> :sswitch_c0
        0x197 -> :sswitch_95
    .end sparse-switch
.end method

.method private createTunnelRequest()Lokhttp3/Request;
    .registers 4

    .line 340
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    iget-object v1, p0, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;

    .line 341
    invoke-virtual {v1}, Lokhttp3/Route;->address()Lokhttp3/Address;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Address;->url()Lokhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/Request$Builder;->url(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;

    .line 342
    invoke-virtual {v1}, Lokhttp3/Route;->address()Lokhttp3/Address;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Address;->url()Lokhttp3/HttpUrl;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lokhttp3/internal/Util;->hostHeader(Lokhttp3/HttpUrl;Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Host"

    invoke-virtual {v0, v2, v1}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 343
    const-string v1, "Proxy-Connection"

    const-string v2, "Keep-Alive"

    invoke-virtual {v0, v1, v2}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 344
    invoke-static {}, Lokhttp3/internal/Version;->userAgent()Ljava/lang/String;

    move-result-object v1

    const-string v2, "User-Agent"

    invoke-virtual {v0, v2, v1}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 345
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 340
    return-object v0
.end method

.method private establishProtocol(IILokhttp3/internal/connection/ConnectionSpecSelector;)V
    .registers 9
    .param p1, "readTimeout"    # I
    .param p2, "writeTimeout"    # I
    .param p3, "connectionSpecSelector"    # Lokhttp3/internal/connection/ConnectionSpecSelector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 197
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;

    invoke-virtual {v0}, Lokhttp3/Route;->address()Lokhttp3/Address;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Address;->sslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 198
    invoke-direct {p0, p1, p2, p3}, Lokhttp3/internal/connection/RealConnection;->connectTls(IILokhttp3/internal/connection/ConnectionSpecSelector;)V

    goto :goto_18

    .line 200
    :cond_10
    sget-object v0, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;

    iput-object v0, p0, Lokhttp3/internal/connection/RealConnection;->protocol:Lokhttp3/Protocol;

    .line 201
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;

    iput-object v0, p0, Lokhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    .line 204
    :goto_18
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->protocol:Lokhttp3/Protocol;

    sget-object v1, Lokhttp3/Protocol;->SPDY_3:Lokhttp3/Protocol;

    const/4 v2, 0x1

    if-eq v0, v1, :cond_29

    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->protocol:Lokhttp3/Protocol;

    sget-object v1, Lokhttp3/Protocol;->HTTP_2:Lokhttp3/Protocol;

    if-ne v0, v1, :cond_26

    goto :goto_29

    .line 218
    :cond_26
    iput v2, p0, Lokhttp3/internal/connection/RealConnection;->allocationLimit:I

    goto :goto_66

    .line 205
    :cond_29
    :goto_29
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 207
    new-instance v0, Lokhttp3/internal/framed/FramedConnection$Builder;

    invoke-direct {v0, v2}, Lokhttp3/internal/framed/FramedConnection$Builder;-><init>(Z)V

    iget-object v1, p0, Lokhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    iget-object v2, p0, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;

    .line 208
    invoke-virtual {v2}, Lokhttp3/Route;->address()Lokhttp3/Address;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/Address;->url()Lokhttp3/HttpUrl;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lokhttp3/internal/connection/RealConnection;->source:Lokio/BufferedSource;

    iget-object v4, p0, Lokhttp3/internal/connection/RealConnection;->sink:Lokio/BufferedSink;

    invoke-virtual {v0, v1, v2, v3, v4}, Lokhttp3/internal/framed/FramedConnection$Builder;->socket(Ljava/net/Socket;Ljava/lang/String;Lokio/BufferedSource;Lokio/BufferedSink;)Lokhttp3/internal/framed/FramedConnection$Builder;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/internal/connection/RealConnection;->protocol:Lokhttp3/Protocol;

    .line 209
    invoke-virtual {v0, v1}, Lokhttp3/internal/framed/FramedConnection$Builder;->protocol(Lokhttp3/Protocol;)Lokhttp3/internal/framed/FramedConnection$Builder;

    move-result-object v0

    .line 210
    invoke-virtual {v0, p0}, Lokhttp3/internal/framed/FramedConnection$Builder;->listener(Lokhttp3/internal/framed/FramedConnection$Listener;)Lokhttp3/internal/framed/FramedConnection$Builder;

    move-result-object v0

    .line 211
    invoke-virtual {v0}, Lokhttp3/internal/framed/FramedConnection$Builder;->build()Lokhttp3/internal/framed/FramedConnection;

    move-result-object v0

    .line 212
    .local v0, "framedConnection":Lokhttp3/internal/framed/FramedConnection;
    invoke-virtual {v0}, Lokhttp3/internal/framed/FramedConnection;->start()V

    .line 215
    invoke-virtual {v0}, Lokhttp3/internal/framed/FramedConnection;->maxConcurrentStreams()I

    move-result v1

    iput v1, p0, Lokhttp3/internal/connection/RealConnection;->allocationLimit:I

    .line 216
    iput-object v0, p0, Lokhttp3/internal/connection/RealConnection;->framedConnection:Lokhttp3/internal/framed/FramedConnection;

    .line 217
    .end local v0    # "framedConnection":Lokhttp3/internal/framed/FramedConnection;
    nop

    .line 220
    :goto_66
    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 2

    .line 354
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;

    invoke-static {v0}, Lokhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    .line 355
    return-void
.end method

.method public connect(IIILjava/util/List;Z)V
    .registers 13
    .param p1, "connectTimeout"    # I
    .param p2, "readTimeout"    # I
    .param p3, "writeTimeout"    # I
    .param p5, "connectionRetryEnabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/util/List<",
            "Lokhttp3/ConnectionSpec;",
            ">;Z)V"
        }
    .end annotation

    .line 91
    .local p4, "connectionSpecs":Ljava/util/List;, "Ljava/util/List<Lokhttp3/ConnectionSpec;>;"
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->protocol:Lokhttp3/Protocol;

    if-nez v0, :cond_ab

    .line 93
    const/4 v0, 0x0

    .line 94
    .local v0, "routeException":Lokhttp3/internal/connection/RouteException;
    new-instance v1, Lokhttp3/internal/connection/ConnectionSpecSelector;

    invoke-direct {v1, p4}, Lokhttp3/internal/connection/ConnectionSpecSelector;-><init>(Ljava/util/List;)V

    .line 96
    .local v1, "connectionSpecSelector":Lokhttp3/internal/connection/ConnectionSpecSelector;
    iget-object v2, p0, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;

    invoke-virtual {v2}, Lokhttp3/Route;->address()Lokhttp3/Address;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/Address;->sslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    if-nez v2, :cond_68

    .line 97
    sget-object v2, Lokhttp3/ConnectionSpec;->CLEARTEXT:Lokhttp3/ConnectionSpec;

    invoke-interface {p4, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5b

    .line 101
    iget-object v2, p0, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;

    invoke-virtual {v2}, Lokhttp3/Route;->address()Lokhttp3/Address;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/Address;->url()Lokhttp3/HttpUrl;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v2

    .line 102
    .local v2, "host":Ljava/lang/String;
    invoke-static {}, Lokhttp3/internal/platform/Platform;->get()Lokhttp3/internal/platform/Platform;

    move-result-object v3

    invoke-virtual {v3, v2}, Lokhttp3/internal/platform/Platform;->isCleartextTrafficPermitted(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_37

    goto :goto_68

    .line 103
    :cond_37
    new-instance v3, Lokhttp3/internal/connection/RouteException;

    new-instance v4, Ljava/net/UnknownServiceException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CLEARTEXT communication to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " not permitted by network security policy"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Lokhttp3/internal/connection/RouteException;-><init>(Ljava/io/IOException;)V

    throw v3

    .line 98
    .end local v2    # "host":Ljava/lang/String;
    :cond_5b
    new-instance v2, Lokhttp3/internal/connection/RouteException;

    new-instance v3, Ljava/net/UnknownServiceException;

    const-string v4, "CLEARTEXT communication not enabled for client"

    invoke-direct {v3, v4}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lokhttp3/internal/connection/RouteException;-><init>(Ljava/io/IOException;)V

    throw v2

    .line 108
    :cond_68
    :goto_68
    iget-object v2, p0, Lokhttp3/internal/connection/RealConnection;->protocol:Lokhttp3/Protocol;

    if-nez v2, :cond_aa

    .line 110
    :try_start_6c
    iget-object v2, p0, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;

    invoke-virtual {v2}, Lokhttp3/Route;->requiresTunnel()Z

    move-result v2

    if-eqz v2, :cond_78

    .line 111
    invoke-direct {p0, p1, p2, p3, v1}, Lokhttp3/internal/connection/RealConnection;->buildTunneledConnection(IIILokhttp3/internal/connection/ConnectionSpecSelector;)V

    goto :goto_7b

    .line 114
    :cond_78
    invoke-direct {p0, p1, p2, p3, v1}, Lokhttp3/internal/connection/RealConnection;->buildConnection(IIILokhttp3/internal/connection/ConnectionSpecSelector;)V
    :try_end_7b
    .catch Ljava/io/IOException; {:try_start_6c .. :try_end_7b} :catch_7c

    .line 135
    :goto_7b
    goto :goto_68

    .line 116
    :catch_7c
    move-exception v2

    .line 117
    .local v2, "e":Ljava/io/IOException;
    iget-object v3, p0, Lokhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    invoke-static {v3}, Lokhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    .line 118
    iget-object v3, p0, Lokhttp3/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;

    invoke-static {v3}, Lokhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    .line 119
    const/4 v3, 0x0

    iput-object v3, p0, Lokhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    .line 120
    iput-object v3, p0, Lokhttp3/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;

    .line 121
    iput-object v3, p0, Lokhttp3/internal/connection/RealConnection;->source:Lokio/BufferedSource;

    .line 122
    iput-object v3, p0, Lokhttp3/internal/connection/RealConnection;->sink:Lokio/BufferedSink;

    .line 123
    iput-object v3, p0, Lokhttp3/internal/connection/RealConnection;->handshake:Lokhttp3/Handshake;

    .line 124
    iput-object v3, p0, Lokhttp3/internal/connection/RealConnection;->protocol:Lokhttp3/Protocol;

    .line 126
    if-nez v0, :cond_9d

    .line 127
    new-instance v3, Lokhttp3/internal/connection/RouteException;

    invoke-direct {v3, v2}, Lokhttp3/internal/connection/RouteException;-><init>(Ljava/io/IOException;)V

    move-object v0, v3

    goto :goto_a0

    .line 129
    :cond_9d
    invoke-virtual {v0, v2}, Lokhttp3/internal/connection/RouteException;->addConnectException(Ljava/io/IOException;)V

    .line 132
    :goto_a0
    if-eqz p5, :cond_a9

    invoke-virtual {v1, v2}, Lokhttp3/internal/connection/ConnectionSpecSelector;->connectionFailed(Ljava/io/IOException;)Z

    move-result v3

    if-eqz v3, :cond_a9

    .end local v2    # "e":Ljava/io/IOException;
    goto :goto_7b

    .line 133
    .restart local v2    # "e":Ljava/io/IOException;
    :cond_a9
    throw v0

    .line 137
    .end local v2    # "e":Ljava/io/IOException;
    :cond_aa
    return-void

    .line 91
    .end local v0    # "routeException":Lokhttp3/internal/connection/RouteException;
    .end local v1    # "connectionSpecSelector":Lokhttp3/internal/connection/ConnectionSpecSelector;
    :cond_ab
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "already connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_b4

    :goto_b3
    throw v0

    :goto_b4
    goto :goto_b3
.end method

.method public handshake()Lokhttp3/Handshake;
    .registers 2

    .line 404
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->handshake:Lokhttp3/Handshake;

    return-object v0
.end method

.method public isHealthy(Z)Z
    .registers 7
    .param p1, "doExtensiveChecks"    # Z

    .line 363
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4e

    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v0

    if-nez v0, :cond_4e

    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v0

    if-eqz v0, :cond_1a

    goto :goto_4e

    .line 367
    :cond_1a
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->framedConnection:Lokhttp3/internal/framed/FramedConnection;

    const/4 v2, 0x1

    if-eqz v0, :cond_20

    .line 368
    return v2

    .line 371
    :cond_20
    if-eqz p1, :cond_4d

    .line 373
    :try_start_22
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getSoTimeout()I

    move-result v0
    :try_end_28
    .catch Ljava/net/SocketTimeoutException; {:try_start_22 .. :try_end_28} :catch_4c
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_28} :catch_4a

    .line 375
    .local v0, "readTimeout":I
    :try_start_28
    iget-object v3, p0, Lokhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v3, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 376
    iget-object v3, p0, Lokhttp3/internal/connection/RealConnection;->source:Lokio/BufferedSource;

    invoke-interface {v3}, Lokio/BufferedSource;->exhausted()Z

    move-result v3
    :try_end_33
    .catchall {:try_start_28 .. :try_end_33} :catchall_43

    if-eqz v3, :cond_3c

    .line 377
    nop

    .line 381
    :try_start_36
    iget-object v3, p0, Lokhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v3, v0}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 377
    return v1

    .line 379
    :cond_3c
    nop

    .line 381
    iget-object v3, p0, Lokhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v3, v0}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 379
    return v2

    .line 381
    :catchall_43
    move-exception v3

    iget-object v4, p0, Lokhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v4, v0}, Ljava/net/Socket;->setSoTimeout(I)V

    .end local p1    # "doExtensiveChecks":Z
    throw v3
    :try_end_4a
    .catch Ljava/net/SocketTimeoutException; {:try_start_36 .. :try_end_4a} :catch_4c
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_4a} :catch_4a

    .line 385
    .end local v0    # "readTimeout":I
    .restart local p1    # "doExtensiveChecks":Z
    :catch_4a
    move-exception v0

    .line 386
    .local v0, "e":Ljava/io/IOException;
    return v1

    .line 383
    .end local v0    # "e":Ljava/io/IOException;
    :catch_4c
    move-exception v0

    .line 390
    :cond_4d
    return v2

    .line 364
    :cond_4e
    :goto_4e
    return v1
.end method

.method public isMultiplexed()Z
    .registers 2

    .line 412
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->framedConnection:Lokhttp3/internal/framed/FramedConnection;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public onSettings(Lokhttp3/internal/framed/FramedConnection;)V
    .registers 3
    .param p1, "connection"    # Lokhttp3/internal/framed/FramedConnection;

    .line 400
    invoke-virtual {p1}, Lokhttp3/internal/framed/FramedConnection;->maxConcurrentStreams()I

    move-result v0

    iput v0, p0, Lokhttp3/internal/connection/RealConnection;->allocationLimit:I

    .line 401
    return-void
.end method

.method public onStream(Lokhttp3/internal/framed/FramedStream;)V
    .registers 3
    .param p1, "stream"    # Lokhttp3/internal/framed/FramedStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 395
    sget-object v0, Lokhttp3/internal/framed/ErrorCode;->REFUSED_STREAM:Lokhttp3/internal/framed/ErrorCode;

    invoke-virtual {p1, v0}, Lokhttp3/internal/framed/FramedStream;->close(Lokhttp3/internal/framed/ErrorCode;)V

    .line 396
    return-void
.end method

.method public protocol()Lokhttp3/Protocol;
    .registers 2

    .line 416
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->framedConnection:Lokhttp3/internal/framed/FramedConnection;

    if-nez v0, :cond_c

    .line 417
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->protocol:Lokhttp3/Protocol;

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    sget-object v0, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;

    :goto_b
    return-object v0

    .line 419
    :cond_c
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->framedConnection:Lokhttp3/internal/framed/FramedConnection;

    invoke-virtual {v0}, Lokhttp3/internal/framed/FramedConnection;->getProtocol()Lokhttp3/Protocol;

    move-result-object v0

    return-object v0
.end method

.method public route()Lokhttp3/Route;
    .registers 2

    .line 349
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;

    return-object v0
.end method

.method public socket()Ljava/net/Socket;
    .registers 2

    .line 358
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 424
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Connection{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;

    .line 425
    invoke-virtual {v1}, Lokhttp3/Route;->address()Lokhttp3/Address;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Address;->url()Lokhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;

    invoke-virtual {v1}, Lokhttp3/Route;->address()Lokhttp3/Address;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Address;->url()Lokhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/HttpUrl;->port()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", proxy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;

    .line 427
    invoke-virtual {v1}, Lokhttp3/Route;->proxy()Ljava/net/Proxy;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " hostAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;

    .line 429
    invoke-virtual {v1}, Lokhttp3/Route;->socketAddress()Ljava/net/InetSocketAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cipherSuite="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/internal/connection/RealConnection;->handshake:Lokhttp3/Handshake;

    if-eqz v1, :cond_64

    .line 431
    invoke-virtual {v1}, Lokhttp3/Handshake;->cipherSuite()Lokhttp3/CipherSuite;

    move-result-object v1

    goto :goto_66

    :cond_64
    const-string v1, "none"

    :goto_66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " protocol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/internal/connection/RealConnection;->protocol:Lokhttp3/Protocol;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 424
    return-object v0
.end method
