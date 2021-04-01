.class public Lcom/bytedance/embedapplog/b/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final f:[Ljava/lang/String;


# instance fields
.field private a:Z

.field private final b:Landroid/content/Context;

.field private final c:Lcom/bytedance/embedapplog/b/h;

.field private d:Lorg/json/JSONObject;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bytedance/embedapplog/b/c;",
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
    .line 57
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

    sput-object v0, Lcom/bytedance/embedapplog/b/i;->f:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/embedapplog/b/h;)V
    .registers 5

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/bytedance/embedapplog/b/i;->e:Ljava/util/ArrayList;

    .line 148
    const/4 v0, 0x0

    iput v0, p0, Lcom/bytedance/embedapplog/b/i;->h:I

    .line 62
    iput-object p1, p0, Lcom/bytedance/embedapplog/b/i;->b:Landroid/content/Context;

    .line 63
    iput-object p2, p0, Lcom/bytedance/embedapplog/b/i;->c:Lcom/bytedance/embedapplog/b/h;

    .line 64
    invoke-virtual {p2}, Lcom/bytedance/embedapplog/b/h;->d()Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/embedapplog/b/i;->g:Landroid/content/SharedPreferences;

    .line 65
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/bytedance/embedapplog/b/i;->d:Lorg/json/JSONObject;

    .line 66
    iget-object v0, p0, Lcom/bytedance/embedapplog/b/i;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/embedapplog/b/i;->g:Landroid/content/SharedPreferences;

    invoke-static {v0, v1}, Lcom/bytedance/embed_device_register/b;->a(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    .line 67
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
    .line 301
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 302
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 303
    :cond_9
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 304
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 306
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    .line 309
    :cond_24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 445
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 446
    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 448
    :cond_9
    return-void
.end method

.method private a(Lcom/bytedance/embedapplog/b/c;)Z
    .registers 5

    .prologue
    .line 245
    iget-object v0, p0, Lcom/bytedance/embedapplog/b/i;->c:Lcom/bytedance/embedapplog/b/h;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/b/h;->u()Z

    move-result v0

    if-nez v0, :cond_33

    iget-boolean v0, p1, Lcom/bytedance/embedapplog/b/c;->d:Z

    if-eqz v0, :cond_33

    const/4 v0, 0x1

    .line 246
    :goto_d
    sget-boolean v1, Lcom/bytedance/embedapplog/util/h;->b:Z

    if-eqz v1, :cond_32

    .line 247
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

    invoke-static {v1, v2}, Lcom/bytedance/embedapplog/util/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 249
    :cond_32
    return v0

    .line 245
    :cond_33
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private declared-synchronized b(Lorg/json/JSONObject;)V
    .registers 8

    .prologue
    .line 262
    monitor-enter p0

    if-nez p1, :cond_b

    .line 263
    :try_start_3
    const-string v0, "null abconfig"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bytedance/embedapplog/util/h;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_6a

    .line 298
    :cond_9
    :goto_9
    monitor-exit p0

    return-void

    .line 267
    :cond_b
    :try_start_b
    invoke-direct {p0}, Lcom/bytedance/embedapplog/b/i;->r()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "ab_version"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 268
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 269
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 270
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 271
    array-length v3, v1

    const/4 v0, 0x0

    :goto_28
    if-ge v0, v3, :cond_38

    aget-object v4, v1, v0

    .line 272
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_35

    .line 273
    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 271
    :cond_35
    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    .line 277
    :cond_38
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 278
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 279
    :cond_41
    :goto_41
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 280
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 281
    instance-of v4, v0, Ljava/lang/String;

    if-eqz v4, :cond_41

    .line 282
    check-cast v0, Ljava/lang/String;

    .line 283
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_54
    .catchall {:try_start_b .. :try_end_54} :catchall_6a

    move-result v4

    if-nez v4, :cond_41

    .line 285
    :try_start_57
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 286
    const-string v4, "vid"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 287
    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_64
    .catch Lorg/json/JSONException; {:try_start_57 .. :try_end_64} :catch_65
    .catchall {:try_start_57 .. :try_end_64} :catchall_6a

    goto :goto_41

    .line 288
    :catch_65
    move-exception v0

    .line 289
    :try_start_66
    invoke-static {v0}, Lcom/bytedance/embedapplog/util/h;->a(Ljava/lang/Throwable;)V
    :try_end_69
    .catchall {:try_start_66 .. :try_end_69} :catchall_6a

    goto :goto_41

    .line 262
    :catchall_6a
    move-exception v0

    monitor-exit p0

    throw v0

    .line 295
    :cond_6d
    :try_start_6d
    invoke-interface {v2, v3}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 296
    const-string v0, "ab_version"

    invoke-direct {p0, v2}, Lcom/bytedance/embedapplog/b/i;->a(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/bytedance/embedapplog/b/i;->b(Ljava/lang/String;Ljava/lang/Object;)Z
    :try_end_79
    .catchall {:try_start_6d .. :try_end_79} :catchall_6a

    goto :goto_9
.end method

.method private b(Ljava/lang/String;Ljava/lang/Object;)Z
    .registers 7

    .prologue
    .line 421
    const/4 v0, 0x0

    .line 422
    invoke-direct {p0}, Lcom/bytedance/embedapplog/b/i;->r()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 423
    if-eqz p2, :cond_11

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    :cond_11
    if-nez p2, :cond_27

    if-eqz v1, :cond_27

    .line 425
    :cond_15
    monitor-enter p0

    .line 427
    :try_start_16
    iget-object v0, p0, Lcom/bytedance/embedapplog/b/i;->d:Lorg/json/JSONObject;

    .line 428
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 429
    invoke-static {v2, v0}, Lcom/bytedance/embedapplog/util/i;->b(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 430
    invoke-virtual {v2, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 431
    iput-object v2, p0, Lcom/bytedance/embedapplog/b/i;->d:Lorg/json/JSONObject;
    :try_end_25
    .catch Lorg/json/JSONException; {:try_start_16 .. :try_end_25} :catch_53
    .catchall {:try_start_16 .. :try_end_25} :catchall_58

    .line 435
    :goto_25
    :try_start_25
    monitor-exit p0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_58

    .line 436
    const/4 v0, 0x1

    .line 439
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

    invoke-static {v1, v2}, Lcom/bytedance/embedapplog/util/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 441
    return v0

    .line 432
    :catch_53
    move-exception v0

    .line 433
    :try_start_54
    invoke-static {v0}, Lcom/bytedance/embedapplog/util/h;->a(Ljava/lang/Throwable;)V

    goto :goto_25

    .line 435
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

    .line 451
    if-eqz p0, :cond_11

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    move v2, v1

    .line 452
    :goto_8
    const/16 v1, 0xd

    if-lt v2, v1, :cond_10

    const/16 v1, 0x80

    if-le v2, v1, :cond_13

    .line 466
    :cond_10
    :goto_10
    return v0

    :cond_11
    move v2, v0

    .line 451
    goto :goto_8

    :cond_13
    move v1, v0

    .line 455
    :goto_14
    if-ge v1, v2, :cond_39

    .line 456
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 457
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

    .line 455
    :cond_36
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 466
    :cond_39
    const/4 v0, 0x1

    goto :goto_10
.end method

.method public static e(Ljava/lang/String;)Z
    .registers 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 474
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2b

    const-string v0, "unknown"

    .line 475
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2b

    const-string v0, "Null"

    .line 476
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2b

    move v0, v1

    .line 479
    :goto_19
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_2f

    .line 480
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x30

    if-eq v3, v4, :cond_2c

    move v0, v1

    .line 485
    :goto_28
    if-nez v0, :cond_2b

    move v1, v2

    .line 487
    :cond_2b
    return v1

    .line 479
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
    iget-object v0, p0, Lcom/bytedance/embedapplog/b/i;->d:Lorg/json/JSONObject;

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
    invoke-direct {p0}, Lcom/bytedance/embedapplog/b/i;->r()Lorg/json/JSONObject;

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
    .line 71
    iget-boolean v0, p0, Lcom/bytedance/embedapplog/b/i;->a:Z

    if-eqz v0, :cond_9

    invoke-direct {p0}, Lcom/bytedance/embedapplog/b/i;->r()Lorg/json/JSONObject;

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
    .line 403
    const-string v0, "ab_sdk_version"

    invoke-direct {p0, v0, p1}, Lcom/bytedance/embedapplog/b/i;->b(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 404
    iget-object v0, p0, Lcom/bytedance/embedapplog/b/i;->c:Lcom/bytedance/embedapplog/b/h;

    invoke-virtual {v0, p1}, Lcom/bytedance/embedapplog/b/h;->a(Ljava/lang/String;)V

    .line 406
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
    .line 313
    const/4 v0, 0x0

    .line 314
    if-eqz p1, :cond_4f

    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4f

    .line 316
    :try_start_9
    invoke-direct {p0}, Lcom/bytedance/embedapplog/b/i;->r()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "custom"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_12
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_12} :catch_5f

    move-result-object v2

    .line 317
    if-nez v2, :cond_1b

    .line 318
    :try_start_15
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_1a
    .catch Lorg/json/JSONException; {:try_start_15 .. :try_end_1a} :catch_61

    move-object v2, v0

    .line 320
    :cond_1b
    :try_start_1b
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_23
    :goto_23
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 321
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_23

    .line 322
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_48
    .catch Lorg/json/JSONException; {:try_start_1b .. :try_end_48} :catch_49

    goto :goto_23

    .line 325
    :catch_49
    move-exception v0

    move-object v1, v0

    move-object v0, v2

    .line 326
    :goto_4c
    invoke-static {v1}, Lcom/bytedance/embedapplog/util/h;->a(Ljava/lang/Throwable;)V

    .line 329
    :cond_4f
    :goto_4f
    const-string v1, "custom"

    invoke-direct {p0, v1, v0}, Lcom/bytedance/embedapplog/b/i;->b(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 330
    iget-object v1, p0, Lcom/bytedance/embedapplog/b/i;->c:Lcom/bytedance/embedapplog/b/h;

    invoke-virtual {v1, v0}, Lcom/bytedance/embedapplog/b/h;->a(Lorg/json/JSONObject;)V

    .line 332
    :cond_5c
    return-void

    :cond_5d
    move-object v0, v2

    .line 327
    goto :goto_4f

    .line 325
    :catch_5f
    move-exception v1

    goto :goto_4c

    :catch_61
    move-exception v0

    move-object v1, v0

    move-object v0, v2

    goto :goto_4c
.end method

.method public a(Lorg/json/JSONObject;)V
    .registers 3

    .prologue
    .line 253
    iget-object v0, p0, Lcom/bytedance/embedapplog/b/i;->c:Lcom/bytedance/embedapplog/b/h;

    invoke-virtual {v0, p1}, Lcom/bytedance/embedapplog/b/h;->b(Lorg/json/JSONObject;)V

    .line 254
    invoke-direct {p0, p1}, Lcom/bytedance/embedapplog/b/i;->b(Lorg/json/JSONObject;)V

    .line 255
    return-void
.end method

.method public a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 16

    .prologue
    .line 513
    sget-boolean v0, Lcom/bytedance/embedapplog/util/h;->b:Z

    if-eqz v0, :cond_39

    .line 514
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

    invoke-static {v0, v1}, Lcom/bytedance/embedapplog/util/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 517
    :cond_39
    invoke-static {p2}, Lcom/bytedance/embedapplog/b/i;->e(Ljava/lang/String;)Z

    move-result v8

    .line 518
    invoke-static {p3}, Lcom/bytedance/embedapplog/b/i;->e(Ljava/lang/String;)Z

    move-result v9

    .line 520
    :try_start_41
    invoke-static {p4}, Lcom/bytedance/embedapplog/b/i;->e(Ljava/lang/String;)Z

    move-result v0

    .line 522
    iget-object v1, p0, Lcom/bytedance/embedapplog/b/i;->g:Landroid/content/SharedPreferences;

    const-string v2, "version_code"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 523
    invoke-direct {p0}, Lcom/bytedance/embedapplog/b/i;->r()Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "version_code"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    .line 525
    iget-object v3, p0, Lcom/bytedance/embedapplog/b/i;->g:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    .line 526
    if-eq v1, v2, :cond_66

    .line 527
    const-string v1, "version_code"

    invoke-interface {v10, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 530
    :cond_66
    if-eqz v8, :cond_e2

    .line 531
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 532
    const-string v1, "register_time"

    invoke-interface {v10, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 533
    const-string v1, "register_time"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/bytedance/embedapplog/b/i;->b(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 540
    :cond_7a
    :goto_7a
    const/4 v1, 0x0

    .line 541
    invoke-direct {p0}, Lcom/bytedance/embedapplog/b/i;->r()Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "device_id"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 542
    if-eqz v8, :cond_97

    const-string v3, "device_id"

    invoke-direct {p0, v3, p2}, Lcom/bytedance/embedapplog/b/i;->b(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_97

    .line 543
    const-string v1, "device_id"

    invoke-interface {v10, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 544
    const/4 v1, 0x1

    .line 547
    :cond_97
    invoke-direct {p0}, Lcom/bytedance/embedapplog/b/i;->r()Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "install_id"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 548
    if-eqz v9, :cond_b3

    const-string v3, "install_id"

    invoke-direct {p0, v3, p3}, Lcom/bytedance/embedapplog/b/i;->b(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b3

    .line 549
    const-string v1, "install_id"

    invoke-interface {v10, v1, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 550
    const/4 v1, 0x1

    .line 553
    :cond_b3
    invoke-direct {p0}, Lcom/bytedance/embedapplog/b/i;->r()Lorg/json/JSONObject;

    move-result-object v3

    const-string v5, "ssid"

    const-string v6, ""

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 554
    if-eqz v0, :cond_cf

    const-string v0, "ssid"

    invoke-direct {p0, v0, p4}, Lcom/bytedance/embedapplog/b/i;->b(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_cf

    .line 555
    const-string v0, "ssid"

    invoke-interface {v10, v0, p4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 556
    const/4 v1, 0x1

    .line 559
    :cond_cf
    invoke-static {}, Lcom/bytedance/embedapplog/AppLog;->getDataObserver()Lcom/bytedance/embedapplog/IDataObserver;

    move-result-object v0

    move-object v3, p2

    move-object v5, p3

    move-object v7, p4

    invoke-interface/range {v0 .. v7}, Lcom/bytedance/embedapplog/IDataObserver;->onRemoteIdGet(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 564
    :goto_dc
    if-eqz v8, :cond_f9

    if-eqz v9, :cond_f9

    const/4 v0, 0x1

    :goto_e1
    return v0

    .line 534
    :cond_e2
    if-nez v8, :cond_7a

    .line 535
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 536
    const-string v2, "response"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 537
    const-string v2, "tt_fetch_did_error"

    invoke-static {v2, v1}, Lcom/bytedance/embedapplog/AppLog;->onEventV3(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_f3
    .catch Lorg/json/JSONException; {:try_start_41 .. :try_end_f3} :catch_f4

    goto :goto_7a

    .line 561
    :catch_f4
    move-exception v0

    .line 562
    invoke-static {v0}, Lcom/bytedance/embedapplog/util/h;->a(Ljava/lang/Throwable;)V

    goto :goto_dc

    .line 564
    :cond_f9
    const/4 v0, 0x0

    goto :goto_e1
.end method

.method public b()Lorg/json/JSONObject;
    .registers 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/bytedance/embedapplog/b/i;->a()Lorg/json/JSONObject;

    move-result-object v1

    .line 82
    if-eqz v1, :cond_28

    .line 84
    :try_start_6
    const-string v0, "oaid"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 85
    invoke-static {v0}, Lcom/bytedance/embed_device_register/b;->a(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    .line 86
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_28

    .line 87
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 88
    invoke-static {v0, v1}, Lcom/bytedance/embedapplog/util/i;->b(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 89
    const-string v3, "oaid"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_23} :catch_24

    .line 96
    :goto_23
    return-object v0

    .line 92
    :catch_24
    move-exception v0

    .line 93
    invoke-static {v0}, Lcom/bytedance/embedapplog/util/h;->a(Ljava/lang/Throwable;)V

    :cond_28
    move-object v0, v1

    .line 96
    goto :goto_23
.end method

.method public b(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 409
    const-string v0, "user_agent"

    invoke-direct {p0, v0, p1}, Lcom/bytedance/embedapplog/b/i;->b(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 410
    iget-object v0, p0, Lcom/bytedance/embedapplog/b/i;->c:Lcom/bytedance/embedapplog/b/h;

    invoke-virtual {v0, p1}, Lcom/bytedance/embedapplog/b/h;->d(Ljava/lang/String;)V

    .line 412
    :cond_d
    return-void
.end method

.method public c()I
    .registers 5

    .prologue
    const/4 v1, -0x1

    .line 131
    iget-boolean v0, p0, Lcom/bytedance/embedapplog/b/i;->a:Z

    if-eqz v0, :cond_29

    invoke-direct {p0}, Lcom/bytedance/embedapplog/b/i;->r()Lorg/json/JSONObject;

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
    invoke-virtual {p0}, Lcom/bytedance/embedapplog/b/i;->e()Z

    .line 134
    iget-boolean v0, p0, Lcom/bytedance/embedapplog/b/i;->a:Z

    if-eqz v0, :cond_2b

    invoke-direct {p0}, Lcom/bytedance/embedapplog/b/i;->r()Lorg/json/JSONObject;

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
    .line 415
    const-string v0, "user_unique_id"

    invoke-direct {p0, v0, p1}, Lcom/bytedance/embedapplog/b/i;->b(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 416
    iget-object v0, p0, Lcom/bytedance/embedapplog/b/i;->c:Lcom/bytedance/embedapplog/b/h;

    invoke-virtual {v0, p1}, Lcom/bytedance/embedapplog/b/h;->b(Ljava/lang/String;)V

    .line 418
    :cond_d
    return-void
.end method

.method public d()Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 140
    iget-boolean v0, p0, Lcom/bytedance/embedapplog/b/i;->a:Z

    if-eqz v0, :cond_29

    invoke-direct {p0}, Lcom/bytedance/embedapplog/b/i;->r()Lorg/json/JSONObject;

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
    invoke-virtual {p0}, Lcom/bytedance/embedapplog/b/i;->e()Z

    .line 143
    iget-boolean v0, p0, Lcom/bytedance/embedapplog/b/i;->a:Z

    if-eqz v0, :cond_2b

    invoke-direct {p0}, Lcom/bytedance/embedapplog/b/i;->r()Lorg/json/JSONObject;

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
    iget-object v1, p0, Lcom/bytedance/embedapplog/b/i;->e:Ljava/util/ArrayList;

    monitor-enter v1

    .line 152
    :try_start_6
    iget-object v0, p0, Lcom/bytedance/embedapplog/b/i;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_e4

    .line 153
    iget-object v0, p0, Lcom/bytedance/embedapplog/b/i;->e:Ljava/util/ArrayList;

    new-instance v3, Lcom/bytedance/embedapplog/b/d;

    invoke-direct {v3}, Lcom/bytedance/embedapplog/b/d;-><init>()V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    iget-object v0, p0, Lcom/bytedance/embedapplog/b/i;->e:Ljava/util/ArrayList;

    new-instance v3, Lcom/bytedance/embedapplog/b/f;

    iget-object v5, p0, Lcom/bytedance/embedapplog/b/i;->b:Landroid/content/Context;

    invoke-direct {v3, v5}, Lcom/bytedance/embedapplog/b/f;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    iget-object v0, p0, Lcom/bytedance/embedapplog/b/i;->e:Ljava/util/ArrayList;

    new-instance v3, Lcom/bytedance/embedapplog/b/g;

    iget-object v5, p0, Lcom/bytedance/embedapplog/b/i;->b:Landroid/content/Context;

    iget-object v6, p0, Lcom/bytedance/embedapplog/b/i;->c:Lcom/bytedance/embedapplog/b/h;

    invoke-direct {v3, v5, v6}, Lcom/bytedance/embedapplog/b/g;-><init>(Landroid/content/Context;Lcom/bytedance/embedapplog/b/h;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    iget-object v0, p0, Lcom/bytedance/embedapplog/b/i;->e:Ljava/util/ArrayList;

    new-instance v3, Lcom/bytedance/embedapplog/b/j;

    iget-object v5, p0, Lcom/bytedance/embedapplog/b/i;->b:Landroid/content/Context;

    invoke-direct {v3, v5}, Lcom/bytedance/embedapplog/b/j;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    iget-object v0, p0, Lcom/bytedance/embedapplog/b/i;->e:Ljava/util/ArrayList;

    new-instance v3, Lcom/bytedance/embedapplog/b/k;

    iget-object v5, p0, Lcom/bytedance/embedapplog/b/i;->b:Landroid/content/Context;

    invoke-direct {v3, v5}, Lcom/bytedance/embedapplog/b/k;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    iget-object v0, p0, Lcom/bytedance/embedapplog/b/i;->e:Ljava/util/ArrayList;

    new-instance v3, Lcom/bytedance/embedapplog/b/l;

    iget-object v5, p0, Lcom/bytedance/embedapplog/b/i;->b:Landroid/content/Context;

    iget-object v6, p0, Lcom/bytedance/embedapplog/b/i;->c:Lcom/bytedance/embedapplog/b/h;

    invoke-direct {v3, v5, v6}, Lcom/bytedance/embedapplog/b/l;-><init>(Landroid/content/Context;Lcom/bytedance/embedapplog/b/h;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    iget-object v0, p0, Lcom/bytedance/embedapplog/b/i;->e:Ljava/util/ArrayList;

    new-instance v3, Lcom/bytedance/embedapplog/b/m;

    iget-object v5, p0, Lcom/bytedance/embedapplog/b/i;->b:Landroid/content/Context;

    invoke-direct {v3, v5}, Lcom/bytedance/embedapplog/b/m;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    iget-object v0, p0, Lcom/bytedance/embedapplog/b/i;->e:Ljava/util/ArrayList;

    new-instance v3, Lcom/bytedance/embedapplog/b/o;

    iget-object v5, p0, Lcom/bytedance/embedapplog/b/i;->b:Landroid/content/Context;

    invoke-direct {v3, v5}, Lcom/bytedance/embedapplog/b/o;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    iget-object v0, p0, Lcom/bytedance/embedapplog/b/i;->e:Ljava/util/ArrayList;

    new-instance v3, Lcom/bytedance/embedapplog/b/p;

    iget-object v5, p0, Lcom/bytedance/embedapplog/b/i;->b:Landroid/content/Context;

    iget-object v6, p0, Lcom/bytedance/embedapplog/b/i;->c:Lcom/bytedance/embedapplog/b/h;

    invoke-direct {v3, v5, v6}, Lcom/bytedance/embedapplog/b/p;-><init>(Landroid/content/Context;Lcom/bytedance/embedapplog/b/h;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    iget-object v0, p0, Lcom/bytedance/embedapplog/b/i;->e:Ljava/util/ArrayList;

    new-instance v3, Lcom/bytedance/embedapplog/b/q;

    invoke-direct {v3}, Lcom/bytedance/embedapplog/b/q;-><init>()V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    iget-object v0, p0, Lcom/bytedance/embedapplog/b/i;->e:Ljava/util/ArrayList;

    new-instance v3, Lcom/bytedance/embedapplog/b/r;

    iget-object v5, p0, Lcom/bytedance/embedapplog/b/i;->c:Lcom/bytedance/embedapplog/b/h;

    invoke-direct {v3, v5}, Lcom/bytedance/embedapplog/b/r;-><init>(Lcom/bytedance/embedapplog/b/h;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    iget-object v0, p0, Lcom/bytedance/embedapplog/b/i;->e:Ljava/util/ArrayList;

    new-instance v3, Lcom/bytedance/embedapplog/b/s;

    iget-object v5, p0, Lcom/bytedance/embedapplog/b/i;->b:Landroid/content/Context;

    invoke-direct {v3, v5}, Lcom/bytedance/embedapplog/b/s;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    iget-object v0, p0, Lcom/bytedance/embedapplog/b/i;->e:Ljava/util/ArrayList;

    new-instance v3, Lcom/bytedance/embedapplog/b/t;

    iget-object v5, p0, Lcom/bytedance/embedapplog/b/i;->b:Landroid/content/Context;

    invoke-direct {v3, v5}, Lcom/bytedance/embedapplog/b/t;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    iget-object v0, p0, Lcom/bytedance/embedapplog/b/i;->e:Ljava/util/ArrayList;

    new-instance v3, Lcom/bytedance/embedapplog/b/u;

    iget-object v5, p0, Lcom/bytedance/embedapplog/b/i;->b:Landroid/content/Context;

    iget-object v6, p0, Lcom/bytedance/embedapplog/b/i;->c:Lcom/bytedance/embedapplog/b/h;

    invoke-direct {v3, v5, v6}, Lcom/bytedance/embedapplog/b/u;-><init>(Landroid/content/Context;Lcom/bytedance/embedapplog/b/h;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    iget-object v0, p0, Lcom/bytedance/embedapplog/b/i;->e:Ljava/util/ArrayList;

    new-instance v3, Lcom/bytedance/embedapplog/b/a;

    iget-object v5, p0, Lcom/bytedance/embedapplog/b/i;->b:Landroid/content/Context;

    iget-object v6, p0, Lcom/bytedance/embedapplog/b/i;->c:Lcom/bytedance/embedapplog/b/h;

    invoke-direct {v3, v5, v6}, Lcom/bytedance/embedapplog/b/a;-><init>(Landroid/content/Context;Lcom/bytedance/embedapplog/b/h;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    iget-object v0, p0, Lcom/bytedance/embedapplog/b/i;->e:Ljava/util/ArrayList;

    new-instance v3, Lcom/bytedance/embedapplog/b/n;

    iget-object v5, p0, Lcom/bytedance/embedapplog/b/i;->b:Landroid/content/Context;

    iget-object v6, p0, Lcom/bytedance/embedapplog/b/i;->c:Lcom/bytedance/embedapplog/b/h;

    invoke-direct {v3, v5, v6}, Lcom/bytedance/embedapplog/b/n;-><init>(Landroid/content/Context;Lcom/bytedance/embedapplog/b/h;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    iget-object v0, p0, Lcom/bytedance/embedapplog/b/i;->e:Ljava/util/ArrayList;

    new-instance v3, Lcom/bytedance/embedapplog/b/e;

    iget-object v5, p0, Lcom/bytedance/embedapplog/b/i;->b:Landroid/content/Context;

    iget-object v6, p0, Lcom/bytedance/embedapplog/b/i;->c:Lcom/bytedance/embedapplog/b/h;

    invoke-direct {v3, v5, v6}, Lcom/bytedance/embedapplog/b/e;-><init>(Landroid/content/Context;Lcom/bytedance/embedapplog/b/h;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    :cond_e4
    monitor-exit v1
    :try_end_e5
    .catchall {:try_start_6 .. :try_end_e5} :catchall_130

    .line 173
    invoke-direct {p0}, Lcom/bytedance/embedapplog/b/i;->r()Lorg/json/JSONObject;

    move-result-object v0

    .line 174
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 175
    invoke-static {v7, v0}, Lcom/bytedance/embedapplog/util/i;->b(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 180
    iget-object v0, p0, Lcom/bytedance/embedapplog/b/i;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v1, v2

    move v3, v4

    move v5, v4

    :goto_fa
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_166

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/embedapplog/b/c;

    .line 181
    iget-boolean v6, v0, Lcom/bytedance/embedapplog/b/c;->a:Z

    if-eqz v6, :cond_114

    iget-boolean v6, v0, Lcom/bytedance/embedapplog/b/c;->c:Z

    if-nez v6, :cond_114

    invoke-direct {p0, v0}, Lcom/bytedance/embedapplog/b/i;->a(Lcom/bytedance/embedapplog/b/c;)Z

    move-result v6

    if-eqz v6, :cond_124

    .line 183
    :cond_114
    :try_start_114
    invoke-virtual {v0, v7}, Lcom/bytedance/embedapplog/b/c;->a(Lorg/json/JSONObject;)Z

    move-result v6

    iput-boolean v6, v0, Lcom/bytedance/embedapplog/b/c;->a:Z
    :try_end_11a
    .catch Lorg/json/JSONException; {:try_start_114 .. :try_end_11a} :catch_133
    .catch Ljava/lang/SecurityException; {:try_start_114 .. :try_end_11a} :catch_138

    .line 197
    :cond_11a
    :goto_11a
    iget-boolean v6, v0, Lcom/bytedance/embedapplog/b/c;->a:Z

    if-nez v6, :cond_124

    iget-boolean v6, v0, Lcom/bytedance/embedapplog/b/c;->b:Z

    if-nez v6, :cond_124

    .line 198
    add-int/lit8 v3, v3, 0x1

    .line 202
    :cond_124
    iget-boolean v6, v0, Lcom/bytedance/embedapplog/b/c;->a:Z

    if-nez v6, :cond_12c

    iget-boolean v0, v0, Lcom/bytedance/embedapplog/b/c;->b:Z

    if-eqz v0, :cond_164

    :cond_12c
    move v0, v2

    :goto_12d
    and-int/2addr v0, v1

    move v1, v0

    .line 203
    goto :goto_fa

    .line 171
    :catchall_130
    move-exception v0

    :try_start_131
    monitor-exit v1
    :try_end_132
    .catchall {:try_start_131 .. :try_end_132} :catchall_130

    throw v0

    .line 184
    :catch_133
    move-exception v6

    .line 185
    invoke-static {v6}, Lcom/bytedance/embedapplog/util/h;->a(Ljava/lang/Throwable;)V

    goto :goto_11a

    .line 186
    :catch_138
    move-exception v6

    .line 187
    iget-boolean v9, v0, Lcom/bytedance/embedapplog/b/c;->b:Z

    if-nez v9, :cond_11a

    .line 188
    add-int/lit8 v5, v5, 0x1

    .line 189
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "loadHeader, "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/bytedance/embedapplog/b/i;->h:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v6}, Lcom/bytedance/embedapplog/util/h;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 191
    iget-boolean v6, v0, Lcom/bytedance/embedapplog/b/c;->a:Z

    if-nez v6, :cond_11a

    iget v6, p0, Lcom/bytedance/embedapplog/b/i;->h:I

    const/16 v9, 0xa

    if-le v6, v9, :cond_11a

    .line 192
    iput-boolean v2, v0, Lcom/bytedance/embedapplog/b/c;->a:Z

    goto :goto_11a

    :cond_164
    move v0, v4

    .line 202
    goto :goto_12d

    .line 204
    :cond_166
    if-eqz v1, :cond_193

    .line 205
    sget-object v8, Lcom/bytedance/embedapplog/b/i;->f:[Ljava/lang/String;

    array-length v9, v8

    move v6, v4

    :goto_16c
    if-ge v6, v9, :cond_182

    aget-object v0, v8, v6

    .line 206
    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_180

    move v0, v2

    :goto_17b
    and-int/2addr v1, v0

    .line 205
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_16c

    :cond_180
    move v0, v4

    .line 206
    goto :goto_17b

    .line 208
    :cond_182
    const-string v0, "user_unique_id"

    invoke-virtual {v7, v0, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 209
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_193

    .line 211
    :try_start_18e
    const-string v2, "user_unique_id"

    invoke-virtual {v7, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_193
    .catch Lorg/json/JSONException; {:try_start_18e .. :try_end_193} :catch_224

    .line 219
    :cond_193
    :goto_193
    iput-object v7, p0, Lcom/bytedance/embedapplog/b/i;->d:Lorg/json/JSONObject;

    .line 220
    iput-boolean v1, p0, Lcom/bytedance/embedapplog/b/i;->a:Z

    .line 222
    sget-boolean v0, Lcom/bytedance/embedapplog/util/h;->b:Z

    if-eqz v0, :cond_1ff

    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadHeader, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/bytedance/embedapplog/b/i;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/bytedance/embedapplog/b/i;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/embedapplog/b/i;->d:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v11}, Lcom/bytedance/embedapplog/util/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 228
    :goto_1cf
    if-lez v5, :cond_1e5

    if-ne v5, v3, :cond_1e5

    .line 230
    iget v0, p0, Lcom/bytedance/embedapplog/b/i;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/bytedance/embedapplog/b/i;->h:I

    .line 231
    invoke-virtual {p0}, Lcom/bytedance/embedapplog/b/i;->o()I

    move-result v0

    if-eqz v0, :cond_1e5

    .line 233
    iget v0, p0, Lcom/bytedance/embedapplog/b/i;->h:I

    add-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/bytedance/embedapplog/b/i;->h:I

    .line 237
    :cond_1e5
    iget-boolean v0, p0, Lcom/bytedance/embedapplog/b/i;->a:Z

    if-eqz v0, :cond_1fc

    .line 238
    invoke-static {}, Lcom/bytedance/embedapplog/AppLog;->getDataObserver()Lcom/bytedance/embedapplog/IDataObserver;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/embedapplog/b/i;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/bytedance/embedapplog/b/i;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/bytedance/embedapplog/b/i;->k()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/bytedance/embedapplog/IDataObserver;->onIdLoaded(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    :cond_1fc
    iget-boolean v0, p0, Lcom/bytedance/embedapplog/b/i;->a:Z

    return v0

    .line 225
    :cond_1ff
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadHeader, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/bytedance/embedapplog/b/i;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/bytedance/embedapplog/b/i;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v11}, Lcom/bytedance/embedapplog/util/h;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1cf

    .line 212
    :catch_224
    move-exception v0

    goto/16 :goto_193
.end method

.method public f()Ljava/lang/String;
    .registers 4

    .prologue
    .line 335
    invoke-direct {p0}, Lcom/bytedance/embedapplog/b/i;->r()Lorg/json/JSONObject;

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
    .line 568
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/bytedance/embedapplog/b/i;->r()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "ab_version"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 569
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 583
    :goto_11
    const-string v0, "ab_version"

    invoke-direct {p0, v0, p1}, Lcom/bytedance/embedapplog/b/i;->b(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 584
    iget-object v0, p0, Lcom/bytedance/embedapplog/b/i;->c:Lcom/bytedance/embedapplog/b/h;

    invoke-virtual {v0, p1}, Lcom/bytedance/embedapplog/b/h;->e(Ljava/lang/String;)V

    .line 585
    sget-boolean v0, Lcom/bytedance/embedapplog/util/h;->b:Z

    if-eqz v0, :cond_36

    .line 586
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

    invoke-static {v0, v1}, Lcom/bytedance/embedapplog/util/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_36
    .catchall {:try_start_1 .. :try_end_36} :catchall_6c

    .line 588
    :cond_36
    :goto_36
    monitor-exit p0

    return-void

    .line 572
    :cond_38
    :try_start_38
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 573
    array-length v3, v2

    const/4 v0, 0x0

    :goto_40
    if-ge v0, v3, :cond_72

    aget-object v4, v2, v0

    .line 574
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6f

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6f

    .line 575
    sget-boolean v0, Lcom/bytedance/embedapplog/util/h;->b:Z

    if-eqz v0, :cond_36

    .line 576
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

    invoke-static {v0, v1}, Lcom/bytedance/embedapplog/util/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6b
    .catchall {:try_start_38 .. :try_end_6b} :catchall_6c

    goto :goto_36

    .line 568
    :catchall_6c
    move-exception v0

    monitor-exit p0

    throw v0

    .line 573
    :cond_6f
    add-int/lit8 v0, v0, 0x1

    goto :goto_40

    .line 581
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
    .line 343
    invoke-direct {p0}, Lcom/bytedance/embedapplog/b/i;->r()Lorg/json/JSONObject;

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
    .line 351
    invoke-direct {p0}, Lcom/bytedance/embedapplog/b/i;->r()Lorg/json/JSONObject;

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
    .line 359
    invoke-direct {p0}, Lcom/bytedance/embedapplog/b/i;->r()Lorg/json/JSONObject;

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
    .line 367
    invoke-direct {p0}, Lcom/bytedance/embedapplog/b/i;->r()Lorg/json/JSONObject;

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
    .line 375
    invoke-direct {p0}, Lcom/bytedance/embedapplog/b/i;->r()Lorg/json/JSONObject;

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
    .line 383
    invoke-direct {p0}, Lcom/bytedance/embedapplog/b/i;->r()Lorg/json/JSONObject;

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
    .line 391
    invoke-direct {p0}, Lcom/bytedance/embedapplog/b/i;->r()Lorg/json/JSONObject;

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
    .line 399
    invoke-direct {p0}, Lcom/bytedance/embedapplog/b/i;->r()Lorg/json/JSONObject;

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

    .line 497
    invoke-direct {p0}, Lcom/bytedance/embedapplog/b/i;->r()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "device_id"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 498
    invoke-direct {p0}, Lcom/bytedance/embedapplog/b/i;->r()Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "install_id"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 499
    invoke-static {v1}, Lcom/bytedance/embedapplog/b/i;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 500
    iget-object v1, p0, Lcom/bytedance/embedapplog/b/i;->g:Landroid/content/SharedPreferences;

    const-string v2, "version_code"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 501
    invoke-direct {p0}, Lcom/bytedance/embedapplog/b/i;->r()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "version_code"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 502
    if-ne v0, v1, :cond_35

    const/4 v0, 0x1

    .line 504
    :cond_34
    :goto_34
    return v0

    .line 502
    :cond_35
    const/4 v0, 0x2

    goto :goto_34
.end method

.method public p()J
    .registers 5

    .prologue
    .line 509
    invoke-direct {p0}, Lcom/bytedance/embedapplog/b/i;->r()Lorg/json/JSONObject;

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
    .line 591
    invoke-direct {p0}, Lcom/bytedance/embedapplog/b/i;->r()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "ab_sdk_version"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
