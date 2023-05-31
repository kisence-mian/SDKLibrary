.class final Lokhttp3/internal/platform/Jdk9Platform;
.super Lokhttp3/internal/platform/Platform;
.source "Jdk9Platform.java"


# instance fields
.field final getProtocolMethod:Ljava/lang/reflect/Method;

.field final setProtocolMethod:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
    .registers 3
    .param p1, "setProtocolMethod"    # Ljava/lang/reflect/Method;
    .param p2, "getProtocolMethod"    # Ljava/lang/reflect/Method;

    .prologue
    .line 37
    invoke-direct {p0}, Lokhttp3/internal/platform/Platform;-><init>()V

    .line 38
    iput-object p1, p0, Lokhttp3/internal/platform/Jdk9Platform;->setProtocolMethod:Ljava/lang/reflect/Method;

    .line 39
    iput-object p2, p0, Lokhttp3/internal/platform/Jdk9Platform;->getProtocolMethod:Ljava/lang/reflect/Method;

    .line 40
    return-void
.end method

.method public static buildIfSupported()Lokhttp3/internal/platform/Jdk9Platform;
    .registers 7

    .prologue
    .line 88
    :try_start_0
    const-class v2, Ljavax/net/ssl/SSLParameters;

    const-string v3, "setApplicationProtocols"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, [Ljava/lang/String;

    aput-object v6, v4, v5

    .line 89
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 90
    .local v1, "setProtocolMethod":Ljava/lang/reflect/Method;
    const-class v2, Ljavax/net/ssl/SSLSocket;

    const-string v3, "getApplicationProtocol"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 92
    .local v0, "getProtocolMethod":Ljava/lang/reflect/Method;
    new-instance v2, Lokhttp3/internal/platform/Jdk9Platform;

    invoke-direct {v2, v1, v0}, Lokhttp3/internal/platform/Jdk9Platform;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
    :try_end_20
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_20} :catch_21

    .line 97
    .end local v0    # "getProtocolMethod":Ljava/lang/reflect/Method;
    :goto_20
    return-object v2

    .line 93
    :catch_21
    move-exception v2

    .line 97
    const/4 v2, 0x0

    goto :goto_20
.end method


# virtual methods
.method public configureTlsExtensions(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V
    .registers 11
    .param p1, "sslSocket"    # Ljavax/net/ssl/SSLSocket;
    .param p2, "hostname"    # Ljava/lang/String;
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
    .line 46
    .local p3, "protocols":Ljava/util/List;, "Ljava/util/List<Lokhttp3/Protocol;>;"
    :try_start_0
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getSSLParameters()Ljavax/net/ssl/SSLParameters;

    move-result-object v2

    .line 48
    .local v2, "sslParameters":Ljavax/net/ssl/SSLParameters;
    invoke-static {p3}, Lokhttp3/internal/platform/Jdk9Platform;->alpnProtocolNames(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 50
    .local v1, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Lokhttp3/internal/platform/Jdk9Platform;->setProtocolMethod:Ljava/lang/reflect/Method;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 51
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    invoke-interface {v1, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v4, v5

    .line 50
    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    invoke-virtual {p1, v2}, Ljavax/net/ssl/SSLSocket;->setSSLParameters(Ljavax/net/ssl/SSLParameters;)V
    :try_end_20
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_20} :catch_21
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_20} :catch_29

    .line 57
    return-void

    .line 54
    .end local v1    # "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "sslParameters":Ljavax/net/ssl/SSLParameters;
    :catch_21
    move-exception v0

    .line 55
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    :goto_22
    const-string v3, "unable to set ssl parameters"

    invoke-static {v3, v0}, Lokhttp3/internal/Util;->assertionError(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/AssertionError;

    move-result-object v3

    throw v3

    .line 54
    .end local v0    # "e":Ljava/lang/ReflectiveOperationException;
    :catch_29
    move-exception v0

    goto :goto_22
.end method

.method public getSelectedProtocol(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    .registers 6
    .param p1, "socket"    # Ljavax/net/ssl/SSLSocket;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 62
    :try_start_0
    iget-object v2, p0, Lokhttp3/internal/platform/Jdk9Platform;->getProtocolMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 66
    .local v1, "protocol":Ljava/lang/String;
    if-eqz v1, :cond_15

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_12
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_12} :catch_17
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_12} :catch_1f

    move-result v2

    if-eqz v2, :cond_16

    .line 67
    :cond_15
    const/4 v1, 0x0

    .line 70
    .end local v1    # "protocol":Ljava/lang/String;
    :cond_16
    return-object v1

    .line 71
    :catch_17
    move-exception v0

    .line 72
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    :goto_18
    const-string v2, "unable to get selected protocols"

    invoke-static {v2, v0}, Lokhttp3/internal/Util;->assertionError(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/AssertionError;

    move-result-object v2

    throw v2

    .line 71
    .end local v0    # "e":Ljava/lang/ReflectiveOperationException;
    :catch_1f
    move-exception v0

    goto :goto_18
.end method

.method public trustManager(Ljavax/net/ssl/SSLSocketFactory;)Ljavax/net/ssl/X509TrustManager;
    .registers 4
    .param p1, "sslSocketFactory"    # Ljavax/net/ssl/SSLSocketFactory;

    .prologue
    .line 81
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "clientBuilder.sslSocketFactory(SSLSocketFactory) not supported on JDK 9+"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
