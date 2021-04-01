.class public Lcom/bytedance/applog/b/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final f:[Ljava/lang/String;


# instance fields
.field private a:Z

.field private final b:Landroid/content/Context;

.field private final c:Lcom/bytedance/applog/b/h;

.field private d:Lorg/json/JSONObject;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bytedance/applog/b/c;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Landroid/content/SharedPreferences;

.field private h:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 58
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "channel"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "package"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "app_version"

    aput-object v2, v0, v1

    sput-object v0, Lcom/bytedance/applog/b/i;->f:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/applog/b/h;)V
    .registers 5

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/bytedance/applog/b/i;->e:Ljava/util/ArrayList;

    .line 148
    const/4 v0, 0x0

    iput v0, p0, Lcom/bytedance/applog/b/i;->h:I

    .line 63
    iput-object p1, p0, Lcom/bytedance/applog/b/i;->b:Landroid/content/Context;

    .line 64
    iput-object p2, p0, Lcom/bytedance/applog/b/i;->c:Lcom/bytedance/applog/b/h;

    .line 65
    invoke-virtual {p2}, Lcom/bytedance/applog/b/h;->d()Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/applog/b/i;->g:Landroid/content/SharedPreferences;

    .line 66
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/bytedance/applog/b/i;->d:Lorg/json/JSONObject;

    .line 67
    iget-object v0, p0, Lcom/bytedance/applog/b/i;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/applog/b/i;->g:Landroid/content/SharedPreferences;

    invoke-static {v0, v1}, Lcom/bytedance/a/b;->a(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    .line 68
    return-void
.end method

.method private a(Ljava/util/Set;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 308
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 309
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 310
    :cond_9
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 311
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 313
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    .line 316
    :cond_24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 454
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 455
    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 457
    :cond_9
    return-void
.end method

.method private a(Lcom/bytedance/applog/b/c;)Z
    .registers 5

    .prologue
    .line 252
    iget-object v0, p0, Lcom/bytedance/applog/b/i;->c:Lcom/bytedance/applog/b/h;

    invoke-virtual {v0}, Lcom/bytedance/applog/b/h;->u()Z

    move-result v0

    if-nez v0, :cond_33

    iget-boolean v0, p1, Lcom/bytedance/applog/b/c;->d:Z

    if-eqz v0, :cond_33

    const/4 v0, 0x1

    .line 253
    :goto_d
    sget-boolean v1, Lcom/bytedance/applog/util/i;->b:Z

    if-eqz v1, :cond_32

    .line 254
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "needSyncFromSub "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/bytedance/applog/util/i;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 256
    :cond_32
    return v0

    .line 252
    :cond_33
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private declared-synchronized b(Lorg/json/JSONObject;)V
    .registers 8

    .prologue
    .line 269
    monitor-enter p0

    if-nez p1, :cond_b

    .line 270
    :try_start_3
    const-string v0, "null abconfig"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bytedance/applog/util/i;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_6a

    .line 305
    :cond_9
    :goto_9
    monitor-exit p0

    return-void

    .line 274
    :cond_b
    :try_start_b
    invoke-direct {p0}, Lcom/bytedance/applog/b/i;->r()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "ab_version"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 275
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 276
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 277
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 278
    array-length v3, v1

    const/4 v0, 0x0

    :goto_28
    if-ge v0, v3, :cond_38

    aget-object v4, v1, v0

    .line 279
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_35

    .line 280
    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 278
    :cond_35
    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    .line 284
    :cond_38
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 285
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 286
    :cond_41
    :goto_41
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 287
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 288
    instance-of v4, v0, Ljava/lang/String;

    if-eqz v4, :cond_41

    .line 289
    check-cast v0, Ljava/lang/String;

    .line 290
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_54
    .catchall {:try_start_b .. :try_end_54} :catchall_6a

    move-result v4

    if-nez v4, :cond_41

    .line 292
    :try_start_57
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 293
    const-string v4, "vid"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 294
    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_64
    .catch Lorg/json/JSONException; {:try_start_57 .. :try_end_64} :catch_65
    .catchall {:try_start_57 .. :try_end_64} :catchall_6a

    goto :goto_41

    .line 295
    :catch_65
    move-exception v0

    .line 296
    :try_start_66
    invoke-static {v0}, Lcom/bytedance/applog/util/i;->a(Ljava/lang/Throwable;)V
    :try_end_69
    .catchall {:try_start_66 .. :try_end_69} :catchall_6a

    goto :goto_41

    .line 269
    :catchall_6a
    move-exception v0

    monitor-exit p0

    throw v0

    .line 302
    :cond_6d
    :try_start_6d
    invoke-interface {v2, v3}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 303
    const-string v0, "ab_version"

    invoke-direct {p0, v2}, Lcom/bytedance/applog/b/i;->a(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/bytedance/applog/b/i;->b(Ljava/lang/String;Ljava/lang/Object;)Z
    :try_end_79
    .catchall {:try_start_6d .. :try_end_79} :catchall_6a

    goto :goto_9
.end method

.method private b(Ljava/lang/String;Ljava/lang/Object;)Z
    .registers 7

    .prologue
    .line 430
    const/4 v0, 0x0

    .line 431
    invoke-direct {p0}, Lcom/bytedance/applog/b/i;->r()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 432
    if-eqz p2, :cond_11

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    :cond_11
    if-nez p2, :cond_27

    if-eqz v1, :cond_27

    .line 434
    :cond_15
    monitor-enter p0

    .line 436
    :try_start_16
    iget-object v0, p0, Lcom/bytedance/applog/b/i;->d:Lorg/json/JSONObject;

    .line 437
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 438
    invoke-static {v2, v0}, Lcom/bytedance/applog/util/k;->b(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 439
    invoke-virtual {v2, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 440
    iput-object v2, p0, Lcom/bytedance/applog/b/i;->d:Lorg/json/JSONObject;
    :try_end_25
    .catch Lorg/json/JSONException; {:try_start_16 .. :try_end_25} :catch_53
    .catchall {:try_start_16 .. :try_end_25} :catchall_58

    .line 444
    :goto_25
    :try_start_25
    monitor-exit p0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_58

    .line 445
    const/4 v0, 0x1

    .line 448
    :cond_27
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateHeader, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/bytedance/applog/util/i;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 450
    return v0

    .line 441
    :catch_53
    move-exception v0

    .line 442
    :try_start_54
    invoke-static {v0}, Lcom/bytedance/applog/util/i;->a(Ljava/lang/Throwable;)V

    goto :goto_25

    .line 444
    :catchall_58
    move-exception v0

    monitor-exit p0
    :try_end_5a
    .catchall {:try_start_54 .. :try_end_5a} :catchall_58

    throw v0
.end method

.method static d(Ljava/lang/String;)Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 460
    if-eqz p0, :cond_11

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    move v2, v1

    .line 461
    :goto_8
    const/16 v1, 0xd

    if-lt v2, v1, :cond_10

    const/16 v1, 0x80

    if-le v2, v1, :cond_13

    .line 475
    :cond_10
    :goto_10
    return v0

    :cond_11
    move v2, v0

    .line 460
    goto :goto_8

    :cond_13
    move v1, v0

    .line 464
    :goto_14
    if-ge v1, v2, :cond_39

    .line 465
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 466
    const/16 v4, 0x30

    if-lt v3, v4, :cond_22

    const/16 v4, 0x39

    if-le v3, v4, :cond_36

    :cond_22
    const/16 v4, 0x61

    if-lt v3, v4, :cond_2a

    const/16 v4, 0x66

    if-le v3, v4, :cond_36

    :cond_2a
    const/16 v4, 0x41

    if-lt v3, v4, :cond_32

    const/16 v4, 0x46

    if-le v3, v4, :cond_36

    :cond_32
    const/16 v4, 0x2d

    if-ne v3, v4, :cond_10

    .line 464
    :cond_36
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 475
    :cond_39
    const/4 v0, 0x1

    goto :goto_10
.end method

.method public static e(Ljava/lang/String;)Z
    .registers 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 483
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2b

    const-string v0, "unknown"

    .line 484
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2b

    const-string v0, "Null"

    .line 485
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2b

    move v0, v1

    .line 488
    :goto_19
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_2f

    .line 489
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x30

    if-eq v3, v4, :cond_2c

    move v0, v1

    .line 494
    :goto_28
    if-nez v0, :cond_2b

    move v1, v2

    .line 496
    :cond_2b
    return v1

    .line 488
    :cond_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    :cond_2f
    move v0, v2

    goto :goto_28
.end method

.method private r()Lorg/json/JSONObject;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 127
    iget-object v0, p0, Lcom/bytedance/applog/b/i;->d:Lorg/json/JSONObject;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/bytedance/applog/b/i;->r()Lorg/json/JSONObject;

    move-result-object v0

    .line 103
    const/4 v1, 0x0

    .line 104
    if-eqz v0, :cond_12

    .line 105
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 106
    if-eqz v0, :cond_12

    .line 114
    :goto_d
    if-nez v0, :cond_10

    .line 117
    :goto_f
    return-object p2

    :cond_10
    move-object p2, v0

    goto :goto_f

    :cond_12
    move-object v0, v1

    goto :goto_d
.end method

.method public a()Lorg/json/JSONObject;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/bytedance/applog/b/i;->a:Z

    if-eqz v0, :cond_9

    invoke-direct {p0}, Lcom/bytedance/applog/b/i;->r()Lorg/json/JSONObject;

    move-result-object v0

    :goto_8
    return-object v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public a(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 411
    const-string v0, "ab_sdk_version"

    invoke-direct {p0, v0, p1}, Lcom/bytedance/applog/b/i;->b(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 412
    iget-object v0, p0, Lcom/bytedance/applog/b/i;->c:Lcom/bytedance/applog/b/h;

    invoke-virtual {v0, p1}, Lcom/bytedance/applog/b/h;->a(Ljava/lang/String;)V

    .line 414
    :cond_d
    return-void
.end method

.method public a(Ljava/util/HashMap;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 320
    const/4 v0, 0x0

    .line 321
    if-eqz p1, :cond_51

    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_51

    .line 323
    :try_start_9
    invoke-direct {p0}, Lcom/bytedance/applog/b/i;->r()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "custom"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 324
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V
    :try_end_18
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_18} :catch_61

    .line 325
    if-eqz v1, :cond_1d

    .line 326
    :try_start_1a
    invoke-static {v2, v1}, Lcom/bytedance/applog/util/k;->b(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 328
    :cond_1d
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_25
    :goto_25
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 329
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_25

    .line 330
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4a
    .catch Lorg/json/JSONException; {:try_start_1a .. :try_end_4a} :catch_4b

    goto :goto_25

    .line 333
    :catch_4b
    move-exception v0

    move-object v1, v0

    move-object v0, v2

    .line 334
    :goto_4e
    invoke-static {v1}, Lcom/bytedance/applog/util/i;->a(Ljava/lang/Throwable;)V

    .line 337
    :cond_51
    :goto_51
    const-string v1, "custom"

    invoke-direct {p0, v1, v0}, Lcom/bytedance/applog/b/i;->b(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 338
    iget-object v1, p0, Lcom/bytedance/applog/b/i;->c:Lcom/bytedance/applog/b/h;

    invoke-virtual {v1, v0}, Lcom/bytedance/applog/b/h;->a(Lorg/json/JSONObject;)V

    .line 340
    :cond_5e
    return-void

    :cond_5f
    move-object v0, v2

    .line 335
    goto :goto_51

    .line 333
    :catch_61
    move-exception v1

    goto :goto_4e
.end method

.method public a(Lorg/json/JSONObject;)V
    .registers 3

    .prologue
    .line 260
    iget-object v0, p0, Lcom/bytedance/applog/b/i;->c:Lcom/bytedance/applog/b/h;

    invoke-virtual {v0, p1}, Lcom/bytedance/applog/b/h;->b(Lorg/json/JSONObject;)V

    .line 261
    invoke-direct {p0, p1}, Lcom/bytedance/applog/b/i;->b(Lorg/json/JSONObject;)V

    .line 262
    return-void
.end method

.method public a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 16

    .prologue
    .line 522
    sget-boolean v0, Lcom/bytedance/applog/util/i;->b:Z

    if-eqz v0, :cond_39

    .line 523
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saveRegisterInfo, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bytedance/applog/util/i;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 526
    :cond_39
    invoke-static {p2}, Lcom/bytedance/applog/b/i;->e(Ljava/lang/String;)Z

    move-result v8

    .line 527
    invoke-static {p3}, Lcom/bytedance/applog/b/i;->e(Ljava/lang/String;)Z

    move-result v9

    .line 529
    :try_start_41
    invoke-static {p4}, Lcom/bytedance/applog/b/i;->e(Ljava/lang/String;)Z

    move-result v0

    .line 531
    iget-object v1, p0, Lcom/bytedance/applog/b/i;->g:Landroid/content/SharedPreferences;

    const-string v2, "version_code"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 532
    invoke-direct {p0}, Lcom/bytedance/applog/b/i;->r()Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "version_code"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    .line 534
    iget-object v3, p0, Lcom/bytedance/applog/b/i;->g:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    .line 535
    if-eq v1, v2, :cond_66

    .line 536
    const-string v1, "version_code"

    invoke-interface {v10, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 539
    :cond_66
    if-eqz v8, :cond_e4

    if-eqz v9, :cond_e4

    .line 540
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 541
    const-string v1, "register_time"

    invoke-interface {v10, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 542
    const-string v1, "register_time"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/bytedance/applog/b/i;->b(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 549
    :cond_7c
    :goto_7c
    const/4 v1, 0x0

    .line 550
    invoke-direct {p0}, Lcom/bytedance/applog/b/i;->r()Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "device_id"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 551
    if-eqz v8, :cond_99

    const-string v3, "device_id"

    invoke-direct {p0, v3, p2}, Lcom/bytedance/applog/b/i;->b(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_99

    .line 552
    const-string v1, "device_id"

    invoke-interface {v10, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 553
    const/4 v1, 0x1

    .line 556
    :cond_99
    invoke-direct {p0}, Lcom/bytedance/applog/b/i;->r()Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "install_id"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 557
    if-eqz v9, :cond_b5

    const-string v3, "install_id"

    invoke-direct {p0, v3, p3}, Lcom/bytedance/applog/b/i;->b(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b5

    .line 558
    const-string v1, "install_id"

    invoke-interface {v10, v1, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 559
    const/4 v1, 0x1

    .line 562
    :cond_b5
    invoke-direct {p0}, Lcom/bytedance/applog/b/i;->r()Lorg/json/JSONObject;

    move-result-object v3

    const-string v5, "ssid"

    const-string v6, ""

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 563
    if-eqz v0, :cond_d1

    const-string v0, "ssid"

    invoke-direct {p0, v0, p4}, Lcom/bytedance/applog/b/i;->b(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d1

    .line 564
    const-string v0, "ssid"

    invoke-interface {v10, v0, p4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 565
    const/4 v1, 0x1

    .line 568
    :cond_d1
    invoke-static {}, Lcom/bytedance/applog/AppLog;->getDataObserver()Lcom/bytedance/applog/IDataObserver;

    move-result-object v0

    move-object v3, p2

    move-object v5, p3

    move-object v7, p4

    invoke-interface/range {v0 .. v7}, Lcom/bytedance/applog/IDataObserver;->onRemoteIdGet(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 573
    :goto_de
    if-eqz v8, :cond_fb

    if-eqz v9, :cond_fb

    const/4 v0, 0x1

    :goto_e3
    return v0

    .line 543
    :cond_e4
    if-nez v8, :cond_7c

    .line 544
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 545
    const-string v2, "response"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 546
    const-string v2, "tt_fetch_did_error"

    invoke-static {v2, v1}, Lcom/bytedance/applog/AppLog;->onEventV3(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_f5
    .catch Lorg/json/JSONException; {:try_start_41 .. :try_end_f5} :catch_f6

    goto :goto_7c

    .line 570
    :catch_f6
    move-exception v0

    .line 571
    invoke-static {v0}, Lcom/bytedance/applog/util/i;->a(Ljava/lang/Throwable;)V

    goto :goto_de

    .line 573
    :cond_fb
    const/4 v0, 0x0

    goto :goto_e3
.end method

.method public b()Lorg/json/JSONObject;
    .registers 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/bytedance/applog/b/i;->a()Lorg/json/JSONObject;

    move-result-object v1

    .line 83
    if-eqz v1, :cond_28

    .line 85
    :try_start_6
    const-string v0, "oaid"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 86
    invoke-static {v0}, Lcom/bytedance/a/b;->a(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    .line 87
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_28

    .line 88
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 89
    invoke-static {v0, v1}, Lcom/bytedance/applog/util/k;->b(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 90
    const-string v3, "oaid"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_23} :catch_24

    .line 97
    :goto_23
    return-object v0

    .line 93
    :catch_24
    move-exception v0

    .line 94
    invoke-static {v0}, Lcom/bytedance/applog/util/i;->a(Ljava/lang/Throwable;)V

    :cond_28
    move-object v0, v1

    .line 97
    goto :goto_23
.end method

.method public b(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 417
    const-string v0, "user_agent"

    invoke-direct {p0, v0, p1}, Lcom/bytedance/applog/b/i;->b(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 418
    iget-object v0, p0, Lcom/bytedance/applog/b/i;->c:Lcom/bytedance/applog/b/h;

    invoke-virtual {v0, p1}, Lcom/bytedance/applog/b/h;->d(Ljava/lang/String;)V

    .line 420
    :cond_d
    return-void
.end method

.method public c()I
    .registers 5

    .prologue
    const/4 v1, -0x1

    .line 131
    iget-boolean v0, p0, Lcom/bytedance/applog/b/i;->a:Z

    if-eqz v0, :cond_29

    invoke-direct {p0}, Lcom/bytedance/applog/b/i;->r()Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "version_code"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 132
    :goto_f
    const/4 v2, 0x0

    :goto_10
    const/4 v3, 0x3

    if-ge v2, v3, :cond_2d

    if-ne v0, v1, :cond_2d

    .line 133
    invoke-virtual {p0}, Lcom/bytedance/applog/b/i;->e()Z

    .line 134
    iget-boolean v0, p0, Lcom/bytedance/applog/b/i;->a:Z

    if-eqz v0, :cond_2b

    invoke-direct {p0}, Lcom/bytedance/applog/b/i;->r()Lorg/json/JSONObject;

    move-result-object v0

    const-string v3, "version_code"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 132
    :goto_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_29
    move v0, v1

    .line 131
    goto :goto_f

    :cond_2b
    move v0, v1

    .line 134
    goto :goto_26

    .line 136
    :cond_2d
    return v0
.end method

.method public c(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 423
    const-string v0, "user_unique_id"

    invoke-direct {p0, v0, p1}, Lcom/bytedance/applog/b/i;->b(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 424
    iget-object v0, p0, Lcom/bytedance/applog/b/i;->c:Lcom/bytedance/applog/b/h;

    invoke-virtual {v0, p1}, Lcom/bytedance/applog/b/h;->b(Ljava/lang/String;)V

    .line 425
    invoke-static {}, Lcom/bytedance/applog/a/e;->b()Lcom/bytedance/applog/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/applog/a/e;->f()V

    .line 427
    :cond_14
    return-void
.end method

.method public d()Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 140
    iget-boolean v0, p0, Lcom/bytedance/applog/b/i;->a:Z

    if-eqz v0, :cond_29

    invoke-direct {p0}, Lcom/bytedance/applog/b/i;->r()Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "app_version"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 141
    :goto_f
    const/4 v2, 0x0

    :goto_10
    const/4 v3, 0x3

    if-ge v2, v3, :cond_2d

    if-nez v0, :cond_2d

    .line 142
    invoke-virtual {p0}, Lcom/bytedance/applog/b/i;->e()Z

    .line 143
    iget-boolean v0, p0, Lcom/bytedance/applog/b/i;->a:Z

    if-eqz v0, :cond_2b

    invoke-direct {p0}, Lcom/bytedance/applog/b/i;->r()Lorg/json/JSONObject;

    move-result-object v0

    const-string v3, "app_version"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 141
    :goto_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_29
    move-object v0, v1

    .line 140
    goto :goto_f

    :cond_2b
    move-object v0, v1

    .line 143
    goto :goto_26

    .line 145
    :cond_2d
    return-object v0
.end method

.method public e()Z
    .registers 13

    .prologue
    const/4 v11, 0x0

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 151
    iget-object v1, p0, Lcom/bytedance/applog/b/i;->e:Ljava/util/ArrayList;

    monitor-enter v1

    .line 152
    :try_start_6
    iget-object v0, p0, Lcom/bytedance/applog/b/i;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_e2

    .line 153
    iget-object v0, p0, Lcom/bytedance/applog/b/i;->e:Ljava/util/ArrayList;

    new-instance v3, Lcom/bytedance/applog/b/d;

    invoke-direct {v3}, Lcom/bytedance/applog/b/d;-><init>()V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    iget-object v0, p0, Lcom/bytedance/applog/b/i;->e:Ljava/util/ArrayList;

    new-instance v3, Lcom/bytedance/applog/b/f;

    iget-object v5, p0, Lcom/bytedance/applog/b/i;->b:Landroid/content/Context;

    invoke-direct {v3, v5}, Lcom/bytedance/applog/b/f;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    iget-object v0, p0, Lcom/bytedance/applog/b/i;->e:Ljava/util/ArrayList;

    new-instance v3, Lcom/bytedance/applog/b/g;

    iget-object v5, p0, Lcom/bytedance/applog/b/i;->b:Landroid/content/Context;

    iget-object v6, p0, Lcom/bytedance/applog/b/i;->c:Lcom/bytedance/applog/b/h;

    invoke-direct {v3, v5, v6}, Lcom/bytedance/applog/b/g;-><init>(Landroid/content/Context;Lcom/bytedance/applog/b/h;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    iget-object v0, p0, Lcom/bytedance/applog/b/i;->e:Ljava/util/ArrayList;

    new-instance v3, Lcom/bytedance/applog/b/j;

    iget-object v5, p0, Lcom/bytedance/applog/b/i;->b:Landroid/content/Context;

    invoke-direct {v3, v5}, Lcom/bytedance/applog/b/j;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    iget-object v0, p0, Lcom/bytedance/applog/b/i;->e:Ljava/util/ArrayList;

    new-instance v3, Lcom/bytedance/applog/b/k;

    iget-object v5, p0, Lcom/bytedance/applog/b/i;->b:Landroid/content/Context;

    invoke-direct {v3, v5}, Lcom/bytedance/applog/b/k;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    iget-object v0, p0, Lcom/bytedance/applog/b/i;->e:Ljava/util/ArrayList;

    new-instance v3, Lcom/bytedance/applog/b/l;

    iget-object v5, p0, Lcom/bytedance/applog/b/i;->b:Landroid/content/Context;

    iget-object v6, p0, Lcom/bytedance/applog/b/i;->c:Lcom/bytedance/applog/b/h;

    invoke-direct {v3, v5, v6}, Lcom/bytedance/applog/b/l;-><init>(Landroid/content/Context;Lcom/bytedance/applog/b/h;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    iget-object v0, p0, Lcom/bytedance/applog/b/i;->e:Ljava/util/ArrayList;

    new-instance v3, Lcom/bytedance/applog/b/m;

    iget-object v5, p0, Lcom/bytedance/applog/b/i;->b:Landroid/content/Context;

    invoke-direct {v3, v5}, Lcom/bytedance/applog/b/m;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    iget-object v0, p0, Lcom/bytedance/applog/b/i;->e:Ljava/util/ArrayList;

    new-instance v3, Lcom/bytedance/applog/b/o;

    iget-object v5, p0, Lcom/bytedance/applog/b/i;->b:Landroid/content/Context;

    invoke-direct {v3, v5}, Lcom/bytedance/applog/b/o;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    iget-object v0, p0, Lcom/bytedance/applog/b/i;->e:Ljava/util/ArrayList;

    new-instance v3, Lcom/bytedance/applog/b/p;

    iget-object v5, p0, Lcom/bytedance/applog/b/i;->b:Landroid/content/Context;

    iget-object v6, p0, Lcom/bytedance/applog/b/i;->c:Lcom/bytedance/applog/b/h;

    invoke-direct {v3, v5, v6}, Lcom/bytedance/applog/b/p;-><init>(Landroid/content/Context;Lcom/bytedance/applog/b/h;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    iget-object v0, p0, Lcom/bytedance/applog/b/i;->e:Ljava/util/ArrayList;

    new-instance v3, Lcom/bytedance/applog/b/q;

    invoke-direct {v3}, Lcom/bytedance/applog/b/q;-><init>()V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    iget-object v0, p0, Lcom/bytedance/applog/b/i;->e:Ljava/util/ArrayList;

    new-instance v3, Lcom/bytedance/applog/b/r;

    iget-object v5, p0, Lcom/bytedance/applog/b/i;->c:Lcom/bytedance/applog/b/h;

    invoke-direct {v3, v5}, Lcom/bytedance/applog/b/r;-><init>(Lcom/bytedance/applog/b/h;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    iget-object v0, p0, Lcom/bytedance/applog/b/i;->e:Ljava/util/ArrayList;

    new-instance v3, Lcom/bytedance/applog/b/s;

    iget-object v5, p0, Lcom/bytedance/applog/b/i;->b:Landroid/content/Context;

    invoke-direct {v3, v5}, Lcom/bytedance/applog/b/s;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    iget-object v0, p0, Lcom/bytedance/applog/b/i;->e:Ljava/util/ArrayList;

    new-instance v3, Lcom/bytedance/applog/b/t;

    iget-object v5, p0, Lcom/bytedance/applog/b/i;->b:Landroid/content/Context;

    invoke-direct {v3, v5}, Lcom/bytedance/applog/b/t;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    iget-object v0, p0, Lcom/bytedance/applog/b/i;->e:Ljava/util/ArrayList;

    new-instance v3, Lcom/bytedance/applog/b/u;

    iget-object v5, p0, Lcom/bytedance/applog/b/i;->b:Landroid/content/Context;

    invoke-direct {v3, v5}, Lcom/bytedance/applog/b/u;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    iget-object v0, p0, Lcom/bytedance/applog/b/i;->e:Ljava/util/ArrayList;

    new-instance v3, Lcom/bytedance/applog/b/a;

    iget-object v5, p0, Lcom/bytedance/applog/b/i;->b:Landroid/content/Context;

    iget-object v6, p0, Lcom/bytedance/applog/b/i;->c:Lcom/bytedance/applog/b/h;

    invoke-direct {v3, v5, v6}, Lcom/bytedance/applog/b/a;-><init>(Landroid/content/Context;Lcom/bytedance/applog/b/h;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    iget-object v0, p0, Lcom/bytedance/applog/b/i;->e:Ljava/util/ArrayList;

    new-instance v3, Lcom/bytedance/applog/b/n;

    iget-object v5, p0, Lcom/bytedance/applog/b/i;->b:Landroid/content/Context;

    iget-object v6, p0, Lcom/bytedance/applog/b/i;->c:Lcom/bytedance/applog/b/h;

    invoke-direct {v3, v5, v6}, Lcom/bytedance/applog/b/n;-><init>(Landroid/content/Context;Lcom/bytedance/applog/b/h;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    iget-object v0, p0, Lcom/bytedance/applog/b/i;->e:Ljava/util/ArrayList;

    new-instance v3, Lcom/bytedance/applog/b/e;

    iget-object v5, p0, Lcom/bytedance/applog/b/i;->b:Landroid/content/Context;

    iget-object v6, p0, Lcom/bytedance/applog/b/i;->c:Lcom/bytedance/applog/b/h;

    invoke-direct {v3, v5, v6}, Lcom/bytedance/applog/b/e;-><init>(Landroid/content/Context;Lcom/bytedance/applog/b/h;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    :cond_e2
    monitor-exit v1
    :try_end_e3
    .catchall {:try_start_6 .. :try_end_e3} :catchall_12e

    .line 173
    invoke-direct {p0}, Lcom/bytedance/applog/b/i;->r()Lorg/json/JSONObject;

    move-result-object v0

    .line 174
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 175
    invoke-static {v7, v0}, Lcom/bytedance/applog/util/k;->b(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 180
    iget-object v0, p0, Lcom/bytedance/applog/b/i;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v1, v2

    move v3, v4

    move v5, v4

    :goto_f8
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_164

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/applog/b/c;

    .line 181
    iget-boolean v6, v0, Lcom/bytedance/applog/b/c;->a:Z

    if-eqz v6, :cond_112

    iget-boolean v6, v0, Lcom/bytedance/applog/b/c;->c:Z

    if-nez v6, :cond_112

    invoke-direct {p0, v0}, Lcom/bytedance/applog/b/i;->a(Lcom/bytedance/applog/b/c;)Z

    move-result v6

    if-eqz v6, :cond_122

    .line 183
    :cond_112
    :try_start_112
    invoke-virtual {v0, v7}, Lcom/bytedance/applog/b/c;->a(Lorg/json/JSONObject;)Z

    move-result v6

    iput-boolean v6, v0, Lcom/bytedance/applog/b/c;->a:Z
    :try_end_118
    .catch Lorg/json/JSONException; {:try_start_112 .. :try_end_118} :catch_131
    .catch Ljava/lang/SecurityException; {:try_start_112 .. :try_end_118} :catch_136

    .line 197
    :cond_118
    :goto_118
    iget-boolean v6, v0, Lcom/bytedance/applog/b/c;->a:Z

    if-nez v6, :cond_122

    iget-boolean v6, v0, Lcom/bytedance/applog/b/c;->b:Z

    if-nez v6, :cond_122

    .line 198
    add-int/lit8 v3, v3, 0x1

    .line 202
    :cond_122
    iget-boolean v6, v0, Lcom/bytedance/applog/b/c;->a:Z

    if-nez v6, :cond_12a

    iget-boolean v0, v0, Lcom/bytedance/applog/b/c;->b:Z

    if-eqz v0, :cond_162

    :cond_12a
    move v0, v2

    :goto_12b
    and-int/2addr v0, v1

    move v1, v0

    .line 203
    goto :goto_f8

    .line 171
    :catchall_12e
    move-exception v0

    :try_start_12f
    monitor-exit v1
    :try_end_130
    .catchall {:try_start_12f .. :try_end_130} :catchall_12e

    throw v0

    .line 184
    :catch_131
    move-exception v6

    .line 185
    invoke-static {v6}, Lcom/bytedance/applog/util/i;->a(Ljava/lang/Throwable;)V

    goto :goto_118

    .line 186
    :catch_136
    move-exception v6

    .line 187
    iget-boolean v9, v0, Lcom/bytedance/applog/b/c;->b:Z

    if-nez v9, :cond_118

    .line 188
    add-int/lit8 v5, v5, 0x1

    .line 189
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "loadHeader, "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/bytedance/applog/b/i;->h:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v6}, Lcom/bytedance/applog/util/i;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 191
    iget-boolean v6, v0, Lcom/bytedance/applog/b/c;->a:Z

    if-nez v6, :cond_118

    iget v6, p0, Lcom/bytedance/applog/b/i;->h:I

    const/16 v9, 0xa

    if-le v6, v9, :cond_118

    .line 192
    iput-boolean v2, v0, Lcom/bytedance/applog/b/c;->a:Z

    goto :goto_118

    :cond_162
    move v0, v4

    .line 202
    goto :goto_12b

    .line 204
    :cond_164
    if-eqz v1, :cond_191

    .line 205
    sget-object v8, Lcom/bytedance/applog/b/i;->f:[Ljava/lang/String;

    array-length v9, v8

    move v6, v4

    :goto_16a
    if-ge v6, v9, :cond_180

    aget-object v0, v8, v6

    .line 206
    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_17e

    move v0, v2

    :goto_179
    and-int/2addr v1, v0

    .line 205
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_16a

    :cond_17e
    move v0, v4

    .line 206
    goto :goto_179

    .line 208
    :cond_180
    const-string v0, "user_unique_id"

    invoke-virtual {v7, v0, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 209
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_191

    .line 211
    :try_start_18c
    const-string v2, "user_unique_id"

    invoke-virtual {v7, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_191
    .catch Lorg/json/JSONException; {:try_start_18c .. :try_end_191} :catch_23c

    .line 219
    :cond_191
    :goto_191
    iget-object v2, p0, Lcom/bytedance/applog/b/i;->d:Lorg/json/JSONObject;

    .line 220
    iput-object v7, p0, Lcom/bytedance/applog/b/i;->d:Lorg/json/JSONObject;

    .line 221
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    .line 222
    :goto_199
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1ad

    .line 223
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 224
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 225
    invoke-direct {p0, v0, v6}, Lcom/bytedance/applog/b/i;->b(Ljava/lang/String;Ljava/lang/Object;)Z

    goto :goto_199

    .line 227
    :cond_1ad
    iput-boolean v1, p0, Lcom/bytedance/applog/b/i;->a:Z

    .line 229
    sget-boolean v0, Lcom/bytedance/applog/util/i;->b:Z

    if-eqz v0, :cond_217

    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadHeader, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/bytedance/applog/b/i;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/bytedance/applog/b/i;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/applog/b/i;->d:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v11}, Lcom/bytedance/applog/util/i;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 235
    :goto_1e7
    if-lez v5, :cond_1fd

    if-ne v5, v3, :cond_1fd

    .line 237
    iget v0, p0, Lcom/bytedance/applog/b/i;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/bytedance/applog/b/i;->h:I

    .line 238
    invoke-virtual {p0}, Lcom/bytedance/applog/b/i;->o()I

    move-result v0

    if-eqz v0, :cond_1fd

    .line 240
    iget v0, p0, Lcom/bytedance/applog/b/i;->h:I

    add-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/bytedance/applog/b/i;->h:I

    .line 244
    :cond_1fd
    iget-boolean v0, p0, Lcom/bytedance/applog/b/i;->a:Z

    if-eqz v0, :cond_214

    .line 245
    invoke-static {}, Lcom/bytedance/applog/AppLog;->getDataObserver()Lcom/bytedance/applog/IDataObserver;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/applog/b/i;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/bytedance/applog/b/i;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/bytedance/applog/b/i;->k()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/bytedance/applog/IDataObserver;->onIdLoaded(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    :cond_214
    iget-boolean v0, p0, Lcom/bytedance/applog/b/i;->a:Z

    return v0

    .line 232
    :cond_217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadHeader, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/bytedance/applog/b/i;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/bytedance/applog/b/i;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v11}, Lcom/bytedance/applog/util/i;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1e7

    .line 212
    :catch_23c
    move-exception v0

    goto/16 :goto_191
.end method

.method public f()Ljava/lang/String;
    .registers 4

    .prologue
    .line 343
    invoke-direct {p0}, Lcom/bytedance/applog/b/i;->r()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "user_unique_id"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized f(Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 577
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/bytedance/applog/b/i;->r()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "ab_version"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 578
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 592
    :goto_11
    const-string v0, "ab_version"

    invoke-direct {p0, v0, p1}, Lcom/bytedance/applog/b/i;->b(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 593
    iget-object v0, p0, Lcom/bytedance/applog/b/i;->c:Lcom/bytedance/applog/b/h;

    invoke-virtual {v0, p1}, Lcom/bytedance/applog/b/h;->e(Ljava/lang/String;)V

    .line 594
    sget-boolean v0, Lcom/bytedance/applog/util/i;->b:Z

    if-eqz v0, :cond_36

    .line 595
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addExposedVid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bytedance/applog/util/i;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_36
    .catchall {:try_start_1 .. :try_end_36} :catchall_6c

    .line 597
    :cond_36
    :goto_36
    monitor-exit p0

    return-void

    .line 581
    :cond_38
    :try_start_38
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 582
    array-length v3, v2

    const/4 v0, 0x0

    :goto_40
    if-ge v0, v3, :cond_72

    aget-object v4, v2, v0

    .line 583
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6f

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6f

    .line 584
    sget-boolean v0, Lcom/bytedance/applog/util/i;->b:Z

    if-eqz v0, :cond_36

    .line 585
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addExposedVid ready added "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bytedance/applog/util/i;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6b
    .catchall {:try_start_38 .. :try_end_6b} :catchall_6c

    goto :goto_36

    .line 577
    :catchall_6c
    move-exception v0

    monitor-exit p0

    throw v0

    .line 582
    :cond_6f
    add-int/lit8 v0, v0, 0x1

    goto :goto_40

    .line 590
    :cond_72
    :try_start_72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_88
    .catchall {:try_start_72 .. :try_end_88} :catchall_6c

    move-result-object p1

    goto :goto_11
.end method

.method public g()Ljava/lang/String;
    .registers 4

    .prologue
    .line 351
    invoke-direct {p0}, Lcom/bytedance/applog/b/i;->r()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "device_id"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .registers 4

    .prologue
    .line 359
    invoke-direct {p0}, Lcom/bytedance/applog/b/i;->r()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "aid"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .registers 4

    .prologue
    .line 367
    invoke-direct {p0}, Lcom/bytedance/applog/b/i;->r()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "udid"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .registers 4

    .prologue
    .line 375
    invoke-direct {p0}, Lcom/bytedance/applog/b/i;->r()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "install_id"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .registers 4

    .prologue
    .line 383
    invoke-direct {p0}, Lcom/bytedance/applog/b/i;->r()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "ssid"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .registers 4

    .prologue
    .line 391
    invoke-direct {p0}, Lcom/bytedance/applog/b/i;->r()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "user_unique_id"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .registers 4

    .prologue
    .line 399
    invoke-direct {p0}, Lcom/bytedance/applog/b/i;->r()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "clientudid"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public n()Ljava/lang/String;
    .registers 4

    .prologue
    .line 407
    invoke-direct {p0}, Lcom/bytedance/applog/b/i;->r()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "openudid"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public o()I
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 506
    invoke-direct {p0}, Lcom/bytedance/applog/b/i;->r()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "device_id"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 507
    invoke-direct {p0}, Lcom/bytedance/applog/b/i;->r()Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "install_id"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 508
    invoke-static {v1}, Lcom/bytedance/applog/b/i;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3b

    invoke-static {v2}, Lcom/bytedance/applog/b/i;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 509
    iget-object v1, p0, Lcom/bytedance/applog/b/i;->g:Landroid/content/SharedPreferences;

    const-string v2, "version_code"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 510
    invoke-direct {p0}, Lcom/bytedance/applog/b/i;->r()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "version_code"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 511
    if-ne v0, v1, :cond_3c

    const/4 v0, 0x1

    .line 513
    :cond_3b
    :goto_3b
    return v0

    .line 511
    :cond_3c
    const/4 v0, 0x2

    goto :goto_3b
.end method

.method public p()J
    .registers 5

    .prologue
    .line 518
    invoke-direct {p0}, Lcom/bytedance/applog/b/i;->r()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "register_time"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public q()Ljava/lang/String;
    .registers 4

    .prologue
    .line 600
    invoke-direct {p0}, Lcom/bytedance/applog/b/i;->r()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "ab_sdk_version"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
