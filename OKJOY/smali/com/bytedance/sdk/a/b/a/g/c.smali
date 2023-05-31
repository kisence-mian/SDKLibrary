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
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final e:Ljava/lang/Class;
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
    .registers 9

    .prologue
    .line 92
    :try_start_0
    const-string v0, "org.eclipse.jetty.alpn.ALPN"

    .line 93
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "$Provider"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 95
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "$ClientProvider"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 96
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "$ServerProvider"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 97
    const-string v0, "put"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljavax/net/ssl/SSLSocket;

    aput-object v7, v2, v6

    const/4 v6, 0x1

    aput-object v1, v2, v6

    invoke-virtual {v3, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 98
    const-string v0, "get"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljavax/net/ssl/SSLSocket;

    aput-object v7, v2, v6

    invoke-virtual {v3, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 99
    const-string v0, "remove"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Ljavax/net/ssl/SSLSocket;

    aput-object v8, v6, v7

    invoke-virtual {v3, v0, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 100
    new-instance v0, Lcom/bytedance/sdk/a/b/a/g/c;

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/a/b/a/g/c;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/Class;Ljava/lang/Class;)V
    :try_end_7d
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_7d} :catch_7e
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_7d} :catch_81

    .line 105
    :goto_7d
    return-object v0

    .line 102
    :catch_7e
    move-exception v0

    .line 105
    :goto_7f
    const/4 v0, 0x0

    goto :goto_7d

    .line 102
    :catch_81
    move-exception v0

    goto :goto_7f
.end method


# virtual methods
.method public a(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 76
    :try_start_1
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/g/c;->b:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    .line 77
    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/reflect/Proxy;->getInvocationHandler(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/a/b/a/g/c$a;

    .line 78
    iget-boolean v2, v0, Lcom/bytedance/sdk/a/b/a/g/c$a;->a:Z

    if-nez v2, :cond_28

    iget-object v2, v0, Lcom/bytedance/sdk/a/b/a/g/c$a;->b:Ljava/lang/String;

    if-nez v2, :cond_28

    .line 79
    invoke-static {}, Lcom/bytedance/sdk/a/b/a/g/e;->b()Lcom/bytedance/sdk/a/b/a/g/e;

    move-result-object v0

    const/4 v2, 0x4

    const-string v3, "ALPN callback dropped: HTTP/2 is disabled. Is alpn-boot on the boot class path?"

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lcom/bytedance/sdk/a/b/a/g/e;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 83
    :goto_27
    return-object v1

    :cond_28
    iget-boolean v2, v0, Lcom/bytedance/sdk/a/b/a/g/c$a;->a:Z

    if-eqz v2, :cond_2f

    move-object v0, v1

    :goto_2d
    move-object v1, v0

    goto :goto_27

    :cond_2f
    iget-object v0, v0, Lcom/bytedance/sdk/a/b/a/g/c$a;->b:Ljava/lang/String;
    :try_end_31
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_31} :catch_3a
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_31} :catch_32

    goto :goto_2d

    .line 84
    :catch_32
    move-exception v0

    .line 85
    :goto_33
    const-string v1, "unable to get selected protocol"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/a/b/a/c;->a(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/AssertionError;

    move-result-object v0

    throw v0

    .line 84
    :catch_3a
    move-exception v0

    goto :goto_33
.end method

.method public a(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V
    .registers 9
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
    .line 53
    invoke-static {p3}, Lcom/bytedance/sdk/a/b/a/g/c;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 56
    :try_start_4
    const-class v1, Lcom/bytedance/sdk/a/b/a/g/e;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/bytedance/sdk/a/b/a/g/c;->d:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/bytedance/sdk/a/b/a/g/c;->e:Ljava/lang/Class;

    aput-object v4, v2, v3

    new-instance v3, Lcom/bytedance/sdk/a/b/a/g/c$a;

    invoke-direct {v3, v0}, Lcom/bytedance/sdk/a/b/a/g/c$a;-><init>(Ljava/util/List;)V

    invoke-static {v1, v2, v3}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    .line 58
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/g/c;->a:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2f
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_2f} :catch_38
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_2f} :catch_30

    .line 62
    return-void

    .line 59
    :catch_30
    move-exception v0

    .line 60
    :goto_31
    const-string v1, "unable to set alpn"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/a/b/a/c;->a(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/AssertionError;

    move-result-object v0

    throw v0

    .line 59
    :catch_38
    move-exception v0

    goto :goto_31
.end method

.method public b(Ljavax/net/ssl/SSLSocket;)V
    .registers 6

    .prologue
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
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_c} :catch_d
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_c} :catch_15

    .line 71
    return-void

    .line 68
    :catch_d
    move-exception v0

    .line 69
    :goto_e
    const-string v1, "unable to remove alpn"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/a/b/a/c;->a(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/AssertionError;

    move-result-object v0

    throw v0

    .line 68
    :catch_15
    move-exception v0

    goto :goto_e
.end method
