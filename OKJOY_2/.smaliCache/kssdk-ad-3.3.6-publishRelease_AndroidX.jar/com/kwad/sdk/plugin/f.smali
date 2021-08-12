.class public final Lcom/kwad/sdk/plugin/f;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "Lcom/kwad/sdk/plugin/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/kwad/sdk/plugin/f;->a:Ljava/util/Map;

    return-void
.end method

.method public static a(Ljava/lang/Class;)Lcom/kwad/sdk/plugin/d;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/kwad/sdk/plugin/d;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    sget-object v0, Lcom/kwad/sdk/plugin/f;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kwad/sdk/plugin/d;

    if-eqz v1, :cond_b

    return-object v1

    :cond_b
    :try_start_b
    const-class v1, Lcom/kwad/sdk/plugin/DevelopMangerPlugin;

    invoke-virtual {v1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    new-instance v3, Lcom/kwad/sdk/plugin/f$1;

    invoke-direct {v3}, Lcom/kwad/sdk/plugin/f$1;-><init>()V

    invoke-static {v1, v2, v3}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kwad/sdk/plugin/d;

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_2b} :catch_2c

    return-object v1

    :catch_2c
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_30
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Ljava/lang/Class;Lcom/kwad/sdk/plugin/d;)V
    .registers 3

    sget-object v0, Lcom/kwad/sdk/plugin/f;->a:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
