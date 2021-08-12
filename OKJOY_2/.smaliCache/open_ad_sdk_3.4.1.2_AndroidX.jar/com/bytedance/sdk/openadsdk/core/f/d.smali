.class public Lcom/bytedance/sdk/openadsdk/core/f/d;
.super Ljava/lang/Object;
.source "PermissionsManager.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static e:Lcom/bytedance/sdk/openadsdk/core/f/d;

.field private static final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/bytedance/sdk/openadsdk/core/f/e;",
            ">;>;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/core/f/e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 35
    const-class v0, Lcom/bytedance/sdk/openadsdk/core/f/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/f/d;->a:Ljava/lang/String;

    .line 41
    const/4 v0, 0x0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/f/d;->e:Lcom/bytedance/sdk/openadsdk/core/f/d;

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/f/d;->f:Ljava/util/Map;

    .line 47
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v1

    const-string v2, "tt_request_permission_descript_location"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ac;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ac;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v1

    const-string v2, "tt_request_permission_descript_read_phone_state"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ac;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v1

    const-string v2, "tt_request_permission_descript_external_storage"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ac;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v1, v3, :cond_73

    .line 52
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ac;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    :cond_73
    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/d;->b:Ljava/util/Set;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/d;->c:Ljava/util/List;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/d;->d:Ljava/util/List;

    .line 64
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/f/d;->b()V

    .line 65
    return-void
.end method

.method public static a()Lcom/bytedance/sdk/openadsdk/core/f/d;
    .registers 1

    .line 57
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/f/d;->e:Lcom/bytedance/sdk/openadsdk/core/f/d;

    if-nez v0, :cond_b

    .line 58
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/f/d;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/f/d;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/f/d;->e:Lcom/bytedance/sdk/openadsdk/core/f/d;

    .line 60
    :cond_b
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/f/d;->e:Lcom/bytedance/sdk/openadsdk/core/f/d;

    return-object v0
.end method

