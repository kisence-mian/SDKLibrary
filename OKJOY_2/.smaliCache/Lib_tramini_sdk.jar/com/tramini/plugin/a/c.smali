.class public Lcom/tramini/plugin/a/c;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String;

.field private static b:Lcom/tramini/plugin/a/c;


# instance fields
.field private c:Landroid/content/Context;

.field private final d:I

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/tramini/plugin/a/c/d;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/tramini/plugin/a/c/d;",
            ">;"
        }
    .end annotation
.end field

.field private g:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 43
    const-class v0, Lcom/tramini/plugin/a/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tramini/plugin/a/c;->a:Ljava/lang/String;

    .line 44
    const/4 v0, 0x0

    sput-object v0, Lcom/tramini/plugin/a/c;->b:Lcom/tramini/plugin/a/c;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/tramini/plugin/a/c;->d:I

    .line 53
    iput-object p1, p0, Lcom/tramini/plugin/a/c;->c:Landroid/content/Context;

    .line 54
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/tramini/plugin/a/c;
    .registers 3

    const-class v0, Lcom/tramini/plugin/a/c;

    monitor-enter v0

    .line 57
    :try_start_3
    sget-object v1, Lcom/tramini/plugin/a/c;->b:Lcom/tramini/plugin/a/c;

    if-nez v1, :cond_e

    .line 58
    new-instance v1, Lcom/tramini/plugin/a/c;

    invoke-direct {v1, p0}, Lcom/tramini/plugin/a/c;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/tramini/plugin/a/c;->b:Lcom/tramini/plugin/a/c;

    .line 60
    :cond_e
    sget-object p0, Lcom/tramini/plugin/a/c;->b:Lcom/tramini/plugin/a/c;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object p0

    .line 56
    :catchall_12
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static synthetic a(Lcom/tramini/plugin/a/c;Ljava/util/Set;Ljava/util/Set;)V
    .registers 6

    .line 41
    nop

    .line 1214
    iget-object v0, p0, Lcom/tramini/plugin/a/c;->c:Landroid/content/Context;

    if-eqz v0, :cond_a5

    .line 1218
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tramini/plugin/a/c/d;

    .line 1219
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/tramini/plugin/a/c/d;->c:J

    .line 1221
    iget-object v1, p0, Lcom/tramini/plugin/a/c;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/tramini/plugin/a/b/d;->a(Landroid/content/Context;)Lcom/tramini/plugin/a/b/d;

    move-result-object v1

    invoke-static {v1}, Lcom/tramini/plugin/a/b/e;->b(Lcom/tramini/plugin/a/b/b;)Lcom/tramini/plugin/a/b/e;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tramini/plugin/a/b/e;->a(Lcom/tramini/plugin/a/c/d;)J

    .line 1222
    iget-object v1, p0, Lcom/tramini/plugin/a/c;->e:Ljava/util/Map;

    iget-object v2, v0, Lcom/tramini/plugin/a/c/d;->a:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1223
    goto :goto_9

    .line 1225
    :cond_30
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_34
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_55

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/tramini/plugin/a/c/d;

    .line 1227
    iget-object v0, p0, Lcom/tramini/plugin/a/c;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/tramini/plugin/a/b/d;->a(Landroid/content/Context;)Lcom/tramini/plugin/a/b/d;

    move-result-object v0

    invoke-static {v0}, Lcom/tramini/plugin/a/b/e;->b(Lcom/tramini/plugin/a/b/b;)Lcom/tramini/plugin/a/b/e;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/tramini/plugin/a/b/e;->b(Lcom/tramini/plugin/a/c/d;)J

    .line 1228
    iget-object v0, p0, Lcom/tramini/plugin/a/c;->e:Ljava/util/Map;

    iget-object p2, p2, Lcom/tramini/plugin/a/c/d;->a:Ljava/lang/String;

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1229
    goto :goto_34

    .line 1232
    :cond_55
    iget-object p1, p0, Lcom/tramini/plugin/a/c;->e:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    add-int/lit16 p1, p1, -0x1f4

    .line 1233
    if-lez p1, :cond_a5

    .line 1235
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 1236
    iget-object v0, p0, Lcom/tramini/plugin/a/c;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_82

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1237
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1238
    goto :goto_6e

    .line 1239
    :cond_82
    invoke-static {p2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1241
    const/4 v0, 0x0

    :goto_86
    if-ge v0, p1, :cond_a5

    .line 1242
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tramini/plugin/a/c/d;

    .line 1244
    iget-object v2, p0, Lcom/tramini/plugin/a/c;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/tramini/plugin/a/b/d;->a(Landroid/content/Context;)Lcom/tramini/plugin/a/b/d;

    move-result-object v2

    invoke-static {v2}, Lcom/tramini/plugin/a/b/e;->b(Lcom/tramini/plugin/a/b/b;)Lcom/tramini/plugin/a/b/e;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/tramini/plugin/a/b/e;->b(Lcom/tramini/plugin/a/c/d;)J

    .line 1245
    iget-object v2, p0, Lcom/tramini/plugin/a/c;->e:Ljava/util/Map;

    iget-object v1, v1, Lcom/tramini/plugin/a/c/d;->a:Ljava/lang/String;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1241
    add-int/lit8 v0, v0, 0x1

    goto :goto_86

    .line 41
    :cond_a5
    return-void
.end method

.method private a(Lcom/tramini/plugin/b/a;Ljava/util/Set;Ljava/util/Set;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tramini/plugin/b/a;",
            "Ljava/util/Set<",
            "Lcom/tramini/plugin/a/c/d;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/tramini/plugin/a/c/d;",
            ">;)V"
        }
    .end annotation

    .line 165
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 167
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tramini/plugin/a/c/d;

    .line 169
    :try_start_15
    iget-object v2, v2, Lcom/tramini/plugin/a/c/d;->a:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1b
    .catch Lorg/json/JSONException; {:try_start_15 .. :try_end_1b} :catch_1c

    .line 174
    goto :goto_9

    .line 170
    :catch_1c
    move-exception v2

    .line 175
    goto :goto_9

    .line 177
    :cond_1e
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_22
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tramini/plugin/a/c/d;

    .line 179
    :try_start_2e
    iget-object v2, v2, Lcom/tramini/plugin/a/c/d;->a:Ljava/lang/String;

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_34
    .catch Lorg/json/JSONException; {:try_start_2e .. :try_end_34} :catch_35

    .line 184
    goto :goto_22

    .line 180
    :catch_35
    move-exception v2

    .line 185
    goto :goto_22

    .line 187
    :cond_37
    invoke-static {p1}, Lcom/tramini/plugin/a/g/g;->a(Lcom/tramini/plugin/b/a;)Ljava/lang/String;

    move-result-object v1

    .line 189
    invoke-static {}, Lcom/tramini/plugin/a/f/a;->a()Lcom/tramini/plugin/a/f/a;

    move-result-object v2

    new-instance v3, Lcom/tramini/plugin/a/c$1;

    invoke-direct {v3, p0, p2, p3}, Lcom/tramini/plugin/a/c$1;-><init>(Lcom/tramini/plugin/a/c;Ljava/util/Set;Ljava/util/Set;)V

    invoke-virtual {v2, v3}, Lcom/tramini/plugin/a/f/a;->a(Ljava/lang/Runnable;)V

    .line 197
    invoke-static {}, Lcom/tramini/plugin/a/f/a;->a()Lcom/tramini/plugin/a/f/a;

    move-result-object p2

    invoke-virtual {p1}, Lcom/tramini/plugin/b/a;->b()Ljava/lang/String;

    move-result-object p1

    sget-object p3, Lcom/tramini/plugin/a/g/d;->a:Lorg/json/JSONObject;

    invoke-virtual {p2, v1, p1, p3, v0}, Lcom/tramini/plugin/a/f/a;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 198
    return-void
.end method

.method private a(Ljava/util/Set;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/tramini/plugin/a/c/d;",
            ">;)V"
        }
    .end annotation

    .line 201
    if-nez p1, :cond_3

    .line 202
    return-void

    .line 204
    :cond_3
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tramini/plugin/a/c/d;

    .line 205
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/tramini/plugin/a/c/d;->c:J

    .line 207
    iget-object v1, p0, Lcom/tramini/plugin/a/c;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/tramini/plugin/a/b/d;->a(Landroid/content/Context;)Lcom/tramini/plugin/a/b/d;

    move-result-object v1

    invoke-static {v1}, Lcom/tramini/plugin/a/b/c;->a(Lcom/tramini/plugin/a/b/b;)Lcom/tramini/plugin/a/b/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tramini/plugin/a/b/c;->a(Lcom/tramini/plugin/a/c/d;)J

    .line 208
    iget-object v1, p0, Lcom/tramini/plugin/a/c;->f:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 209
    goto :goto_7

    .line 210
    :cond_2c
    return-void
.end method

.method private a(Ljava/util/Set;Ljava/util/Set;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/tramini/plugin/a/c/d;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/tramini/plugin/a/c/d;",
            ">;)V"
        }
    .end annotation

    .line 214
    iget-object v0, p0, Lcom/tramini/plugin/a/c;->c:Landroid/content/Context;

    if-nez v0, :cond_5

    .line 215
    return-void

    .line 218
    :cond_5
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tramini/plugin/a/c/d;

    .line 219
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/tramini/plugin/a/c/d;->c:J

    .line 221
    iget-object v1, p0, Lcom/tramini/plugin/a/c;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/tramini/plugin/a/b/d;->a(Landroid/content/Context;)Lcom/tramini/plugin/a/b/d;

    move-result-object v1

    invoke-static {v1}, Lcom/tramini/plugin/a/b/e;->b(Lcom/tramini/plugin/a/b/b;)Lcom/tramini/plugin/a/b/e;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tramini/plugin/a/b/e;->a(Lcom/tramini/plugin/a/c/d;)J

    .line 222
    iget-object v1, p0, Lcom/tramini/plugin/a/c;->e:Ljava/util/Map;

    iget-object v2, v0, Lcom/tramini/plugin/a/c/d;->a:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    goto :goto_9

    .line 225
    :cond_30
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_34
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_55

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/tramini/plugin/a/c/d;

    .line 227
    iget-object v0, p0, Lcom/tramini/plugin/a/c;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/tramini/plugin/a/b/d;->a(Landroid/content/Context;)Lcom/tramini/plugin/a/b/d;

    move-result-object v0

    invoke-static {v0}, Lcom/tramini/plugin/a/b/e;->b(Lcom/tramini/plugin/a/b/b;)Lcom/tramini/plugin/a/b/e;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/tramini/plugin/a/b/e;->b(Lcom/tramini/plugin/a/c/d;)J

    .line 228
    iget-object v0, p0, Lcom/tramini/plugin/a/c;->e:Ljava/util/Map;

    iget-object p2, p2, Lcom/tramini/plugin/a/c/d;->a:Ljava/lang/String;

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    goto :goto_34

    .line 232
    :cond_55
    iget-object p1, p0, Lcom/tramini/plugin/a/c;->e:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    add-int/lit16 p1, p1, -0x1f4

    .line 233
    if-lez p1, :cond_a5

    .line 235
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 236
    iget-object v0, p0, Lcom/tramini/plugin/a/c;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_82

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 237
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 238
    goto :goto_6e

    .line 239
    :cond_82
    invoke-static {p2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 241
    const/4 v0, 0x0

    :goto_86
    if-ge v0, p1, :cond_a5

    .line 242
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tramini/plugin/a/c/d;

    .line 244
    iget-object v2, p0, Lcom/tramini/plugin/a/c;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/tramini/plugin/a/b/d;->a(Landroid/content/Context;)Lcom/tramini/plugin/a/b/d;

    move-result-object v2

    invoke-static {v2}, Lcom/tramini/plugin/a/b/e;->b(Lcom/tramini/plugin/a/b/b;)Lcom/tramini/plugin/a/b/e;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/tramini/plugin/a/b/e;->b(Lcom/tramini/plugin/a/c/d;)J

    .line 245
    iget-object v2, p0, Lcom/tramini/plugin/a/c;->e:Ljava/util/Map;

    iget-object v1, v1, Lcom/tramini/plugin/a/c/d;->a:Ljava/lang/String;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    add-int/lit8 v0, v0, 0x1

    goto :goto_86

    .line 248
    :cond_a5
    return-void
.end method

.method private a(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/tramini/plugin/a/c/d;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/tramini/plugin/a/c/d;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/tramini/plugin/a/c/d;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 142
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tramini/plugin/a/c/d;

    .line 143
    iget-object v1, v0, Lcom/tramini/plugin/a/c/d;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/tramini/plugin/a/g/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 144
    invoke-direct {p0, v1}, Lcom/tramini/plugin/a/c;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 146
    iget-object v1, v0, Lcom/tramini/plugin/a/c/d;->a:Ljava/lang/String;

    invoke-interface {p4, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3d

    .line 148
    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 149
    iget-object v0, v0, Lcom/tramini/plugin/a/c/d;->a:Ljava/lang/String;

    invoke-interface {p4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 152
    :cond_2d
    iget-object v1, v0, Lcom/tramini/plugin/a/c/d;->a:Ljava/lang/String;

    invoke-interface {p4, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 154
    invoke-interface {p3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 155
    iget-object v0, v0, Lcom/tramini/plugin/a/c/d;->a:Ljava/lang/String;

    invoke-interface {p4, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 158
    :cond_3d
    goto :goto_4

    .line 159
    :cond_3e
    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .registers 4

    .line 261
    iget-object v0, p0, Lcom/tramini/plugin/a/c;->g:Landroid/content/pm/PackageManager;

    if-nez v0, :cond_c

    .line 262
    iget-object v0, p0, Lcom/tramini/plugin/a/c;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/tramini/plugin/a/c;->g:Landroid/content/pm/PackageManager;

    .line 266
    :cond_c
    :try_start_c
    iget-object v0, p0, Lcom/tramini/plugin/a/c;->g:Landroid/content/pm/PackageManager;

    const/16 v1, 0x2000

    .line 267
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_13
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_c .. :try_end_13} :catch_15

    .line 268
    const/4 p1, 0x1

    return p1

    .line 269
    :catch_15
    move-exception p1

    .line 270
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public final a()V
    .registers 5

    .line 252
    invoke-static {}, Lcom/tramini/plugin/a/a/b;->a()Lcom/tramini/plugin/a/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tramini/plugin/a/a/b;->c()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 253
    invoke-static {}, Lcom/tramini/plugin/a/a/b;->a()Lcom/tramini/plugin/a/a/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tramini/plugin/a/a/b;->a(I)V

    .line 254
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMdd"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 255
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 256
    iget-object v2, p0, Lcom/tramini/plugin/a/c;->c:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "-"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "tramini"

    const-string v3, "P_IL_O"

    invoke-static {v2, v1, v3, v0}, Lcom/tramini/plugin/a/g/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    return-void
.end method

.method public final a(Lcom/tramini/plugin/b/a;Ljava/util/Set;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tramini/plugin/b/a;",
            "Ljava/util/Set<",
            "Lcom/tramini/plugin/a/c/d;",
            ">;)V"
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lcom/tramini/plugin/a/c;->c:Landroid/content/Context;

    if-nez v0, :cond_5

    .line 89
    return-void

    .line 92
    :cond_5
    sget-object v0, Lcom/tramini/plugin/a/g/d;->a:Lorg/json/JSONObject;

    if-nez v0, :cond_a

    .line 93
    return-void

    .line 96
    :cond_a
    invoke-virtual {p1}, Lcom/tramini/plugin/b/a;->k()Ljava/lang/String;

    move-result-object v0

    .line 97
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 98
    return-void

    .line 101
    :cond_15
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 102
    array-length v1, v0

    const/4 v2, 0x2

    if-ge v1, v2, :cond_20

    .line 103
    return-void

    .line 107
    :cond_20
    iget-object v1, p0, Lcom/tramini/plugin/a/c;->c:Landroid/content/Context;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    const/4 v3, 0x1

    aget-object v0, v0, v3

    invoke-static {v1, v2, v0}, Lcom/tramini/plugin/a/g/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 109
    if-ne v0, v3, :cond_2f

    .line 111
    return-void

    .line 115
    :cond_2f
    iget-object v0, p0, Lcom/tramini/plugin/a/c;->e:Ljava/util/Map;

    if-nez v0, :cond_3a

    .line 116
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tramini/plugin/a/c;->e:Ljava/util/Map;

    .line 118
    :cond_3a
    iget-object v0, p0, Lcom/tramini/plugin/a/c;->f:Ljava/util/Set;

    if-nez v0, :cond_45

    .line 119
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/tramini/plugin/a/c;->f:Ljava/util/Set;

    .line 122
    :cond_45
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 123
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 125
    new-instance v2, Ljava/util/HashSet;

    iget-object v3, p0, Lcom/tramini/plugin/a/c;->e:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 128
    invoke-direct {p0, p2}, Lcom/tramini/plugin/a/c;->a(Ljava/util/Set;)V

    .line 130
    iget-object p2, p0, Lcom/tramini/plugin/a/c;->f:Ljava/util/Set;

    invoke-direct {p0, p2, v0, v1, v2}, Lcom/tramini/plugin/a/c;->a(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V

    .line 132
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result p2

    if-nez p2, :cond_6f

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result p2

    if-nez p2, :cond_6f

    .line 133
    return-void

    .line 137
    :cond_6f
    invoke-direct {p0, p1, v0, v1}, Lcom/tramini/plugin/a/c;->a(Lcom/tramini/plugin/b/a;Ljava/util/Set;Ljava/util/Set;)V

    .line 138
    return-void
.end method

.method public final a(Z)V
    .registers 4

    .line 64
    iget-object v0, p0, Lcom/tramini/plugin/a/c;->c:Landroid/content/Context;

    if-nez v0, :cond_5

    .line 65
    return-void

    .line 68
    :cond_5
    iget-object v1, p0, Lcom/tramini/plugin/a/c;->e:Ljava/util/Map;

    if-nez v1, :cond_17

    .line 71
    invoke-static {v0}, Lcom/tramini/plugin/a/b/d;->a(Landroid/content/Context;)Lcom/tramini/plugin/a/b/d;

    move-result-object v0

    invoke-static {v0}, Lcom/tramini/plugin/a/b/e;->b(Lcom/tramini/plugin/a/b/b;)Lcom/tramini/plugin/a/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tramini/plugin/a/b/e;->e()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/tramini/plugin/a/c;->e:Ljava/util/Map;

    .line 74
    :cond_17
    if-nez p1, :cond_2e

    iget-object p1, p0, Lcom/tramini/plugin/a/c;->f:Ljava/util/Set;

    if-nez p1, :cond_2e

    .line 77
    iget-object p1, p0, Lcom/tramini/plugin/a/c;->c:Landroid/content/Context;

    invoke-static {p1}, Lcom/tramini/plugin/a/b/d;->a(Landroid/content/Context;)Lcom/tramini/plugin/a/b/d;

    move-result-object p1

    invoke-static {p1}, Lcom/tramini/plugin/a/b/c;->a(Lcom/tramini/plugin/a/b/b;)Lcom/tramini/plugin/a/b/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tramini/plugin/a/b/c;->c()Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/tramini/plugin/a/c;->f:Ljava/util/Set;

    return-void

    .line 80
    :cond_2e
    iget-object p1, p0, Lcom/tramini/plugin/a/c;->c:Landroid/content/Context;

    invoke-static {p1}, Lcom/tramini/plugin/a/b/d;->a(Landroid/content/Context;)Lcom/tramini/plugin/a/b/d;

    move-result-object p1

    invoke-static {p1}, Lcom/tramini/plugin/a/b/c;->a(Lcom/tramini/plugin/a/b/b;)Lcom/tramini/plugin/a/b/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tramini/plugin/a/b/c;->d()J

    .line 83
    return-void
.end method
