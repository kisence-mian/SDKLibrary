.class public Lcom/bytedance/sdk/openadsdk/core/f/d;
.super Ljava/lang/Object;
.source "PermissionsManager.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static e:Lcom/bytedance/sdk/openadsdk/core/f/d;

.field private static final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
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
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/bytedance/sdk/openadsdk/core/f/e;",
            ">;>;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bytedance/sdk/openadsdk/core/f/e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 33
    const-class v0, Lcom/bytedance/sdk/openadsdk/core/f/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/f/d;->a:Ljava/lang/String;

    .line 39
    const/4 v0, 0x0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/f/d;->e:Lcom/bytedance/sdk/openadsdk/core/f/d;

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/f/d;->f:Ljava/util/Map;

    .line 45
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/f/d;->f:Ljava/util/Map;

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v2

    const-string v3, "tt_request_permission_descript_location"

    invoke-static {v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/ab;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/f/d;->f:Ljava/util/Map;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v2

    const-string v3, "tt_request_permission_descript_location"

    invoke-static {v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/ab;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/f/d;->f:Ljava/util/Map;

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v2

    const-string v3, "tt_request_permission_descript_read_phone_state"

    invoke-static {v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/ab;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/f/d;->f:Ljava/util/Map;

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v2

    const-string v3, "tt_request_permission_descript_external_storage"

    invoke-static {v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/ab;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_81

    .line 50
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/f/d;->f:Ljava/util/Map;

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v2

    const-string v3, "tt_request_permission_descript_external_storage"

    invoke-static {v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/ab;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    :cond_81
    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/d;->b:Ljava/util/Set;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/d;->c:Ljava/util/List;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/d;->d:Ljava/util/List;

    .line 62
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/f/d;->b()V

    .line 63
    return-void
.end method

.method public static a()Lcom/bytedance/sdk/openadsdk/core/f/d;
    .registers 1

    .prologue
    .line 55
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/f/d;->e:Lcom/bytedance/sdk/openadsdk/core/f/d;

    if-nez v0, :cond_b

    .line 56
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/f/d;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/f/d;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/f/d;->e:Lcom/bytedance/sdk/openadsdk/core/f/d;

    .line 58
    :cond_b
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/f/d;->e:Lcom/bytedance/sdk/openadsdk/core/f/d;

    return-object v0
.end method

.method private declared-synchronized a(Lcom/bytedance/sdk/openadsdk/core/f/e;)V
    .registers 5
    .param p1    # Lcom/bytedance/sdk/openadsdk/core/f/e;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 116
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/d;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 117
    :cond_7
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 118
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 119
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eq v2, p1, :cond_1f

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_7

    .line 120
    :cond_1f
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_23

    goto :goto_7

    .line 116
    :catchall_23
    move-exception v0

    monitor-exit p0

    throw v0

    .line 123
    :cond_26
    :try_start_26
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/d;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 124
    :cond_2c
    :goto_2c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 125
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/f/e;

    .line 126
    if-ne v0, p1, :cond_2c

    .line 127
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_3d
    .catchall {:try_start_26 .. :try_end_3d} :catchall_23

    goto :goto_2c

    .line 130
    :cond_3e
    monitor-exit p0

    return-void
.end method

.method private declared-synchronized a([Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/f/e;)V
    .registers 5
    .param p1    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bytedance/sdk/openadsdk/core/f/e;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 99
    monitor-enter p0

    if-nez p2, :cond_5

    .line 105
    :goto_3
    monitor-exit p0

    return-void

    .line 102
    :cond_5
    :try_start_5
    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/openadsdk/core/f/e;->a([Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/d;->d:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/d;->c:Ljava/util/List;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_18

    goto :goto_3

    .line 99
    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a([Ljava/lang/String;[I[Ljava/lang/String;)V
    .registers 10
    .param p1    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 307
    :try_start_0
    array-length v0, p1

    .line 308
    array-length v1, p2

    if-ge v1, v0, :cond_4c

    .line 309
    array-length v0, p2

    move v2, v0

    .line 312
    :goto_6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/d;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 313
    :cond_c
    :goto_c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 314
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/f/e;

    .line 315
    const/4 v1, 0x0

    :goto_1f
    if-ge v1, v2, :cond_c

    .line 316
    if-eqz v0, :cond_2d

    aget-object v4, p1, v1

    aget v5, p2, v1

    invoke-virtual {v0, v4, v5}, Lcom/bytedance/sdk/openadsdk/core/f/e;->a(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_36

    .line 317
    :cond_2d
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_30} :catch_31

    goto :goto_c

    .line 327
    :catch_31
    move-exception v0

    .line 328
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 330
    :cond_35
    return-void

    .line 315
    :cond_36
    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    .line 322
    :cond_39
    :try_start_39
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f/d;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 323
    :goto_3f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_35

    .line 324
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 325
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_4b
    .catch Ljava/lang/Throwable; {:try_start_39 .. :try_end_4b} :catch_31

    goto :goto_3f

    :cond_4c
    move v2, v0

    goto :goto_6
.end method

.method private declared-synchronized b()V
    .registers 8

    .prologue
    .line 75
    monitor-enter p0

    :try_start_1
    const-class v0, Landroid/Manifest$permission;

    invoke-virtual {v0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    .line 76
    array-length v4, v3

    const/4 v0, 0x0

    move v2, v0

    :goto_a
    if-ge v2, v4, :cond_2a

    aget-object v0, v3, v2
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_2c

    .line 77
    const/4 v1, 0x0

    .line 79
    :try_start_f
    const-string v5, ""

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_17
    .catch Ljava/lang/IllegalAccessException; {:try_start_f .. :try_end_17} :catch_20
    .catchall {:try_start_f .. :try_end_17} :catchall_2c

    .line 83
    :goto_17
    :try_start_17
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/f/d;->b:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 76
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_a

    .line 80
    :catch_20
    move-exception v0

    .line 81
    sget-object v5, Lcom/bytedance/sdk/openadsdk/core/f/d;->a:Ljava/lang/String;

    const-string v6, "Could not access field"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_28
    .catchall {:try_start_17 .. :try_end_28} :catchall_2c

    move-object v0, v1

    goto :goto_17

    .line 85
    :cond_2a
    monitor-exit p0

    return-void

    .line 75
    :catchall_2c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private b(Landroid/app/Activity;[Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/f/e;)V
    .registers 8
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/bytedance/sdk/openadsdk/core/f/e;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 211
    array-length v2, p2

    const/4 v0, 0x0

    move v1, v0

    :goto_3
    if-ge v1, v2, :cond_19

    aget-object v0, p2, v1

    .line 213
    if-eqz p3, :cond_35

    .line 215
    :try_start_9
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/f/d;->b:Ljava/util/Set;

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1d

    .line 216
    sget-object v3, Lcom/bytedance/sdk/openadsdk/core/f/c;->c:Lcom/bytedance/sdk/openadsdk/core/f/c;

    invoke-virtual {p3, v0, v3}, Lcom/bytedance/sdk/openadsdk/core/f/e;->a(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/f/c;)Z
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_16} :catch_31

    move-result v0

    .line 223
    :goto_17
    if-eqz v0, :cond_35

    .line 232
    :cond_19
    invoke-direct {p0, p3}, Lcom/bytedance/sdk/openadsdk/core/f/d;->a(Lcom/bytedance/sdk/openadsdk/core/f/e;)V

    .line 233
    return-void

    .line 217
    :cond_1d
    :try_start_1d
    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/f/b;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_2a

    .line 219
    sget-object v3, Lcom/bytedance/sdk/openadsdk/core/f/c;->b:Lcom/bytedance/sdk/openadsdk/core/f/c;

    invoke-virtual {p3, v0, v3}, Lcom/bytedance/sdk/openadsdk/core/f/e;->a(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/f/c;)Z

    move-result v0

    goto :goto_17

    .line 221
    :cond_2a
    sget-object v3, Lcom/bytedance/sdk/openadsdk/core/f/c;->a:Lcom/bytedance/sdk/openadsdk/core/f/c;

    invoke-virtual {p3, v0, v3}, Lcom/bytedance/sdk/openadsdk/core/f/e;->a(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/f/c;)Z
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_2f} :catch_31

    move-result v0

    goto :goto_17

    .line 227
    :catch_31
    move-exception v0

    .line 229
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 211
    :cond_35
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3
.end method

.method private c(Landroid/app/Activity;[Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/f/e;)Ljava/util/List;
    .registers 9
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/bytedance/sdk/openadsdk/core/f/e;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "[",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/openadsdk/core/f/e;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 250
    new-instance v1, Ljava/util/ArrayList;

    array-length v0, p2

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 251
    array-length v2, p2

    const/4 v0, 0x0

    :goto_8
    if-ge v0, v2, :cond_30

    aget-object v3, p2, v0

    .line 252
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/f/d;->b:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1e

    .line 253
    if-eqz p3, :cond_1b

    .line 254
    sget-object v4, Lcom/bytedance/sdk/openadsdk/core/f/c;->c:Lcom/bytedance/sdk/openadsdk/core/f/c;

    invoke-virtual {p3, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/f/e;->a(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/f/c;)Z

    .line 251
    :cond_1b
    :goto_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 256
    :cond_1e
    invoke-virtual {p0, p1, v3}, Lcom/bytedance/sdk/openadsdk/core/f/d;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_28

    .line 257
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    .line 259
    :cond_28
    if-eqz p3, :cond_1b

    .line 260
    sget-object v4, Lcom/bytedance/sdk/openadsdk/core/f/c;->a:Lcom/bytedance/sdk/openadsdk/core/f/c;

    invoke-virtual {p3, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/f/e;->a(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/f/c;)Z

    goto :goto_1b

    .line 264
    :cond_30
    return-object v1
.end method


# virtual methods
.method public declared-synchronized a(Landroid/app/Activity;[Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/f/e;)V
    .registers 6
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/bytedance/sdk/openadsdk/core/f/e;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 177
    monitor-enter p0

    if-nez p1, :cond_5

    .line 197
    :goto_3
    monitor-exit p0

    return-void

    .line 181
    :cond_5
    :try_start_5
    invoke-direct {p0, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/f/d;->a([Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/f/e;)V

    .line 182
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_1a

    .line 183
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/f/d;->b(Landroid/app/Activity;[Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/f/e;)V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_11} :catch_12
    .catchall {:try_start_5 .. :try_end_11} :catchall_17

    goto :goto_3

    .line 194
    :catch_12
    move-exception v0

    .line 195
    :try_start_13
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_17

    goto :goto_3

    .line 177
    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0

    .line 185
    :cond_1a
    :try_start_1a
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/f/d;->c(Landroid/app/Activity;[Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/f/e;)Ljava/util/List;

    move-result-object v0

    .line 186
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 188
    invoke-direct {p0, p3}, Lcom/bytedance/sdk/openadsdk/core/f/d;->a(Lcom/bytedance/sdk/openadsdk/core/f/e;)V

    goto :goto_3

    .line 190
    :cond_28
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 191
    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/f/b;->a(Landroid/app/Activity;[Ljava/lang/String;I)V
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_38} :catch_12
    .catchall {:try_start_1a .. :try_end_38} :catchall_17

    goto :goto_3
.end method

.method public declared-synchronized a(Landroid/app/Activity;[Ljava/lang/String;[I)V
    .registers 9
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v4, -0x1

    .line 288
    monitor-enter p0

    :try_start_2
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 289
    const/4 v0, 0x0

    array-length v1, p2

    :goto_a
    if-ge v0, v1, :cond_28

    .line 290
    aget-object v2, p2, v0

    .line 291
    aget v3, p3, v0

    if-eq v3, v4, :cond_1e

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e()Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-static {p1, v2}, Lcom/bytedance/sdk/openadsdk/core/f/a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_25

    .line 292
    :cond_1e
    aget v2, p3, v0

    if-eq v2, v4, :cond_25

    .line 293
    const/4 v2, -0x1

    aput v2, p3, v0

    .line 289
    :cond_25
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 298
    :cond_28
    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, v0}, Lcom/bytedance/sdk/openadsdk/core/f/d;->a([Ljava/lang/String;[I[Ljava/lang/String;)V
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2c} :catch_2e
    .catchall {:try_start_2 .. :try_end_2c} :catchall_33

    .line 303
    :goto_2c
    monitor-exit p0

    return-void

    .line 300
    :catch_2e
    move-exception v0

    .line 301
    :try_start_2f
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_33

    goto :goto_2c

    .line 288
    :catchall_33
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 6
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 146
    monitor-enter p0

    if-nez p1, :cond_7

    .line 153
    :cond_5
    :goto_5
    monitor-exit p0

    return v1

    .line 149
    :cond_7
    :try_start_7
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e()Z

    move-result v2

    if-eqz v2, :cond_25

    .line 150
    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/f/a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/f/b;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_21

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/f/d;->b:Ljava/util/Set;

    .line 151
    invoke-interface {v2, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_23

    :cond_21
    :goto_21
    move v1, v0

    .line 150
    goto :goto_5

    :cond_23
    move v0, v1

    .line 151
    goto :goto_21

    .line 153
    :cond_25
    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/f/b;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_33

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/f/d;->b:Ljava/util/Set;

    .line 154
    invoke-interface {v2, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
    :try_end_30
    .catchall {:try_start_7 .. :try_end_30} :catchall_35

    move-result v2

    if-nez v2, :cond_5

    :cond_33
    move v1, v0

    goto :goto_5

    .line 146
    :catchall_35
    move-exception v0

    monitor-exit p0

    throw v0
.end method
