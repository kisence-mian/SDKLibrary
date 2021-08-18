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

    .line 73
    invoke-static {}, Lokhttp3/internal/platform/Platform;->findPlatform()Lokhttp3/internal/platform/Platform;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/platform/Platform;->PLATFORM:Lokhttp3/internal/platform/Platform;

    .line 76
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

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static alpnProtocolNames(Ljava/util/List;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lokhttp3/Protocol;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 137
    .local p0, "protocols":Ljava/util/List;, "Ljava/util/List<Lokhttp3/Protocol;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 138
    .local v0, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "size":I
    :goto_e
    if-ge v1, v2, :cond_25

    .line 139
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lokhttp3/Protocol;

    .line 140
    .local v3, "protocol":Lokhttp3/Protocol;
    sget-object v4, Lokhttp3/Protocol;->HTTP_1_0:Lokhttp3/Protocol;

    if-ne v3, v4, :cond_1b

    goto :goto_22

    .line 141
    :cond_1b
    invoke-virtual {v3}, Lokhttp3/Protocol;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    .end local v3    # "protocol":Lokhttp3/Protocol;
    :goto_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 143
    .end local v1    # "i":I
    .end local v2    # "size":I
    :cond_25
    return-object v0
.end method

.method static concatLengthPrefixed(Ljava/util/List;)[B
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lokhttp3/Protocol;",
            ">;)[B"
        }
    .end annotation

    .line 179
    .local p0, "protocols":Ljava/util/List;, "Ljava/util/List<Lokhttp3/Protocol;>;"
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    .line 180
    .local v0, "result":Lokio/Buffer;
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "size":I
    :goto_a
    if-ge v1, v2, :cond_2c

    .line 181
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lokhttp3/Protocol;

    .line 182
    .local v3, "protocol":Lokhttp3/Protocol;
    sget-object v4, Lokhttp3/Protocol;->HTTP_1_0:Lokhttp3/Protocol;

    if-ne v3, v4, :cond_17

    goto :goto_29

    .line 183
    :cond_17
    invoke-virtual {v3}, Lokhttp3/Protocol;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v4}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 184
    invoke-virtual {v3}, Lokhttp3/Protocol;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;)Lokio/Buffer;

    .line 180
    .end local v3    # "protocol":Lokhttp3/Protocol;
    :goto_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 186
    .end local v1    # "i":I
    .end local v2    # "size":I
    :cond_2c
    invoke-virtual {v0}, Lokio/Buffer;->readByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method private static findPlatform()Lokhttp3/internal/platform/Platform;
    .registers 4

    .line 152
    invoke-static {}, Lokhttp3/internal/platform/AndroidPlatform;->buildIfSupported()Lokhttp3/internal/platform/Platform;

    move-result-object v0

    .line 154
    .local v0, "android":Lokhttp3/internal/platform/Platform;
    if-eqz v0, :cond_7

    .line 155
    return-object v0

    .line 158
    :cond_7
    invoke-static {}, Lokhttp3/internal/platform/Jdk9Platform;->buildIfSupported()Lokhttp3/internal/platform/Jdk9Platform;

    move-result-object v1

    .line 160
    .local v1, "jdk9":Lokhttp3/internal/platform/Platform;
    if-eqz v1, :cond_e

    .line 161
    return-object v1

    .line 164
    :cond_e
    invoke-static {}, Lokhttp3/internal/platform/JdkWithJettyBootPlatform;->buildIfSupported()Lokhttp3/internal/platform/Platform;

    move-result-object v2

    .line 166
    .local v2, "jdkWithJettyBoot":Lokhttp3/internal/platform/Platform;
    if-eqz v2, :cond_15

    .line 167
    return-object v2

    .line 171
    :cond_15
    new-instance v3, Lokhttp3/internal/platform/Platform;

    invoke-direct {v3}, Lokhttp3/internal/platform/Platform;-><init>()V

    return-object v3
.end method

.method public static get()Lokhttp3/internal/platform/Platform;
    .registers 1

    .line 79
    sget-object v0, Lokhttp3/internal/platform/Platform;->PLATFORM:Lokhttp3/internal/platform/Platform;

    return-object v0
.end method

