.class Lcom/bytedance/sdk/a/b/a/g/c;
.super Lcom/bytedance/sdk/a/b/a/g/e;
.source "JdkWithJettyBootPlatform.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/a/b/a/g/c$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/reflect/Method;

.field private final b:Ljava/lang/reflect/Method;

.field private final c:Ljava/lang/reflect/Method;

.field private final d:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final e:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/Class;Ljava/lang/Class;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Lcom/bytedance/sdk/a/b/a/g/e;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/bytedance/sdk/a/b/a/g/c;->a:Ljava/lang/reflect/Method;

    .line 44
    iput-object p2, p0, Lcom/bytedance/sdk/a/b/a/g/c;->b:Ljava/lang/reflect/Method;

    .line 45
    iput-object p3, p0, Lcom/bytedance/sdk/a/b/a/g/c;->c:Ljava/lang/reflect/Method;

    .line 46
    iput-object p4, p0, Lcom/bytedance/sdk/a/b/a/g/c;->d:Ljava/lang/Class;

    .line 47
    iput-object p5, p0, Lcom/bytedance/sdk/a/b/a/g/c;->e:Ljava/lang/Class;

    .line 48
    return-void
.end method

.method public static a()Lcom/bytedance/sdk/a/b/a/g/e;
    .registers 10

    .line 92
    :try_start_0
    const-string v0, "org.eclipse.jetty.alpn.ALPN"

    .line 93
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 94
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "$Provider"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 95
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "$ClientProvider"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    .line 96
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "$ServerProvider"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    .line 97
    const-string v0, "put"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Ljavax/net/ssl/SSLSocket;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object v2, v3, v4

    invoke-virtual {v1, v0, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 98
    const-string v2, "get"

    new-array v3, v4, [Ljava/lang/Class;

    const-class v6, Ljavax/net/ssl/SSLSocket;

    aput-object v6, v3, v5

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 99
    const-string v2, "remove"

    new-array v3, v4, [Ljava/lang/Class;

    const-class v4, Ljavax/net/ssl/SSLSocket;

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 100
    new-instance v1, Lcom/bytedance/sdk/a/b/a/g/c;

    move-object v4, v1

    move-object v5, v0

    invoke-direct/range {v4 .. v9}, Lcom/bytedance/sdk/a/b/a/g/c;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/Class;Ljava/lang/Class;)V
    :try_end_7b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_7b} :catch_7e
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_7b} :catch_7c

    return-object v1

    .line 102
    :catch_7c
    move-exception v0

    goto :goto_7f

    :catch_7e
    move-exception v0

    .line 105
    :goto_7f
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public a(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    .registers 5

    .line 76
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/g/c;->b:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 77
    const/4 p1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/reflect/Proxy;->getInvocationHandler(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/a/b/a/g/c$a;

    .line 78
    iget-boolean v1, v0, Lcom/bytedance/sdk/a/b/a/g/c$a;->a:Z

    if-nez v1, :cond_26

    iget-object v1, v0, Lcom/bytedance/sdk/a/b/a/g/c$a;->b:Ljava/lang/String;

    if-nez v1, :cond_26

    .line 79
    invoke-static {}, Lcom/bytedance/sdk/a/b/a/g/e;->b()Lcom/bytedance/sdk/a/b/a/g/e;

    move-result-object v0

    const/4 v1, 0x4

    const-string v2, "ALPN callback dropped: HTTP/2 is disabled. Is alpn-boot on the boot class path?"

    invoke-virtual {v0, v1, v2, p1}, Lcom/bytedance/sdk/a/b/a/g/e;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 81
    return-object p1

    .line 83
    :cond_26
    iget-boolean v1, v0, Lcom/bytedance/sdk/a/b/a/g/c$a;->a:Z

    if-eqz v1, :cond_2b

    goto :goto_2d

    :cond_2b
    iget-object p1, v0, Lcom/bytedance/sdk/a/b/a/g/c$a;->b:Ljava/lang/String;
    :try_end_2d
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_2d} :catch_30
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_2d} :catch_2e

    :goto_2d
    return-object p1

    .line 84
    :catch_2e
    move-exception p1

    goto :goto_31

    :catch_30
    move-exception p1

    .line 85
    :goto_31
    const-string v0, "unable to get selected protocol"

    invoke-static {v0, p1}, Lcom/bytedance/sdk/a/b/a/c;->a(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/AssertionError;

    move-result-object p1

    throw p1
.end method

.method public a(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/net/ssl/SSLSocket;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/a/b/w;",
            ">;)V"
        }
    .end annotation

    .line 53
    invoke-static {p3}, Lcom/bytedance/sdk/a/b/a/g/c;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    .line 56
    :try_start_4
    const-class p3, Lcom/bytedance/sdk/a/b/a/g/e;

    invoke-virtual {p3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p3

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Class;

    iget-object v2, p0, Lcom/bytedance/sdk/a/b/a/g/c;->d:Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/bytedance/sdk/a/b/a/g/c;->e:Ljava/lang/Class;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    new-instance v2, Lcom/bytedance/sdk/a/b/a/g/c$a;

    invoke-direct {v2, p2}, Lcom/bytedance/sdk/a/b/a/g/c$a;-><init>(Ljava/util/List;)V

    invoke-static {p3, v1, v2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p2

    .line 58
    iget-object p3, p0, Lcom/bytedance/sdk/a/b/a/g/c;->a:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v3

    aput-object p2, v0, v4

    invoke-virtual {p3, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2c
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_2c} :catch_30
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_2c} :catch_2e

    .line 61
    nop

    .line 62
    return-void

    .line 59
    :catch_2e
    move-exception p1

    goto :goto_31

    :catch_30
    move-exception p1

    .line 60
    :goto_31
    const-string p2, "unable to set alpn"

    invoke-static {p2, p1}, Lcom/bytedance/sdk/a/b/a/c;->a(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/AssertionError;

    move-result-object p1

    throw p1
.end method

.method public b(Ljavax/net/ssl/SSLSocket;)V
    .registers 6

    .line 67
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/g/c;->c:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_c} :catch_10
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_c} :catch_e

    .line 70
    nop

    .line 71
    return-void

    .line 68
    :catch_e
    move-exception p1

    goto :goto_11

    :catch_10
    move-exception p1

    .line 69
    :goto_11
    const-string v0, "unable to remove alpn"

    invoke-static {v0, p1}, Lcom/bytedance/sdk/a/b/a/c;->a(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/AssertionError;

    move-result-object p1

    throw p1
.end method
