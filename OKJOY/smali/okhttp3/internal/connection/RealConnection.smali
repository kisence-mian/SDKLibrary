.class public final Lokhttp3/internal/connection/RealConnection;
.super Lokhttp3/internal/http2/Http2Connection$Listener;
.source "RealConnection.java"

# interfaces
.implements Lokhttp3/Connection;


# static fields
.field private static final MAX_TUNNEL_ATTEMPTS:I = 0x15

.field private static final NPE_THROW_WITH_NULL:Ljava/lang/String; = "throw with null exception"


# instance fields
.field public allocationLimit:I

.field public final allocations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/Reference",
            "<",
            "Lokhttp3/internal/connection/StreamAllocation;",
            ">;>;"
        }
    .end annotation
.end field

.field private final connectionPool:Lokhttp3/ConnectionPool;

.field private handshake:Lokhttp3/Handshake;

.field private http2Connection:Lokhttp3/internal/http2/Http2Connection;

.field public idleAtNanos:J

.field public noNewStreams:Z

.field private protocol:Lokhttp3/Protocol;

.field private rawSocket:Ljava/net/Socket;

.field private final route:Lokhttp3/Route;

.field private sink:Lokio/BufferedSink;

.field private socket:Ljava/net/Socket;

.field private source:Lokio/BufferedSource;

.field public successCount:I


# direct methods
.method public constructor <init>(Lokhttp3/ConnectionPool;Lokhttp3/Route;)V
    .registers 5
    .param p1, "connectionPool"    # Lokhttp3/ConnectionPool;
    .param p2, "route"    # Lokhttp3/Route;

    .prologue
    .line 118
    invoke-direct {p0}, Lokhttp3/internal/http2/Http2Connection$Listener;-><init>()V

    .line 110
    const/4 v0, 0x1

    iput v0, p0, Lokhttp3/internal/connection/RealConnection;->allocationLimit:I

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lokhttp3/internal/connection/RealConnection;->allocations:Ljava/util/List;

    .line 116
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lokhttp3/internal/connection/RealConnection;->idleAtNanos:J

    .line 119
    iput-object p1, p0, Lokhttp3/internal/connection/RealConnection;->connectionPool:Lokhttp3/ConnectionPool;

    .line 120
    iput-object p2, p0, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;

    .line 121
    return-void
.end method