.method private declared-synchronized a(Lcom/bytedance/sdk/openadsdk/core/f/e;)V
    .registers 5

    monitor-enter p0

    .line 153
    :try_start_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/d;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 154
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 155
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 156
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eq v2, p1, :cond_1f

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_22

    .line 157
    :cond_1f
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 159
    :cond_22
    goto :goto_7

    .line 160
    :cond_23
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/d;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 161
    :goto_29
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 162
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/core/f/e;

    .line 163
    if-ne v1, p1, :cond_3a

    .line 164
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_3a
    .catchall {:try_start_1 .. :try_end_3a} :catchall_3d

    .line 166
    :cond_3a
    goto :goto_29

    .line 167
    :cond_3b
    monitor-exit p0

    return-void

    .line 152
    :catchall_3d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized a([Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/f/e;)V
    .registers 4

    monitor-enter p0

    .line 136
    if-nez p2, :cond_5

    .line 137
    monitor-exit p0

    return-void

    .line 139
    :cond_5
    :try_start_5
    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/openadsdk/core/f/e;->a([Ljava/lang/String;)V

    .line 140
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/f/d;->d:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/f/d;->c:Ljava/util/List;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_19

    .line 142
    monitor-exit p0

    return-void

    .line 135
    :catchall_19
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private a([Ljava/lang/String;[I[Ljava/lang/String;)V
    .registers 9

    .line 344
    :try_start_0
    array-length p3, p1

    .line 345
    array-length v0, p2

    if-ge v0, p3, :cond_5

    .line 346
    array-length p3, p2

    .line 349
    :cond_5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/d;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 350
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_34

    .line 351
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/core/f/e;

    .line 352
    const/4 v2, 0x0

    :goto_1e
    if-ge v2, p3, :cond_33

    .line 353
    if-eqz v1, :cond_30

    aget-object v3, p1, v2

    aget v4, p2, v2

    invoke-virtual {v1, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/f/e;->a(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2d

    goto :goto_30

    .line 352
    :cond_2d
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    .line 354
    :cond_30
    :goto_30
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 358
    :cond_33
    goto :goto_b

    .line 359
    :cond_34
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/f/d;->d:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 360
    :goto_3a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_47

    .line 361
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 362
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V
    :try_end_46
    .catchall {:try_start_0 .. :try_end_46} :catchall_48

    goto :goto_3a

    .line 366
    :cond_47
    goto :goto_4c

    .line 364
    :catchall_48
    move-exception p1

    .line 365
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 367
    :goto_4c
    return-void
.end method

.method private declared-synchronized b()V
    .registers 8

    monitor-enter p0

    .line 77
    :try_start_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-le v0, v1, :cond_c

    .line 78
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/f/d;->c()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_35

    .line 79
    monitor-exit p0

    return-void

    .line 81
    :cond_c
    :try_start_c
    const-class v0, Landroid/Manifest$permission;

    invoke-virtual {v0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 82
    array-length v1, v0

    const/4 v2, 0x0

    :goto_14
    if-ge v2, v1, :cond_33

    aget-object v3, v0, v2
    :try_end_18
    .catchall {:try_start_c .. :try_end_18} :catchall_35

    .line 83
    const/4 v4, 0x0

    .line 85
    :try_start_19
    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_21
    .catch Ljava/lang/IllegalAccessException; {:try_start_19 .. :try_end_21} :catch_23
    .catchall {:try_start_19 .. :try_end_21} :catchall_35

    .line 88
    move-object v4, v3

    goto :goto_2b

    .line 86
    :catch_23
    move-exception v3

    .line 87
    :try_start_24
    sget-object v5, Lcom/bytedance/sdk/openadsdk/core/f/d;->a:Ljava/lang/String;

    const-string v6, "Could not access field"

    invoke-static {v5, v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 89
    :goto_2b
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/f/d;->b:Ljava/util/Set;

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_30
    .catchall {:try_start_24 .. :try_end_30} :catchall_35

    .line 82
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 91
    :cond_33
    monitor-exit p0

    return-void

    .line 76
    :catchall_35
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private b(Landroid/app/Activity;[Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/f/e;)V
    .registers 8

    .line 248
    array-length v0, p2

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_36

    aget-object v2, p2, v1

    .line 250
    if-eqz p3, :cond_32

    .line 252
    :try_start_8
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/f/d;->b:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_17

    .line 253
    sget-object v3, Lcom/bytedance/sdk/openadsdk/core/f/c;->c:Lcom/bytedance/sdk/openadsdk/core/f/c;

    invoke-virtual {p3, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/f/e;->a(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/f/c;)Z

    move-result v2

    goto :goto_2a

    .line 254
    :cond_17
    invoke-static {p1, v2}, Lcom/bytedance/sdk/openadsdk/core/f/b;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_24

    .line 256
    sget-object v3, Lcom/bytedance/sdk/openadsdk/core/f/c;->b:Lcom/bytedance/sdk/openadsdk/core/f/c;

    invoke-virtual {p3, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/f/e;->a(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/f/c;)Z

    move-result v2

    goto :goto_2a

    .line 258
    :cond_24
    sget-object v3, Lcom/bytedance/sdk/openadsdk/core/f/c;->a:Lcom/bytedance/sdk/openadsdk/core/f/c;

    invoke-virtual {p3, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/f/e;->a(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/f/c;)Z

    move-result v2
    :try_end_2a
    .catchall {:try_start_8 .. :try_end_2a} :catchall_2d

    .line 260
    :goto_2a
    if-eqz v2, :cond_32

    .line 261
    goto :goto_36

    .line 264
    :catchall_2d
    move-exception v2

    .line 266
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_33

    .line 267
    :cond_32
    nop

    .line 248
    :goto_33
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 269
    :cond_36
    :goto_36
    invoke-direct {p0, p3}, Lcom/bytedance/sdk/openadsdk/core/f/d;->a(Lcom/bytedance/sdk/openadsdk/core/f/e;)V

    .line 270
    return-void
.end method

.method private c(Landroid/app/Activity;[Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/f/e;)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "[",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/openadsdk/core/f/e;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 287
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 288
    array-length v1, p2

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_30

    aget-object v3, p2, v2

    .line 289
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/f/d;->b:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1c

    .line 290
    if-eqz p3, :cond_2d

    .line 291
    sget-object v4, Lcom/bytedance/sdk/openadsdk/core/f/c;->c:Lcom/bytedance/sdk/openadsdk/core/f/c;

    invoke-virtual {p3, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/f/e;->a(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/f/c;)Z

    goto :goto_2d

    .line 293
    :cond_1c
    invoke-virtual {p0, p1, v3}, Lcom/bytedance/sdk/openadsdk/core/f/d;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_26

    .line 294
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2d

    .line 296
    :cond_26
    if-eqz p3, :cond_2d

    .line 297
    sget-object v4, Lcom/bytedance/sdk/openadsdk/core/f/c;->a:Lcom/bytedance/sdk/openadsdk/core/f/c;

    invoke-virtual {p3, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/f/e;->a(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/f/c;)Z

    .line 288
    :cond_2d
    :goto_2d
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 301
    :cond_30
    return-object v0
.end method

.method private c()V
    .registers 5

    .line 95
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v0

    .line 96
    if-nez v0, :cond_7

    .line 97
    return-void

    .line 100
    :cond_7
    :try_start_7
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 101
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 102
    if-nez v1, :cond_12

    .line 103
    return-void

    .line 105
    :cond_12
    const/16 v2, 0x1000

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 106
    if-nez v0, :cond_1b

    .line 107
    return-void

    .line 109
    :cond_1b
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 110
    if-eqz v0, :cond_3b

    array-length v1, v0

    if-nez v1, :cond_23

    goto :goto_3b

    .line 113
    :cond_23
    const/4 v1, 0x0

    :goto_24
    array-length v2, v0

    if-ge v1, v2, :cond_3a

    .line 114
    aget-object v2, v0, v1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 115
    goto :goto_37

    .line 117
    :cond_30
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/f/d;->b:Ljava/util/Set;

    aget-object v3, v0, v1

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_37
    .catchall {:try_start_7 .. :try_end_37} :catchall_3c

    .line 113
    :goto_37
    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    .line 121
    :cond_3a
    goto :goto_3d

    .line 111
    :cond_3b
    :goto_3b
    return-void

    .line 119
    :catchall_3c
    move-exception v0

    .line 122
    :goto_3d
    return-void
.end method


# virtual methods
.method public declared-synchronized a(Landroid/app/Activity;[Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/f/e;)V
    .registers 6

    monitor-enter p0

    .line 214
    if-nez p1, :cond_5

    .line 215
    monitor-exit p0

    return-void

    .line 218
    :cond_5
    :try_start_5
    invoke-direct {p0, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/f/d;->a([Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/f/e;)V

    .line 219
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_12

    .line 220
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/f/d;->b(Landroid/app/Activity;[Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/f/e;)V

    goto :goto_30

    .line 222
    :cond_12
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/f/d;->c(Landroid/app/Activity;[Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/f/e;)Ljava/util/List;

    move-result-object p2

    .line 223
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 225
    invoke-direct {p0, p3}, Lcom/bytedance/sdk/openadsdk/core/f/d;->a(Lcom/bytedance/sdk/openadsdk/core/f/e;)V

    goto :goto_30

    .line 227
    :cond_20
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    new-array p3, p3, [Ljava/lang/String;

    invoke-interface {p2, p3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    .line 228
    const/4 p3, 0x1

    invoke-static {p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/f/b;->a(Landroid/app/Activity;[Ljava/lang/String;I)V
    :try_end_30
    .catchall {:try_start_5 .. :try_end_30} :catchall_31

    .line 233
    :goto_30
    goto :goto_35

    .line 231
    :catchall_31
    move-exception p1

    .line 232
    :try_start_32
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_37

    .line 234
    :goto_35
    monitor-exit p0

    return-void

    .line 213
    :catchall_37
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Landroid/app/Activity;[Ljava/lang/String;[I)V
    .registers 9

    monitor-enter p0

    .line 325
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 326
    const/4 v0, 0x0

    array-length v1, p2

    :goto_9
    if-ge v0, v1, :cond_27

    .line 327
    aget-object v2, p2, v0

    .line 328
    aget v3, p3, v0

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1e

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/ad;->e()Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-static {p1, v2}, Lcom/bytedance/sdk/openadsdk/core/f/a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_24

    .line 329
    :cond_1e
    aget v2, p3, v0

    if-eq v2, v4, :cond_24

    .line 330
    aput v4, p3, v0

    .line 326
    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 335
    :cond_27
    const/4 p1, 0x0

    invoke-direct {p0, p2, p3, p1}, Lcom/bytedance/sdk/openadsdk/core/f/d;->a([Ljava/lang/String;[I[Ljava/lang/String;)V
    :try_end_2b
    .catchall {:try_start_1 .. :try_end_2b} :catchall_2c

    .line 339
    goto :goto_30

    .line 337
    :catchall_2c
    move-exception p1

    .line 338
    :try_start_2d
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_32

    .line 340
    :goto_30
    monitor-exit p0

    return-void

    .line 324
    :catchall_32
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 6

    monitor-enter p0

    .line 183
    const/4 v0, 0x0

    if-nez p1, :cond_6

    .line 184
    monitor-exit p0

    return v0

    .line 186
    :cond_6
    :try_start_6
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/ad;->e()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_26

    .line 187
    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/f/a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/f/b;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_21

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/f/d;->b:Ljava/util/Set;

    .line 188
    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1
    :try_end_1f
    .catchall {:try_start_6 .. :try_end_1f} :catchall_37

    if-nez p1, :cond_23

    :cond_21
    move v0, v2

    goto :goto_24

    :cond_23
    nop

    .line 187
    :goto_24
    monitor-exit p0

    return v0

    .line 190
    :cond_26
    :try_start_26
    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/f/b;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_34

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/f/d;->b:Ljava/util/Set;

    .line 191
    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1
    :try_end_32
    .catchall {:try_start_26 .. :try_end_32} :catchall_37

    if-nez p1, :cond_35

    :cond_34
    move v0, v2

    .line 190
    :cond_35
    monitor-exit p0

    return v0

    .line 182
    :catchall_37
    move-exception p1

    monitor-exit p0

    throw p1
.end method
