.class public Lcom/kwad/sdk/core/config/b;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/kwad/sdk/core/config/item/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/kwad/sdk/core/config/b;->a:Ljava/util/Map;

    return-void
.end method

.method private static a(Landroid/content/SharedPreferences$Editor;)V
    .registers 4

    if-eqz p0, :cond_24

    sget-object v0, Lcom/kwad/sdk/core/config/b;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v2, Lcom/kwad/sdk/core/config/b;->a:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kwad/sdk/core/config/item/a;

    invoke-virtual {v1, p0}, Lcom/kwad/sdk/core/config/item/a;->a(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_c

    :cond_24
    return-void
.end method

.method private static a(Landroid/content/SharedPreferences;)V
    .registers 4

    if-eqz p0, :cond_24

    sget-object v0, Lcom/kwad/sdk/core/config/b;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v2, Lcom/kwad/sdk/core/config/b;->a:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kwad/sdk/core/config/item/a;

    invoke-virtual {v1, p0}, Lcom/kwad/sdk/core/config/item/a;->a(Landroid/content/SharedPreferences;)V

    goto :goto_c

    :cond_24
    return-void
.end method

.method public static a(Lcom/kwad/sdk/core/config/item/a;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/kwad/sdk/core/config/item/a<",
            "TT;>;)V"
        }
    .end annotation

    sget-object v0, Lcom/kwad/sdk/core/config/b;->a:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/kwad/sdk/core/config/item/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static a(Lorg/json/JSONObject;)V
    .registers 4

    if-nez p0, :cond_3

    return-void

    :cond_3
    sget-object v0, Lcom/kwad/sdk/core/config/b;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_d
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v2, Lcom/kwad/sdk/core/config/b;->a:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kwad/sdk/core/config/item/a;

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual {v2, p0}, Lcom/kwad/sdk/core/config/item/a;->a(Lorg/json/JSONObject;)V

    goto :goto_d

    :cond_2b
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Z
    .registers 4

    const-class v0, Lcom/kwad/sdk/core/config/b;

    monitor-enter v0

    const/4 v1, 0x0

    if-eqz p0, :cond_1c

    :try_start_6
    const-string v2, "ksadsdk_config"

    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-static {p0}, Lcom/kwad/sdk/core/config/b;->a(Landroid/content/SharedPreferences$Editor;)V

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p0
    :try_end_17
    .catchall {:try_start_6 .. :try_end_17} :catchall_19

    monitor-exit v0

    return p0

    :catchall_19
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_1c
    monitor-exit v0

    return v1
.end method

.method public static declared-synchronized b(Landroid/content/Context;)V
    .registers 4

    const-class v0, Lcom/kwad/sdk/core/config/b;

    monitor-enter v0

    if-eqz p0, :cond_15

    :try_start_5
    const-string v1, "ksadsdk_config"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    if-eqz p0, :cond_15

    invoke-static {p0}, Lcom/kwad/sdk/core/config/b;->a(Landroid/content/SharedPreferences;)V
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_12

    goto :goto_15

    :catchall_12
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_15
    :goto_15
    monitor-exit v0

    return-void
.end method
