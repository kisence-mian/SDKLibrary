.class Lokhttp3/internal/platform/JdkWithJettyBootPlatform;
.super Lokhttp3/internal/platform/Platform;
.source "JdkWithJettyBootPlatform.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/platform/JdkWithJettyBootPlatform$JettyNegoProvider;
    }
.end annotation


# instance fields
.field private final clientProviderClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final getMethod:Ljava/lang/reflect/Method;

.field private final putMethod:Ljava/lang/reflect/Method;

.field private final removeMethod:Ljava/lang/reflect/Method;

.field private final serverProviderClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/Class;Ljava/lang/Class;)V
    .registers 6
    .param p1, "putMethod"    # Ljava/lang/reflect/Method;
    .param p2, "getMethod"    # Ljava/lang/reflect/Method;
    .param p3, "removeMethod"    # Ljava/lang/reflect/Method;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 41
    .local p4, "clientProviderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p5, "serverProviderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Lokhttp3/internal/platform/Platform;-><init>()V

    .line 42
    iput-object p1, p0, Lokhttp3/internal/platform/JdkWithJettyBootPlatform;->putMethod:Ljava/lang/reflect/Method;

    .line 43
    iput-object p2, p0, Lokhttp3/internal/platform/JdkWithJettyBootPlatform;->getMethod:Ljava/lang/reflect/Method;

    .line 44
    iput-object p3, p0, Lokhttp3/internal/platform/JdkWithJettyBootPlatform;->removeMethod:Ljava/lang/reflect/Method;

    .line 45
    iput-object p4, p0, Lokhttp3/internal/platform/JdkWithJettyBootPlatform;->clientProviderClass:Ljava/lang/Class;

    .line 46
    iput-object p5, p0, Lokhttp3/internal/platform/JdkWithJettyBootPlatform;->serverProviderClass:Ljava/lang/Class;

    .line 47
    return-void
.end method

.method public static buildIfSupported()Lokhttp3/internal/platform/Platform;
    .registers 12

    .prologue
    .line 88
    :try_start_0
    const-string v7, "org.eclipse.jetty.alpn.ALPN"

    .line 89
    .local v7, "negoClassName":Ljava/lang/String;
    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 90
    .local v6, "negoClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, "$Provider"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    .line 91
    .local v8, "providerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, "$ClientProvider"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 92
    .local v4, "clientProviderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, "$ServerProvider"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 93
    .local v5, "serverProviderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v0, "put"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    const-class v11, Ljavax/net/ssl/SSLSocket;

    aput-object v11, v9, v10

    const/4 v10, 0x1

    aput-object v8, v9, v10

    invoke-virtual {v6, v0, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 94
    .local v1, "putMethod":Ljava/lang/reflect/Method;
    const-string v0, "get"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    const-class v11, Ljavax/net/ssl/SSLSocket;

    aput-object v11, v9, v10

    invoke-virtual {v6, v0, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 95
    .local v2, "getMethod":Ljava/lang/reflect/Method;
    const-string v0, "remove"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    const-class v11, Ljavax/net/ssl/SSLSocket;

    aput-object v11, v9, v10

    invoke-virtual {v6, v0, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 96
    .local v3, "removeMethod":Ljava/lang/reflect/Method;
    new-instance v0, Lokhttp3/internal/platform/JdkWithJettyBootPlatform;

    invoke-direct/range {v0 .. v5}, Lokhttp3/internal/platform/JdkWithJettyBootPlatform;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/Class;Ljava/lang/Class;)V
    :try_end_7d
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_7d} :catch_7e
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_7d} :catch_81

    .line 101
    .end local v1    # "putMethod":Ljava/lang/reflect/Method;
    .end local v2    # "getMethod":Ljava/lang/reflect/Method;
    .end local v3    # "removeMethod":Ljava/lang/reflect/Method;
    .end local v4    # "clientProviderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "serverProviderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v6    # "negoClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v8    # "providerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_7d
    return-object v0

    .line 98
    :catch_7e
    move-exception v0

    .line 101
    :goto_7f
    const/4 v0, 0x0

    goto :goto_7d

    .line 98
    :catch_81
    move-exception v0

    goto :goto_7f
.end method


