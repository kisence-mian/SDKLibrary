.class final Lcom/bytedance/sdk/a/b/a/g/b;
.super Lcom/bytedance/sdk/a/b/a/g/e;
.source "Jdk9Platform.java"


# instance fields
.field final a:Ljava/lang/reflect/Method;

.field final b:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
    .registers 3

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/bytedance/sdk/a/b/a/g/e;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/bytedance/sdk/a/b/a/g/b;->a:Ljava/lang/reflect/Method;

    .line 40
    iput-object p2, p0, Lcom/bytedance/sdk/a/b/a/g/b;->b:Ljava/lang/reflect/Method;

    .line 41
    return-void
.end method

.method public static a()Lcom/bytedance/sdk/a/b/a/g/b;
    .registers 5

    .prologue
    .line 90
    :try_start_0
    const-class v0, Ljavax/net/ssl/SSLParameters;

    const-string v1, "setApplicationProtocols"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, [Ljava/lang/String;

    aput-object v4, v2, v3

    .line 91
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 92
    const-class v0, Ljavax/net/ssl/SSLSocket;

    const-string v2, "getApplicationProtocol"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 94
    new-instance v0, Lcom/bytedance/sdk/a/b/a/g/b;

    invoke-direct {v0, v1, v2}, Lcom/bytedance/sdk/a/b/a/g/b;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
    :try_end_20
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_20} :catch_21

    .line 99
    :goto_20
    return-object v0

    .line 95
    :catch_21
    move-exception v0

    .line 99
    const/4 v0, 0x0

    goto :goto_20
.end method


# virtual methods
.method public a(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 63
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/g/b;->b:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 67
    if-eqz v0, :cond_15

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_12
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_12} :catch_17
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_12} :catch_1f

    move-result v1

    if-eqz v1, :cond_16

    .line 68
    :cond_15
    const/4 v0, 0x0

    .line 71
    :cond_16
    return-object v0

    .line 72
    :catch_17
    move-exception v0

    .line 73
    :goto_18
    const-string v1, "unable to get selected protocols"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/a/b/a/c;->a(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/AssertionError;

    move-result-object v0

    throw v0

    .line 72
    :catch_1f
    move-exception v0

    goto :goto_18
.end method

.method public a(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/net/ssl/SSLSocket;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/bytedance/sdk/a/b/w;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 47
    :try_start_0
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getSSLParameters()Ljavax/net/ssl/SSLParameters;

    move-result-object v0

    .line 49
    invoke-static {p3}, Lcom/bytedance/sdk/a/b/a/g/b;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 51
    iget-object v2, p0, Lcom/bytedance/sdk/a/b/a/g/b;->a:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 52
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-interface {v1, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v3, v4

    .line 51
    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    invoke-virtual {p1, v0}, Ljavax/net/ssl/SSLSocket;->setSSLParameters(Ljavax/net/ssl/SSLParameters;)V
    :try_end_20
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_20} :catch_21
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_20} :catch_29

    .line 58
    return-void

    .line 55
    :catch_21
    move-exception v0

    .line 56
    :goto_22
    const-string v1, "unable to set ssl parameters"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/a/b/a/c;->a(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/AssertionError;

    move-result-object v0

    throw v0

    .line 55
    :catch_29
    move-exception v0

    goto :goto_22
.end method