.method private connectSocket(IILokhttp3/Call;Lokhttp3/EventListener;)V
    .registers 13
    .param p1, "connectTimeout"    # I
    .param p2, "readTimeout"    # I
    .param p3, "call"    # Lokhttp3/Call;
    .param p4, "eventListener"    # Lokhttp3/EventListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 236
    iget-object v5, p0, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;

    invoke-virtual {v5}, Lokhttp3/Route;->proxy()Ljava/net/Proxy;

    move-result-object v4

    .line 237
    .local v4, "proxy":Ljava/net/Proxy;
    iget-object v5, p0, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;

    invoke-virtual {v5}, Lokhttp3/Route;->address()Lokhttp3/Address;

    move-result-object v0

    .line 239
    .local v0, "address":Lokhttp3/Address;
    invoke-virtual {v4}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v5

    sget-object v6, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v5, v6, :cond_1c

    invoke-virtual {v4}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v5

    sget-object v6, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v5, v6, :cond_5c

    .line 240
    :cond_1c
    invoke-virtual {v0}, Lokhttp3/Address;->socketFactory()Ljavax/net/SocketFactory;

    move-result-object v5

    invoke-virtual {v5}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v5

    .line 241
    :goto_24
    iput-object v5, p0, Lokhttp3/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;

    .line 243
    iget-object v5, p0, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;

    invoke-virtual {v5}, Lokhttp3/Route;->socketAddress()Ljava/net/InetSocketAddress;

    move-result-object v5

    invoke-virtual {p4, p3, v5, v4}, Lokhttp3/EventListener;->connectStart(Lokhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;)V

    .line 244
    iget-object v5, p0, Lokhttp3/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;

    invoke-virtual {v5, p2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 246
    :try_start_34
    invoke-static {}, Lokhttp3/internal/platform/Platform;->get()Lokhttp3/internal/platform/Platform;

    move-result-object v5

    iget-object v6, p0, Lokhttp3/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;

    iget-object v7, p0, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;

    invoke-virtual {v7}, Lokhttp3/Route;->socketAddress()Ljava/net/InetSocketAddress;

    move-result-object v7

    invoke-virtual {v5, v6, v7, p1}, Lokhttp3/internal/platform/Platform;->connectSocket(Ljava/net/Socket;Ljava/net/InetSocketAddress;I)V
    :try_end_43
    .catch Ljava/net/ConnectException; {:try_start_34 .. :try_end_43} :catch_62

    .line 258
    :try_start_43
    iget-object v5, p0, Lokhttp3/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;

    invoke-static {v5}, Lokio/Okio;->source(Ljava/net/Socket;)Lokio/Source;

    move-result-object v5

    invoke-static {v5}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v5

    iput-object v5, p0, Lokhttp3/internal/connection/RealConnection;->source:Lokio/BufferedSource;

    .line 259
    iget-object v5, p0, Lokhttp3/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;

    invoke-static {v5}, Lokio/Okio;->sink(Ljava/net/Socket;)Lokio/Sink;

    move-result-object v5

    invoke-static {v5}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object v5

    iput-object v5, p0, Lokhttp3/internal/connection/RealConnection;->sink:Lokio/BufferedSink;
    :try_end_5b
    .catch Ljava/lang/NullPointerException; {:try_start_43 .. :try_end_5b} :catch_85

    .line 265
    :cond_5b
    return-void

    .line 241
    :cond_5c
    new-instance v5, Ljava/net/Socket;

    invoke-direct {v5, v4}, Ljava/net/Socket;-><init>(Ljava/net/Proxy;)V

    goto :goto_24

    .line 247
    :catch_62
    move-exception v2

    .line 248
    .local v2, "e":Ljava/net/ConnectException;
    new-instance v1, Ljava/net/ConnectException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to connect to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;

    invoke-virtual {v6}, Lokhttp3/Route;->socketAddress()Ljava/net/InetSocketAddress;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/net/ConnectException;-><init>(Ljava/lang/String;)V

    .line 249
    .local v1, "ce":Ljava/net/ConnectException;
    invoke-virtual {v1, v2}, Ljava/net/ConnectException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 250
    throw v1

    .line 260
    .end local v1    # "ce":Ljava/net/ConnectException;
    .end local v2    # "e":Ljava/net/ConnectException;
    :catch_85
    move-exception v3

    .line 261
    .local v3, "npe":Ljava/lang/NullPointerException;
    const-string v5, "throw with null exception"

    invoke-virtual {v3}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5b

    .line 262
    new-instance v5, Ljava/io/IOException;

    invoke-direct {v5, v3}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method

.method private connectTls(Lokhttp3/internal/connection/ConnectionSpecSelector;)V
    .registers 17
    .param p1, "connectionSpecSelector"    # Lokhttp3/internal/connection/ConnectionSpecSelector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 302
    iget-object v11, p0, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;

    invoke-virtual {v11}, Lokhttp3/Route;->address()Lokhttp3/Address;

    move-result-object v1

    .line 303
    .local v1, "address":Lokhttp3/Address;
    invoke-virtual {v1}, Lokhttp3/Address;->sslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v7

    .line 304
    .local v7, "sslSocketFactory":Ljavax/net/ssl/SSLSocketFactory;
    const/4 v9, 0x0

    .line 305
    .local v9, "success":Z
    const/4 v6, 0x0

    .line 308
    .local v6, "sslSocket":Ljavax/net/ssl/SSLSocket;
    :try_start_c
    iget-object v11, p0, Lokhttp3/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;

    .line 309
    invoke-virtual {v1}, Lokhttp3/Address;->url()Lokhttp3/HttpUrl;

    move-result-object v12

    invoke-virtual {v12}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1}, Lokhttp3/Address;->url()Lokhttp3/HttpUrl;

    move-result-object v13

    invoke-virtual {v13}, Lokhttp3/HttpUrl;->port()I

    move-result v13

    const/4 v14, 0x1

    .line 308
    invoke-virtual {v7, v11, v12, v13, v14}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v11

    move-object v0, v11

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    move-object v6, v0

    .line 312
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lokhttp3/internal/connection/ConnectionSpecSelector;->configureSecureSocket(Ljavax/net/ssl/SSLSocket;)Lokhttp3/ConnectionSpec;

    move-result-object v3

    .line 313
    .local v3, "connectionSpec":Lokhttp3/ConnectionSpec;
    invoke-virtual {v3}, Lokhttp3/ConnectionSpec;->supportsTlsExtensions()Z

    move-result v11

    if-eqz v11, :cond_46

    .line 314
    invoke-static {}, Lokhttp3/internal/platform/Platform;->get()Lokhttp3/internal/platform/Platform;

    move-result-object v11

    .line 315
    invoke-virtual {v1}, Lokhttp3/Address;->url()Lokhttp3/HttpUrl;

    move-result-object v12

    invoke-virtual {v12}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1}, Lokhttp3/Address;->protocols()Ljava/util/List;

    move-result-object v13

    .line 314
    invoke-virtual {v11, v6, v12, v13}, Lokhttp3/internal/platform/Platform;->configureTlsExtensions(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V

    .line 319
    :cond_46
    invoke-virtual {v6}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 321
    invoke-virtual {v6}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v8

    .line 322
    .local v8, "sslSocketSession":Ljavax/net/ssl/SSLSession;
    invoke-static {v8}, Lokhttp3/Handshake;->get(Ljavax/net/ssl/SSLSession;)Lokhttp3/Handshake;

    move-result-object v10

    .line 325
    .local v10, "unverifiedHandshake":Lokhttp3/Handshake;
    invoke-virtual {v1}, Lokhttp3/Address;->hostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v11

    invoke-virtual {v1}, Lokhttp3/Address;->url()Lokhttp3/HttpUrl;

    move-result-object v12

    invoke-virtual {v12}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12, v8}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v11

    if-nez v11, :cond_da

    .line 326
    invoke-virtual {v10}, Lokhttp3/Handshake;->peerCertificates()Ljava/util/List;

    move-result-object v11

    const/4 v12, 0x0

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509Certificate;

    .line 327
    .local v2, "cert":Ljava/security/cert/X509Certificate;
    new-instance v11, Ljavax/net/ssl/SSLPeerUnverifiedException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Hostname "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v1}, Lokhttp3/Address;->url()Lokhttp3/HttpUrl;

    move-result-object v13

    invoke-virtual {v13}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " not verified:\n    certificate: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 328
    invoke-static {v2}, Lokhttp3/CertificatePinner;->pin(Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\n    DN: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 329
    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v13

    invoke-interface {v13}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\n    subjectAltNames: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 330
    invoke-static {v2}, Lokhttp3/internal/tls/OkHostnameVerifier;->allSubjectAltNames(Ljava/security/cert/X509Certificate;)Ljava/util/List;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v11
    :try_end_bd
    .catch Ljava/lang/AssertionError; {:try_start_c .. :try_end_bd} :catch_bd
    .catchall {:try_start_c .. :try_end_bd} :catchall_ca

    .line 349
    .end local v2    # "cert":Ljava/security/cert/X509Certificate;
    .end local v3    # "connectionSpec":Lokhttp3/ConnectionSpec;
    .end local v8    # "sslSocketSession":Ljavax/net/ssl/SSLSession;
    .end local v10    # "unverifiedHandshake":Lokhttp3/Handshake;
    :catch_bd
    move-exception v4

    .line 350
    .local v4, "e":Ljava/lang/AssertionError;
    :try_start_be
    invoke-static {v4}, Lokhttp3/internal/Util;->isAndroidGetsocknameError(Ljava/lang/AssertionError;)Z

    move-result v11

    if-eqz v11, :cond_134

    new-instance v11, Ljava/io/IOException;

    invoke-direct {v11, v4}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v11
    :try_end_ca
    .catchall {:try_start_be .. :try_end_ca} :catchall_ca

    .line 353
    .end local v4    # "e":Ljava/lang/AssertionError;
    :catchall_ca
    move-exception v11

    if-eqz v6, :cond_d4

    .line 354
    invoke-static {}, Lokhttp3/internal/platform/Platform;->get()Lokhttp3/internal/platform/Platform;

    move-result-object v12

    invoke-virtual {v12, v6}, Lokhttp3/internal/platform/Platform;->afterHandshake(Ljavax/net/ssl/SSLSocket;)V

    .line 356
    :cond_d4
    if-nez v9, :cond_d9

    .line 357
    invoke-static {v6}, Lokhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    :cond_d9
    throw v11

    .line 334
    .restart local v3    # "connectionSpec":Lokhttp3/ConnectionSpec;
    .restart local v8    # "sslSocketSession":Ljavax/net/ssl/SSLSession;
    .restart local v10    # "unverifiedHandshake":Lokhttp3/Handshake;
    :cond_da
    :try_start_da
    invoke-virtual {v1}, Lokhttp3/Address;->certificatePinner()Lokhttp3/CertificatePinner;

    move-result-object v11

    invoke-virtual {v1}, Lokhttp3/Address;->url()Lokhttp3/HttpUrl;

    move-result-object v12

    invoke-virtual {v12}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v12

    .line 335
    invoke-virtual {v10}, Lokhttp3/Handshake;->peerCertificates()Ljava/util/List;

    move-result-object v13

    .line 334
    invoke-virtual {v11, v12, v13}, Lokhttp3/CertificatePinner;->check(Ljava/lang/String;Ljava/util/List;)V

    .line 338
    invoke-virtual {v3}, Lokhttp3/ConnectionSpec;->supportsTlsExtensions()Z

    move-result v11

    if-eqz v11, :cond_12f

    .line 339
    invoke-static {}, Lokhttp3/internal/platform/Platform;->get()Lokhttp3/internal/platform/Platform;

    move-result-object v11

    invoke-virtual {v11, v6}, Lokhttp3/internal/platform/Platform;->getSelectedProtocol(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;

    move-result-object v5

    .line 341
    .local v5, "maybeProtocol":Ljava/lang/String;
    :goto_fb
    iput-object v6, p0, Lokhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    .line 342
    iget-object v11, p0, Lokhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    invoke-static {v11}, Lokio/Okio;->source(Ljava/net/Socket;)Lokio/Source;

    move-result-object v11

    invoke-static {v11}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v11

    iput-object v11, p0, Lokhttp3/internal/connection/RealConnection;->source:Lokio/BufferedSource;

    .line 343
    iget-object v11, p0, Lokhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    invoke-static {v11}, Lokio/Okio;->sink(Ljava/net/Socket;)Lokio/Sink;

    move-result-object v11

    invoke-static {v11}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object v11

    iput-object v11, p0, Lokhttp3/internal/connection/RealConnection;->sink:Lokio/BufferedSink;

    .line 344
    iput-object v10, p0, Lokhttp3/internal/connection/RealConnection;->handshake:Lokhttp3/Handshake;

    .line 345
    if-eqz v5, :cond_131

    .line 346
    invoke-static {v5}, Lokhttp3/Protocol;->get(Ljava/lang/String;)Lokhttp3/Protocol;

    move-result-object v11

    .line 347
    :goto_11d
    iput-object v11, p0, Lokhttp3/internal/connection/RealConnection;->protocol:Lokhttp3/Protocol;
    :try_end_11f
    .catch Ljava/lang/AssertionError; {:try_start_da .. :try_end_11f} :catch_bd
    .catchall {:try_start_da .. :try_end_11f} :catchall_ca

    .line 348
    const/4 v9, 0x1

    .line 353
    if-eqz v6, :cond_129

    .line 354
    invoke-static {}, Lokhttp3/internal/platform/Platform;->get()Lokhttp3/internal/platform/Platform;

    move-result-object v11

    invoke-virtual {v11, v6}, Lokhttp3/internal/platform/Platform;->afterHandshake(Ljavax/net/ssl/SSLSocket;)V

    .line 356
    :cond_129
    if-nez v9, :cond_12e

    .line 357
    invoke-static {v6}, Lokhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    .line 360
    :cond_12e
    return-void

    .line 340
    .end local v5    # "maybeProtocol":Ljava/lang/String;
    :cond_12f
    const/4 v5, 0x0

    goto :goto_fb

    .line 347
    .restart local v5    # "maybeProtocol":Ljava/lang/String;
    :cond_131
    :try_start_131
    sget-object v11, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;
    :try_end_133
    .catch Ljava/lang/AssertionError; {:try_start_131 .. :try_end_133} :catch_bd
    .catchall {:try_start_131 .. :try_end_133} :catchall_ca

    goto :goto_11d

    .line 351
    .end local v3    # "connectionSpec":Lokhttp3/ConnectionSpec;
    .end local v5    # "maybeProtocol":Ljava/lang/String;
    .end local v8    # "sslSocketSession":Ljavax/net/ssl/SSLSession;
    .end local v10    # "unverifiedHandshake":Lokhttp3/Handshake;
    .restart local v4    # "e":Ljava/lang/AssertionError;
    :cond_134
    :try_start_134
    throw v4
    :try_end_135
    .catchall {:try_start_134 .. :try_end_135} :catchall_ca
.end method

.method private connectTunnel(IIILokhttp3/Call;Lokhttp3/EventListener;)V
    .registers 12
    .param p1, "connectTimeout"    # I
    .param p2, "readTimeout"    # I
    .param p3, "writeTimeout"    # I
    .param p4, "call"    # Lokhttp3/Call;
    .param p5, "eventListener"    # Lokhttp3/EventListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 215
    invoke-direct {p0}, Lokhttp3/internal/connection/RealConnection;->createTunnelRequest()Lokhttp3/Request;

    move-result-object v1

    .line 216
    .local v1, "tunnelRequest":Lokhttp3/Request;
    invoke-virtual {v1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v2

    .line 217
    .local v2, "url":Lokhttp3/HttpUrl;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a
    const/16 v3, 0x15

    if-ge v0, v3, :cond_17

    .line 218
    invoke-direct {p0, p1, p2, p4, p5}, Lokhttp3/internal/connection/RealConnection;->connectSocket(IILokhttp3/Call;Lokhttp3/EventListener;)V

    .line 219
    invoke-direct {p0, p2, p3, v1, v2}, Lokhttp3/internal/connection/RealConnection;->createTunnel(IILokhttp3/Request;Lokhttp3/HttpUrl;)Lokhttp3/Request;

    move-result-object v1

    .line 221
    if-nez v1, :cond_18

    .line 231
    :cond_17
    return-void

    .line 225
    :cond_18
    iget-object v3, p0, Lokhttp3/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;

    invoke-static {v3}, Lokhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    .line 226
    iput-object v5, p0, Lokhttp3/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;

    .line 227
    iput-object v5, p0, Lokhttp3/internal/connection/RealConnection;->sink:Lokio/BufferedSink;

    .line 228
    iput-object v5, p0, Lokhttp3/internal/connection/RealConnection;->source:Lokio/BufferedSource;

    .line 229
    iget-object v3, p0, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;

    invoke-virtual {v3}, Lokhttp3/Route;->socketAddress()Ljava/net/InetSocketAddress;

    move-result-object v3

    iget-object v4, p0, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;

    invoke-virtual {v4}, Lokhttp3/Route;->proxy()Ljava/net/Proxy;

    move-result-object v4

    invoke-virtual {p5, p4, v3, v4, v5}, Lokhttp3/EventListener;->connectEnd(Lokhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lokhttp3/Protocol;)V

    .line 217
    add-int/lit8 v0, v0, 0x1

    goto :goto_a
.end method

.method private createTunnel(IILokhttp3/Request;Lokhttp3/HttpUrl;)Lokhttp3/Request;
    .registers 16
    .param p1, "readTimeout"    # I
    .param p2, "writeTimeout"    # I
    .param p3, "tunnelRequest"    # Lokhttp3/Request;
    .param p4, "url"    # Lokhttp3/HttpUrl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 369
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CONNECT "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {p4, v8}, Lokhttp3/internal/Util;->hostHeader(Lokhttp3/HttpUrl;Z)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " HTTP/1.1"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 371
    .local v1, "requestLine":Ljava/lang/String;
    :cond_1f
    new-instance v5, Lokhttp3/internal/http1/Http1Codec;

    iget-object v7, p0, Lokhttp3/internal/connection/RealConnection;->source:Lokio/BufferedSource;

    iget-object v8, p0, Lokhttp3/internal/connection/RealConnection;->sink:Lokio/BufferedSink;

    invoke-direct {v5, v6, v6, v7, v8}, Lokhttp3/internal/http1/Http1Codec;-><init>(Lokhttp3/OkHttpClient;Lokhttp3/internal/connection/StreamAllocation;Lokio/BufferedSource;Lokio/BufferedSink;)V

    .line 372
    .local v5, "tunnelConnection":Lokhttp3/internal/http1/Http1Codec;
    iget-object v7, p0, Lokhttp3/internal/connection/RealConnection;->source:Lokio/BufferedSource;

    invoke-interface {v7}, Lokio/BufferedSource;->timeout()Lokio/Timeout;

    move-result-object v7

    int-to-long v8, p1

    sget-object v10, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v7, v8, v9, v10}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 373
    iget-object v7, p0, Lokhttp3/internal/connection/RealConnection;->sink:Lokio/BufferedSink;

    invoke-interface {v7}, Lokio/BufferedSink;->timeout()Lokio/Timeout;

    move-result-object v7

    int-to-long v8, p2

    sget-object v10, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v7, v8, v9, v10}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 374
    invoke-virtual {p3}, Lokhttp3/Request;->headers()Lokhttp3/Headers;

    move-result-object v7

    invoke-virtual {v5, v7, v1}, Lokhttp3/internal/http1/Http1Codec;->writeRequest(Lokhttp3/Headers;Ljava/lang/String;)V

    .line 375
    invoke-virtual {v5}, Lokhttp3/internal/http1/Http1Codec;->finishRequest()V

    .line 376
    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Lokhttp3/internal/http1/Http1Codec;->readResponseHeaders(Z)Lokhttp3/Response$Builder;

    move-result-object v7

    .line 377
    invoke-virtual {v7, p3}, Lokhttp3/Response$Builder;->request(Lokhttp3/Request;)Lokhttp3/Response$Builder;

    move-result-object v7

    .line 378
    invoke-virtual {v7}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object v4

    .line 381
    .local v4, "response":Lokhttp3/Response;
    invoke-static {v4}, Lokhttp3/internal/http/HttpHeaders;->contentLength(Lokhttp3/Response;)J

    move-result-wide v2

    .line 382
    .local v2, "contentLength":J
    const-wide/16 v8, -0x1

    cmp-long v7, v2, v8

    if-nez v7, :cond_63

    .line 383
    const-wide/16 v2, 0x0

    .line 385
    :cond_63
    invoke-virtual {v5, v2, v3}, Lokhttp3/internal/http1/Http1Codec;->newFixedLengthSource(J)Lokio/Source;

    move-result-object v0

    .line 386
    .local v0, "body":Lokio/Source;
    const v7, 0x7fffffff

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v7, v8}, Lokhttp3/internal/Util;->skipAll(Lokio/Source;ILjava/util/concurrent/TimeUnit;)Z

    .line 387
    invoke-interface {v0}, Lokio/Source;->close()V

    .line 389
    invoke-virtual {v4}, Lokhttp3/Response;->code()I

    move-result v7

    sparse-switch v7, :sswitch_data_e0

    .line 410
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unexpected response code for CONNECT: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 411
    invoke-virtual {v4}, Lokhttp3/Response;->code()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 395
    :sswitch_96
    iget-object v7, p0, Lokhttp3/internal/connection/RealConnection;->source:Lokio/BufferedSource;

    invoke-interface {v7}, Lokio/BufferedSource;->buffer()Lokio/Buffer;

    move-result-object v7

    invoke-virtual {v7}, Lokio/Buffer;->exhausted()Z

    move-result v7

    if-eqz v7, :cond_ae

    iget-object v7, p0, Lokhttp3/internal/connection/RealConnection;->sink:Lokio/BufferedSink;

    invoke-interface {v7}, Lokio/BufferedSink;->buffer()Lokio/Buffer;

    move-result-object v7

    invoke-virtual {v7}, Lokio/Buffer;->exhausted()Z

    move-result v7

    if-nez v7, :cond_df

    .line 396
    :cond_ae
    new-instance v6, Ljava/io/IOException;

    const-string v7, "TLS tunnel buffered too many bytes!"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 401
    :sswitch_b6
    iget-object v7, p0, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;

    invoke-virtual {v7}, Lokhttp3/Route;->address()Lokhttp3/Address;

    move-result-object v7

    invoke-virtual {v7}, Lokhttp3/Address;->proxyAuthenticator()Lokhttp3/Authenticator;

    move-result-object v7

    iget-object v8, p0, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;

    invoke-interface {v7, v8, v4}, Lokhttp3/Authenticator;->authenticate(Lokhttp3/Route;Lokhttp3/Response;)Lokhttp3/Request;

    move-result-object p3

    .line 402
    if-nez p3, :cond_d0

    new-instance v6, Ljava/io/IOException;

    const-string v7, "Failed to authenticate with proxy"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 404
    :cond_d0
    const-string v7, "close"

    const-string v8, "Connection"

    invoke-virtual {v4, v8}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1f

    move-object v6, p3

    .line 405
    :cond_df
    return-object v6

    .line 389
    :sswitch_data_e0
    .sparse-switch
        0xc8 -> :sswitch_96
        0x197 -> :sswitch_b6
    .end sparse-switch