# virtual methods
.method public afterHandshake(Ljavax/net/ssl/SSLSocket;)V
    .registers 7
    .param p1, "sslSocket"    # Ljavax/net/ssl/SSLSocket;

    .prologue
    .line 64
    :try_start_0
    iget-object v1, p0, Lokhttp3/internal/platform/JdkWithJettyBootPlatform;->removeMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_c} :catch_d
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_c} :catch_15

    .line 68
    return-void

    .line 65
    :catch_d
    move-exception v0

    .line 66
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    :goto_e
    const-string v1, "unable to remove alpn"

    invoke-static {v1, v0}, Lokhttp3/internal/Util;->assertionError(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/AssertionError;

    move-result-object v1

    throw v1

    .line 65
    .end local v0    # "e":Ljava/lang/ReflectiveOperationException;
    :catch_15
    move-exception v0

    goto :goto_e
.end method

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
    .line 51
    .local p3, "protocols":Ljava/util/List;, "Ljava/util/List<Lokhttp3/Protocol;>;"
    invoke-static {p3}, Lokhttp3/internal/platform/JdkWithJettyBootPlatform;->alpnProtocolNames(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 54
    .local v1, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_4
    const-class v3, Lokhttp3/internal/platform/Platform;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    iget-object v6, p0, Lokhttp3/internal/platform/JdkWithJettyBootPlatform;->clientProviderClass:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lokhttp3/internal/platform/JdkWithJettyBootPlatform;->serverProviderClass:Ljava/lang/Class;

    aput-object v6, v4, v5

    new-instance v5, Lokhttp3/internal/platform/JdkWithJettyBootPlatform$JettyNegoProvider;

    invoke-direct {v5, v1}, Lokhttp3/internal/platform/JdkWithJettyBootPlatform$JettyNegoProvider;-><init>(Ljava/util/List;)V

    invoke-static {v3, v4, v5}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v2

    .line 56
    .local v2, "provider":Ljava/lang/Object;
    iget-object v3, p0, Lokhttp3/internal/platform/JdkWithJettyBootPlatform;->putMethod:Ljava/lang/reflect/Method;

    const/4 v4, 0x0

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    aput-object v2, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2f
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_2f} :catch_38
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_2f} :catch_30

    .line 60
    return-void

    .line 57
    .end local v2    # "provider":Ljava/lang/Object;
    :catch_30
    move-exception v0

    .line 58
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    :goto_31
    const-string v3, "unable to set alpn"

    invoke-static {v3, v0}, Lokhttp3/internal/Util;->assertionError(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/AssertionError;

    move-result-object v3

    throw v3

    .line 57
    .end local v0    # "e":Ljava/lang/ReflectiveOperationException;
    :catch_38
    move-exception v0

    goto :goto_31
.end method

.method public getSelectedProtocol(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    .registers 9
    .param p1, "socket"    # Ljavax/net/ssl/SSLSocket;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 72
    :try_start_1
    iget-object v3, p0, Lokhttp3/internal/platform/JdkWithJettyBootPlatform;->getMethod:Ljava/lang/reflect/Method;

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    .line 73
    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/reflect/Proxy;->getInvocationHandler(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;

    move-result-object v1

    check-cast v1, Lokhttp3/internal/platform/JdkWithJettyBootPlatform$JettyNegoProvider;

    .line 74
    .local v1, "provider":Lokhttp3/internal/platform/JdkWithJettyBootPlatform$JettyNegoProvider;
    iget-boolean v3, v1, Lokhttp3/internal/platform/JdkWithJettyBootPlatform$JettyNegoProvider;->unsupported:Z

    if-nez v3, :cond_28

    iget-object v3, v1, Lokhttp3/internal/platform/JdkWithJettyBootPlatform$JettyNegoProvider;->selected:Ljava/lang/String;

    if-nez v3, :cond_28

    .line 75
    invoke-static {}, Lokhttp3/internal/platform/Platform;->get()Lokhttp3/internal/platform/Platform;

    move-result-object v3

    const/4 v4, 0x4

    const-string v5, "ALPN callback dropped: HTTP/2 is disabled. Is alpn-boot on the boot class path?"

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lokhttp3/internal/platform/Platform;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 79
    :cond_27
    :goto_27
    return-object v2

    :cond_28
    iget-boolean v3, v1, Lokhttp3/internal/platform/JdkWithJettyBootPlatform$JettyNegoProvider;->unsupported:Z

    if-nez v3, :cond_27

    iget-object v2, v1, Lokhttp3/internal/platform/JdkWithJettyBootPlatform$JettyNegoProvider;->selected:Ljava/lang/String;
    :try_end_2e
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_2e} :catch_37
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_2e} :catch_2f

    goto :goto_27

    .line 80
    .end local v1    # "provider":Lokhttp3/internal/platform/JdkWithJettyBootPlatform$JettyNegoProvider;
    :catch_2f
    move-exception v0

    .line 81
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    :goto_30
    const-string v2, "unable to get selected protocol"

    invoke-static {v2, v0}, Lokhttp3/internal/Util;->assertionError(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/AssertionError;

    move-result-object v2

    throw v2

    .line 80
    .end local v0    # "e":Ljava/lang/ReflectiveOperationException;
    :catch_37
    move-exception v0

    goto :goto_30
.end method
