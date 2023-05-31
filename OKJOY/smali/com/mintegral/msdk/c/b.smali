.class public Lcom/mintegral/msdk/c/b;
.super Ljava/lang/Object;
.source "SettingManager.java"


# static fields
.field public static final a:Ljava/lang/String;

.field private static b:Lcom/mintegral/msdk/c/b;

.field private static c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/mintegral/msdk/c/d;",
            ">;"
        }
    .end annotation
.end field

.field private static d:Lcom/mintegral/msdk/c/a;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 39
    const-class v0, Lcom/mintegral/msdk/c/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mintegral/msdk/c/b;->a:Ljava/lang/String;

    .line 45
    sput-object v1, Lcom/mintegral/msdk/c/b;->b:Lcom/mintegral/msdk/c/b;

    .line 404
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mintegral/msdk/c/b;->c:Ljava/util/HashMap;

    .line 406
    sput-object v1, Lcom/mintegral/msdk/c/b;->d:Lcom/mintegral/msdk/c/a;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)J
    .registers 8

    .prologue
    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "wall_style_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 157
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_84

    .line 158
    invoke-static {}, Lcom/mintegral/msdk/base/a/a/a;->a()Lcom/mintegral/msdk/base/a/a/a;

    move-result-object v0

    .line 159
    invoke-virtual {v0}, Lcom/mintegral/msdk/base/a/a/a;->b()Ljava/util/List;

    move-result-object v3

    .line 160
    if-eqz v3, :cond_84

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_84

    .line 161
    const/4 v0, 0x0

    move v1, v0

    :goto_31
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_84

    .line 162
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 163
    const-string v4, "null"

    const-string v5, ""

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_79

    .line 171
    :goto_4b
    invoke-static {}, Lcom/mintegral/msdk/base/a/a/a;->a()Lcom/mintegral/msdk/base/a/a/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/a/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 173
    :try_start_53
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_81

    .line 174
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 175
    const-string v0, "current_time"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 176
    sget-object v2, Lcom/mintegral/msdk/c/b;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "lastGetTime"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_78
    .catch Lorg/json/JSONException; {:try_start_53 .. :try_end_78} :catch_7d

    .line 183
    :goto_78
    return-wide v0

    .line 161
    :cond_79
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_31

    .line 181
    :catch_7d
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 183
    :cond_81
    const-wide/16 v0, 0x0

    goto :goto_78

    :cond_84
    move-object v0, v2

    goto :goto_4b
.end method

.method private static a(Ljava/util/List;I)Lcom/mintegral/msdk/base/entity/o;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mintegral/msdk/base/entity/CampaignEx;",
            ">;I)",
            "Lcom/mintegral/msdk/base/entity/o;"
        }
    .end annotation

    .prologue
    .line 304
    new-instance v0, Lcom/mintegral/msdk/base/entity/o;

    invoke-direct {v0}, Lcom/mintegral/msdk/base/entity/o;-><init>()V

    .line 306
    :try_start_5
    invoke-static {p0, p1}, Lcom/mintegral/msdk/c/b;->b(Ljava/util/List;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/entity/o;->b(Ljava/lang/String;)V

    .line 307
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/entity/o;->a(Ljava/lang/String;)V

    .line 308
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mintegral/msdk/base/b/i;->a(Landroid/content/Context;)Lcom/mintegral/msdk/base/b/i;

    move-result-object v1

    invoke-static {v1}, Lcom/mintegral/msdk/base/b/t;->a(Lcom/mintegral/msdk/base/b/h;)Lcom/mintegral/msdk/base/b/t;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/b/t;->c()I

    move-result v1

    const/16 v2, 0x1f4

    if-le v1, v2, :cond_40

    .line 310
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mintegral/msdk/base/b/i;->a(Landroid/content/Context;)Lcom/mintegral/msdk/base/b/i;

    move-result-object v1

    invoke-static {v1}, Lcom/mintegral/msdk/base/b/t;->a(Lcom/mintegral/msdk/base/b/h;)Lcom/mintegral/msdk/base/b/t;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Lcom/mintegral/msdk/base/b/t;->b(Ljava/lang/String;)I

    .line 312
    :cond_40
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mintegral/msdk/base/b/i;->a(Landroid/content/Context;)Lcom/mintegral/msdk/base/b/i;

    move-result-object v1

    invoke-static {v1}, Lcom/mintegral/msdk/base/b/t;->a(Lcom/mintegral/msdk/base/b/h;)Lcom/mintegral/msdk/base/b/t;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/b/t;->a(Lcom/mintegral/msdk/base/entity/o;)J
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_53} :catch_54

    .line 316
    :goto_53
    return-object v0

    :catch_54
    move-exception v1

    goto :goto_53
