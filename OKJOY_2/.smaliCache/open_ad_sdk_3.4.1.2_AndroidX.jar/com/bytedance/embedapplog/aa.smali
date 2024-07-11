.class public Lcom/bytedance/embedapplog/aa;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final f:[Ljava/lang/String;


# instance fields
.field private a:Z

.field private final b:Landroid/content/Context;

.field private final c:Lcom/bytedance/embedapplog/z;

.field private d:Lorg/json/JSONObject;

.field private final e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/bytedance/embedapplog/u;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Landroid/content/SharedPreferences;

.field private h:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 57
    const-string v0, "channel"

    const-string v1, "package"

    const-string v2, "app_version"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bytedance/embedapplog/aa;->f:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/embedapplog/z;)V
    .registers 5

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/bytedance/embedapplog/aa;->e:Ljava/util/ArrayList;

    .line 148
    const/4 v0, 0x0

    iput v0, p0, Lcom/bytedance/embedapplog/aa;->h:I

    .line 62
    iput-object p1, p0, Lcom/bytedance/embedapplog/aa;->b:Landroid/content/Context;

    .line 63
    iput-object p2, p0, Lcom/bytedance/embedapplog/aa;->c:Lcom/bytedance/embedapplog/z;

    .line 64
    invoke-virtual {p2}, Lcom/bytedance/embedapplog/z;->e()Landroid/content/SharedPreferences;

    move-result-object p2

    iput-object p2, p0, Lcom/bytedance/embedapplog/aa;->g:Landroid/content/SharedPreferences;

    .line 65
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    iput-object p2, p0, Lcom/bytedance/embedapplog/aa;->d:Lorg/json/JSONObject;

    .line 66
    invoke-static {p1}, Lcom/bytedance/embedapplog/bw;->a(Landroid/content/Context;)V

    .line 67
    return-void
.end method