.end method

.method private createTunnelRequest()Lokhttp3/Request;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v8, -0x1

    .line 426
    new-instance v3, Lokhttp3/Request$Builder;

    invoke-direct {v3}, Lokhttp3/Request$Builder;-><init>()V

    iget-object v4, p0, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;

    .line 427
    invoke-virtual {v4}, Lokhttp3/Route;->address()Lokhttp3/Address;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp3/Address;->url()Lokhttp3/HttpUrl;

    move-result-object v4

    invoke-virtual {v3, v4}, Lokhttp3/Request$Builder;->url(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;

    move-result-object v3

    const-string v4, "CONNECT"

    const/4 v5, 0x0

    .line 428
    invoke-virtual {v3, v4, v5}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v3

    const-string v4, "Host"

    iget-object v5, p0, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;

    .line 429
    invoke-virtual {v5}, Lokhttp3/Route;->address()Lokhttp3/Address;

    move-result-object v5

    invoke-virtual {v5}, Lokhttp3/Address;->url()Lokhttp3/HttpUrl;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lokhttp3/internal/Util;->hostHeader(Lokhttp3/HttpUrl;Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v3

    const-string v4, "Proxy-Connection"

    const-string v5, "Keep-Alive"

    .line 430
    invoke-virtual {v3, v4, v5}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v3

    const-string v4, "User-Agent"

    .line 431
    invoke-static {}, Lokhttp3/internal/Version;->userAgent()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v3

    .line 432
    invoke-virtual {v3}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v2

    .line 434
    .local v2, "proxyConnectRequest":Lokhttp3/Request;
    new-instance v3, Lokhttp3/Response$Builder;

    invoke-direct {v3}, Lokhttp3/Response$Builder;-><init>()V

    .line 435
    invoke-virtual {v3, v2}, Lokhttp3/Response$Builder;->request(Lokhttp3/Request;)Lokhttp3/Response$Builder;

    move-result-object v3

    sget-object v4, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;

    .line 436
    invoke-virtual {v3, v4}, Lokhttp3/Response$Builder;->protocol(Lokhttp3/Protocol;)Lokhttp3/Response$Builder;

    move-result-object v3

    const/16 v4, 0x197

    .line 437
    invoke-virtual {v3, v4}, Lokhttp3/Response$Builder;->code(I)Lokhttp3/Response$Builder;

    move-result-object v3

    const-string v4, "Preemptive Authenticate"

    .line 438
    invoke-virtual {v3, v4}, Lokhttp3/Response$Builder;->message(Ljava/lang/String;)Lokhttp3/Response$Builder;

    move-result-object v3

    sget-object v4, Lokhttp3/internal/Util;->EMPTY_RESPONSE:Lokhttp3/ResponseBody;

    .line 439
    invoke-virtual {v3, v4}, Lokhttp3/Response$Builder;->body(Lokhttp3/ResponseBody;)Lokhttp3/Response$Builder;

    move-result-object v3

    .line 440
    invoke-virtual {v3, v8, v9}, Lokhttp3/Response$Builder;->sentRequestAtMillis(J)Lokhttp3/Response$Builder;

    move-result-object v3

    .line 441
    invoke-virtual {v3, v8, v9}, Lokhttp3/Response$Builder;->receivedResponseAtMillis(J)Lokhttp3/Response$Builder;

    move-result-object v3

    const-string v4, "Proxy-Authenticate"

    const-string v5, "OkHttp-Preemptive"

    .line 442
    invoke-virtual {v3, v4, v5}, Lokhttp3/Response$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Response$Builder;

    move-result-object v3

    .line 443
    invoke-virtual {v3}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object v1

    .line 445
    .local v1, "fakeAuthChallengeResponse":Lokhttp3/Response;
    iget-object v3, p0, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;

    invoke-virtual {v3}, Lokhttp3/Route;->address()Lokhttp3/Address;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/Address;->proxyAuthenticator()Lokhttp3/Authenticator;

    move-result-object v3

    iget-object v4, p0, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;

    .line 446
    invoke-interface {v3, v4, v1}, Lokhttp3/Authenticator;->authenticate(Lokhttp3/Route;Lokhttp3/Response;)Lokhttp3/Request;

    move-result-object v0

    .line 448
    .local v0, "authenticatedRequest":Lokhttp3/Request;
    if-eqz v0, :cond_8f

    .end local v0    # "authenticatedRequest":Lokhttp3/Request;
    :goto_8e
    return-object v0

    .restart local v0    # "authenticatedRequest":Lokhttp3/Request;
    :cond_8f
    move-object v0, v2

    .line 450
    goto :goto_8e
.end method

.method private establishProtocol(Lokhttp3/internal/connection/ConnectionSpecSelector;ILokhttp3/Call;Lokhttp3/EventListener;)V
    .registers 7
    .param p1, "connectionSpecSelector"    # Lokhttp3/internal/connection/ConnectionSpecSelector;
    .param p2, "pingIntervalMillis"    # I
    .param p3, "call"    # Lokhttp3/Call;
    .param p4, "eventListener"    # Lokhttp3/EventListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 269
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;

    invoke-virtual {v0}, Lokhttp3/Route;->address()Lokhttp3/Address;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Address;->sslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    if-nez v0, :cond_33

    .line 270
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;

    invoke-virtual {v0}, Lokhttp3/Route;->address()Lokhttp3/Address;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Address;->protocols()Ljava/util/List;

    move-result-object v0

    sget-object v1, Lokhttp3/Protocol;->H2_PRIOR_KNOWLEDGE:Lokhttp3/Protocol;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 271
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;

    iput-object v0, p0, Lokhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    .line 272
    sget-object v0, Lokhttp3/Protocol;->H2_PRIOR_KNOWLEDGE:Lokhttp3/Protocol;

    iput-object v0, p0, Lokhttp3/internal/connection/RealConnection;->protocol:Lokhttp3/Protocol;

    .line 273
    invoke-direct {p0, p2}, Lokhttp3/internal/connection/RealConnection;->startHttp2(I)V

    .line 289
    :cond_29
    :goto_29
    return-void

    .line 277
    :cond_2a
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;

    iput-object v0, p0, Lokhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    .line 278
    sget-object v0, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;

    iput-object v0, p0, Lokhttp3/internal/connection/RealConnection;->protocol:Lokhttp3/Protocol;

    goto :goto_29

    .line 282
    :cond_33
    invoke-virtual {p4, p3}, Lokhttp3/EventListener;->secureConnectStart(Lokhttp3/Call;)V

    .line 283
    invoke-direct {p0, p1}, Lokhttp3/internal/connection/RealConnection;->connectTls(Lokhttp3/internal/connection/ConnectionSpecSelector;)V

    .line 284
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->handshake:Lokhttp3/Handshake;

    invoke-virtual {p4, p3, v0}, Lokhttp3/EventListener;->secureConnectEnd(Lokhttp3/Call;Lokhttp3/Handshake;)V

    .line 286
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->protocol:Lokhttp3/Protocol;

    sget-object v1, Lokhttp3/Protocol;->HTTP_2:Lokhttp3/Protocol;

    if-ne v0, v1, :cond_29

    .line 287
    invoke-direct {p0, p2}, Lokhttp3/internal/connection/RealConnection;->startHttp2(I)V

    goto :goto_29
.end method

.method private startHttp2(I)V
    .registers 7
    .param p1, "pingIntervalMillis"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 292
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 293
    new-instance v0, Lokhttp3/internal/http2/Http2Connection$Builder;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lokhttp3/internal/http2/Http2Connection$Builder;-><init>(Z)V

    iget-object v1, p0, Lokhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    iget-object v2, p0, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;

    .line 294
    invoke-virtual {v2}, Lokhttp3/Route;->address()Lokhttp3/Address;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/Address;->url()Lokhttp3/HttpUrl;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lokhttp3/internal/connection/RealConnection;->source:Lokio/BufferedSource;

    iget-object v4, p0, Lokhttp3/internal/connection/RealConnection;->sink:Lokio/BufferedSink;

    invoke-virtual {v0, v1, v2, v3, v4}, Lokhttp3/internal/http2/Http2Connection$Builder;->socket(Ljava/net/Socket;Ljava/lang/String;Lokio/BufferedSource;Lokio/BufferedSink;)Lokhttp3/internal/http2/Http2Connection$Builder;

    move-result-object v0

    .line 295
    invoke-virtual {v0, p0}, Lokhttp3/internal/http2/Http2Connection$Builder;->listener(Lokhttp3/internal/http2/Http2Connection$Listener;)Lokhttp3/internal/http2/Http2Connection$Builder;

    move-result-object v0

    .line 296
    invoke-virtual {v0, p1}, Lokhttp3/internal/http2/Http2Connection$Builder;->pingIntervalMillis(I)Lokhttp3/internal/http2/Http2Connection$Builder;

    move-result-object v0

    .line 297
    invoke-virtual {v0}, Lokhttp3/internal/http2/Http2Connection$Builder;->build()Lokhttp3/internal/http2/Http2Connection;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/internal/connection/RealConnection;->http2Connection:Lokhttp3/internal/http2/Http2Connection;

    .line 298
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->http2Connection:Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {v0}, Lokhttp3/internal/http2/Http2Connection;->start()V

    .line 299
    return-void
.end method

.method public static testConnection(Lokhttp3/ConnectionPool;Lokhttp3/Route;Ljava/net/Socket;J)Lokhttp3/internal/connection/RealConnection;
    .registers 6
    .param p0, "connectionPool"    # Lokhttp3/ConnectionPool;
    .param p1, "route"    # Lokhttp3/Route;
    .param p2, "socket"    # Ljava/net/Socket;
    .param p3, "idleAtNanos"    # J

    .prologue
    .line 125
    new-instance v0, Lokhttp3/internal/connection/RealConnection;

    invoke-direct {v0, p0, p1}, Lokhttp3/internal/connection/RealConnection;-><init>(Lokhttp3/ConnectionPool;Lokhttp3/Route;)V

    .line 126
    .local v0, "result":Lokhttp3/internal/connection/RealConnection;
    iput-object p2, v0, Lokhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    .line 127
    iput-wide p3, v0, Lokhttp3/internal/connection/RealConnection;->idleAtNanos:J

    .line 128
    return-object v0
.end method


# virtual methods
.method public cancel()V
    .registers 2

    .prologue
    .line 539
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;

    invoke-static {v0}, Lokhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    .line 540
    return-void
.end method

.method public connect(IIIIZLokhttp3/Call;Lokhttp3/EventListener;)V
    .registers 22
    .param p1, "connectTimeout"    # I
    .param p2, "readTimeout"    # I
    .param p3, "writeTimeout"    # I
    .param p4, "pingIntervalMillis"    # I
    .param p5, "connectionRetryEnabled"    # Z
    .param p6, "call"    # Lokhttp3/Call;
    .param p7, "eventListener"    # Lokhttp3/EventListener;

    .prologue
    .line 134
    iget-object v3, p0, Lokhttp3/internal/connection/RealConnection;->protocol:Lokhttp3/Protocol;

    if-eqz v3, :cond_c

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "already connected"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 136
    :cond_c
    const/4 v13, 0x0

    .line 137
    .local v13, "routeException":Lokhttp3/internal/connection/RouteException;
    iget-object v3, p0, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;

    invoke-virtual {v3}, Lokhttp3/Route;->address()Lokhttp3/Address;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/Address;->connectionSpecs()Ljava/util/List;

    move-result-object v10

    .line 138
    .local v10, "connectionSpecs":Ljava/util/List;, "Ljava/util/List<Lokhttp3/ConnectionSpec;>;"
    new-instance v9, Lokhttp3/internal/connection/ConnectionSpecSelector;

    invoke-direct {v9, v10}, Lokhttp3/internal/connection/ConnectionSpecSelector;-><init>(Ljava/util/List;)V

    .line 140
    .local v9, "connectionSpecSelector":Lokhttp3/internal/connection/ConnectionSpecSelector;
    iget-object v3, p0, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;

    invoke-virtual {v3}, Lokhttp3/Route;->address()Lokhttp3/Address;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/Address;->sslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v3

    if-nez v3, :cond_79

    .line 141
    sget-object v3, Lokhttp3/ConnectionSpec;->CLEARTEXT:Lokhttp3/ConnectionSpec;

    invoke-interface {v10, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3d

    .line 142
    new-instance v3, Lokhttp3/internal/connection/RouteException;

    new-instance v4, Ljava/net/UnknownServiceException;

    const-string v5, "CLEARTEXT communication not enabled for client"

    invoke-direct {v4, v5}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Lokhttp3/internal/connection/RouteException;-><init>(Ljava/io/IOException;)V

    throw v3

    .line 145
    :cond_3d
    iget-object v3, p0, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;

    invoke-virtual {v3}, Lokhttp3/Route;->address()Lokhttp3/Address;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/Address;->url()Lokhttp3/HttpUrl;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v12

    .line 146
    .local v12, "host":Ljava/lang/String;
    invoke-static {}, Lokhttp3/internal/platform/Platform;->get()Lokhttp3/internal/platform/Platform;

    move-result-object v3

    invoke-virtual {v3, v12}, Lokhttp3/internal/platform/Platform;->isCleartextTrafficPermitted(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_98

    .line 147
    new-instance v3, Lokhttp3/internal/connection/RouteException;

    new-instance v4, Ljava/net/UnknownServiceException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CLEARTEXT communication to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " not permitted by network security policy"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Lokhttp3/internal/connection/RouteException;-><init>(Ljava/io/IOException;)V

    throw v3

    .line 151
    .end local v12    # "host":Ljava/lang/String;
    :cond_79
    iget-object v3, p0, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;

    invoke-virtual {v3}, Lokhttp3/Route;->address()Lokhttp3/Address;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/Address;->protocols()Ljava/util/List;

    move-result-object v3

    sget-object v4, Lokhttp3/Protocol;->H2_PRIOR_KNOWLEDGE:Lokhttp3/Protocol;

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_98

    .line 152
    new-instance v3, Lokhttp3/internal/connection/RouteException;

    new-instance v4, Ljava/net/UnknownServiceException;

    const-string v5, "H2_PRIOR_KNOWLEDGE cannot be used with HTTPS"

    invoke-direct {v4, v5}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Lokhttp3/internal/connection/RouteException;-><init>(Ljava/io/IOException;)V

    throw v3

    .line 159
    :cond_98
    :try_start_98
    iget-object v3, p0, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;

    invoke-virtual {v3}, Lokhttp3/Route;->requiresTunnel()Z

    move-result v3

    if-eqz v3, :cond_ca

    move-object v3, p0

    move v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    .line 160
    invoke-direct/range {v3 .. v8}, Lokhttp3/internal/connection/RealConnection;->connectTunnel(IIILokhttp3/Call;Lokhttp3/EventListener;)V

    .line 161
    iget-object v3, p0, Lokhttp3/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;
    :try_end_af
    .catch Ljava/io/IOException; {:try_start_98 .. :try_end_af} :catch_f2

    if-nez v3, :cond_d3

    .line 196
    :goto_b1
    iget-object v3, p0, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;

    invoke-virtual {v3}, Lokhttp3/Route;->requiresTunnel()Z

    move-result v3

    if-eqz v3, :cond_13a

    iget-object v3, p0, Lokhttp3/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;

    if-nez v3, :cond_13a

    .line 197
    new-instance v11, Ljava/net/ProtocolException;

    const-string v3, "Too many tunnel connections attempted: 21"

    invoke-direct {v11, v3}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 199
    .local v11, "exception":Ljava/net/ProtocolException;
    new-instance v3, Lokhttp3/internal/connection/RouteException;

    invoke-direct {v3, v11}, Lokhttp3/internal/connection/RouteException;-><init>(Ljava/io/IOException;)V

    throw v3

    .line 166
    .end local v11    # "exception":Ljava/net/ProtocolException;
    :cond_ca
    :try_start_ca
    move/from16 v0, p2

    move-object/from16 v1, p6

    move-object/from16 v2, p7

    invoke-direct {p0, p1, v0, v1, v2}, Lokhttp3/internal/connection/RealConnection;->connectSocket(IILokhttp3/Call;Lokhttp3/EventListener;)V

    .line 168
    :cond_d3
    move/from16 v0, p4

    move-object/from16 v1, p6

    move-object/from16 v2, p7

    invoke-direct {p0, v9, v0, v1, v2}, Lokhttp3/internal/connection/RealConnection;->establishProtocol(Lokhttp3/internal/connection/ConnectionSpecSelector;ILokhttp3/Call;Lokhttp3/EventListener;)V

    .line 169
    iget-object v3, p0, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;

    invoke-virtual {v3}, Lokhttp3/Route;->socketAddress()Ljava/net/InetSocketAddress;

    move-result-object v3

    iget-object v4, p0, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;

    invoke-virtual {v4}, Lokhttp3/Route;->proxy()Ljava/net/Proxy;

    move-result-object v4

    iget-object v5, p0, Lokhttp3/internal/connection/RealConnection;->protocol:Lokhttp3/Protocol;

    move-object/from16 v0, p7

    move-object/from16 v1, p6

    invoke-virtual {v0, v1, v3, v4, v5}, Lokhttp3/EventListener;->connectEnd(Lokhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lokhttp3/Protocol;)V
    :try_end_f1
    .catch Ljava/io/IOException; {:try_start_ca .. :try_end_f1} :catch_f2

    goto :goto_b1

    .line 171
    :catch_f2
    move-exception v8

    .line 172
    .local v8, "e":Ljava/io/IOException;
    iget-object v3, p0, Lokhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    invoke-static {v3}, Lokhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    .line 173
    iget-object v3, p0, Lokhttp3/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;

    invoke-static {v3}, Lokhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    .line 174
    const/4 v3, 0x0

    iput-object v3, p0, Lokhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    .line 175
    const/4 v3, 0x0

    iput-object v3, p0, Lokhttp3/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;

    .line 176
    const/4 v3, 0x0

    iput-object v3, p0, Lokhttp3/internal/connection/RealConnection;->source:Lokio/BufferedSource;

    .line 177
    const/4 v3, 0x0

    iput-object v3, p0, Lokhttp3/internal/connection/RealConnection;->sink:Lokio/BufferedSink;

    .line 178
    const/4 v3, 0x0

    iput-object v3, p0, Lokhttp3/internal/connection/RealConnection;->handshake:Lokhttp3/Handshake;

    .line 179
    const/4 v3, 0x0

    iput-object v3, p0, Lokhttp3/internal/connection/RealConnection;->protocol:Lokhttp3/Protocol;

    .line 180
    const/4 v3, 0x0

    iput-object v3, p0, Lokhttp3/internal/connection/RealConnection;->http2Connection:Lokhttp3/internal/http2/Http2Connection;

    .line 182
    iget-object v3, p0, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;

    invoke-virtual {v3}, Lokhttp3/Route;->socketAddress()Ljava/net/InetSocketAddress;

    move-result-object v5

    iget-object v3, p0, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;

    invoke-virtual {v3}, Lokhttp3/Route;->proxy()Ljava/net/Proxy;

    move-result-object v6

    const/4 v7, 0x0

    move-object/from16 v3, p7

    move-object/from16 v4, p6

    invoke-virtual/range {v3 .. v8}, Lokhttp3/EventListener;->connectFailed(Lokhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lokhttp3/Protocol;Ljava/io/IOException;)V

    .line 184
    if-nez v13, :cond_136

    .line 185
    new-instance v13, Lokhttp3/internal/connection/RouteException;

    .end local v13    # "routeException":Lokhttp3/internal/connection/RouteException;
    invoke-direct {v13, v8}, Lokhttp3/internal/connection/RouteException;-><init>(Ljava/io/IOException;)V

    .line 190
    .restart local v13    # "routeException":Lokhttp3/internal/connection/RouteException;
    :goto_12d
    if-eqz p5, :cond_135

    invoke-virtual {v9, v8}, Lokhttp3/internal/connection/ConnectionSpecSelector;->connectionFailed(Ljava/io/IOException;)Z

    move-result v3

    if-nez v3, :cond_98

    .line 191
    :cond_135
    throw v13

    .line 187
    :cond_136
    invoke-virtual {v13, v8}, Lokhttp3/internal/connection/RouteException;->addConnectException(Ljava/io/IOException;)V

    goto :goto_12d

    .line 202
    .end local v8    # "e":Ljava/io/IOException;
    :cond_13a
    iget-object v3, p0, Lokhttp3/internal/connection/RealConnection;->http2Connection:Lokhttp3/internal/http2/Http2Connection;

    if-eqz v3, :cond_14a

    .line 203
    iget-object v4, p0, Lokhttp3/internal/connection/RealConnection;->connectionPool:Lokhttp3/ConnectionPool;

    monitor-enter v4

    .line 204
    :try_start_141
    iget-object v3, p0, Lokhttp3/internal/connection/RealConnection;->http2Connection:Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {v3}, Lokhttp3/internal/http2/Http2Connection;->maxConcurrentStreams()I

    move-result v3

    iput v3, p0, Lokhttp3/internal/connection/RealConnection;->allocationLimit:I

    .line 205
    monitor-exit v4

    .line 207
    :cond_14a
    return-void

    .line 205
    :catchall_14b
    move-exception v3

    monitor-exit v4
    :try_end_14d
    .catchall {:try_start_141 .. :try_end_14d} :catchall_14b

    throw v3
.end method

.method public handshake()Lokhttp3/Handshake;
    .registers 2

    .prologue
    .line 591
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->handshake:Lokhttp3/Handshake;

    return-object v0
.end method

.method public isEligible(Lokhttp3/Address;Lokhttp3/Route;)Z
    .registers 9
    .param p1, "address"    # Lokhttp3/Address;
    .param p2, "route"    # Lokhttp3/Route;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 459
    iget-object v3, p0, Lokhttp3/internal/connection/RealConnection;->allocations:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget v4, p0, Lokhttp3/internal/connection/RealConnection;->allocationLimit:I

    if-ge v3, v4, :cond_10

    iget-boolean v3, p0, Lokhttp3/internal/connection/RealConnection;->noNewStreams:Z

    if-eqz v3, :cond_11

    .line 496
    :cond_10
    :goto_10
    return v1

    .line 462
    :cond_11
    sget-object v3, Lokhttp3/internal/Internal;->instance:Lokhttp3/internal/Internal;

    iget-object v4, p0, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;

    invoke-virtual {v4}, Lokhttp3/Route;->address()Lokhttp3/Address;

    move-result-object v4

    invoke-virtual {v3, v4, p1}, Lokhttp3/internal/Internal;->equalsNonHost(Lokhttp3/Address;Lokhttp3/Address;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 465
    invoke-virtual {p1}, Lokhttp3/Address;->url()Lokhttp3/HttpUrl;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lokhttp3/internal/connection/RealConnection;->route()Lokhttp3/Route;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp3/Route;->address()Lokhttp3/Address;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp3/Address;->url()Lokhttp3/HttpUrl;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3f

    move v1, v2

    .line 466
    goto :goto_10

    .line 475
    :cond_3f
    iget-object v3, p0, Lokhttp3/internal/connection/RealConnection;->http2Connection:Lokhttp3/internal/http2/Http2Connection;

    if-eqz v3, :cond_10

    .line 480
    if-eqz p2, :cond_10

    .line 481
    invoke-virtual {p2}, Lokhttp3/Route;->proxy()Ljava/net/Proxy;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v3

    sget-object v4, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-ne v3, v4, :cond_10

    .line 482
    iget-object v3, p0, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;

    invoke-virtual {v3}, Lokhttp3/Route;->proxy()Ljava/net/Proxy;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v3

    sget-object v4, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-ne v3, v4, :cond_10

    .line 483
    iget-object v3, p0, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;

    invoke-virtual {v3}, Lokhttp3/Route;->socketAddress()Ljava/net/InetSocketAddress;

    move-result-object v3

    invoke-virtual {p2}, Lokhttp3/Route;->socketAddress()Ljava/net/InetSocketAddress;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/net/InetSocketAddress;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 486
    invoke-virtual {p2}, Lokhttp3/Route;->address()Lokhttp3/Address;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/Address;->hostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v3

    sget-object v4, Lokhttp3/internal/tls/OkHostnameVerifier;->INSTANCE:Lokhttp3/internal/tls/OkHostnameVerifier;

    if-ne v3, v4, :cond_10

    .line 487
    invoke-virtual {p1}, Lokhttp3/Address;->url()Lokhttp3/HttpUrl;

    move-result-object v3

    invoke-virtual {p0, v3}, Lokhttp3/internal/connection/RealConnection;->supportsUrl(Lokhttp3/HttpUrl;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 491
    :try_start_85
    invoke-virtual {p1}, Lokhttp3/Address;->certificatePinner()Lokhttp3/CertificatePinner;

    move-result-object v3

    invoke-virtual {p1}, Lokhttp3/Address;->url()Lokhttp3/HttpUrl;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lokhttp3/internal/connection/RealConnection;->handshake()Lokhttp3/Handshake;

    move-result-object v5

    invoke-virtual {v5}, Lokhttp3/Handshake;->peerCertificates()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lokhttp3/CertificatePinner;->check(Ljava/lang/String;Ljava/util/List;)V
    :try_end_9c
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_85 .. :try_end_9c} :catch_9f

    move v1, v2

    .line 496
    goto/16 :goto_10

    .line 492
    :catch_9f
    move-exception v0

    .line 493
    .local v0, "e":Ljavax/net/ssl/SSLPeerUnverifiedException;
    goto/16 :goto_10
.end method

.method public isHealthy(Z)Z
    .registers 8
    .param p1, "doExtensiveChecks"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 548
    iget-object v4, p0, Lokhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->isClosed()Z

    move-result v4

    if-nez v4, :cond_1a

    iget-object v4, p0, Lokhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v4

    if-nez v4, :cond_1a

    iget-object v4, p0, Lokhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v4

    if-eqz v4, :cond_1c

    :cond_1a
    move v2, v3

    .line 575
    :cond_1b
    :goto_1b
    return v2

    .line 552
    :cond_1c
    iget-object v4, p0, Lokhttp3/internal/connection/RealConnection;->http2Connection:Lokhttp3/internal/http2/Http2Connection;

    if-eqz v4, :cond_2a

    .line 553
    iget-object v4, p0, Lokhttp3/internal/connection/RealConnection;->http2Connection:Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {v4}, Lokhttp3/internal/http2/Http2Connection;->isShutdown()Z

    move-result v4

    if-eqz v4, :cond_1b

    move v2, v3

    goto :goto_1b

    .line 556
    :cond_2a
    if-eqz p1, :cond_1b

    .line 558
    :try_start_2c
    iget-object v4, p0, Lokhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->getSoTimeout()I
    :try_end_31
    .catch Ljava/net/SocketTimeoutException; {:try_start_2c .. :try_end_31} :catch_4d
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_31} :catch_56

    move-result v1

    .line 560
    .local v1, "readTimeout":I
    :try_start_32
    iget-object v4, p0, Lokhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 561
    iget-object v4, p0, Lokhttp3/internal/connection/RealConnection;->source:Lokio/BufferedSource;

    invoke-interface {v4}, Lokio/BufferedSource;->exhausted()Z
    :try_end_3d
    .catchall {:try_start_32 .. :try_end_3d} :catchall_4f

    move-result v4

    if-eqz v4, :cond_47

    .line 566
    :try_start_40
    iget-object v4, p0, Lokhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v4, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    move v2, v3

    .line 562
    goto :goto_1b

    .line 566
    :cond_47
    iget-object v4, p0, Lokhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v4, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    goto :goto_1b

    .line 568
    .end local v1    # "readTimeout":I
    :catch_4d
    move-exception v3

    goto :goto_1b

    .line 566
    .restart local v1    # "readTimeout":I
    :catchall_4f
    move-exception v4

    iget-object v5, p0, Lokhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v5, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    throw v4
    :try_end_56
    .catch Ljava/net/SocketTimeoutException; {:try_start_40 .. :try_end_56} :catch_4d
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_56} :catch_56

    .line 570
    .end local v1    # "readTimeout":I
    :catch_56
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    move v2, v3

    .line 571
    goto :goto_1b
.end method

.method public isMultiplexed()Z
    .registers 2

    .prologue
    .line 599
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->http2Connection:Lokhttp3/internal/http2/Http2Connection;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public newCodec(Lokhttp3/OkHttpClient;Lokhttp3/Interceptor$Chain;Lokhttp3/internal/connection/StreamAllocation;)Lokhttp3/internal/http/HttpCodec;
    .registers 8
    .param p1, "client"    # Lokhttp3/OkHttpClient;
    .param p2, "chain"    # Lokhttp3/Interceptor$Chain;
    .param p3, "streamAllocation"    # Lokhttp3/internal/connection/StreamAllocation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 515
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->http2Connection:Lokhttp3/internal/http2/Http2Connection;

    if-eqz v0, :cond_c

    .line 516
    new-instance v0, Lokhttp3/internal/http2/Http2Codec;

    iget-object v1, p0, Lokhttp3/internal/connection/RealConnection;->http2Connection:Lokhttp3/internal/http2/Http2Connection;

    invoke-direct {v0, p1, p2, p3, v1}, Lokhttp3/internal/http2/Http2Codec;-><init>(Lokhttp3/OkHttpClient;Lokhttp3/Interceptor$Chain;Lokhttp3/internal/connection/StreamAllocation;Lokhttp3/internal/http2/Http2Connection;)V

    .line 521
    :goto_b
    return-object v0

    .line 518
    :cond_c
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    invoke-interface {p2}, Lokhttp3/Interceptor$Chain;->readTimeoutMillis()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 519
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->timeout()Lokio/Timeout;

    move-result-object v0

    invoke-interface {p2}, Lokhttp3/Interceptor$Chain;->readTimeoutMillis()I

    move-result v1

    int-to-long v2, v1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 520
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->sink:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->timeout()Lokio/Timeout;

    move-result-object v0

    invoke-interface {p2}, Lokhttp3/Interceptor$Chain;->writeTimeoutMillis()I

    move-result v1

    int-to-long v2, v1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 521
    new-instance v0, Lokhttp3/internal/http1/Http1Codec;

    iget-object v1, p0, Lokhttp3/internal/connection/RealConnection;->source:Lokio/BufferedSource;

    iget-object v2, p0, Lokhttp3/internal/connection/RealConnection;->sink:Lokio/BufferedSink;

    invoke-direct {v0, p1, p3, v1, v2}, Lokhttp3/internal/http1/Http1Codec;-><init>(Lokhttp3/OkHttpClient;Lokhttp3/internal/connection/StreamAllocation;Lokio/BufferedSource;Lokio/BufferedSink;)V

    goto :goto_b
.end method

.method public newWebSocketStreams(Lokhttp3/internal/connection/StreamAllocation;)Lokhttp3/internal/ws/RealWebSocket$Streams;
    .registers 8
    .param p1, "streamAllocation"    # Lokhttp3/internal/connection/StreamAllocation;

    .prologue
    .line 526
    new-instance v0, Lokhttp3/internal/connection/RealConnection$1;

    const/4 v2, 0x1

    iget-object v3, p0, Lokhttp3/internal/connection/RealConnection;->source:Lokio/BufferedSource;

    iget-object v4, p0, Lokhttp3/internal/connection/RealConnection;->sink:Lokio/BufferedSink;

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lokhttp3/internal/connection/RealConnection$1;-><init>(Lokhttp3/internal/connection/RealConnection;ZLokio/BufferedSource;Lokio/BufferedSink;Lokhttp3/internal/connection/StreamAllocation;)V

    return-object v0
.end method

.method public onSettings(Lokhttp3/internal/http2/Http2Connection;)V
    .registers 4
    .param p1, "connection"    # Lokhttp3/internal/http2/Http2Connection;

    .prologue
    .line 585
    iget-object v1, p0, Lokhttp3/internal/connection/RealConnection;->connectionPool:Lokhttp3/ConnectionPool;

    monitor-enter v1

    .line 586
    :try_start_3
    invoke-virtual {p1}, Lokhttp3/internal/http2/Http2Connection;->maxConcurrentStreams()I

    move-result v0

    iput v0, p0, Lokhttp3/internal/connection/RealConnection;->allocationLimit:I

    .line 587
    monitor-exit v1

    .line 588
    return-void

    .line 587
    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v0
.end method

.method public onStream(Lokhttp3/internal/http2/Http2Stream;)V
    .registers 3
    .param p1, "stream"    # Lokhttp3/internal/http2/Http2Stream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 580
    sget-object v0, Lokhttp3/internal/http2/ErrorCode;->REFUSED_STREAM:Lokhttp3/internal/http2/ErrorCode;

    invoke-virtual {p1, v0}, Lokhttp3/internal/http2/Http2Stream;->close(Lokhttp3/internal/http2/ErrorCode;)V

    .line 581
    return-void
.end method

.method public protocol()Lokhttp3/Protocol;
    .registers 2

    .prologue
    .line 603
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->protocol:Lokhttp3/Protocol;

    return-object v0
.end method

.method public route()Lokhttp3/Route;
    .registers 2

    .prologue
    .line 534
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;

    return-object v0
.end method

.method public socket()Ljava/net/Socket;
    .registers 2

    .prologue
    .line 543
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    return-object v0
.end method

.method public supportsUrl(Lokhttp3/HttpUrl;)Z
    .registers 7
    .param p1, "url"    # Lokhttp3/HttpUrl;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 500
    invoke-virtual {p1}, Lokhttp3/HttpUrl;->port()I

    move-result v0

    iget-object v3, p0, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;

    invoke-virtual {v3}, Lokhttp3/Route;->address()Lokhttp3/Address;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/Address;->url()Lokhttp3/HttpUrl;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/HttpUrl;->port()I

    move-result v3

    if-eq v0, v3, :cond_17

    .line 510
    :goto_16
    return v2

    .line 504
    :cond_17
    invoke-virtual {p1}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;

    invoke-virtual {v3}, Lokhttp3/Route;->address()Lokhttp3/Address;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/Address;->url()Lokhttp3/HttpUrl;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_50

    .line 506
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->handshake:Lokhttp3/Handshake;

    if-eqz v0, :cond_4e

    sget-object v3, Lokhttp3/internal/tls/OkHostnameVerifier;->INSTANCE:Lokhttp3/internal/tls/OkHostnameVerifier;

    .line 507
    invoke-virtual {p1}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->handshake:Lokhttp3/Handshake;

    invoke-virtual {v0}, Lokhttp3/Handshake;->peerCertificates()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 506
    invoke-virtual {v3, v4, v0}, Lokhttp3/internal/tls/OkHostnameVerifier;->verify(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Z

    move-result v0

    if-eqz v0, :cond_4e

    move v0, v1

    :goto_4c
    move v2, v0

    goto :goto_16

    :cond_4e
    move v0, v2

    goto :goto_4c

    :cond_50
    move v2, v1

    .line 510
    goto :goto_16
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 607
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Connection{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;

    .line 608
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

    .line 610
    invoke-virtual {v1}, Lokhttp3/Route;->proxy()Ljava/net/Proxy;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " hostAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;

    .line 612
    invoke-virtual {v1}, Lokhttp3/Route;->socketAddress()Ljava/net/InetSocketAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cipherSuite="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 614
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->handshake:Lokhttp3/Handshake;

    if-eqz v0, :cond_80

    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->handshake:Lokhttp3/Handshake;

    invoke-virtual {v0}, Lokhttp3/Handshake;->cipherSuite()Lokhttp3/CipherSuite;

    move-result-object v0

    :goto_65
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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

    .line 607
    return-object v0

    .line 614
    :cond_80
    const-string v0, "none"

    goto :goto_65
.end method
