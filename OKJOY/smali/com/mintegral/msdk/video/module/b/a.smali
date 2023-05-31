.class public final Lcom/mintegral/msdk/video/module/b/a;
.super Ljava/lang/Object;
.source "VideoViewReport.java"


# static fields
.field public static a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 39
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mintegral/msdk/video/module/b/a;->a:Z

    return-void
.end method

.method public static a()V
    .registers 1

    .prologue
    .line 42
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mintegral/msdk/video/module/b/a;->a:Z

    .line 43
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/mintegral/msdk/base/entity/CampaignEx;)V
    .registers 5

    .prologue
    .line 103
    if-eqz p1, :cond_22

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getNativeVideoTracking()Lcom/mintegral/msdk/base/entity/j;

    move-result-object v0

    if-eqz v0, :cond_22

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getNativeVideoTracking()Lcom/mintegral/msdk/base/entity/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/j;->n()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 106
    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getCampaignUnitId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getNativeVideoTracking()Lcom/mintegral/msdk/base/entity/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/j;->n()[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, p1, v0, v1, v2}, Lcom/mintegral/msdk/click/a;->a(Landroid/content/Context;Lcom/mintegral/msdk/base/entity/CampaignEx;Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 108
    :cond_22
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/mintegral/msdk/base/entity/CampaignEx;I)V
    .registers 9

    .prologue
    .line 133
    :try_start_0
    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getNativeVideoTracking()Lcom/mintegral/msdk/base/entity/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/j;->o()[Ljava/lang/String;

    move-result-object v1

    .line 134
    if-eqz p1, :cond_55

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getNativeVideoTracking()Lcom/mintegral/msdk/base/entity/j;

    move-result-object v0

    if-eqz v0, :cond_55

    if-eqz v1, :cond_55

    .line 135
    array-length v0, v1

    .line 136
    new-array v2, v0, [Ljava/lang/String;

    .line 137
    const/4 v0, 0x0

    :goto_16
    array-length v3, v1

    if-ge v0, v3, :cond_4d

    .line 138
    aget-object v3, v1, v0

    .line 139
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 140
    const-string v5, "endscreen_type"

    invoke-virtual {v4, v5, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 141
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    .line 142
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "&value="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v4}, Lcom/mintegral/msdk/base/utils/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 137
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 146
    :cond_4d
    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getCampaignUnitId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v2, v1}, Lcom/mintegral/msdk/click/a;->a(Landroid/content/Context;Lcom/mintegral/msdk/base/entity/CampaignEx;Ljava/lang/String;[Ljava/lang/String;Z)V
    :try_end_55
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_55} :catch_56

    .line 151
    :cond_55
    :goto_55
    return-void

    .line 149
    :catch_56
    move-exception v0

    const-string v0, ""

    const-string v1, "reportEndcardshowData error"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_55
.end method

.method public static a(Landroid/content/Context;Lcom/mintegral/msdk/base/entity/CampaignEx;II)V
    .registers 11

    .prologue
    const/4 v2, 0x0

    .line 169
    if-eqz p3, :cond_7

    if-eqz p0, :cond_7

    if-nez p1, :cond_8

    .line 203
    :cond_7
    :goto_7
    return-void

    .line 172
    :cond_8
    :try_start_8
    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getNativeVideoTracking()Lcom/mintegral/msdk/base/entity/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/j;->g()Ljava/util/List;

    move-result-object v3

    .line 173
    add-int/lit8 v0, p2, 0x1

    mul-int/lit8 v0, v0, 0x64

    div-int v4, v0, p3

    .line 174
    if-eqz v3, :cond_7

    .line 175
    :goto_18
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_7

    .line 176
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 177
    if-eqz v0, :cond_70

    .line 178
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_70

    .line 179
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 180
    :goto_34
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_70

    .line 181
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 182
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 183
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 184
    if-gt v1, v4, :cond_7c

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7c

    .line 185
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v0, v1, v6

    .line 188
    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getCampaignUnitId()Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x1

    invoke-static {p0, p1, v0, v1, v6}, Lcom/mintegral/msdk/click/a;->a(Landroid/content/Context;Lcom/mintegral/msdk/base/entity/CampaignEx;Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 189
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    .line 190
    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_6c
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_6c} :catch_73

    .line 191
    add-int/lit8 v0, v2, -0x1

    :goto_6e
    move v2, v0

    .line 194
    goto :goto_34

    .line 175
    :cond_70
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 201
    :catch_73
    move-exception v0

    const-string v0, ""

    const-string v1, "reportPlayPercentageData error"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :cond_7c
    move v0, v2

    goto :goto_6e
.end method

.method public static a(Lcom/mintegral/msdk/base/entity/CampaignEx;Lcom/mintegral/msdk/videocommon/b/d;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    .prologue
    .line 257
    if-eqz p0, :cond_dd

    .line 258
    :try_start_2
    new-instance v0, Lcom/mintegral/msdk/video/module/c/a;

    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mintegral/msdk/video/module/c/a;-><init>(Landroid/content/Context;)V

    .line 259
    new-instance v1, Lcom/mintegral/msdk/base/common/net/l;

    invoke-direct {v1}, Lcom/mintegral/msdk/base/common/net/l;-><init>()V

    .line 260
    const-string v2, "user_id"

    invoke-static {p3}, Lcom/mintegral/msdk/base/utils/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/mintegral/msdk/base/common/net/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    const-string v2, "cb_type"

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Lcom/mintegral/msdk/base/common/net/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    const-string v2, "reward_name"

    invoke-virtual {p1}, Lcom/mintegral/msdk/videocommon/b/d;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/mintegral/msdk/base/common/net/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    const-string v2, "reward_amount"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/mintegral/msdk/videocommon/b/d;->b()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/mintegral/msdk/base/common/net/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    const-string v2, "unit_id"

    invoke-virtual {v1, v2, p2}, Lcom/mintegral/msdk/base/common/net/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    const-string v2, "click_id"

    invoke-virtual {p0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/mintegral/msdk/base/common/net/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/video/module/c/a;->b(Lcom/mintegral/msdk/base/common/net/l;)Lcom/mintegral/msdk/base/common/net/l;

    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/addReward?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1278
    const-string v3, ""

    .line 1280
    invoke-virtual {v1}, Lcom/mintegral/msdk/base/common/net/l;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 1281
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b7

    .line 1282
    const-string v2, "?"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a6

    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a6

    .line 1283
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "?"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_de

    const-string v0, "&"

    :goto_9e
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1285
    :cond_a6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 268
    :cond_b7
    const-string v0, "VideoViewReport"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "rewardUrl:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getCampaignUnitId()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Lcom/mintegral/msdk/click/a;->a(Landroid/content/Context;Lcom/mintegral/msdk/base/entity/CampaignEx;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 275
    :cond_dd
    :goto_dd
    return-void

    .line 1283
    :cond_de
    const-string v0, "?"
    :try_end_e0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_e0} :catch_e1

    goto :goto_9e

    .line 271
    :catch_e1
    move-exception v0

    .line 272
    const-string v1, "VideoViewReport"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_dd
.end method

.method public static a(Lcom/mintegral/msdk/base/entity/CampaignEx;Ljava/lang/String;)V
    .registers 9

    .prologue
    .line 241
    if-eqz p0, :cond_40

    :try_start_2
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getAdUrlList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_40

    invoke-virtual {p0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getAdUrlList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_40

    .line 244
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getAdUrlList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1a
    :goto_1a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_40

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 245
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 246
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lcom/mintegral/msdk/click/a;->a(Landroid/content/Context;Lcom/mintegral/msdk/base/entity/CampaignEx;Ljava/lang/String;Ljava/lang/String;ZZ)V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_3b} :catch_3c

    goto :goto_1a

    .line 251
    :catch_3c
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 253
    :cond_40
    return-void
.end method

.method public static a(Lcom/mintegral/msdk/base/entity/CampaignEx;Ljava/util/Map;Ljava/lang/String;I)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mintegral/msdk/base/entity/CampaignEx;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 215
    if-eqz p0, :cond_4d

    .line 216
    if-eqz p1, :cond_4d

    :try_start_4
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_4d

    .line 217
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 220
    :cond_12
    :goto_12
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 221
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 222
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 223
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 224
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne p3, v0, :cond_12

    .line 225
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 226
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lcom/mintegral/msdk/click/a;->a(Landroid/content/Context;Lcom/mintegral/msdk/base/entity/CampaignEx;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 227
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_48} :catch_49

    goto :goto_12

    .line 235
    :catch_49
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 237
    :cond_4d
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 47
    :try_start_0
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_3c

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3c

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3c

    .line 48
    new-instance v0, Lcom/mintegral/msdk/base/common/e/d/a;

    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mintegral/msdk/base/common/e/d/a;-><init>(Landroid/content/Context;)V

    .line 49
    invoke-virtual {v0}, Lcom/mintegral/msdk/base/common/e/d/a;->c()V

    .line 50
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v1

    invoke-static {p0, v1, p1}, Lcom/mintegral/msdk/base/common/e/c;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/mintegral/msdk/base/common/net/l;

    move-result-object v1

    .line 51
    sget-object v2, Lcom/mintegral/msdk/base/common/a;->f:Ljava/lang/String;

    new-instance v3, Lcom/mintegral/msdk/video/module/b/a$1;

    invoke-direct {v3}, Lcom/mintegral/msdk/video/module/b/a$1;-><init>()V

    invoke-virtual {v0, v2, v1, v3}, Lcom/mintegral/msdk/base/common/e/d/a;->b(Ljava/lang/String;Lcom/mintegral/msdk/base/common/net/l;Lcom/mintegral/msdk/base/common/net/d;)Lcom/mintegral/msdk/base/common/f/a;
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3c} :catch_3d

    .line 68
    :cond_3c
    :goto_3c
    return-void

    .line 64
    :catch_3d
    move-exception v0

    .line 65
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 66
    const-string v1, "VideoViewReport"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3c
.end method

.method public static b(Landroid/content/Context;Lcom/mintegral/msdk/base/entity/CampaignEx;)V
    .registers 5

    .prologue
    .line 111
    if-eqz p1, :cond_22

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getNativeVideoTracking()Lcom/mintegral/msdk/base/entity/j;

    move-result-object v0

    if-eqz v0, :cond_22

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getNativeVideoTracking()Lcom/mintegral/msdk/base/entity/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/j;->h()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 112
    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getCampaignUnitId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getNativeVideoTracking()Lcom/mintegral/msdk/base/entity/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/j;->h()[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, p1, v0, v1, v2}, Lcom/mintegral/msdk/click/a;->a(Landroid/content/Context;Lcom/mintegral/msdk/base/entity/CampaignEx;Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 114
    :cond_22
    return-void
.end method

.method public static c(Landroid/content/Context;Lcom/mintegral/msdk/base/entity/CampaignEx;)V
    .registers 5

    .prologue
    .line 117
    if-eqz p1, :cond_22

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getNativeVideoTracking()Lcom/mintegral/msdk/base/entity/j;

    move-result-object v0

    if-eqz v0, :cond_22

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getNativeVideoTracking()Lcom/mintegral/msdk/base/entity/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/j;->i()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 118
    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getCampaignUnitId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getNativeVideoTracking()Lcom/mintegral/msdk/base/entity/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/j;->i()[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, p1, v0, v1, v2}, Lcom/mintegral/msdk/click/a;->a(Landroid/content/Context;Lcom/mintegral/msdk/base/entity/CampaignEx;Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 120
    :cond_22
    return-void
.end method

.method public static d(Landroid/content/Context;Lcom/mintegral/msdk/base/entity/CampaignEx;)V
    .registers 5

    .prologue
    .line 123
    sget-boolean v0, Lcom/mintegral/msdk/video/module/b/a;->a:Z

    if-nez v0, :cond_29

    if-eqz p1, :cond_29

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getNativeVideoTracking()Lcom/mintegral/msdk/base/entity/j;

    move-result-object v0

    if-eqz v0, :cond_29

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getNativeVideoTracking()Lcom/mintegral/msdk/base/entity/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/j;->j()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_29

    .line 126
    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getCampaignUnitId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getNativeVideoTracking()Lcom/mintegral/msdk/base/entity/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/j;->j()[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, p1, v0, v1, v2}, Lcom/mintegral/msdk/click/a;->a(Landroid/content/Context;Lcom/mintegral/msdk/base/entity/CampaignEx;Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 127
    const/4 v0, 0x1

    sput-boolean v0, Lcom/mintegral/msdk/video/module/b/a;->a:Z

    .line 129
    :cond_29
    return-void
.end method

.method public static e(Landroid/content/Context;Lcom/mintegral/msdk/base/entity/CampaignEx;)V
    .registers 5

    .prologue
    .line 154
    if-eqz p1, :cond_22

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getNativeVideoTracking()Lcom/mintegral/msdk/base/entity/j;

    move-result-object v0

    if-eqz v0, :cond_22

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getNativeVideoTracking()Lcom/mintegral/msdk/base/entity/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/j;->p()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 155
    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getCampaignUnitId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getNativeVideoTracking()Lcom/mintegral/msdk/base/entity/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/j;->p()[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, p1, v0, v1, v2}, Lcom/mintegral/msdk/click/a;->a(Landroid/content/Context;Lcom/mintegral/msdk/base/entity/CampaignEx;Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 157
    :cond_22
    return-void
.end method

.method public static f(Landroid/content/Context;Lcom/mintegral/msdk/base/entity/CampaignEx;)V
    .registers 5

    .prologue
    .line 160
    if-eqz p1, :cond_22

    .line 161
    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getNativeVideoTracking()Lcom/mintegral/msdk/base/entity/j;

    move-result-object v0

    if-eqz v0, :cond_22

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getNativeVideoTracking()Lcom/mintegral/msdk/base/entity/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/j;->k()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 162
    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getCampaignUnitId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getNativeVideoTracking()Lcom/mintegral/msdk/base/entity/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/j;->k()[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, p1, v0, v1, v2}, Lcom/mintegral/msdk/click/a;->a(Landroid/content/Context;Lcom/mintegral/msdk/base/entity/CampaignEx;Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 165
    :cond_22
    return-void
.end method