.method private a(Ljava/util/Set;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 301
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 302
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 303
    :cond_9
    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 304
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 306
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    .line 309
    :cond_24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method static a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

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

.method private a(Lcom/bytedance/embedapplog/u;)Z
    .registers 5

    .line 245
    iget-object v0, p0, Lcom/bytedance/embedapplog/aa;->c:Lcom/bytedance/embedapplog/z;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/z;->r()Z

    move-result v0

    if-nez v0, :cond_e

    iget-boolean v0, p1, Lcom/bytedance/embedapplog/u;->d:Z

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    .line 246
    :goto_f
    sget-boolean v1, Lcom/bytedance/embedapplog/bo;->b:Z

    if-eqz v1, :cond_34

    .line 247
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "needSyncFromSub "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/bytedance/embedapplog/bo;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 249
    :cond_34
    return v0
.end method

.method private declared-synchronized b(Lorg/json/JSONObject;)V
    .registers 8

    monitor-enter p0

    .line 262
    if-nez p1, :cond_b

    .line 263
    :try_start_3
    const-string p1, "null abconfig"

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/bytedance/embedapplog/bo;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_78

    .line 264
    monitor-exit p0

    return-void

    .line 267
    :cond_b
    :try_start_b
    invoke-direct {p0}, Lcom/bytedance/embedapplog/aa;->r()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "ab_version"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 268
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_76

    .line 269
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 270
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 271
    array-length v2, v0

    const/4 v3, 0x0

    :goto_28
    if-ge v3, v2, :cond_38

    aget-object v4, v0, v3

    .line 272
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_35

    .line 273
    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 271
    :cond_35
    add-int/lit8 v3, v3, 0x1

    goto :goto_28

    .line 277
    :cond_38
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 278
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 279
    :goto_41
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6a

    .line 280
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 281
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_69

    .line 282
    check-cast v3, Ljava/lang/String;

    .line 283
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_55
    .catchall {:try_start_b .. :try_end_55} :catchall_78

    if-nez v4, :cond_69

    .line 285
    :try_start_57
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 286
    const-string v4, "vid"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 287
    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_64
    .catch Lorg/json/JSONException; {:try_start_57 .. :try_end_64} :catch_65
    .catchall {:try_start_57 .. :try_end_64} :catchall_78

    .line 290
    goto :goto_69

    .line 288
    :catch_65
    move-exception v3

    .line 289
    :try_start_66
    invoke-static {v3}, Lcom/bytedance/embedapplog/bo;->a(Ljava/lang/Throwable;)V

    .line 293
    :cond_69
    :goto_69
    goto :goto_41

    .line 295
    :cond_6a
    invoke-interface {v1, v2}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 296
    const-string p1, "ab_version"

    invoke-direct {p0, v1}, Lcom/bytedance/embedapplog/aa;->a(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/bytedance/embedapplog/aa;->b(Ljava/lang/String;Ljava/lang/Object;)Z
    :try_end_76
    .catchall {:try_start_66 .. :try_end_76} :catchall_78

    .line 298
    :cond_76
    monitor-exit p0

    return-void

    .line 261
    :catchall_78
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private b(Ljava/lang/String;Ljava/lang/Object;)Z
    .registers 7

    .line 421
    nop

    .line 422
    invoke-direct {p0}, Lcom/bytedance/embedapplog/aa;->r()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 423
    if-eqz p2, :cond_11

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    :cond_11
    if-nez p2, :cond_31

    if-eqz v0, :cond_31

    .line 425
    :cond_15
    monitor-enter p0

    .line 427
    :try_start_16
    iget-object v1, p0, Lcom/bytedance/embedapplog/aa;->d:Lorg/json/JSONObject;

    .line 428
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 429
    invoke-static {v2, v1}, Lcom/bytedance/embedapplog/bp;->b(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 430
    invoke-virtual {v2, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 431
    iput-object v2, p0, Lcom/bytedance/embedapplog/aa;->d:Lorg/json/JSONObject;
    :try_end_25
    .catch Lorg/json/JSONException; {:try_start_16 .. :try_end_25} :catch_28
    .catchall {:try_start_16 .. :try_end_25} :catchall_26

    .line 434
    goto :goto_2c

    .line 435
    :catchall_26
    move-exception p1

    goto :goto_2f

    .line 432
    :catch_28
    move-exception v1

    .line 433
    :try_start_29
    invoke-static {v1}, Lcom/bytedance/embedapplog/bo;->a(Ljava/lang/Throwable;)V

    .line 435
    :goto_2c
    monitor-exit p0

    .line 436
    const/4 v1, 0x1

    goto :goto_32

    .line 435
    :goto_2f
    monitor-exit p0
    :try_end_30
    .catchall {:try_start_29 .. :try_end_30} :catchall_26

    throw p1

    .line 439
    :cond_31
    const/4 v1, 0x0

    :goto_32
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateHeader, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ", "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/bytedance/embedapplog/bo;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 441
    return v1
.end method

.method static d(Ljava/lang/String;)Z
    .registers 6

    .line 451
    const/4 v0, 0x0

    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_9

    :cond_8
    move v1, v0

    .line 452
    :goto_9
    const/16 v2, 0xd

    if-lt v1, v2, :cond_3b

    const/16 v2, 0x80

    if-le v1, v2, :cond_12

    goto :goto_3b

    .line 455
    :cond_12
    move v2, v0

    :goto_13
    if-ge v2, v1, :cond_39

    .line 456
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 457
    const/16 v4, 0x30

    if-lt v3, v4, :cond_21

    const/16 v4, 0x39

    if-le v3, v4, :cond_35

    :cond_21
    const/16 v4, 0x61

    if-lt v3, v4, :cond_29

    const/16 v4, 0x66

    if-le v3, v4, :cond_35

    :cond_29
    const/16 v4, 0x41

    if-lt v3, v4, :cond_31

    const/16 v4, 0x46

    if-le v3, v4, :cond_35

    :cond_31
    const/16 v4, 0x2d

    if-ne v3, v4, :cond_38

    .line 455
    :cond_35
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 463
    :cond_38
    return v0

    .line 466
    :cond_39
    const/4 p0, 0x1

    return p0

    .line 453
    :cond_3b
    :goto_3b
    return v0
.end method

.method public static e(Ljava/lang/String;)Z
    .registers 6

    .line 474
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_31

    .line 475
    const-string v0, "unknown"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_31

    .line 476
    const-string v0, "Null"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_31

    .line 478
    nop

    .line 479
    move v0, v1

    :goto_19
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ge v0, v2, :cond_2d

    .line 480
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x30

    if-eq v2, v4, :cond_2a

    .line 481
    nop

    .line 482
    goto :goto_2e

    .line 479
    :cond_2a
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    :cond_2d
    move v1, v3

    .line 485
    :goto_2e
    xor-int/lit8 p0, v1, 0x1

    return p0

    .line 487
    :cond_31
    return v1
.end method

.method private r()Lorg/json/JSONObject;
    .registers 2

    .line 127
    iget-object v0, p0, Lcom/bytedance/embedapplog/aa;->d:Lorg/json/JSONObject;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    .line 102
    invoke-direct {p0}, Lcom/bytedance/embedapplog/aa;->r()Lorg/json/JSONObject;

    move-result-object v0

    .line 103
    nop

    .line 104
    if-eqz v0, :cond_f

    .line 105
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 106
    if-eqz p1, :cond_f

    .line 108
    nop

    .line 111
    goto :goto_10

    .line 114
    :cond_f
    const/4 p1, 0x0

    :goto_10
    if-nez p1, :cond_13

    .line 115
    goto :goto_14

    .line 114
    :cond_13
    move-object p2, p1

    .line 117
    :goto_14
    return-object p2
.end method

.method public a()Lorg/json/JSONObject;
    .registers 2

    .line 71
    iget-boolean v0, p0, Lcom/bytedance/embedapplog/aa;->a:Z

    if-eqz v0, :cond_9

    invoke-direct {p0}, Lcom/bytedance/embedapplog/aa;->r()Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .registers 3

    .line 403
    const-string v0, "ab_sdk_version"

    invoke-direct {p0, v0, p1}, Lcom/bytedance/embedapplog/aa;->b(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 404
    iget-object v0, p0, Lcom/bytedance/embedapplog/aa;->c:Lcom/bytedance/embedapplog/z;

    invoke-virtual {v0, p1}, Lcom/bytedance/embedapplog/z;->a(Ljava/lang/String;)V

    .line 406
    :cond_d
    return-void
.end method

.method public a(Ljava/util/HashMap;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 313
    nop

    .line 314
    const-string v0, "custom"

    const/4 v1, 0x0

    if-eqz p1, :cond_4f

    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4f

    .line 316
    :try_start_c
    invoke-direct {p0}, Lcom/bytedance/embedapplog/aa;->r()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 317
    if-nez v1, :cond_1c

    .line 318
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    move-object v1, v2

    .line 320
    :cond_1c
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_24
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 321
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_49

    .line 322
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_49
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_49} :catch_4b

    .line 324
    :cond_49
    goto :goto_24

    .line 327
    :cond_4a
    goto :goto_4f

    .line 325
    :catch_4b
    move-exception p1

    .line 326
    invoke-static {p1}, Lcom/bytedance/embedapplog/bo;->a(Ljava/lang/Throwable;)V

    .line 329
    :cond_4f
    :goto_4f
    invoke-direct {p0, v0, v1}, Lcom/bytedance/embedapplog/aa;->b(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5a

    .line 330
    iget-object p1, p0, Lcom/bytedance/embedapplog/aa;->c:Lcom/bytedance/embedapplog/z;

    invoke-virtual {p1, v1}, Lcom/bytedance/embedapplog/z;->b(Lorg/json/JSONObject;)V

    .line 332
    :cond_5a
    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .registers 3

    .line 253
    iget-object v0, p0, Lcom/bytedance/embedapplog/aa;->c:Lcom/bytedance/embedapplog/z;

    invoke-virtual {v0, p1}, Lcom/bytedance/embedapplog/z;->c(Lorg/json/JSONObject;)V

    .line 254
    invoke-direct {p0, p1}, Lcom/bytedance/embedapplog/aa;->b(Lorg/json/JSONObject;)V

    .line 255
    return-void
.end method

.method public a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 21

    .line 513
    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v5, p2

    move-object/from16 v7, p3

    move-object/from16 v9, p4

    const-string v2, "register_time"

    const-string v3, "ssid"

    const-string v4, "install_id"

    const-string v6, ""

    const-string v8, "device_id"

    const-string v10, "version_code"

    sget-boolean v11, Lcom/bytedance/embedapplog/bo;->b:Z

    if-eqz v11, :cond_4b

    .line 514
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "saveRegisterInfo, "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-static {v11, v12}, Lcom/bytedance/embedapplog/bo;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 517
    :cond_4b
    invoke-static/range {p2 .. p2}, Lcom/bytedance/embedapplog/aa;->e(Ljava/lang/String;)Z

    move-result v11

    .line 518
    invoke-static/range {p3 .. p3}, Lcom/bytedance/embedapplog/aa;->e(Ljava/lang/String;)Z

    move-result v12

    .line 520
    const/4 v14, 0x0

    :try_start_54
    invoke-static/range {p4 .. p4}, Lcom/bytedance/embedapplog/aa;->e(Ljava/lang/String;)Z

    move-result v15

    .line 522
    iget-object v13, v1, Lcom/bytedance/embedapplog/aa;->g:Landroid/content/SharedPreferences;

    invoke-interface {v13, v10, v14}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v13
    :try_end_5e
    .catch Lorg/json/JSONException; {:try_start_54 .. :try_end_5e} :catch_f8

    .line 523
    :try_start_5e
    invoke-direct/range {p0 .. p0}, Lcom/bytedance/embedapplog/aa;->r()Lorg/json/JSONObject;

    move-result-object v14
    :try_end_62
    .catch Lorg/json/JSONException; {:try_start_5e .. :try_end_62} :catch_f5

    const/4 v9, 0x0

    :try_start_63
    invoke-virtual {v14, v10, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v14
    :try_end_67
    .catch Lorg/json/JSONException; {:try_start_63 .. :try_end_67} :catch_f2

    .line 525
    :try_start_67
    iget-object v9, v1, Lcom/bytedance/embedapplog/aa;->g:Landroid/content/SharedPreferences;

    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    .line 526
    if-eq v13, v14, :cond_72

    .line 527
    invoke-interface {v9, v10, v14}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 530
    :cond_72
    if-eqz v11, :cond_83

    .line 531
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    .line 532
    invoke-interface {v9, v2, v13, v14}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 533
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/bytedance/embedapplog/aa;->b(Ljava/lang/String;Ljava/lang/Object;)Z

    goto :goto_95

    .line 534
    :cond_83
    if-nez v11, :cond_95

    .line 535
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 536
    const-string v10, "response"

    invoke-virtual {v2, v10, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 537
    const-string v0, "tt_fetch_did_error"

    invoke-static {v0, v2}, Lcom/bytedance/embedapplog/AppLog;->onEventV3(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_96

    .line 534
    :cond_95
    :goto_95
    nop

    .line 540
    :goto_96
    nop

    .line 541
    invoke-direct/range {p0 .. p0}, Lcom/bytedance/embedapplog/aa;->r()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, v8, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 542
    if-eqz v11, :cond_ac

    invoke-direct {v1, v8, v5}, Lcom/bytedance/embedapplog/aa;->b(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ac

    .line 543
    invoke-interface {v9, v8, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 544
    const/4 v2, 0x1

    goto :goto_ad

    .line 547
    :cond_ac
    const/4 v2, 0x0

    :goto_ad
    invoke-direct/range {p0 .. p0}, Lcom/bytedance/embedapplog/aa;->r()Lorg/json/JSONObject;

    move-result-object v8

    invoke-virtual {v8, v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 548
    if-eqz v12, :cond_c1

    invoke-direct {v1, v4, v7}, Lcom/bytedance/embedapplog/aa;->b(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c1

    .line 549
    invoke-interface {v9, v4, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 550
    const/4 v2, 0x1

    .line 553
    :cond_c1
    invoke-direct/range {p0 .. p0}, Lcom/bytedance/embedapplog/aa;->r()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4, v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10
    :try_end_c9
    .catch Lorg/json/JSONException; {:try_start_67 .. :try_end_c9} :catch_f5

    .line 554
    if-eqz v15, :cond_d9

    move-object/from16 v13, p4

    const/4 v14, 0x0

    :try_start_ce
    invoke-direct {v1, v3, v13}, Lcom/bytedance/embedapplog/aa;->b(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_dc

    .line 555
    invoke-interface {v9, v3, v13}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 556
    const/4 v3, 0x1

    goto :goto_dd

    .line 554
    :cond_d9
    move-object/from16 v13, p4

    const/4 v14, 0x0

    .line 559
    :cond_dc
    move v3, v2

    :goto_dd
    invoke-static {}, Lcom/bytedance/embedapplog/AppLog;->getDataObserver()Lcom/bytedance/embedapplog/IDataObserver;

    move-result-object v2

    move-object v4, v0

    move-object/from16 v5, p2

    move-object v6, v8

    move-object/from16 v7, p3

    move-object v8, v10

    move-object v0, v9

    move-object/from16 v9, p4

    invoke-interface/range {v2 .. v9}, Lcom/bytedance/embedapplog/IDataObserver;->onRemoteIdGet(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_f1
    .catch Lorg/json/JSONException; {:try_start_ce .. :try_end_f1} :catch_f8

    .line 563
    goto :goto_fc

    .line 561
    :catch_f2
    move-exception v0

    move v14, v9

    goto :goto_f9

    :catch_f5
    move-exception v0

    const/4 v14, 0x0

    goto :goto_f9

    :catch_f8
    move-exception v0

    .line 562
    :goto_f9
    invoke-static {v0}, Lcom/bytedance/embedapplog/bo;->a(Ljava/lang/Throwable;)V

    .line 564
    :goto_fc
    if-eqz v11, :cond_102

    if-eqz v12, :cond_102

    const/4 v13, 0x1

    goto :goto_103

    :cond_102
    move v13, v14

    :goto_103
    return v13
.end method

.method public b()Lorg/json/JSONObject;
    .registers 5

    .line 81
    const-string v0, "oaid"

    invoke-virtual {p0}, Lcom/bytedance/embedapplog/aa;->a()Lorg/json/JSONObject;

    move-result-object v1

    .line 82
    if-eqz v1, :cond_27

    .line 84
    :try_start_8
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 85
    invoke-static {v2}, Lcom/bytedance/embedapplog/bw;->a(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    .line 86
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_22

    .line 87
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 88
    invoke-static {v3, v1}, Lcom/bytedance/embedapplog/bp;->b(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 89
    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_21} :catch_23

    .line 90
    return-object v3

    .line 94
    :cond_22
    goto :goto_27

    .line 92
    :catch_23
    move-exception v0

    .line 93
    invoke-static {v0}, Lcom/bytedance/embedapplog/bo;->a(Ljava/lang/Throwable;)V

    .line 96
    :cond_27
    :goto_27
    return-object v1
.end method

.method public b(Ljava/lang/String;)V
    .registers 3

    .line 409
    const-string v0, "user_agent"

    invoke-direct {p0, v0, p1}, Lcom/bytedance/embedapplog/aa;->b(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 410
    iget-object v0, p0, Lcom/bytedance/embedapplog/aa;->c:Lcom/bytedance/embedapplog/z;

    invoke-virtual {v0, p1}, Lcom/bytedance/embedapplog/z;->d(Ljava/lang/String;)V

    .line 412
    :cond_d
    return-void
.end method

.method public c()I
    .registers 6

    .line 131
    iget-boolean v0, p0, Lcom/bytedance/embedapplog/aa;->a:Z

    const-string v1, "version_code"

    const/4 v2, -0x1

    if-eqz v0, :cond_10

    invoke-direct {p0}, Lcom/bytedance/embedapplog/aa;->r()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_11

    :cond_10
    move v0, v2

    .line 132
    :goto_11
    const/4 v3, 0x0

    :goto_12
    const/4 v4, 0x3

    if-ge v3, v4, :cond_2b

    if-ne v0, v2, :cond_2b

    .line 133
    invoke-virtual {p0}, Lcom/bytedance/embedapplog/aa;->e()Z

    .line 134
    iget-boolean v0, p0, Lcom/bytedance/embedapplog/aa;->a:Z

    if-eqz v0, :cond_27

    invoke-direct {p0}, Lcom/bytedance/embedapplog/aa;->r()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_28

    :cond_27
    move v0, v2

    .line 132
    :goto_28
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 136
    :cond_2b
    return v0
.end method

.method public c(Ljava/lang/String;)V
    .registers 3

    .line 415
    const-string v0, "user_unique_id"

    invoke-direct {p0, v0, p1}, Lcom/bytedance/embedapplog/aa;->b(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 416
    iget-object v0, p0, Lcom/bytedance/embedapplog/aa;->c:Lcom/bytedance/embedapplog/z;

    invoke-virtual {v0, p1}, Lcom/bytedance/embedapplog/z;->b(Ljava/lang/String;)V

    .line 418
    :cond_d
    return-void
.end method

.method public d()Ljava/lang/String;
    .registers 6

    .line 140
    iget-boolean v0, p0, Lcom/bytedance/embedapplog/aa;->a:Z

    const-string v1, "app_version"

    const/4 v2, 0x0

    if-eqz v0, :cond_10

    invoke-direct {p0}, Lcom/bytedance/embedapplog/aa;->r()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    :cond_10
    move-object v0, v2

    .line 141
    :goto_11
    const/4 v3, 0x0

    :goto_12
    const/4 v4, 0x3

    if-ge v3, v4, :cond_2b

    if-nez v0, :cond_2b

    .line 142
    invoke-virtual {p0}, Lcom/bytedance/embedapplog/aa;->e()Z

    .line 143
    iget-boolean v0, p0, Lcom/bytedance/embedapplog/aa;->a:Z

    if-eqz v0, :cond_27

    invoke-direct {p0}, Lcom/bytedance/embedapplog/aa;->r()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_28

    :cond_27
    move-object v0, v2

    .line 141
    :goto_28
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 145
    :cond_2b
    return-object v0
.end method

.method public e()Z
    .registers 13

    .line 151
    iget-object v0, p0, Lcom/bytedance/embedapplog/aa;->e:Ljava/util/ArrayList;

    monitor-enter v0

    .line 152
    :try_start_3
    iget-object v1, p0, Lcom/bytedance/embedapplog/aa;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_e1

    .line 153
    iget-object v1, p0, Lcom/bytedance/embedapplog/aa;->e:Ljava/util/ArrayList;

    new-instance v2, Lcom/bytedance/embedapplog/v;

    invoke-direct {v2}, Lcom/bytedance/embedapplog/v;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    iget-object v1, p0, Lcom/bytedance/embedapplog/aa;->e:Ljava/util/ArrayList;

    new-instance v2, Lcom/bytedance/embedapplog/x;

    iget-object v3, p0, Lcom/bytedance/embedapplog/aa;->b:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/bytedance/embedapplog/x;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    iget-object v1, p0, Lcom/bytedance/embedapplog/aa;->e:Ljava/util/ArrayList;

    new-instance v2, Lcom/bytedance/embedapplog/y;

    iget-object v3, p0, Lcom/bytedance/embedapplog/aa;->b:Landroid/content/Context;

    iget-object v4, p0, Lcom/bytedance/embedapplog/aa;->c:Lcom/bytedance/embedapplog/z;

    invoke-direct {v2, v3, v4}, Lcom/bytedance/embedapplog/y;-><init>(Landroid/content/Context;Lcom/bytedance/embedapplog/z;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    iget-object v1, p0, Lcom/bytedance/embedapplog/aa;->e:Ljava/util/ArrayList;

    new-instance v2, Lcom/bytedance/embedapplog/ab;

    iget-object v3, p0, Lcom/bytedance/embedapplog/aa;->b:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/bytedance/embedapplog/ab;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    iget-object v1, p0, Lcom/bytedance/embedapplog/aa;->e:Ljava/util/ArrayList;

    new-instance v2, Lcom/bytedance/embedapplog/ad;

    iget-object v3, p0, Lcom/bytedance/embedapplog/aa;->b:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/bytedance/embedapplog/ad;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    iget-object v1, p0, Lcom/bytedance/embedapplog/aa;->e:Ljava/util/ArrayList;

    new-instance v2, Lcom/bytedance/embedapplog/ae;

    iget-object v3, p0, Lcom/bytedance/embedapplog/aa;->b:Landroid/content/Context;

    iget-object v4, p0, Lcom/bytedance/embedapplog/aa;->c:Lcom/bytedance/embedapplog/z;

    invoke-direct {v2, v3, v4}, Lcom/bytedance/embedapplog/ae;-><init>(Landroid/content/Context;Lcom/bytedance/embedapplog/z;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    iget-object v1, p0, Lcom/bytedance/embedapplog/aa;->e:Ljava/util/ArrayList;

    new-instance v2, Lcom/bytedance/embedapplog/af;

    iget-object v3, p0, Lcom/bytedance/embedapplog/aa;->b:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/bytedance/embedapplog/af;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    iget-object v1, p0, Lcom/bytedance/embedapplog/aa;->e:Ljava/util/ArrayList;

    new-instance v2, Lcom/bytedance/embedapplog/ah;

    iget-object v3, p0, Lcom/bytedance/embedapplog/aa;->b:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/bytedance/embedapplog/ah;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    iget-object v1, p0, Lcom/bytedance/embedapplog/aa;->e:Ljava/util/ArrayList;

    new-instance v2, Lcom/bytedance/embedapplog/ai;

    iget-object v3, p0, Lcom/bytedance/embedapplog/aa;->b:Landroid/content/Context;

    iget-object v4, p0, Lcom/bytedance/embedapplog/aa;->c:Lcom/bytedance/embedapplog/z;

    invoke-direct {v2, v3, v4}, Lcom/bytedance/embedapplog/ai;-><init>(Landroid/content/Context;Lcom/bytedance/embedapplog/z;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    iget-object v1, p0, Lcom/bytedance/embedapplog/aa;->e:Ljava/util/ArrayList;

    new-instance v2, Lcom/bytedance/embedapplog/aj;

    invoke-direct {v2}, Lcom/bytedance/embedapplog/aj;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    iget-object v1, p0, Lcom/bytedance/embedapplog/aa;->e:Ljava/util/ArrayList;

    new-instance v2, Lcom/bytedance/embedapplog/ak;

    iget-object v3, p0, Lcom/bytedance/embedapplog/aa;->c:Lcom/bytedance/embedapplog/z;

    invoke-direct {v2, v3}, Lcom/bytedance/embedapplog/ak;-><init>(Lcom/bytedance/embedapplog/z;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    iget-object v1, p0, Lcom/bytedance/embedapplog/aa;->e:Ljava/util/ArrayList;

    new-instance v2, Lcom/bytedance/embedapplog/al;

    iget-object v3, p0, Lcom/bytedance/embedapplog/aa;->b:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/bytedance/embedapplog/al;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    iget-object v1, p0, Lcom/bytedance/embedapplog/aa;->e:Ljava/util/ArrayList;

    new-instance v2, Lcom/bytedance/embedapplog/am;

    iget-object v3, p0, Lcom/bytedance/embedapplog/aa;->b:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/bytedance/embedapplog/am;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    iget-object v1, p0, Lcom/bytedance/embedapplog/aa;->e:Ljava/util/ArrayList;

    new-instance v2, Lcom/bytedance/embedapplog/an;

    iget-object v3, p0, Lcom/bytedance/embedapplog/aa;->b:Landroid/content/Context;

    iget-object v4, p0, Lcom/bytedance/embedapplog/aa;->c:Lcom/bytedance/embedapplog/z;

    invoke-direct {v2, v3, v4}, Lcom/bytedance/embedapplog/an;-><init>(Landroid/content/Context;Lcom/bytedance/embedapplog/z;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    iget-object v1, p0, Lcom/bytedance/embedapplog/aa;->e:Ljava/util/ArrayList;

    new-instance v2, Lcom/bytedance/embedapplog/s;

    iget-object v3, p0, Lcom/bytedance/embedapplog/aa;->b:Landroid/content/Context;

    iget-object v4, p0, Lcom/bytedance/embedapplog/aa;->c:Lcom/bytedance/embedapplog/z;

    invoke-direct {v2, v3, v4}, Lcom/bytedance/embedapplog/s;-><init>(Landroid/content/Context;Lcom/bytedance/embedapplog/z;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    iget-object v1, p0, Lcom/bytedance/embedapplog/aa;->e:Ljava/util/ArrayList;

    new-instance v2, Lcom/bytedance/embedapplog/ag;

    iget-object v3, p0, Lcom/bytedance/embedapplog/aa;->b:Landroid/content/Context;

    iget-object v4, p0, Lcom/bytedance/embedapplog/aa;->c:Lcom/bytedance/embedapplog/z;

    invoke-direct {v2, v3, v4}, Lcom/bytedance/embedapplog/ag;-><init>(Landroid/content/Context;Lcom/bytedance/embedapplog/z;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    iget-object v1, p0, Lcom/bytedance/embedapplog/aa;->e:Ljava/util/ArrayList;

    new-instance v2, Lcom/bytedance/embedapplog/w;

    iget-object v3, p0, Lcom/bytedance/embedapplog/aa;->b:Landroid/content/Context;

    iget-object v4, p0, Lcom/bytedance/embedapplog/aa;->c:Lcom/bytedance/embedapplog/z;

    invoke-direct {v2, v3, v4}, Lcom/bytedance/embedapplog/w;-><init>(Landroid/content/Context;Lcom/bytedance/embedapplog/z;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    :cond_e1
    monitor-exit v0
    :try_end_e2
    .catchall {:try_start_3 .. :try_end_e2} :catchall_21f

    .line 173
    invoke-direct {p0}, Lcom/bytedance/embedapplog/aa;->r()Lorg/json/JSONObject;

    move-result-object v0

    .line 174
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 175
    invoke-static {v1, v0}, Lcom/bytedance/embedapplog/bp;->b(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 177
    nop

    .line 178
    nop

    .line 179
    nop

    .line 180
    iget-object v0, p0, Lcom/bytedance/embedapplog/aa;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    move v5, v2

    move v6, v5

    move v4, v3

    :goto_fc
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/16 v8, 0xa

    if-eqz v7, :cond_166

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/bytedance/embedapplog/u;

    .line 181
    iget-boolean v9, v7, Lcom/bytedance/embedapplog/u;->a:Z

    if-eqz v9, :cond_118

    iget-boolean v9, v7, Lcom/bytedance/embedapplog/u;->c:Z

    if-nez v9, :cond_118

    invoke-direct {p0, v7}, Lcom/bytedance/embedapplog/aa;->a(Lcom/bytedance/embedapplog/u;)Z

    move-result v9

    if-eqz v9, :cond_158

    .line 183
    :cond_118
    :try_start_118
    invoke-virtual {v7, v1}, Lcom/bytedance/embedapplog/u;->a(Lorg/json/JSONObject;)Z

    move-result v9

    iput-boolean v9, v7, Lcom/bytedance/embedapplog/u;->a:Z
    :try_end_11e
    .catch Lorg/json/JSONException; {:try_start_118 .. :try_end_11e} :catch_149
    .catch Ljava/lang/SecurityException; {:try_start_118 .. :try_end_11e} :catch_11f

    goto :goto_14d

    .line 186
    :catch_11f
    move-exception v9

    .line 187
    iget-boolean v10, v7, Lcom/bytedance/embedapplog/u;->b:Z

    if-nez v10, :cond_14e

    .line 188
    add-int/lit8 v5, v5, 0x1

    .line 189
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "loadHeader, "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/bytedance/embedapplog/aa;->h:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v9}, Lcom/bytedance/embedapplog/bo;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 191
    iget-boolean v9, v7, Lcom/bytedance/embedapplog/u;->a:Z

    if-nez v9, :cond_14e

    iget v9, p0, Lcom/bytedance/embedapplog/aa;->h:I

    if-le v9, v8, :cond_14e

    .line 192
    iput-boolean v3, v7, Lcom/bytedance/embedapplog/u;->a:Z

    goto :goto_14e

    .line 184
    :catch_149
    move-exception v8

    .line 185
    invoke-static {v8}, Lcom/bytedance/embedapplog/bo;->a(Ljava/lang/Throwable;)V

    .line 195
    :goto_14d
    nop

    .line 197
    :cond_14e
    :goto_14e
    iget-boolean v8, v7, Lcom/bytedance/embedapplog/u;->a:Z

    if-nez v8, :cond_158

    iget-boolean v8, v7, Lcom/bytedance/embedapplog/u;->b:Z

    if-nez v8, :cond_158

    .line 198
    add-int/lit8 v6, v6, 0x1

    .line 202
    :cond_158
    iget-boolean v8, v7, Lcom/bytedance/embedapplog/u;->a:Z

    if-nez v8, :cond_163

    iget-boolean v7, v7, Lcom/bytedance/embedapplog/u;->b:Z

    if-eqz v7, :cond_161

    goto :goto_163

    :cond_161
    move v7, v2

    goto :goto_164

    :cond_163
    :goto_163
    move v7, v3

    :goto_164
    and-int/2addr v4, v7

    .line 203
    goto :goto_fc

    .line 204
    :cond_166
    const/4 v0, 0x0

    if-eqz v4, :cond_190

    .line 205
    sget-object v7, Lcom/bytedance/embedapplog/aa;->f:[Ljava/lang/String;

    array-length v9, v7

    :goto_16c
    if-ge v2, v9, :cond_17d

    aget-object v10, v7, v2

    .line 206
    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    xor-int/2addr v10, v3

    and-int/2addr v4, v10

    .line 205
    add-int/lit8 v2, v2, 0x1

    goto :goto_16c

    .line 208
    :cond_17d
    const-string v2, "user_unique_id"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 209
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_190

    .line 211
    :try_start_189
    const-string v7, "user_unique_id"

    invoke-virtual {v1, v7, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_18e
    .catch Lorg/json/JSONException; {:try_start_189 .. :try_end_18e} :catch_18f

    .line 215
    goto :goto_190

    .line 212
    :catch_18f
    move-exception v2

    .line 219
    :cond_190
    :goto_190
    iput-object v1, p0, Lcom/bytedance/embedapplog/aa;->d:Lorg/json/JSONObject;

    .line 220
    iput-boolean v4, p0, Lcom/bytedance/embedapplog/aa;->a:Z

    .line 222
    sget-boolean v1, Lcom/bytedance/embedapplog/bo;->b:Z

    if-eqz v1, :cond_1cd

    .line 223
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadHeader, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/bytedance/embedapplog/aa;->a:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/bytedance/embedapplog/aa;->h:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/embedapplog/aa;->d:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/bytedance/embedapplog/bo;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1f1

    .line 225
    :cond_1cd
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadHeader, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/bytedance/embedapplog/aa;->a:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/bytedance/embedapplog/aa;->h:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/bytedance/embedapplog/bo;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 228
    :goto_1f1
    if-lez v5, :cond_205

    if-ne v5, v6, :cond_205

    .line 230
    iget v0, p0, Lcom/bytedance/embedapplog/aa;->h:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/bytedance/embedapplog/aa;->h:I

    .line 231
    invoke-virtual {p0}, Lcom/bytedance/embedapplog/aa;->o()I

    move-result v0

    if-eqz v0, :cond_205

    .line 233
    iget v0, p0, Lcom/bytedance/embedapplog/aa;->h:I

    add-int/2addr v0, v8

    iput v0, p0, Lcom/bytedance/embedapplog/aa;->h:I

    .line 237
    :cond_205
    iget-boolean v0, p0, Lcom/bytedance/embedapplog/aa;->a:Z

    if-eqz v0, :cond_21c

    .line 238
    invoke-static {}, Lcom/bytedance/embedapplog/AppLog;->getDataObserver()Lcom/bytedance/embedapplog/IDataObserver;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/embedapplog/aa;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/bytedance/embedapplog/aa;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/bytedance/embedapplog/aa;->k()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/bytedance/embedapplog/IDataObserver;->onIdLoaded(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    :cond_21c
    iget-boolean v0, p0, Lcom/bytedance/embedapplog/aa;->a:Z

    return v0

    .line 171
    :catchall_21f
    move-exception v1

    :try_start_220
    monitor-exit v0
    :try_end_221
    .catchall {:try_start_220 .. :try_end_221} :catchall_21f

    throw v1
.end method

.method public f()Ljava/lang/String;
    .registers 4

    .line 335
    invoke-direct {p0}, Lcom/bytedance/embedapplog/aa;->r()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "user_unique_id"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized f(Ljava/lang/String;)V
    .registers 9

    monitor-enter p0

    .line 568
    :try_start_1
    invoke-direct {p0}, Lcom/bytedance/embedapplog/aa;->r()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "ab_version"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 569
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_13

    .line 570
    goto :goto_61

    .line 572
    :cond_13
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 573
    array-length v3, v1

    const/4 v4, 0x0

    :goto_1b
    if-ge v4, v3, :cond_4a

    aget-object v5, v1, v4

    .line 574
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_47

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_47

    .line 575
    sget-boolean p1, Lcom/bytedance/embedapplog/bo;->b:Z

    if-eqz p1, :cond_45

    .line 576
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addExposedVid ready added "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Lcom/bytedance/embedapplog/bo;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_45
    .catchall {:try_start_1 .. :try_end_45} :catchall_87

    .line 578
    :cond_45
    monitor-exit p0

    return-void

    .line 573
    :cond_47
    add-int/lit8 v4, v4, 0x1

    goto :goto_1b

    .line 581
    :cond_4a
    :try_start_4a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 583
    :goto_61
    const-string v0, "ab_version"

    invoke-direct {p0, v0, p1}, Lcom/bytedance/embedapplog/aa;->b(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 584
    iget-object v0, p0, Lcom/bytedance/embedapplog/aa;->c:Lcom/bytedance/embedapplog/z;

    invoke-virtual {v0, p1}, Lcom/bytedance/embedapplog/z;->e(Ljava/lang/String;)V

    .line 585
    sget-boolean v0, Lcom/bytedance/embedapplog/bo;->b:Z

    if-eqz v0, :cond_85

    .line 586
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addExposedVid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Lcom/bytedance/embedapplog/bo;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_85
    .catchall {:try_start_4a .. :try_end_85} :catchall_87

    .line 588
    :cond_85
    monitor-exit p0

    return-void

    .line 567
    :catchall_87
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public g()Ljava/lang/String;
    .registers 4

    .line 343
    invoke-direct {p0}, Lcom/bytedance/embedapplog/aa;->r()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "device_id"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .registers 4

    .line 351
    invoke-direct {p0}, Lcom/bytedance/embedapplog/aa;->r()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "aid"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .registers 4

    .line 359
    invoke-direct {p0}, Lcom/bytedance/embedapplog/aa;->r()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "udid"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .registers 4

    .line 367
    invoke-direct {p0}, Lcom/bytedance/embedapplog/aa;->r()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "install_id"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .registers 4

    .line 375
    invoke-direct {p0}, Lcom/bytedance/embedapplog/aa;->r()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "ssid"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .registers 4

    .line 383
    invoke-direct {p0}, Lcom/bytedance/embedapplog/aa;->r()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "user_unique_id"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .registers 4

    .line 391
    invoke-direct {p0}, Lcom/bytedance/embedapplog/aa;->r()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "clientudid"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public n()Ljava/lang/String;
    .registers 4

    .line 399
    invoke-direct {p0}, Lcom/bytedance/embedapplog/aa;->r()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "openudid"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public o()I
    .registers 5

    .line 497
    invoke-direct {p0}, Lcom/bytedance/embedapplog/aa;->r()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "device_id"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 498
    invoke-direct {p0}, Lcom/bytedance/embedapplog/aa;->r()Lorg/json/JSONObject;

    move-result-object v1

    const-string v3, "install_id"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 499
    invoke-static {v0}, Lcom/bytedance/embedapplog/aa;->e(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_33

    .line 500
    iget-object v0, p0, Lcom/bytedance/embedapplog/aa;->g:Landroid/content/SharedPreferences;

    const-string v2, "version_code"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 501
    invoke-direct {p0}, Lcom/bytedance/embedapplog/aa;->r()Lorg/json/JSONObject;

    move-result-object v1

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 502
    if-ne v0, v1, :cond_31

    const/4 v0, 0x1

    goto :goto_32

    :cond_31
    const/4 v0, 0x2

    :goto_32
    return v0

    .line 504
    :cond_33
    return v1
.end method

.method public p()J
    .registers 5

    .line 509
    invoke-direct {p0}, Lcom/bytedance/embedapplog/aa;->r()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "register_time"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public q()Ljava/lang/String;
    .registers 4

    .line 591
    invoke-direct {p0}, Lcom/bytedance/embedapplog/aa;->r()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "ab_sdk_version"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
