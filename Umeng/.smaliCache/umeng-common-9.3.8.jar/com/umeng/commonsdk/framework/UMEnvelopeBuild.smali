.class public Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;
.super Ljava/lang/Object;
.source "UMEnvelopeBuild.java"


# static fields
.field public static transmissionSendFlag:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 43
    const/4 v0, 0x0

    sput-boolean v0, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->transmissionSendFlag:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static add2CacheTable(Landroid/content/Context;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 14

    .line 161
    const-string v0, "share"

    const-string v1, "MobclickRT"

    if-eqz p1, :cond_e4

    if-nez p2, :cond_a

    goto/16 :goto_e4

    .line 165
    :cond_a
    invoke-static {p0}, Lcom/umeng/analytics/pro/h;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/h;

    move-result-object v2

    .line 167
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 168
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v5

    .line 170
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 171
    const-string v7, "_tp"

    invoke-virtual {v6, v7, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/umeng/analytics/pro/h;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v7, "_hd"

    invoke-virtual {v6, v7, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/umeng/analytics/pro/h;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "_bd"

    invoke-virtual {v6, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string v2, "_ts"

    invoke-virtual {v6, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    invoke-virtual {v5}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "_uuid"

    invoke-virtual {v6, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    const-string p1, "_re1"

    invoke-virtual {v6, p1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    const-string p1, "_re2"

    invoke-virtual {v6, p1, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    invoke-static {p0}, Lcom/umeng/analytics/pro/ak;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/ak;

    move-result-object p0

    const-string p1, "stf"

    invoke-virtual {p0, p1, v6}, Lcom/umeng/analytics/pro/ak;->a(Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 180
    const-string p0, "i"

    invoke-virtual {p0, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_6d

    .line 181
    const-string p0, "--->>> [\u6709\u72b6\u6001]inner\u4e1a\u52a1\uff0c\u8fd4\u56de\u7a7a JSONObject\u3002"

    invoke-static {v1, p0}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9c

    .line 182
    :cond_6d
    const-string p0, "s"

    invoke-virtual {p0, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    const-string p1, "header"

    if-eqz p0, :cond_93

    .line 184
    const-string p0, "--->>> [\u6709\u72b6\u6001]\u5206\u4eab\u4e1a\u52a1 \u8fd4\u56debody\u3002"

    invoke-static {v1, p0}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 187
    :try_start_81
    new-instance p3, Lorg/json/JSONObject;

    invoke-direct {p3}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 188
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_90
    .catch Lorg/json/JSONException; {:try_start_81 .. :try_end_90} :catch_91

    .line 189
    return-object p0

    .line 190
    :catch_91
    move-exception p0

    goto :goto_9b

    .line 193
    :cond_93
    const-string p0, "p"

    invoke-virtual {p0, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_a2

    :goto_9b
    nop

    .line 223
    :goto_9c
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    return-object p0

    .line 197
    :cond_a2
    const-string p0, "st"

    invoke-virtual {p0, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    const-string p3, "analytics"

    if-eqz p0, :cond_c8

    .line 198
    const-string p0, "--->>> [\u6709\u72b6\u6001]\u7edf\u8ba1\u4e1a\u52a1 \u534a\u5f00\u62a5\u6587\uff0c\u8fd4\u56debody\u3002"

    invoke-static {v1, p0}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 201
    :try_start_b6
    new-instance p4, Lorg/json/JSONObject;

    invoke-direct {p4}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0, p1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 202
    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_c5
    .catch Lorg/json/JSONException; {:try_start_b6 .. :try_end_c5} :catch_c6

    .line 204
    return-object p0

    .line 205
    :catch_c6
    move-exception p0

    .line 208
    goto :goto_e3

    .line 209
    :cond_c8
    const-string p0, "--->>> [\u6709\u72b6\u6001]\u7edf\u8ba1\u4e1a\u52a1 \u95ed\u5408\u62a5\u6587\uff0c\u8fd4\u56debody\u3002"

    invoke-static {v1, p0}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 212
    :try_start_d2
    new-instance p4, Lorg/json/JSONObject;

    invoke-direct {p4}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0, p1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 213
    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_e1
    .catch Lorg/json/JSONException; {:try_start_d2 .. :try_end_e1} :catch_e2

    .line 215
    return-object p0

    .line 216
    :catch_e2
    move-exception p0

    .line 221
    :goto_e3
    return-object p2

    .line 162
    :cond_e4
    :goto_e4
    const-string p0, "--->>> [\u6709\u72b6\u6001]\u6784\u5efa\u4fe1\u5c01\u4f20\u5165 header \u6216 body \u5b57\u6bb5\u4e3a\u7a7a\uff0c\u76f4\u63a5\u8fd4\u56de"

    invoke-static {v1, p0}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const/4 p0, 0x0

    return-object p0
.end method

.method public static buildEnvelopeWithExtHeader(Landroid/content/Context;Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 10

    .line 235
    nop

    .line 236
    const-string v0, "st"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 237
    const-string v0, "t"

    move-object v5, v0

    goto :goto_1c

    .line 238
    :cond_d
    const-string v0, "inner"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 239
    const-string v0, "i"

    move-object v5, v0

    goto :goto_1c

    .line 238
    :cond_19
    const-string v0, "a"

    move-object v5, v0

    .line 241
    :goto_1c
    sget-object v4, Lcom/umeng/commonsdk/statistics/UMServerURL;->PATH_ANALYTICS:Ljava/lang/String;

    const-string v6, "9.3.8"

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v1 .. v6}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->buildEnvelopeWithExtHeader(Landroid/content/Context;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public static buildEnvelopeWithExtHeader(Landroid/content/Context;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 15

    .line 245
    const-string v0, "MobclickRT"

    const-string v1, "--->>> [\u6709\u72b6\u6001]\u4e1a\u52a1\u53d1\u8d77\u6784\u5efa\u666e\u901a\u6709\u72b6\u6001\u4fe1\u5c01\u8bf7\u6c42\u3002"

    invoke-static {v0, v1}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "exception"

    const/4 v3, 0x0

    if-eqz v1, :cond_22

    .line 248
    nop

    .line 250
    :try_start_11
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V
    :try_end_16
    .catch Lorg/json/JSONException; {:try_start_11 .. :try_end_16} :catch_1f

    .line 251
    const/16 p1, 0x79

    :try_start_18
    invoke-virtual {p0, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1b
    .catch Lorg/json/JSONException; {:try_start_18 .. :try_end_1b} :catch_1c

    .line 254
    goto :goto_21

    .line 252
    :catch_1c
    move-exception p1

    move-object v3, p0

    goto :goto_20

    :catch_1f
    move-exception p0

    :goto_20
    move-object p0, v3

    .line 255
    :goto_21
    return-object p0

    .line 258
    :cond_22
    invoke-static {p0}, Lcom/umeng/commonsdk/utils/UMUtils;->isMainProgress(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3a

    .line 259
    nop

    .line 261
    :try_start_29
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V
    :try_end_2e
    .catch Lorg/json/JSONException; {:try_start_29 .. :try_end_2e} :catch_37

    .line 262
    const/16 p1, 0x78

    :try_start_30
    invoke-virtual {p0, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_33
    .catch Lorg/json/JSONException; {:try_start_30 .. :try_end_33} :catch_34

    .line 265
    goto :goto_39

    .line 263
    :catch_34
    move-exception p1

    move-object v3, p0

    goto :goto_38

    :catch_37
    move-exception p0

    :goto_38
    move-object p0, v3

    .line 266
    :goto_39
    return-object p0

    .line 269
    :cond_3a
    invoke-static {p0}, Lcom/umeng/commonsdk/UMConfigure;->needSendZcfgEnv(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 270
    const-string v1, "--->>> [\u6709\u72b6\u6001]\u96f6\u53f7\u62a5\u6587\u5e94\u7b54\u6570\u636e \u672a\u83b7\u53d6\u5230\uff0c\u5199\u5165\u4e8c\u7ea7\u7f13\u5b58"

    invoke-static {v0, v1}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    invoke-static/range {p0 .. p5}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->add2CacheTable(Landroid/content/Context;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0

    .line 273
    :cond_4a
    const-string v1, "--->>> [\u6709\u72b6\u6001]\u96f6\u53f7\u62a5\u6587\u5e94\u7b54\u6570\u636e \u5df2\u83b7\u53d6\u5230\uff0c\u5224\u65ad\u4e8c\u7ea7\u7f13\u5b58\u662f\u5426\u4e3a\u7a7a"

    invoke-static {v0, v1}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    invoke-static {p0}, Lcom/umeng/analytics/pro/ak;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/ak;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/analytics/pro/ak;->c()Z

    move-result v1

    if-eqz v1, :cond_71

    .line 275
    const-string v1, "--->>> [\u6709\u72b6\u6001]\u4e8c\u7ea7\u7f13\u5b58\u4e3a\u7a7a\uff0c\u76f4\u63a5\u6253\u4fe1\u5c01"

    invoke-static {v0, v1}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    new-instance v2, Lcom/umeng/commonsdk/statistics/b;

    invoke-direct {v2}, Lcom/umeng/commonsdk/statistics/b;-><init>()V

    .line 278
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-virtual/range {v2 .. v8}, Lcom/umeng/commonsdk/statistics/b;->a(Landroid/content/Context;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 279
    return-object p0

    .line 281
    :cond_71
    const-string v1, "--->>> [\u6709\u72b6\u6001]\u4e8c\u7ea7\u7f13\u5b58\u4e0d\u4e3a\u7a7a\uff0c\u5199\u5165\u4e8c\u7ea7\u7f13\u5b58"

    invoke-static {v0, v1}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    invoke-static/range {p0 .. p5}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->add2CacheTable(Landroid/content/Context;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 284
    const p2, 0x8011

    invoke-static {p2}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->eventHasExist(I)Z

    move-result p3

    if-nez p3, :cond_8f

    .line 285
    nop

    .line 286
    invoke-static {p0}, Lcom/umeng/commonsdk/internal/b;->a(Landroid/content/Context;)Lcom/umeng/commonsdk/internal/b;

    move-result-object p3

    invoke-virtual {p3}, Lcom/umeng/commonsdk/internal/b;->a()Lcom/umeng/commonsdk/internal/c;

    move-result-object p3

    .line 285
    invoke-static {p0, p2, p3, v3}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V

    .line 288
    :cond_8f
    return-object p1
.end method

.method public static buildZeroEnvelopeWithExtHeader(Landroid/content/Context;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 5

    .line 296
    invoke-static {p0}, Lcom/umeng/commonsdk/utils/UMUtils;->isMainProgress(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 297
    const/4 p0, 0x0

    .line 299
    :try_start_7
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V
    :try_end_c
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_c} :catch_17

    .line 300
    :try_start_c
    const-string p0, "exception"

    const/16 p2, 0x78

    invoke-virtual {p1, p0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_13
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_13} :catch_14

    .line 303
    goto :goto_19

    .line 301
    :catch_14
    move-exception p0

    move-object p0, p1

    goto :goto_18

    :catch_17
    move-exception p1

    :goto_18
    move-object p1, p0

    .line 304
    :goto_19
    return-object p1

    .line 307
    :cond_1a
    new-instance v0, Lcom/umeng/commonsdk/statistics/b;

    invoke-direct {v0}, Lcom/umeng/commonsdk/statistics/b;-><init>()V

    .line 308
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/umeng/commonsdk/statistics/b;->a(Landroid/content/Context;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public static getLastInstantBuildTime(Landroid/content/Context;)J
    .registers 3

    .line 66
    if-nez p0, :cond_5

    .line 67
    const-wide/16 v0, 0x0

    return-wide v0

    .line 69
    :cond_5
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/umeng/commonsdk/framework/UMFrUtils;->getLastInstantBuildTime(Landroid/content/Context;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getLastSuccessfulBuildTime(Landroid/content/Context;)J
    .registers 3

    .line 54
    if-nez p0, :cond_5

    .line 55
    const-wide/16 v0, 0x0

    return-wide v0

    .line 57
    :cond_5
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/umeng/commonsdk/framework/UMFrUtils;->getLastSuccessfulBuildTime(Landroid/content/Context;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static declared-synchronized getTransmissionSendFlag()Z
    .registers 2

    const-class v0, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;

    monitor-enter v0

    .line 340
    :try_start_3
    sget-boolean v1, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->transmissionSendFlag:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return v1

    .line 340
    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static imprintProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 320
    if-nez p0, :cond_3

    .line 321
    return-object p2

    .line 323
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->getImprintService(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->c()Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler$a;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler$a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isOnline(Landroid/content/Context;)Z
    .registers 3

    .line 46
    invoke-static {p0}, Lcom/umeng/commonsdk/UMConfigure;->needSendZcfgEnv(Landroid/content/Context;)Z

    move-result v0

    .line 47
    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {p0}, Lcom/umeng/commonsdk/framework/UMFrUtils;->isOnline(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_f

    if-eqz v0, :cond_f

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    return v1
.end method

.method public static isReadyBuild(Landroid/content/Context;Lcom/umeng/commonsdk/framework/UMLogDataProtocol$UMBusinessType;)Z
    .registers 3

    .line 101
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->isRet(Landroid/content/Context;Lcom/umeng/commonsdk/framework/UMLogDataProtocol$UMBusinessType;Z)Z

    move-result p0

    return p0
.end method

.method public static isReadyBuildNew(Landroid/content/Context;Lcom/umeng/commonsdk/framework/UMLogDataProtocol$UMBusinessType;)Z
    .registers 4

    .line 83
    invoke-static {}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->getTransmissionSendFlag()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 84
    return v1

    .line 86
    :cond_8
    invoke-static {p0, p1, v1}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->isRet(Landroid/content/Context;Lcom/umeng/commonsdk/framework/UMLogDataProtocol$UMBusinessType;Z)Z

    move-result p0

    return p0
.end method

.method public static isReadyBuildStateless()Z
    .registers 1

    .line 109
    nop

    .line 110
    invoke-static {}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->getTransmissionSendFlag()Z

    move-result v0

    if-nez v0, :cond_9

    .line 111
    const/4 v0, 0x0

    return v0

    .line 114
    :cond_9
    const/4 v0, 0x1

    return v0
.end method

.method private static isRet(Landroid/content/Context;Lcom/umeng/commonsdk/framework/UMLogDataProtocol$UMBusinessType;Z)Z
    .registers 8

    .line 118
    if-eqz p0, :cond_4a

    .line 119
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 120
    invoke-static {v0}, Lcom/umeng/commonsdk/framework/UMFrUtils;->isOnline(Landroid/content/Context;)Z

    move-result v1

    .line 121
    invoke-static {v0}, Lcom/umeng/commonsdk/framework/UMFrUtils;->envelopeFileNumber(Landroid/content/Context;)I

    move-result v2

    .line 123
    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_43

    .line 125
    sget-object p2, Lcom/umeng/commonsdk/framework/UMLogDataProtocol$UMBusinessType;->U_INTERNAL:Lcom/umeng/commonsdk/framework/UMLogDataProtocol$UMBusinessType;

    if-ne p1, p2, :cond_21

    .line 127
    nop

    .line 128
    invoke-static {v0, p1}, Lcom/umeng/commonsdk/framework/UMFrUtils;->hasEnvelopeFile(Landroid/content/Context;Lcom/umeng/commonsdk/framework/UMLogDataProtocol$UMBusinessType;)Z

    move-result p0

    if-eqz p0, :cond_1f

    .line 129
    const/4 p2, 0x0

    goto :goto_43

    .line 128
    :cond_1f
    const/4 p2, 0x1

    goto :goto_43

    .line 133
    :cond_21
    invoke-static {}, Lcom/umeng/commonsdk/framework/a;->a()Z

    move-result p2

    .line 134
    if-eqz p2, :cond_32

    .line 136
    invoke-static {}, Lcom/umeng/commonsdk/framework/a;->b()I

    move-result p0

    .line 137
    int-to-long p0, p0

    invoke-static {p0, p1}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendDelayProcessMsg(J)V

    .line 138
    nop

    .line 139
    const/4 p2, 0x0

    goto :goto_43

    .line 141
    :cond_32
    nop

    .line 142
    invoke-static {v0, p1}, Lcom/umeng/commonsdk/framework/UMFrUtils;->hasEnvelopeFile(Landroid/content/Context;Lcom/umeng/commonsdk/framework/UMLogDataProtocol$UMBusinessType;)Z

    move-result p1

    if-nez p1, :cond_42

    invoke-static {p0}, Lcom/umeng/commonsdk/UMConfigure;->needSendZcfgEnv(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_40

    goto :goto_42

    :cond_40
    const/4 p2, 0x1

    goto :goto_43

    .line 143
    :cond_42
    :goto_42
    const/4 p2, 0x0

    .line 149
    :cond_43
    :goto_43
    if-eqz v1, :cond_4a

    if-lez v2, :cond_4a

    .line 154
    invoke-static {}, Lcom/umeng/commonsdk/framework/a;->d()V

    .line 157
    :cond_4a
    return p2
.end method

.method public static maxDataSpace(Landroid/content/Context;)J
    .registers 3

    .line 332
    if-nez p0, :cond_5

    .line 333
    const-wide/16 v0, 0x0

    return-wide v0

    .line 336
    :cond_5
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/b;->a(Landroid/content/Context;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static declared-synchronized setTransmissionSendFlag(Z)V
    .registers 2

    const-class v0, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;

    monitor-enter v0

    .line 344
    :try_start_3
    sput-boolean p0, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->transmissionSendFlag:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    .line 345
    monitor-exit v0

    return-void

    .line 343
    :catchall_7
    move-exception p0

    monitor-exit v0

    throw p0
.end method
