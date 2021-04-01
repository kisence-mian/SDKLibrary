.class public Lcom/mintegral/msdk/mtgbanner/common/util/BannerUtils;
.super Ljava/lang/Object;
.source "BannerUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 37
    const-class v0, Lcom/mintegral/msdk/mtgbanner/common/util/BannerUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mintegral/msdk/mtgbanner/common/util/BannerUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildClickJsonObject(FF)Ljava/lang/String;
    .registers 8

    .prologue
    .line 344
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 346
    :try_start_5
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 347
    sget-object v2, Lcom/mintegral/msdk/base/common/a;->x:Ljava/lang/String;

    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, p0}, Lcom/mintegral/msdk/base/utils/k;->a(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 348
    sget-object v2, Lcom/mintegral/msdk/base/common/a;->y:Ljava/lang/String;

    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/mintegral/msdk/base/utils/k;->a(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 349
    sget-object v2, Lcom/mintegral/msdk/base/common/a;->A:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 350
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    .line 351
    sget-object v3, Lcom/mintegral/msdk/base/common/a;->B:Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 352
    sget-object v2, Lcom/mintegral/msdk/base/common/a;->C:Ljava/lang/String;

    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/mintegral/msdk/base/utils/k;->c(Landroid/content/Context;)F

    move-result v3

    float-to-double v4, v3

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 354
    sget-object v2, Lcom/mintegral/msdk/base/common/a;->z:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_60} :catch_65

    .line 359
    :goto_60
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 356
    :catch_65
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_60
.end method

.method public static codeToJsonString(I)Ljava/lang/String;
    .registers 4

    .prologue
    .line 363
    const-string v0, ""

    .line 365
    :try_start_2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 366
    const-string v2, "code"

    invoke-virtual {v1, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 367
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 368
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1f

    .line 369
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_1e} :catch_20

    move-result-object v0

    .line 375
    :cond_1f
    :goto_1f
    return-object v0

    .line 373
    :catch_20
    move-exception v1

    sget-object v1, Lcom/mintegral/msdk/mtgbanner/common/util/BannerUtils;->TAG:Ljava/lang/String;

    const-string v2, "code to string is error"

    invoke-static {v1, v2}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1f
.end method

.method private static declared-synchronized fillIdInList(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mintegral/msdk/base/common/d/a;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/mintegral/msdk/base/entity/CampaignEx;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/mintegral/msdk/base/common/d/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 200
    const-class v1, Lcom/mintegral/msdk/mtgbanner/common/util/BannerUtils;

    monitor-enter v1

    if-eqz p1, :cond_44

    :try_start_5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_44

    .line 201
    if-nez p0, :cond_12

    .line 202
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 204
    :cond_12
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_16
    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_44

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/base/entity/CampaignEx;

    .line 205
    if-eqz v0, :cond_16

    .line 206
    new-instance v3, Lcom/mintegral/msdk/base/common/d/a;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getCreativeId()J

    move-result-wide v6

    invoke-direct {v3, v4, v6, v7}, Lcom/mintegral/msdk/base/common/d/a;-><init>(Ljava/lang/String;J)V

    .line 207
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v4, 0x14

    if-lt v0, v4, :cond_3d

    .line 208
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 210
    :cond_3d
    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_40
    .catchall {:try_start_5 .. :try_end_40} :catchall_41

    goto :goto_16

    .line 200
    :catchall_41
    move-exception v0

    monitor-exit v1

    throw v0

    .line 214
    :cond_44
    monitor-exit v1

    return-object p0
.end method

.method public static getCloseIds(Ljava/lang/String;)Ljava/lang/String;
    .registers 11

    .prologue
    .line 154
    const-string v2, ""

    .line 156
    :try_start_2
    sget-object v0, Lcom/mintegral/msdk/base/common/a/c;->b:Ljava/util/Map;

    if-eqz v0, :cond_5c

    .line 157
    sget-object v0, Lcom/mintegral/msdk/base/common/a/c;->b:Ljava/util/Map;

    .line 158
    invoke-static {p0}, Lcom/mintegral/msdk/base/utils/s;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5c

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 159
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 160
    if-eqz v0, :cond_5c

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_5c

    .line 161
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 162
    const/4 v1, 0x0

    move v3, v1

    :goto_29
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_53

    .line 163
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 164
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mintegral/msdk/base/common/d/a;

    .line 165
    const-string v6, "cid"

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/common/d/a;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 166
    const-string v6, "crid"

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/common/d/a;->c()J

    move-result-wide v8

    invoke-virtual {v5, v6, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 167
    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 162
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_29

    .line 169
    :cond_53
    invoke-virtual {v4}, Lorg/json/JSONArray;->toString()Ljava/lang/String;
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_56} :catch_58

    move-result-object v0

    .line 176
    :goto_57
    return-object v0

    .line 174
    :catch_58
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5c
    move-object v0, v2

    goto :goto_57
.end method

.method public static getExcludeIds(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 14

    .prologue
    const/4 v0, 0x0

    .line 69
    const-string v1, ""

    .line 74
    :try_start_3
    invoke-static {}, Lcom/mintegral/msdk/c/b;->a()Lcom/mintegral/msdk/c/b;

    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mintegral/msdk/base/controller/a;->j()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mintegral/msdk/c/b;->b(Ljava/lang/String;)Lcom/mintegral/msdk/c/a;

    move-result-object v2

    .line 75
    if-nez v2, :cond_1b

    .line 76
    invoke-static {}, Lcom/mintegral/msdk/c/b;->a()Lcom/mintegral/msdk/c/b;

    invoke-static {}, Lcom/mintegral/msdk/c/b;->b()Lcom/mintegral/msdk/c/a;

    move-result-object v2

    .line 78
    :cond_1b
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 81
    if-eqz v2, :cond_6f

    invoke-virtual {v2}, Lcom/mintegral/msdk/c/a;->aK()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_6f

    .line 82
    sget-object v4, Lcom/mintegral/msdk/mtgbanner/common/util/BannerUtils;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "excludes cfc:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/mintegral/msdk/c/a;->aK()I

    move-result v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    invoke-static {p0}, Lcom/mintegral/msdk/base/b/i;->a(Landroid/content/Context;)Lcom/mintegral/msdk/base/b/i;

    move-result-object v2

    invoke-static {v2}, Lcom/mintegral/msdk/base/b/m;->a(Lcom/mintegral/msdk/base/b/h;)Lcom/mintegral/msdk/base/b/m;

    move-result-object v2

    .line 85
    invoke-virtual {v2}, Lcom/mintegral/msdk/base/b/m;->c()[J

    move-result-object v4

    .line 87
    if-eqz v4, :cond_6f

    .line 88
    array-length v5, v4

    move v2, v0

    :goto_51
    if-ge v2, v5, :cond_6f

    aget-wide v6, v4, v2

    .line 89
    sget-object v8, Lcom/mintegral/msdk/mtgbanner/common/util/BannerUtils;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "cfc campaignIds:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-virtual {v3, v6, v7}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    .line 88
    add-int/lit8 v2, v2, 0x1

    goto :goto_51

    .line 97
    :cond_6f
    invoke-static {p0}, Lcom/mintegral/msdk/base/b/i;->a(Landroid/content/Context;)Lcom/mintegral/msdk/base/b/i;

    move-result-object v2

    invoke-static {v2}, Lcom/mintegral/msdk/base/b/l;->a(Lcom/mintegral/msdk/base/b/h;)Lcom/mintegral/msdk/base/b/l;

    move-result-object v2

    .line 98
    invoke-virtual {v2, p1}, Lcom/mintegral/msdk/base/b/l;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 99
    if-eqz v4, :cond_ae

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_ae

    move v2, v0

    .line 100
    :goto_84
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_ae

    .line 101
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 102
    invoke-static {v0}, Lcom/mintegral/msdk/base/utils/s;->b(Ljava/lang/String;)Z
    :try_end_93
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_93} :catch_a6

    move-result v5

    if-eqz v5, :cond_9d

    .line 104
    :try_start_96
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 105
    invoke-virtual {v3, v6, v7}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;
    :try_end_9d
    .catch Ljava/lang/Exception; {:try_start_96 .. :try_end_9d} :catch_a1

    .line 100
    :cond_9d
    :goto_9d
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_84

    .line 107
    :catch_a1
    move-exception v0

    :try_start_a2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_a5
    .catch Ljava/lang/Exception; {:try_start_a2 .. :try_end_a5} :catch_a6

    goto :goto_9d

    .line 119
    :catch_a6
    move-exception v0

    move-object v11, v0

    move-object v0, v1

    move-object v1, v11

    :goto_aa
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 121
    :goto_ad
    return-object v0

    .line 114
    :cond_ae
    :try_start_ae
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_cf

    .line 115
    invoke-static {v3}, Lcom/mintegral/msdk/base/utils/k;->a(Lorg/json/JSONArray;)Ljava/lang/String;
    :try_end_b7
    .catch Ljava/lang/Exception; {:try_start_ae .. :try_end_b7} :catch_a6

    move-result-object v0

    .line 117
    :goto_b8
    :try_start_b8
    sget-object v1, Lcom/mintegral/msdk/mtgbanner/common/util/BannerUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "get excludes:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_cc
    .catch Ljava/lang/Exception; {:try_start_b8 .. :try_end_cc} :catch_cd

    goto :goto_ad

    .line 119
    :catch_cd
    move-exception v1

    goto :goto_aa

    :cond_cf
    move-object v0, v1

    goto :goto_b8
.end method

.method public static getInstallIds()Ljava/lang/String;
    .registers 6

    .prologue
    .line 130
    const-string v1, ""

    .line 133
    :try_start_2
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 134
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->g()Ljava/util/List;

    move-result-object v0

    .line 135
    if-eqz v0, :cond_34

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_34

    .line 136
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 137
    invoke-virtual {v2, v4, v5}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2d} :catch_2e

    goto :goto_1a

    .line 144
    :catch_2e
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_32
    move-object v0, v1

    .line 146
    :goto_33
    return-object v0

    .line 140
    :cond_34
    :try_start_34
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_32

    .line 141
    invoke-static {v2}, Lcom/mintegral/msdk/base/utils/k;->a(Lorg/json/JSONArray;)Ljava/lang/String;
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_3d} :catch_2e

    move-result-object v0

    goto :goto_33
.end method

.method public static getTtcIds(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 45
    const-string v0, ""

    .line 48
    if-eqz p0, :cond_15

    .line 49
    :try_start_4
    invoke-static {p0}, Lcom/mintegral/msdk/base/b/i;->a(Landroid/content/Context;)Lcom/mintegral/msdk/base/b/i;

    move-result-object v1

    .line 50
    if-eqz v1, :cond_15

    .line 51
    invoke-static {v1}, Lcom/mintegral/msdk/base/b/d;->a(Lcom/mintegral/msdk/base/b/h;)Lcom/mintegral/msdk/base/b/d;

    move-result-object v1

    .line 52
    invoke-virtual {v1}, Lcom/mintegral/msdk/base/b/d;->c()V

    .line 53
    invoke-virtual {v1, p1}, Lcom/mintegral/msdk/base/b/d;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_14} :catch_16

    move-result-object v0

    .line 60
    :cond_15
    :goto_15
    return-object v0

    .line 57
    :catch_16
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_15
.end method

.method public static inserCloseId(Ljava/lang/String;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/mintegral/msdk/base/entity/CampaignEx;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 183
    sget-object v1, Lcom/mintegral/msdk/base/common/a/c;->b:Ljava/util/Map;

    .line 184
    if-eqz v1, :cond_27

    if-eqz p1, :cond_27

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_27

    .line 185
    invoke-static {p0}, Lcom/mintegral/msdk/base/utils/s;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 186
    invoke-interface {v1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 187
    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 188
    invoke-static {v0, p1}, Lcom/mintegral/msdk/mtgbanner/common/util/BannerUtils;->fillIdInList(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    :cond_25
    :goto_25
    sput-object v1, Lcom/mintegral/msdk/base/common/a/c;->b:Ljava/util/Map;

    .line 196
    :cond_27
    return-void

    .line 190
    :cond_28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 191
    invoke-static {v0, p1}, Lcom/mintegral/msdk/mtgbanner/common/util/BannerUtils;->fillIdInList(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_25
.end method

.method public static managerCampaignEX(Ljava/lang/String;Lcom/mintegral/msdk/base/entity/CampaignEx;)Lcom/mintegral/msdk/base/entity/CampaignEx;
    .registers 10

    .prologue
    .line 267
    const/4 v0, 0x0

    .line 268
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 340
    :goto_7
    return-object p1

    .line 271
    :cond_8
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_10

    if-eqz p1, :cond_149

    .line 272
    :cond_10
    const-string v0, "notice"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_106

    .line 274
    :try_start_18
    invoke-static {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->campaignToJsonObject(Lcom/mintegral/msdk/base/entity/CampaignEx;)Lorg/json/JSONObject;

    move-result-object v0

    .line 275
    invoke-static {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->parseShortCutsCampaign(Lorg/json/JSONObject;)Lcom/mintegral/msdk/base/entity/CampaignEx;

    move-result-object v1

    .line 276
    if-nez v1, :cond_23

    move-object v1, p1

    .line 279
    :cond_23
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_103

    .line 280
    const-string v2, "unitId"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 281
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_38

    .line 282
    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setCampaignUnitId(Ljava/lang/String;)V

    .line 284
    :cond_38
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 285
    sget-object v2, Lcom/mintegral/msdk/base/common/a;->z:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 287
    const-string v0, "-999"

    const-string v2, "-999"

    .line 288
    if-eqz v3, :cond_87

    .line 289
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Lcom/mintegral/msdk/base/common/a;->x:Ljava/lang/String;

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v0, v2}, Lcom/mintegral/msdk/base/utils/k;->b(Landroid/content/Context;F)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 290
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v2

    sget-object v4, Lcom/mintegral/msdk/base/common/a;->y:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-float v4, v4

    invoke-static {v2, v4}, Lcom/mintegral/msdk/base/utils/k;->b(Landroid/content/Context;F)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 292
    :cond_87
    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getClickURL()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0, v2}, Lcom/mintegral/msdk/click/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 293
    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setClickURL(Ljava/lang/String;)V

    .line 295
    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getNoticeUrl()Ljava/lang/String;

    move-result-object v4

    .line 296
    if-eqz v3, :cond_103

    .line 297
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 299
    :goto_a1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_ef

    .line 300
    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 301
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 302
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 303
    sget-object v7, Lcom/mintegral/msdk/base/common/a;->x:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_c7

    sget-object v7, Lcom/mintegral/msdk/base/common/a;->y:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e0

    .line 304
    :cond_c7
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v7, v2}, Lcom/mintegral/msdk/base/utils/k;->b(Landroid/content/Context;F)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 306
    :cond_e0
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    goto :goto_a1

    .line 308
    :cond_ef
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 309
    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setNoticeUrl(Ljava/lang/String;)V
    :try_end_103
    .catch Lorg/json/JSONException; {:try_start_18 .. :try_end_103} :catch_146
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_103} :catch_143

    :cond_103
    move-object p1, v1

    .line 316
    goto/16 :goto_7

    .line 320
    :cond_106
    :try_start_106
    invoke-static {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->campaignToJsonObject(Lcom/mintegral/msdk/base/entity/CampaignEx;)Lorg/json/JSONObject;

    move-result-object v1

    .line 321
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 322
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 323
    :goto_113
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_12d

    .line 324
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 325
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 326
    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_126
    .catch Lorg/json/JSONException; {:try_start_106 .. :try_end_126} :catch_127

    goto :goto_113

    .line 333
    :catch_127
    move-exception v0

    .line 335
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_7

    .line 328
    :cond_12d
    :try_start_12d
    invoke-static {v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->parseShortCutsCampaign(Lorg/json/JSONObject;)Lcom/mintegral/msdk/base/entity/CampaignEx;

    move-result-object v0

    .line 329
    const-string v2, "unitId"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 330
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_140

    .line 331
    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setCampaignUnitId(Ljava/lang/String;)V
    :try_end_140
    .catch Lorg/json/JSONException; {:try_start_12d .. :try_end_140} :catch_127

    :cond_140
    move-object p1, v0

    .line 336
    goto/16 :goto_7

    .line 315
    :catch_143
    move-exception v0

    goto/16 :goto_7

    .line 313
    :catch_146
    move-exception v0

    goto/16 :goto_7

    :cond_149
    move-object p1, v0

    goto/16 :goto_7
.end method

.method public static updateInstallList(Landroid/content/Context;Ljava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/mintegral/msdk/base/entity/CampaignEx;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 224
    sget-object v1, Lcom/mintegral/msdk/mtgbanner/common/util/BannerUtils;->TAG:Ljava/lang/String;

    const-string v2, "updateInstallList \u5f00\u59cb \u66f4\u65b0\u672c\u673a\u5df2\u5b89\u88c5\u5e7f\u544a\u5217\u8868"

    invoke-static {v1, v2}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    if-eqz p0, :cond_12

    if-eqz p1, :cond_12

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1a

    .line 226
    :cond_12
    sget-object v0, Lcom/mintegral/msdk/mtgbanner/common/util/BannerUtils;->TAG:Ljava/lang/String;

    const-string v1, "updateInstallList \u5217\u8868\u4e3a\u7a7a \u4e0d\u505a\u66f4\u65b0\u672c\u673a\u5df2\u5b89\u88c5\u5e7f\u544a\u5217\u8868"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    :cond_19
    :goto_19
    return-void

    .line 230
    :cond_1a
    invoke-static {p0}, Lcom/mintegral/msdk/base/b/i;->a(Landroid/content/Context;)Lcom/mintegral/msdk/base/b/i;

    move-result-object v1

    invoke-static {v1}, Lcom/mintegral/msdk/base/b/m;->a(Lcom/mintegral/msdk/base/b/h;)Lcom/mintegral/msdk/base/b/m;

    move-result-object v3

    move v1, v0

    move v2, v0

    .line 232
    :goto_24
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_92

    .line 233
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/base/entity/CampaignEx;

    .line 235
    if-eqz v0, :cond_57

    .line 236
    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/mintegral/msdk/base/utils/k;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5b

    .line 238
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->c()Ljava/util/Set;

    move-result-object v4

    if-eqz v4, :cond_57

    .line 239
    new-instance v2, Lcom/mintegral/msdk/base/entity/h;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v4, v0}, Lcom/mintegral/msdk/base/entity/h;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->c()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 241
    const/4 v2, 0x1

    .line 232
    :cond_57
    :goto_57
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_24

    .line 246
    :cond_5b
    if-eqz v3, :cond_57

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mintegral/msdk/base/b/m;->a(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_57

    .line 247
    new-instance v4, Lcom/mintegral/msdk/base/entity/g;

    invoke-direct {v4}, Lcom/mintegral/msdk/base/entity/g;-><init>()V

    .line 248
    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mintegral/msdk/base/entity/g;->a(Ljava/lang/String;)V

    .line 249
    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getFca()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/mintegral/msdk/base/entity/g;->a(I)V

    .line 250
    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getFcb()I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/mintegral/msdk/base/entity/g;->b(I)V

    .line 251
    invoke-virtual {v4}, Lcom/mintegral/msdk/base/entity/g;->g()V

    .line 252
    invoke-virtual {v4}, Lcom/mintegral/msdk/base/entity/g;->e()V

    .line 253
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/mintegral/msdk/base/entity/g;->a(J)V

    .line 254
    invoke-virtual {v3, v4}, Lcom/mintegral/msdk/base/b/m;->a(Lcom/mintegral/msdk/base/entity/g;)V

    goto :goto_57

    .line 260
    :cond_92
    if-eqz v2, :cond_19

    .line 261
    sget-object v0, Lcom/mintegral/msdk/mtgbanner/common/util/BannerUtils;->TAG:Ljava/lang/String;

    const-string v1, "\u66f4\u65b0\u5b89\u88c5\u5217\u8868"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->f()V

    goto/16 :goto_19
.end method
