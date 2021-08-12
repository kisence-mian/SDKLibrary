.class public Lcom/kwad/sdk/utils/y;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/kwad/sdk/utils/y;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_13

    const/4 v0, 0x0

    const-string v1, "ksadsdk_config"

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    if-eqz p1, :cond_13

    sget-object v0, Lcom/kwad/sdk/core/config/c$a;->af:Lcom/kwad/sdk/core/config/item/j;

    invoke-virtual {v0, p1}, Lcom/kwad/sdk/core/config/item/j;->a(Landroid/content/SharedPreferences;)V

    :cond_13
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/kwad/sdk/utils/y;
    .registers 3

    sget-object v0, Lcom/kwad/sdk/utils/y;->a:Lcom/kwad/sdk/utils/y;

    if-nez v0, :cond_17

    const-class v0, Lcom/kwad/sdk/utils/y;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/kwad/sdk/utils/y;->a:Lcom/kwad/sdk/utils/y;

    if-nez v1, :cond_12

    new-instance v1, Lcom/kwad/sdk/utils/y;

    invoke-direct {v1, p0}, Lcom/kwad/sdk/utils/y;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/kwad/sdk/utils/y;->a:Lcom/kwad/sdk/utils/y;

    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw p0

    :cond_17
    :goto_17
    sget-object p0, Lcom/kwad/sdk/utils/y;->a:Lcom/kwad/sdk/utils/y;

    return-object p0
.end method

.method private a(Lcom/kwad/sdk/core/config/item/j$a;)V
    .registers 6

    if-nez p1, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x0

    iget-object v1, p1, Lcom/kwad/sdk/core/config/item/j$a;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_24

    iget-object v1, p1, Lcom/kwad/sdk/core/config/item/j$a;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/kwad/sdk/utils/y;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_24
    if-nez v0, :cond_27

    return-void

    :cond_27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p1, Lcom/kwad/sdk/core/config/item/j$a;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_5e

    iget-object v1, p1, Lcom/kwad/sdk/core/config/item/j$a;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3e
    :goto_3e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/kwad/sdk/utils/y;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3e

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3e

    :cond_5e
    iget-object p1, p1, Lcom/kwad/sdk/core/config/item/j$a;->b:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/kwad/sdk/utils/y;->a(Ljava/util/List;)Z

    move-result p1

    invoke-static {p1, v0}, Lcom/kwad/sdk/core/report/e;->a(ZLjava/util/List;)V

    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .registers 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    :try_start_8
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1
    :try_end_c
    .catchall {:try_start_8 .. :try_end_c} :catchall_10

    if-eqz p1, :cond_11

    const/4 p1, 0x1

    return p1

    :catchall_10
    move-exception p1

    :cond_11
    return v1
.end method

.method private a(Ljava/util/List;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_39

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_b

    goto :goto_39

    :cond_b
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    array-length v3, v1

    move v4, v0

    :goto_15
    if-ge v4, v3, :cond_39

    aget-object v5, v1, v4

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_36

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_23
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_36

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_23

    return v2

    :cond_36
    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    :cond_39
    :goto_39
    return v0
.end method


# virtual methods
.method public a()V
    .registers 2

    sget-object v0, Lcom/kwad/sdk/core/config/c$a;->af:Lcom/kwad/sdk/core/config/item/j;

    invoke-virtual {v0}, Lcom/kwad/sdk/core/config/item/j;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/core/config/item/j$a;

    if-eqz v0, :cond_d

    invoke-direct {p0, v0}, Lcom/kwad/sdk/utils/y;->a(Lcom/kwad/sdk/core/config/item/j$a;)V

    :cond_d
    return-void
.end method