.end method

.method public static a()Lcom/mintegral/msdk/c/b;
    .registers 2

    .prologue
    .line 51
    sget-object v0, Lcom/mintegral/msdk/c/b;->b:Lcom/mintegral/msdk/c/b;

    if-nez v0, :cond_13

    .line 52
    const-class v1, Lcom/mintegral/msdk/c/b;

    monitor-enter v1

    .line 53
    :try_start_7
    sget-object v0, Lcom/mintegral/msdk/c/b;->b:Lcom/mintegral/msdk/c/b;

    if-nez v0, :cond_12

    .line 54
    new-instance v0, Lcom/mintegral/msdk/c/b;

    invoke-direct {v0}, Lcom/mintegral/msdk/c/b;-><init>()V

    sput-object v0, Lcom/mintegral/msdk/c/b;->b:Lcom/mintegral/msdk/c/b;

    .line 56
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 58
    :cond_13
    sget-object v0, Lcom/mintegral/msdk/c/b;->b:Lcom/mintegral/msdk/c/b;

    return-object v0

    .line 56
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method private static a(Lcom/mintegral/msdk/base/entity/CampaignEx;)Lorg/json/JSONObject;
    .registers 6

    .prologue
    .line 340
    const/4 v1, 0x0

    .line 342
    if-eqz p0, :cond_7a

    .line 343
    :try_start_3
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_8} :catch_6c

    .line 344
    :try_start_8
    const-string v1, "campaignid"

    invoke-virtual {p0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 345
    const-string v1, "packageName"

    invoke-virtual {p0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 346
    const-string v1, "title"

    invoke-virtual {p0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getAppName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 347
    const-string v1, "cta"

    invoke-virtual {p0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getAdCall()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 348
    const-string v1, "desc"

    invoke-virtual {p0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getAppDesc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 349
    const-string v1, "image_url"

    invoke-virtual {p0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 350
    const-string v1, "impression_url"

    invoke-virtual {p0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getImpressionURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 351
    const-string v1, "iex"

    invoke-virtual {p0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getIex()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 352
    const-string v1, "ts"

    invoke-virtual {p0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getTs()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 353
    const-string v1, "label"

    invoke-virtual {p0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 354
    const-string v1, "pkg_source"

    invoke-virtual {p0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getPkgSource()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_6b} :catch_78

    .line 361
    :cond_6b
    :goto_6b
    return-object v0

    .line 356
    :catch_6c
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    .line 357
    :goto_70
    sget-boolean v2, Lcom/mintegral/msdk/MIntegralConstans;->DEBUG:Z

    if-eqz v2, :cond_6b

    .line 358
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6b

    .line 356
    :catch_78
    move-exception v1

    goto :goto_70

    :cond_7a
    move-object v0, v1

    goto :goto_6b
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 416
    :try_start_0
    const-string v0, "mintegral"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 417
    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v2

    .line 418
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 419
    :cond_13
    :goto_13
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 420
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 421
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "_"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 422
    sget-object v4, Lcom/mintegral/msdk/c/b;->c:Ljava/util/HashMap;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/mintegral/msdk/c/d;->a(Ljava/lang/String;)Lcom/mintegral/msdk/c/d;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_47} :catch_48

    goto :goto_13

    .line 426
    :catch_48
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 429
    :cond_4c
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 477
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 479
    invoke-static {}, Lcom/mintegral/msdk/base/a/a/a;->a()Lcom/mintegral/msdk/base/a/a/a;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Lcom/mintegral/msdk/base/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    invoke-static {p2}, Lcom/mintegral/msdk/c/d;->a(Ljava/lang/String;)Lcom/mintegral/msdk/c/d;

    move-result-object v1

    .line 481
    sget-object v2, Lcom/mintegral/msdk/c/b;->c:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    return-void
.end method

.method public static a(Ljava/lang/String;)Z
    .registers 8

    .prologue
    .line 68
    invoke-static {p0}, Lcom/mintegral/msdk/c/b;->b(Ljava/lang/String;)Lcom/mintegral/msdk/c/a;

    move-result-object v0

    .line 69
    if-eqz v0, :cond_40

    .line 71
    invoke-virtual {v0}, Lcom/mintegral/msdk/c/a;->aM()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    .line 72
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 73
    invoke-virtual {v0}, Lcom/mintegral/msdk/c/a;->aQ()J

    move-result-wide v0

    add-long/2addr v0, v2

    .line 74
    cmp-long v2, v0, v4

    if-lez v2, :cond_40

    .line 75
    sget-object v2, Lcom/mintegral/msdk/c/b;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "app setting nexttime is not ready  [settingNextRequestTime= "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " currentTime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const/4 v0, 0x0

    .line 81
    :goto_3f
    return v0

    .line 80
    :cond_40
    sget-object v0, Lcom/mintegral/msdk/c/b;->a:Ljava/lang/String;

    const-string v1, "app setting timeout or not exists"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const/4 v0, 0x1

    goto :goto_3f
.end method

.method public static a(Ljava/lang/String;ILjava/lang/String;)Z
    .registers 15

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 89
    :try_start_3
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v6

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "_"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "_"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 91
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 92
    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v6, v7, v0}, Lcom/mintegral/msdk/base/utils/r;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 94
    invoke-static {p0}, Lcom/mintegral/msdk/c/b;->b(Ljava/lang/String;)Lcom/mintegral/msdk/c/a;

    move-result-object v0

    .line 95
    if-nez v0, :cond_6a

    .line 96
    invoke-static {}, Lcom/mintegral/msdk/c/b;->a()Lcom/mintegral/msdk/c/b;

    invoke-static {}, Lcom/mintegral/msdk/c/b;->b()Lcom/mintegral/msdk/c/a;

    move-result-object v0

    .line 114
    :goto_4d
    invoke-virtual {v0}, Lcom/mintegral/msdk/c/a;->aq()J

    move-result-wide v4

    const-wide/16 v10, 0x3e8

    mul-long/2addr v4, v10

    .line 115
    add-long/2addr v2, v4

    .line 116
    cmp-long v0, v2, v8

    if-lez v0, :cond_5b

    move v0, v1

    .line 126
    :goto_5a
    return v0

    .line 120
    :cond_5b
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v6, v7, v0}, Lcom/mintegral/msdk/base/utils/r;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_62} :catch_64

    .line 121
    const/4 v0, 0x1

    goto :goto_5a

    .line 124
    :catch_64
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v1

    .line 126
    goto :goto_5a

    :cond_6a
    move-wide v2, v4

    goto :goto_4d
.end method

.method public static b()Lcom/mintegral/msdk/c/a;
    .registers 2

    .prologue
    .line 522
    new-instance v0, Lcom/mintegral/msdk/c/a;

    invoke-direct {v0}, Lcom/mintegral/msdk/c/a;-><init>()V

    .line 523
    const-string v1, "US"

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/c/a;->e(Ljava/lang/String;)V

    .line 524
    invoke-virtual {v0}, Lcom/mintegral/msdk/c/a;->aJ()V

    .line 525
    invoke-virtual {v0}, Lcom/mintegral/msdk/c/a;->aL()V

    .line 526
    invoke-virtual {v0}, Lcom/mintegral/msdk/c/a;->aO()V

    .line 527
    invoke-virtual {v0}, Lcom/mintegral/msdk/c/a;->aR()V

    .line 528
    invoke-virtual {v0}, Lcom/mintegral/msdk/c/a;->aS()V

    .line 529
    invoke-virtual {v0}, Lcom/mintegral/msdk/c/a;->aG()V

    .line 530
    invoke-virtual {v0}, Lcom/mintegral/msdk/c/a;->aI()V

    .line 531
    invoke-virtual {v0}, Lcom/mintegral/msdk/c/a;->aE()V

    .line 532
    invoke-virtual {v0}, Lcom/mintegral/msdk/c/a;->aB()V

    .line 533
    invoke-virtual {v0}, Lcom/mintegral/msdk/c/a;->al()V

    .line 534
    invoke-virtual {v0}, Lcom/mintegral/msdk/c/a;->ax()V

    .line 535
    invoke-virtual {v0}, Lcom/mintegral/msdk/c/a;->az()V

    .line 536
    invoke-virtual {v0}, Lcom/mintegral/msdk/c/a;->ah()V

    .line 537
    invoke-virtual {v0}, Lcom/mintegral/msdk/c/a;->aj()V

    .line 538
    const-string v1, "\u6b63\u5728\u4e0b\u8f7d\u4e2d\uff0c\u8bf7\u53bb\u901a\u77e5\u680f\u67e5\u770b\u4e0b\u8f7d\u8fdb\u5ea6"

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/c/a;->d(Ljava/lang/String;)V

    .line 539
    const-string v1, "mintegral"

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/c/a;->b(Ljava/lang/String;)V

    .line 540
    invoke-virtual {v0}, Lcom/mintegral/msdk/c/a;->y()V

    .line 541
    invoke-virtual {v0}, Lcom/mintegral/msdk/c/a;->ar()V

    .line 542
    invoke-virtual {v0}, Lcom/mintegral/msdk/c/a;->af()V

    .line 543
    invoke-virtual {v0}, Lcom/mintegral/msdk/c/a;->ab()V

    .line 544
    invoke-virtual {v0}, Lcom/mintegral/msdk/c/a;->X()V

    .line 545
    invoke-virtual {v0}, Lcom/mintegral/msdk/c/a;->Z()V

    .line 546
    invoke-virtual {v0}, Lcom/mintegral/msdk/c/a;->av()V

    .line 547
    invoke-virtual {v0}, Lcom/mintegral/msdk/c/a;->an()V

    .line 548
    invoke-virtual {v0}, Lcom/mintegral/msdk/c/a;->A()V

    .line 549
    invoke-virtual {v0}, Lcom/mintegral/msdk/c/a;->U()V

    .line 550
    invoke-virtual {v0}, Lcom/mintegral/msdk/c/a;->P()V

    .line 551
    invoke-virtual {v0}, Lcom/mintegral/msdk/c/a;->R()V

    .line 552
    invoke-virtual {v0}, Lcom/mintegral/msdk/c/a;->ap()V

    .line 553
    invoke-virtual {v0}, Lcom/mintegral/msdk/c/a;->C()V

    .line 555
    invoke-virtual {v0}, Lcom/mintegral/msdk/c/a;->E()V

    .line 556
    invoke-virtual {v0}, Lcom/mintegral/msdk/c/a;->H()V

    .line 557
    const-string v1, "pid"

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/c/a;->c(Ljava/lang/String;)V

    .line 558
    invoke-virtual {v0}, Lcom/mintegral/msdk/c/a;->J()V

    .line 559
    invoke-virtual {v0}, Lcom/mintegral/msdk/c/a;->L()V

    .line 560
    invoke-virtual {v0}, Lcom/mintegral/msdk/c/a;->N()V

    .line 561
    invoke-virtual {v0}, Lcom/mintegral/msdk/c/a;->at()V

    .line 565
    invoke-virtual {v0}, Lcom/mintegral/msdk/c/a;->n()V

    .line 566
    invoke-virtual {v0}, Lcom/mintegral/msdk/c/a;->l()V

    .line 567
    invoke-virtual {v0}, Lcom/mintegral/msdk/c/a;->p()V

    .line 568
    invoke-virtual {v0}, Lcom/mintegral/msdk/c/a;->r()V

    .line 569
    invoke-virtual {v0}, Lcom/mintegral/msdk/c/a;->t()V

    .line 570
    invoke-virtual {v0}, Lcom/mintegral/msdk/c/a;->w()V

    .line 571
    sget-object v1, Lcom/mintegral/msdk/c/a/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/c/a;->a(Ljava/lang/String;)V

    .line 573
    invoke-virtual {v0}, Lcom/mintegral/msdk/c/a;->i()V

    .line 574
    invoke-virtual {v0}, Lcom/mintegral/msdk/c/a;->g()V

    .line 575
    invoke-virtual {v0}, Lcom/mintegral/msdk/c/a;->c()V

    .line 576
    const-string v1, "https://cdn-adn-https.rayjump.com/cdn-adn/v2/portal/19/08/20/11/06/5d5b63cb457e2.js"

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/c/a;->g(Ljava/lang/String;)V

    .line 579
    return-object v0
.end method

.method public static b(Ljava/lang/String;)Lcom/mintegral/msdk/c/a;
    .registers 2

    .prologue
    .line 371
    sget-object v0, Lcom/mintegral/msdk/c/b;->d:Lcom/mintegral/msdk/c/a;

    if-nez v0, :cond_19

    .line 373
    :try_start_4
    invoke-static {}, Lcom/mintegral/msdk/base/a/a/a;->a()Lcom/mintegral/msdk/base/a/a/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mintegral/msdk/base/a/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 374
    invoke-static {v0}, Lcom/mintegral/msdk/c/a;->f(Ljava/lang/String;)Lcom/mintegral/msdk/c/a;

    move-result-object v0

    .line 375
    sput-object v0, Lcom/mintegral/msdk/c/b;->d:Lcom/mintegral/msdk/c/a;

    if-eqz v0, :cond_19

    .line 376
    sget-object v0, Lcom/mintegral/msdk/c/b;->d:Lcom/mintegral/msdk/c/a;

    invoke-virtual {v0}, Lcom/mintegral/msdk/c/a;->bb()V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_19} :catch_1c

    .line 383
    :cond_19
    :goto_19
    sget-object v0, Lcom/mintegral/msdk/c/b;->d:Lcom/mintegral/msdk/c/a;

    return-object v0

    .line 379
    :catch_1c
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_19
.end method

.method private static b(Ljava/util/List;I)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mintegral/msdk/base/entity/CampaignEx;",
            ">;I)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 320
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "key=2000041&iex="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&cal="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 322
    :try_start_15
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 323
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/base/entity/CampaignEx;

    .line 324
    invoke-static {v0}, Lcom/mintegral/msdk/c/b;->a(Lcom/mintegral/msdk/base/entity/CampaignEx;)Lorg/json/JSONObject;

    move-result-object v0

    .line 325
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_31} :catch_32

    goto :goto_1e

    .line 331
    :catch_32
    move-exception v0

    .line 332
    sget-boolean v2, Lcom/mintegral/msdk/MIntegralConstans;->DEBUG:Z

    if-eqz v2, :cond_3a

    .line 333
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3a
    move-object v0, v1

    .line 336
    :goto_3b
    return-object v0

    .line 327
    :cond_3c
    :try_start_3c
    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    .line 328
    invoke-static {v0}, Lcom/mintegral/msdk/base/utils/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 329
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_54} :catch_32

    move-result-object v0

    goto :goto_3b
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 226
    invoke-static {}, Lcom/mintegral/msdk/base/a/a/a;->a()Lcom/mintegral/msdk/base/a/a/a;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Lcom/mintegral/msdk/base/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    invoke-static {p1}, Lcom/mintegral/msdk/c/a;->f(Ljava/lang/String;)Lcom/mintegral/msdk/c/a;

    move-result-object v1

    .line 228
    sput-object v1, Lcom/mintegral/msdk/c/b;->d:Lcom/mintegral/msdk/c/a;

    if-eqz v1, :cond_16

    .line 229
    sget-object v1, Lcom/mintegral/msdk/c/b;->d:Lcom/mintegral/msdk/c/a;

    invoke-virtual {v1}, Lcom/mintegral/msdk/c/a;->bb()V

    .line 232
    :cond_16
    sget-object v5, Lcom/mintegral/msdk/c/b;->d:Lcom/mintegral/msdk/c/a;

    .line 1241
    if-eqz v5, :cond_f3

    .line 1242
    :try_start_1a
    invoke-virtual {v5}, Lcom/mintegral/msdk/c/a;->O()I

    move-result v1

    if-lez v1, :cond_114

    .line 1243
    invoke-virtual {v5}, Lcom/mintegral/msdk/c/a;->S()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_f3

    invoke-virtual {v5}, Lcom/mintegral/msdk/c/a;->S()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_f3

    .line 1245
    invoke-virtual {v5}, Lcom/mintegral/msdk/c/a;->T()I

    move-result v1

    if-ne v1, v2, :cond_10b

    .line 1246
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mintegral/msdk/base/b/i;->a(Landroid/content/Context;)Lcom/mintegral/msdk/base/b/i;

    move-result-object v1

    invoke-static {v1}, Lcom/mintegral/msdk/base/b/q;->a(Lcom/mintegral/msdk/base/b/h;)Lcom/mintegral/msdk/base/b/q;

    move-result-object v1

    invoke-virtual {v5}, Lcom/mintegral/msdk/c/a;->S()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/mintegral/msdk/base/b/q;->a(I)Ljava/util/List;

    move-result-object v6

    .line 1247
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1248
    if-eqz v6, :cond_102

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_102

    move v4, v0

    move v1, v0

    .line 1250
    :goto_61
    invoke-virtual {v5}, Lcom/mintegral/msdk/c/a;->S()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_da

    .line 1251
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v3, v4, 0x1

    if-lt v0, v3, :cond_bd

    .line 1252
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/base/entity/n;

    .line 1253
    invoke-virtual {v5}, Lcom/mintegral/msdk/c/a;->S()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mintegral/msdk/base/entity/CampaignEx;

    .line 1254
    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/n;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setPackageName(Ljava/lang/String;)V

    .line 1255
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setIex(I)V

    .line 1256
    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/n;->c()J

    move-result-wide v8

    invoke-virtual {v1, v8, v9}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setTs(J)V

    .line 1257
    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/n;->b()I

    move-result v8

    .line 2058
    const/4 v3, 0x0

    .line 2059
    packed-switch v8, :pswitch_data_128

    .line 1257
    :goto_9d
    invoke-virtual {v1, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setLabel(Ljava/lang/String;)V

    .line 1258
    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/n;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setPkgSource(Ljava/lang/String;)V

    .line 1259
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1261
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/entity/n;->a(I)V

    move v0, v2

    .line 1250
    :goto_af
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    move v1, v0

    goto :goto_61

    .line 2061
    :pswitch_b4
    const-string v3, "im"

    goto :goto_9d

    .line 2064
    :pswitch_b7
    const-string v3, "if"

    goto :goto_9d

    .line 2067
    :pswitch_ba
    const-string v3, "is"

    goto :goto_9d

    .line 1264
    :cond_bd
    invoke-virtual {v5}, Lcom/mintegral/msdk/c/a;->S()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/base/entity/CampaignEx;

    .line 1265
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setIex(I)V

    .line 1266
    const-wide/16 v8, 0x0

    invoke-virtual {v0, v8, v9}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setTs(J)V

    .line 1267
    const-string v3, "im"

    invoke-virtual {v0, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setLabel(Ljava/lang/String;)V

    .line 1268
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v1

    goto :goto_af

    .line 1271
    :cond_da
    if-eqz v1, :cond_f4

    .line 1272
    const/4 v0, 0x1

    invoke-static {v7, v0}, Lcom/mintegral/msdk/c/b;->a(Ljava/util/List;I)Lcom/mintegral/msdk/base/entity/o;

    .line 1274
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/base/b/i;->a(Landroid/content/Context;)Lcom/mintegral/msdk/base/b/i;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/base/b/q;->a(Lcom/mintegral/msdk/base/b/h;)Lcom/mintegral/msdk/base/b/q;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/mintegral/msdk/base/b/q;->a(Ljava/util/List;)V

    .line 1296
    :cond_f3
    :goto_f3
    return-void

    .line 1276
    :cond_f4
    const/4 v0, 0x0

    invoke-static {v7, v0}, Lcom/mintegral/msdk/c/b;->a(Ljava/util/List;I)Lcom/mintegral/msdk/base/entity/o;
    :try_end_f8
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_f8} :catch_f9

    goto :goto_f3

    .line 1292
    :catch_f9
    move-exception v0

    .line 1293
    sget-boolean v1, Lcom/mintegral/msdk/MIntegralConstans;->DEBUG:Z

    if-eqz v1, :cond_f3

    .line 1294
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_f3

    .line 1280
    :cond_102
    :try_start_102
    invoke-virtual {v5}, Lcom/mintegral/msdk/c/a;->S()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mintegral/msdk/c/b;->a(Ljava/util/List;I)Lcom/mintegral/msdk/base/entity/o;

    goto :goto_f3

    .line 1284
    :cond_10b
    invoke-virtual {v5}, Lcom/mintegral/msdk/c/a;->S()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mintegral/msdk/c/b;->a(Ljava/util/List;I)Lcom/mintegral/msdk/base/entity/o;

    goto :goto_f3

    .line 1289
    :cond_114
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/base/b/i;->a(Landroid/content/Context;)Lcom/mintegral/msdk/base/b/i;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/base/b/t;->a(Lcom/mintegral/msdk/base/b/h;)Lcom/mintegral/msdk/base/b/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/b/t;->d()I
    :try_end_127
    .catch Ljava/lang/Exception; {:try_start_102 .. :try_end_127} :catch_f9

    goto :goto_f3

    .line 2059
    :pswitch_data_128
    .packed-switch 0x1
        :pswitch_b4
        :pswitch_b7
        :pswitch_ba
    .end packed-switch
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)Lcom/mintegral/msdk/c/d;
    .registers 3

    .prologue
    .line 433
    invoke-static {p0, p1}, Lcom/mintegral/msdk/c/b;->d(Ljava/lang/String;Ljava/lang/String;)Lcom/mintegral/msdk/c/d;

    move-result-object v0

    .line 434
    if-nez v0, :cond_b

    .line 2305
    new-instance v0, Lcom/mintegral/msdk/c/d;

    invoke-direct {v0}, Lcom/mintegral/msdk/c/d;-><init>()V

    .line 437
    :cond_b
    return-object v0
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 387
    if-nez p0, :cond_5

    .line 388
    const-string v0, ""

    .line 401
    :cond_4
    :goto_4
    return-object v0

    .line 391
    :cond_5
    :try_start_5
    invoke-static {}, Lcom/mintegral/msdk/base/a/a/a;->a()Lcom/mintegral/msdk/base/a/a/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mintegral/msdk/base/a/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 392
    if-nez v0, :cond_4

    .line 393
    const-string v0, ""
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_11} :catch_12

    goto :goto_4

    .line 396
    :catch_12
    move-exception v0

    .line 397
    sget-boolean v1, Lcom/mintegral/msdk/MIntegralConstans;->DEBUG:Z

    if-eqz v1, :cond_1a

    .line 398
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 401
    :cond_1a
    const-string v0, ""

    goto :goto_4
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)Lcom/mintegral/msdk/c/d;
    .registers 6

    .prologue
    .line 448
    .line 449
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 450
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->j()Ljava/lang/String;

    move-result-object p0

    .line 452
    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 453
    const/4 v1, 0x0

    .line 454
    sget-object v0, Lcom/mintegral/msdk/c/b;->c:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 455
    sget-object v0, Lcom/mintegral/msdk/c/b;->c:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/c/d;

    .line 466
    :goto_36
    return-object v0

    .line 458
    :cond_37
    :try_start_37
    invoke-static {}, Lcom/mintegral/msdk/base/a/a/a;->a()Lcom/mintegral/msdk/base/a/a/a;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/mintegral/msdk/base/a/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 459
    invoke-static {v0}, Lcom/mintegral/msdk/c/d;->a(Ljava/lang/String;)Lcom/mintegral/msdk/c/d;
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_42} :catch_4e

    move-result-object v0

    .line 460
    :try_start_43
    sget-object v1, Lcom/mintegral/msdk/c/b;->c:Ljava/util/HashMap;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_48} :catch_49

    goto :goto_36

    .line 462
    :catch_49
    move-exception v1

    :goto_4a
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_36

    :catch_4e
    move-exception v0

    move-object v3, v0

    move-object v0, v1

    move-object v1, v3

    goto :goto_4a
.end method
