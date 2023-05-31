.class public Lokhttp3/internal/platform/Platform;
.super Ljava/lang/Object;
.source "Platform.java"


# static fields
.field public static final INFO:I = 0x4

.field private static final PLATFORM:Lokhttp3/internal/platform/Platform;

.field public static final WARN:I = 0x5

.field private static final logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 78
    invoke-static {}, Lokhttp3/internal/platform/Platform;->findPlatform()Lokhttp3/internal/platform/Platform;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/platform/Platform;->PLATFORM:Lokhttp3/internal/platform/Platform;

    .line 81
    const-class v0, Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/platform/Platform;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static alpnProtocolNames(Ljava/util/List;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lokhttp3/Protocol;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 162
    .local p0, "protocols":Ljava/util/List;, "Ljava/util/List<Lokhttp3/Protocol;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 163
    .local v1, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "size":I
    :goto_e
    if-ge v0, v3, :cond_25

    .line 164
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lokhttp3/Protocol;

    .line 165
    .local v2, "protocol":Lokhttp3/Protocol;
    sget-object v4, Lokhttp3/Protocol;->HTTP_1_0:Lokhttp3/Protocol;

    if-ne v2, v4, :cond_1d

    .line 163
    :goto_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 166
    :cond_1d
    invoke-virtual {v2}, Lokhttp3/Protocol;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    .line 168
    .end local v2    # "protocol":Lokhttp3/Protocol;
    :cond_25
    return-object v1
.end method

.method static concatLengthPrefixed(Ljava/util/List;)[B
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lokhttp3/Protocol;",
            ">;)[B"
        }
    .end annotation

    .prologue
    .line 236
    .local p0, "protocols":Ljava/util/List;, "Ljava/util/List<Lokhttp3/Protocol;>;"
    new-instance v2, Lokio/Buffer;

    invoke-direct {v2}, Lokio/Buffer;-><init>()V

    .line 237
    .local v2, "result":Lokio/Buffer;
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "size":I
    :goto_a
    if-ge v0, v3, :cond_2c

    .line 238
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lokhttp3/Protocol;

    .line 239
    .local v1, "protocol":Lokhttp3/Protocol;
    sget-object v4, Lokhttp3/Protocol;->HTTP_1_0:Lokhttp3/Protocol;

    if-ne v1, v4, :cond_19

    .line 237
    :goto_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 240
    :cond_19
    invoke-virtual {v1}, Lokhttp3/Protocol;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v4}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 241
    invoke-virtual {v1}, Lokhttp3/Protocol;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;)Lokio/Buffer;

    goto :goto_16

    .line 243
    .end local v1    # "protocol":Lokhttp3/Protocol;
    :cond_2c
    invoke-virtual {v2}, Lokio/Buffer;->readByteArray()[B

    move-result-object v4

    return-object v4
.end method

.method private static findPlatform()Lokhttp3/internal/platform/Platform;
    .registers 5

    .prologue
    .line 201
    invoke-static {}, Lokhttp3/internal/platform/AndroidPlatform;->buildIfSupported()Lokhttp3/internal/platform/Platform;

    move-result-object v0

    .line 203
    .local v0, "android":Lokhttp3/internal/platform/Platform;
    if-eqz v0, :cond_7

    .line 228
    .end local v0    # "android":Lokhttp3/internal/platform/Platform;
    .local v2, "jdk9":Lokhttp3/internal/platform/Platform;
    :goto_6
    return-object v0

    .line 207
    .end local v2    # "jdk9":Lokhttp3/internal/platform/Platform;
    .restart local v0    # "android":Lokhttp3/internal/platform/Platform;
    :cond_7
    invoke-static {}, Lokhttp3/internal/platform/Platform;->isConscryptPreferred()Z

    move-result v4

    if-eqz v4, :cond_15

    .line 208
    invoke-static {}, Lokhttp3/internal/platform/ConscryptPlatform;->buildIfSupported()Lokhttp3/internal/platform/ConscryptPlatform;

    move-result-object v1

    .line 210
    .local v1, "conscrypt":Lokhttp3/internal/platform/Platform;
    if-eqz v1, :cond_15

    move-object v0, v1

    .line 211
    goto :goto_6

    .line 215
    .end local v1    # "conscrypt":Lokhttp3/internal/platform/Platform;
    :cond_15
    invoke-static {}, Lokhttp3/internal/platform/Jdk9Platform;->buildIfSupported()Lokhttp3/internal/platform/Jdk9Platform;

    move-result-object v2

    .line 217
    .restart local v2    # "jdk9":Lokhttp3/internal/platform/Platform;
    if-eqz v2, :cond_1d

    move-object v0, v2

    .line 218
    goto :goto_6

    .line 221
    :cond_1d
    invoke-static {}, Lokhttp3/internal/platform/JdkWithJettyBootPlatform;->buildIfSupported()Lokhttp3/internal/platform/Platform;

    move-result-object v3

    .line 223
    .local v3, "jdkWithJettyBoot":Lokhttp3/internal/platform/Platform;
    if-eqz v3, :cond_25

    move-object v0, v3

    .line 224
    goto :goto_6

    .line 228
    :cond_25
    new-instance v0, Lokhttp3/internal/platform/Platform;

    .end local v0    # "android":Lokhttp3/internal/platform/Platform;
    invoke-direct {v0}, Lokhttp3/internal/platform/Platform;-><init>()V

    goto :goto_6
.end method

.method public static get()Lokhttp3/internal/platform/Platform;
    .registers 1

    .prologue
    .line 84
    sget-object v0, Lokhttp3/internal/platform/Platform;->PLATFORM:Lokhttp3/internal/platform/Platform;

    return-object v0
.end method

.method public static isConscryptPreferred()Z
    .registers 3

    .prologue
    .line 190
    const-string v1, "conscrypt"

    const-string v2, "okhttp.platform"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 191
    const/4 v1, 0x1

    .line 196
    .local v0, "preferredProvider":Ljava/lang/String;
    :goto_f
    return v1

    .line 195
    .end local v0    # "preferredProvider":Ljava/lang/String;
    :cond_10
    invoke-static {}, Ljava/security/Security;->getProviders()[Ljava/security/Provider;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v0

    .line 196
    .restart local v0    # "preferredProvider":Ljava/lang/String;
    const-string v1, "Conscrypt"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_f
.end method

.method static readFieldOrNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .registers 11
    .param p0, "instance"    # Ljava/lang/Object;
    .param p2, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .local p1, "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v5, 0x0

    .line 247
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_5
    const-class v6, Ljava/lang/Object;

    if-eq v0, v6, :cond_30

    .line 249
    :try_start_9
    invoke-virtual {v0, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 250
    .local v3, "field":Ljava/lang/reflect/Field;
    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 251
    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 252
    .local v4, "value":Ljava/lang/Object;
    if-eqz v4, :cond_1d

    invoke-virtual {p1, v4}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1e

    .line 266
    .end local v3    # "field":Ljava/lang/reflect/Field;
    .end local v4    # "value":Ljava/lang/Object;
    :cond_1d
    :goto_1d
    return-object v5

    .line 253
    .restart local v3    # "field":Ljava/lang/reflect/Field;
    .restart local v4    # "value":Ljava/lang/Object;
    :cond_1e
    invoke-virtual {p1, v4}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_21
    .catch Ljava/lang/NoSuchFieldException; {:try_start_9 .. :try_end_21} :catch_2a
    .catch Ljava/lang/IllegalAccessException; {:try_start_9 .. :try_end_21} :catch_23

    move-result-object v5

    goto :goto_1d

    .line 255
    .end local v3    # "field":Ljava/lang/reflect/Field;
    .end local v4    # "value":Ljava/lang/Object;
    :catch_23
    move-exception v2

    .line 256
    .local v2, "e":Ljava/lang/IllegalAccessException;
    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 254
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_2a
    move-exception v6

    .line 247
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_5

    .line 261
    :cond_30
    const-string v6, "delegate"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1d

    .line 262
    const-class v6, Ljava/lang/Object;

    const-string v7, "delegate"

    invoke-static {p0, v6, v7}, Lokhttp3/internal/platform/Platform;->readFieldOrNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 263
    .local v1, "delegate":Ljava/lang/Object;
    if-eqz v1, :cond_1d

    invoke-static {v1, p1, p2}, Lokhttp3/internal/platform/Platform;->readFieldOrNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_1d
.end method


# virtual methods
.method public afterHandshake(Ljavax/net/ssl/SSLSocket;)V
    .registers 2
    .param p1, "sslSocket"    # Ljavax/net/ssl/SSLSocket;

    .prologue
    .line 120
    return-void
.end method

.method public buildCertificateChainCleaner(Ljavax/net/ssl/SSLSocketFactory;)Lokhttp3/internal/tls/CertificateChainCleaner;
    .registers 6
    .param p1, "sslSocketFactory"    # Ljavax/net/ssl/SSLSocketFactory;

    .prologue
    .line 176
    invoke-virtual {p0, p1}, Lokhttp3/internal/platform/Platform;->trustManager(Ljavax/net/ssl/SSLSocketFactory;)Ljavax/net/ssl/X509TrustManager;

    move-result-object v0

    .line 178
    .local v0, "trustManager":Ljavax/net/ssl/X509TrustManager;
    if-nez v0, :cond_31

    .line 179
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to extract the trust manager on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 180
    invoke-static {}, Lokhttp3/internal/platform/Platform;->get()Lokhttp3/internal/platform/Platform;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", sslSocketFactory is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 182
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 185
    :cond_31
    invoke-virtual {p0, v0}, Lokhttp3/internal/platform/Platform;->buildCertificateChainCleaner(Ljavax/net/ssl/X509TrustManager;)Lokhttp3/internal/tls/CertificateChainCleaner;

    move-result-object v1

    return-object v1
.end method

.method public buildCertificateChainCleaner(Ljavax/net/ssl/X509TrustManager;)Lokhttp3/internal/tls/CertificateChainCleaner;
    .registers 4
    .param p1, "trustManager"    # Ljavax/net/ssl/X509TrustManager;

    .prologue
    .line 172
    new-instance v0, Lokhttp3/internal/tls/BasicCertificateChainCleaner;

    invoke-virtual {p0, p1}, Lokhttp3/internal/platform/Platform;->buildTrustRootIndex(Ljavax/net/ssl/X509TrustManager;)Lokhttp3/internal/tls/TrustRootIndex;

    move-result-object v1

    invoke-direct {v0, v1}, Lokhttp3/internal/tls/BasicCertificateChainCleaner;-><init>(Lokhttp3/internal/tls/TrustRootIndex;)V

    return-object v0
.end method

.method public buildTrustRootIndex(Ljavax/net/ssl/X509TrustManager;)Lokhttp3/internal/tls/TrustRootIndex;
    .registers 4
    .param p1, "trustManager"    # Ljavax/net/ssl/X509TrustManager;

    .prologue
    .line 288
    new-instance v0, Lokhttp3/internal/tls/BasicTrustRootIndex;

    invoke-interface {p1}, Ljavax/net/ssl/X509TrustManager;->getAcceptedIssuers()[Ljava/security/cert/X509Certificate;

    move-result-object v1

    invoke-direct {v0, v1}, Lokhttp3/internal/tls/BasicTrustRootIndex;-><init>([Ljava/security/cert/X509Certificate;)V

    return-object v0
.end method

.method public configureSslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    .registers 2
    .param p1, "socketFactory"    # Ljavax/net/ssl/SSLSocketFactory;

    .prologue
    .line 292
    return-void
.end method

.method public configureTlsExtensions(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V
    .registers 4
    .param p1, "sslSocket"    # Ljavax/net/ssl/SSLSocket;
    .param p2, "hostname"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/net/ssl/SSLSocket;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lokhttp3/Protocol;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 113
    .local p3, "protocols":Ljava/util/List;, "Ljava/util/List<Lokhttp3/Protocol;>;"
    return-void
.end method

.method public connectSocket(Ljava/net/Socket;Ljava/net/InetSocketAddress;I)V
    .registers 4
    .param p1, "socket"    # Ljava/net/Socket;
    .param p2, "address"    # Ljava/net/InetSocketAddress;
    .param p3, "connectTimeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 129
    invoke-virtual {p1, p2, p3}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 130
    return-void
.end method

.method public getPrefix()Ljava/lang/String;
    .registers 2

    .prologue
    .line 89
    const-string v0, "OkHttp"

    return-object v0
.end method

.method public getSSLContext()Ljavax/net/ssl/SSLContext;
    .registers 5

    .prologue
    .line 270
    const-string v2, "java.specification.version"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 271
    .local v1, "jvmVersion":Ljava/lang/String;
    const-string v2, "1.7"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 274
    :try_start_e
    const-string v2, "TLSv1.2"

    invoke-static {v2}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;
    :try_end_13
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_e .. :try_end_13} :catch_15

    move-result-object v2

    .line 281
    :goto_14
    return-object v2

    .line 275
    :catch_15
    move-exception v2

    .line 281
    :cond_16
    :try_start_16
    const-string v2, "TLS"

    invoke-static {v2}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;
    :try_end_1b
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_16 .. :try_end_1b} :catch_1d

    move-result-object v2

    goto :goto_14

    .line 282
    :catch_1d
    move-exception v0

    .line 283
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "No TLS provider"

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getSelectedProtocol(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    .registers 3
    .param p1, "socket"    # Ljavax/net/ssl/SSLSocket;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 124
    const/4 v0, 0x0

    return-object v0
.end method

.method public getStackTraceForCloseable(Ljava/lang/String;)Ljava/lang/Object;
    .registers 4
    .param p1, "closer"    # Ljava/lang/String;

    .prologue
    .line 147
    sget-object v0, Lokhttp3/internal/platform/Platform;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 148
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 150
    :goto_f
    return-object v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public isCleartextTrafficPermitted(Ljava/lang/String;)Z
    .registers 3
    .param p1, "hostname"    # Ljava/lang/String;

    .prologue
    .line 138
    const/4 v0, 0x1

    return v0
.end method

.method public log(ILjava/lang/String;Ljava/lang/Throwable;)V
    .registers 6
    .param p1, "level"    # I
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "t"    # Ljava/lang/Throwable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 133
    const/4 v1, 0x5

    if-ne p1, v1, :cond_b

    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 134
    .local v0, "logLevel":Ljava/util/logging/Level;
    :goto_5
    sget-object v1, Lokhttp3/internal/platform/Platform;->logger:Ljava/util/logging/Logger;

    invoke-virtual {v1, v0, p2, p3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 135
    return-void

    .line 133
    .end local v0    # "logLevel":Ljava/util/logging/Level;
    :cond_b
    sget-object v0, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    goto :goto_5
.end method

.method public logCloseableLeak(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "stackTrace"    # Ljava/lang/Object;

    .prologue
    .line 154
    if-nez p2, :cond_15

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " To see where this was allocated, set the OkHttpClient logger level to FINE: Logger.getLogger(OkHttpClient.class.getName()).setLevel(Level.FINE);"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 158
    :cond_15
    const/4 v0, 0x5

    check-cast p2, Ljava/lang/Throwable;

    .end local p2    # "stackTrace":Ljava/lang/Object;
    invoke-virtual {p0, v0, p1, p2}, Lokhttp3/internal/platform/Platform;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 159
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 295
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected trustManager(Ljavax/net/ssl/SSLSocketFactory;)Ljavax/net/ssl/X509TrustManager;
    .registers 8
    .param p1, "sslSocketFactory"    # Ljavax/net/ssl/SSLSocketFactory;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 97
    :try_start_1
    const-string v3, "sun.security.ssl.SSLContextImpl"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 98
    .local v2, "sslContextClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v3, "context"

    invoke-static {p1, v2, v3}, Lokhttp3/internal/platform/Platform;->readFieldOrNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 99
    .local v0, "context":Ljava/lang/Object;
    if-nez v0, :cond_11

    move-object v3, v4

    .line 102
    .end local v0    # "context":Ljava/lang/Object;
    .end local v2    # "sslContextClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_10
    return-object v3

    .line 100
    .restart local v0    # "context":Ljava/lang/Object;
    .restart local v2    # "sslContextClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_11
    const-class v3, Ljavax/net/ssl/X509TrustManager;

    const-string v5, "trustManager"

    invoke-static {v0, v3, v5}, Lokhttp3/internal/platform/Platform;->readFieldOrNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/net/ssl/X509TrustManager;
    :try_end_1b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1b} :catch_1c

    goto :goto_10

    .line 101
    .end local v0    # "context":Ljava/lang/Object;
    .end local v2    # "sslContextClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_1c
    move-exception v1

    .local v1, "e":Ljava/lang/ClassNotFoundException;
    move-object v3, v4

    .line 102
    goto :goto_10
.end method