.method static readFieldOrNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .registers 8
    .param p0, "instance"    # Ljava/lang/Object;
    .param p2, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 190
    .local p1, "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_4
    const-class v1, Ljava/lang/Object;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_32

    .line 192
    :try_start_9
    invoke-virtual {v0, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 193
    .local v1, "field":Ljava/lang/reflect/Field;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 194
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 195
    .local v3, "value":Ljava/lang/Object;
    if-eqz v3, :cond_23

    invoke-virtual {p1, v3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1e

    goto :goto_23

    .line 196
    :cond_1e
    invoke-virtual {p1, v3}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_22
    .catch Ljava/lang/NoSuchFieldException; {:try_start_9 .. :try_end_22} :catch_2b
    .catch Ljava/lang/IllegalAccessException; {:try_start_9 .. :try_end_22} :catch_24

    return-object v2

    .line 195
    :cond_23
    :goto_23
    return-object v2

    .line 198
    .end local v1    # "field":Ljava/lang/reflect/Field;
    .end local v3    # "value":Ljava/lang/Object;
    :catch_24
    move-exception v1

    .line 199
    .local v1, "e":Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 197
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_2b
    move-exception v1

    .line 200
    nop

    .line 190
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_4

    .line 204
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_32
    const-string v0, "delegate"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_47

    .line 205
    const-class v1, Ljava/lang/Object;

    invoke-static {p0, v1, v0}, Lokhttp3/internal/platform/Platform;->readFieldOrNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 206
    .local v0, "delegate":Ljava/lang/Object;
    if-eqz v0, :cond_47

    invoke-static {v0, p1, p2}, Lokhttp3/internal/platform/Platform;->readFieldOrNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 209
    .end local v0    # "delegate":Ljava/lang/Object;
    :cond_47
    return-object v2
.end method


# virtual methods
.method public afterHandshake(Ljavax/net/ssl/SSLSocket;)V
    .registers 2
    .param p1, "sslSocket"    # Ljavax/net/ssl/SSLSocket;

    .line 115
    return-void
.end method

.method public buildCertificateChainCleaner(Ljavax/net/ssl/X509TrustManager;)Lokhttp3/internal/tls/CertificateChainCleaner;
    .registers 4
    .param p1, "trustManager"    # Ljavax/net/ssl/X509TrustManager;

    .line 147
    new-instance v0, Lokhttp3/internal/tls/BasicCertificateChainCleaner;

    invoke-static {p1}, Lokhttp3/internal/tls/TrustRootIndex;->get(Ljavax/net/ssl/X509TrustManager;)Lokhttp3/internal/tls/TrustRootIndex;

    move-result-object v1

    invoke-direct {v0, v1}, Lokhttp3/internal/tls/BasicCertificateChainCleaner;-><init>(Lokhttp3/internal/tls/TrustRootIndex;)V

    return-object v0
.end method

.method public configureTlsExtensions(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V
    .registers 4
    .param p1, "sslSocket"    # Ljavax/net/ssl/SSLSocket;
    .param p2, "hostname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/net/ssl/SSLSocket;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lokhttp3/Protocol;",
            ">;)V"
        }
    .end annotation

    .line 108
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

    .line 124
    invoke-virtual {p1, p2, p3}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 125
    return-void
.end method

.method public getPrefix()Ljava/lang/String;
    .registers 2

    .line 84
    const-string v0, "OkHttp"

    return-object v0
.end method

.method public getSelectedProtocol(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    .registers 3
    .param p1, "socket"    # Ljavax/net/ssl/SSLSocket;

    .line 119
    const/4 v0, 0x0

    return-object v0
.end method

.method public isCleartextTrafficPermitted(Ljava/lang/String;)Z
    .registers 3
    .param p1, "hostname"    # Ljava/lang/String;

    .line 133
    const/4 v0, 0x1

    return v0
.end method

.method public log(ILjava/lang/String;Ljava/lang/Throwable;)V
    .registers 6
    .param p1, "level"    # I
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "t"    # Ljava/lang/Throwable;

    .line 128
    const/4 v0, 0x5

    if-ne p1, v0, :cond_6

    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    goto :goto_8

    :cond_6
    sget-object v0, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    .line 129
    .local v0, "logLevel":Ljava/util/logging/Level;
    :goto_8
    sget-object v1, Lokhttp3/internal/platform/Platform;->logger:Ljava/util/logging/Logger;

    invoke-virtual {v1, v0, p2, p3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 130
    return-void
.end method

.method public trustManager(Ljavax/net/ssl/SSLSocketFactory;)Ljavax/net/ssl/X509TrustManager;
    .registers 7
    .param p1, "sslSocketFactory"    # Ljavax/net/ssl/SSLSocketFactory;

    .line 92
    const/4 v0, 0x0

    :try_start_1
    const-string v1, "sun.security.ssl.SSLContextImpl"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 93
    .local v1, "sslContextClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v2, "context"

    invoke-static {p1, v1, v2}, Lokhttp3/internal/platform/Platform;->readFieldOrNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 94
    .local v2, "context":Ljava/lang/Object;
    if-nez v2, :cond_10

    return-object v0

    .line 95
    :cond_10
    const-class v3, Ljavax/net/ssl/X509TrustManager;

    const-string v4, "trustManager"

    invoke-static {v2, v3, v4}, Lokhttp3/internal/platform/Platform;->readFieldOrNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/net/ssl/X509TrustManager;
    :try_end_1a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1a} :catch_1b

    return-object v3

    .line 96
    .end local v1    # "sslContextClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "context":Ljava/lang/Object;
    :catch_1b
    move-exception v1

    .line 97
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    return-object v0
.end method
