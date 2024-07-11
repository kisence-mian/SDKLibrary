.class public final Lcom/anythink/basead/e/c/b;
.super Ljava/lang/Object;


# static fields
.field private static b:Lcom/anythink/basead/e/c/b;


# instance fields
.field a:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/anythink/basead/e/c/b;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 34
    return-void
.end method

.method public static declared-synchronized a()Lcom/anythink/basead/e/c/b;
    .registers 2

    const-class v0, Lcom/anythink/basead/e/c/b;

    monitor-enter v0

    .line 37
    :try_start_3
    sget-object v1, Lcom/anythink/basead/e/c/b;->b:Lcom/anythink/basead/e/c/b;

    if-nez v1, :cond_e

    .line 38
    new-instance v1, Lcom/anythink/basead/e/c/b;

    invoke-direct {v1}, Lcom/anythink/basead/e/c/b;-><init>()V

    sput-object v1, Lcom/anythink/basead/e/c/b;->b:Lcom/anythink/basead/e/c/b;

    .line 40
    :cond_e
    sget-object v1, Lcom/anythink/basead/e/c/b;->b:Lcom/anythink/basead/e/c/b;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    .line 36
    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final declared-synchronized a(Landroid/content/Context;Ljava/lang/String;Lcom/anythink/core/common/d/h;Lcom/anythink/core/common/d/j;)V
    .registers 10

    monitor-enter p0

    .line 45
    :try_start_1
    invoke-virtual {p3}, Lcom/anythink/core/common/d/h;->b()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7c

    instance-of v0, p4, Lcom/anythink/core/common/d/v;

    if-eqz v0, :cond_7c

    .line 46
    move-object v0, p4

    check-cast v0, Lcom/anythink/core/common/d/v;

    invoke-virtual {v0}, Lcom/anythink/core/common/d/v;->q()I

    move-result v0
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_7e

    if-gtz v0, :cond_17

    .line 47
    monitor-exit p0

    return-void

    .line 50
    :cond_17
    :try_start_17
    check-cast p4, Lcom/anythink/core/common/d/v;

    .line 51
    iget-object v0, p0, Lcom/anythink/basead/e/c/b;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 52
    const/4 v1, 0x0

    if-nez v0, :cond_54

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 54
    sget-object v2, Lcom/anythink/core/common/b/e;->x:Ljava/lang/String;

    const-string v3, ""

    invoke-static {p1, v2, p2, v3}, Lcom/anythink/core/common/g/m;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_31
    .catchall {:try_start_17 .. :try_end_31} :catchall_7e

    .line 56
    :try_start_31
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 57
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_4d

    .line 58
    move v2, v1

    :goto_3d
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_4d

    .line 59
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_4a} :catch_4e
    .catchall {:try_start_31 .. :try_end_4a} :catchall_7e

    .line 58
    add-int/lit8 v2, v2, 0x1

    goto :goto_3d

    .line 64
    :cond_4d
    goto :goto_4f

    .line 62
    :catch_4e
    move-exception v2

    .line 65
    :goto_4f
    :try_start_4f
    iget-object v2, p0, Lcom/anythink/basead/e/c/b;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    :cond_54
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p4}, Lcom/anythink/core/common/d/v;->q()I

    move-result p4

    if-lt v2, p4, :cond_67

    .line 69
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p4

    add-int/lit8 p4, p4, -0x1

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 72
    :cond_67
    invoke-virtual {p3}, Lcom/anythink/core/common/d/h;->e()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, v1, p3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 73
    new-instance p3, Lorg/json/JSONArray;

    invoke-direct {p3, v0}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 75
    sget-object p4, Lcom/anythink/core/common/b/e;->x:Ljava/lang/String;

    invoke-virtual {p3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p4, p2, p3}, Lcom/anythink/core/common/g/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7c
    .catchall {:try_start_4f .. :try_end_7c} :catchall_7e

    .line 78
    :cond_7c
    monitor-exit p0

    return-void

    .line 44
    :catchall_7e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;
    .registers 6

    .line 81
    iget-object v0, p0, Lcom/anythink/basead/e/c/b;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 82
    if-nez v0, :cond_3a

    .line 83
    sget-object v1, Lcom/anythink/core/common/b/e;->x:Ljava/lang/String;

    const-string v2, ""

    invoke-static {p1, v1, p2, v2}, Lcom/anythink/core/common/g/m;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 85
    :try_start_12
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 86
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result p1

    if-lez p1, :cond_38

    .line 87
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_22} :catch_39

    .line 88
    const/4 v0, 0x0

    :goto_23
    :try_start_23
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_33

    .line 89
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_30} :catch_35

    .line 88
    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    :cond_33
    move-object v0, p1

    goto :goto_38

    .line 92
    :catch_35
    move-exception v0

    move-object v0, p1

    goto :goto_3a

    .line 94
    :cond_38
    :goto_38
    goto :goto_3a

    .line 92
    :catch_39
    move-exception p1

    .line 97
    :cond_3a
    :goto_3a
    if-eqz v0, :cond_4b

    .line 98
    iget-object p1, p0, Lcom/anythink/basead/e/c/b;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, p2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    .line 100
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 101
    return-object p1

    .line 104
    :cond_4b
    const/4 p1, 0x0

    return-object p1
.end method
