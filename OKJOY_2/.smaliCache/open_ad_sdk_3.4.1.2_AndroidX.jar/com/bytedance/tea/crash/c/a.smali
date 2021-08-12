.class public Lcom/bytedance/tea/crash/c/a;
.super Ljava/lang/Object;
.source "CrashBody.java"


# instance fields
.field protected a:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/bytedance/tea/crash/c/a;->a:Lorg/json/JSONObject;

    .line 99
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 2

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-object p1, p0, Lcom/bytedance/tea/crash/c/a;->a:Lorg/json/JSONObject;

    .line 104
    return-void
.end method

.method public static a(JLandroid/content/Context;Ljava/lang/Thread;Ljava/lang/Throwable;)Lcom/bytedance/tea/crash/c/a;
    .registers 9

    .line 115
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-nez v0, :cond_a

    .line 116
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    .line 118
    :cond_a
    new-instance v0, Lcom/bytedance/tea/crash/c/a;

    invoke-direct {v0}, Lcom/bytedance/tea/crash/c/a;-><init>()V

    .line 119
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "isJava"

    invoke-virtual {v0, v3, v2}, Lcom/bytedance/tea/crash/c/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 120
    const-string v2, "event_type"

    const-string v3, "java_crash"

    invoke-virtual {v0, v2, v3}, Lcom/bytedance/tea/crash/c/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 121
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "timestamp"

    invoke-virtual {v0, v3, v2}, Lcom/bytedance/tea/crash/c/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 122
    invoke-static {p4}, Lcom/bytedance/tea/crash/g/m;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "data"

    invoke-virtual {v0, v3, v2}, Lcom/bytedance/tea/crash/c/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 123
    invoke-static {p4}, Lcom/bytedance/tea/crash/g/m;->b(Ljava/lang/Throwable;)Z

    move-result p4

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p4

    const-string v2, "isOOM"

    invoke-virtual {v0, v2, p4}, Lcom/bytedance/tea/crash/c/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 124
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string p1, "crash_time"

    invoke-virtual {v0, p1, p0}, Lcom/bytedance/tea/crash/c/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 125
    invoke-static {p2}, Lcom/bytedance/tea/crash/g/a;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "process_name"

    invoke-virtual {v0, p1, p0}, Lcom/bytedance/tea/crash/c/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 126
    invoke-static {p2}, Lcom/bytedance/tea/crash/g/a;->b(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_64

    .line 127
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "remote_process"

    invoke-virtual {v0, p1, p0}, Lcom/bytedance/tea/crash/c/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 129
    :cond_64
    invoke-virtual {v0}, Lcom/bytedance/tea/crash/c/a;->a()Lorg/json/JSONObject;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/bytedance/tea/crash/g/a;->a(Landroid/content/Context;Lorg/json/JSONObject;)V

    .line 130
    if-nez p3, :cond_6f

    const/4 p0, 0x0

    goto :goto_73

    :cond_6f
    invoke-virtual {p3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p0

    .line 131
    :goto_73
    if-eqz p0, :cond_7a

    .line 132
    const-string p1, "crash_thread_name"

    invoke-virtual {v0, p1, p0}, Lcom/bytedance/tea/crash/c/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 134
    :cond_7a
    invoke-static {p0}, Lcom/bytedance/tea/crash/g/m;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string p1, "all_thread_stacks"

    invoke-virtual {v0, p1, p0}, Lcom/bytedance/tea/crash/c/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 135
    return-object v0
.end method


# virtual methods
.method public a(ILjava/lang/String;)Lcom/bytedance/tea/crash/c/a;
    .registers 5

    .line 313
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/tea/crash/c/a;->a:Lorg/json/JSONObject;

    const-string v1, "miniapp_id"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 314
    iget-object p1, p0, Lcom/bytedance/tea/crash/c/a;->a:Lorg/json/JSONObject;

    const-string v0, "miniapp_version"

    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_e
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_e} :catch_f

    .line 317
    goto :goto_13

    .line 315
    :catch_f
    move-exception p1

    .line 316
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 318
    :goto_13
    return-object p0
.end method

.method public a(J)Lcom/bytedance/tea/crash/c/a;
    .registers 6

    .line 221
    :try_start_0
    const-string v0, "start_time"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/tea/crash/c/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 222
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy_MM_dd_HH_mm_ss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 223
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    .line 225
    const-string p2, "app_start_time_readable"

    invoke-virtual {p0, p2, p1}, Lcom/bytedance/tea/crash/c/a;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_22} :catch_23

    .line 228
    goto :goto_27

    .line 226
    :catch_23
    move-exception p1

    .line 227
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 229
    :goto_27
    return-object p0
.end method

.method public a(Lcom/bytedance/tea/crash/c/b;)Lcom/bytedance/tea/crash/c/a;
    .registers 3

    .line 205
    invoke-virtual {p1}, Lcom/bytedance/tea/crash/c/b;->a()Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "header"

    invoke-virtual {p0, v0, p1}, Lcom/bytedance/tea/crash/c/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 206
    return-object p0
.end method

.method public a(Lcom/bytedance/tea/crash/e/a/b;)Lcom/bytedance/tea/crash/c/a;
    .registers 4

    .line 251
    invoke-virtual {p1}, Lcom/bytedance/tea/crash/e/a/b;->a()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "activity_trace"

    invoke-virtual {p0, v1, v0}, Lcom/bytedance/tea/crash/c/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 252
    invoke-virtual {p1}, Lcom/bytedance/tea/crash/e/a/b;->b()Lorg/json/JSONArray;

    move-result-object p1

    const-string v0, "running_tasks"

    invoke-virtual {p0, v0, p1}, Lcom/bytedance/tea/crash/c/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 253
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/bytedance/tea/crash/c/a;
    .registers 3

    .line 239
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 240
    const-string v0, "session_id"

    invoke-virtual {p0, v0, p1}, Lcom/bytedance/tea/crash/c/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 242
    :cond_b
    return-object p0
.end method

.method public a(Ljava/util/List;)Lcom/bytedance/tea/crash/c/a;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/bytedance/tea/crash/c/a;"
        }
    .end annotation

    .line 327
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 328
    const-string v1, "patch_info"

    if-eqz p1, :cond_28

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_10

    goto :goto_28

    .line 332
    :cond_10
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_14
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 333
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 334
    goto :goto_14

    .line 335
    :cond_24
    invoke-virtual {p0, v1, v0}, Lcom/bytedance/tea/crash/c/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 336
    return-object p0

    .line 329
    :cond_28
    :goto_28
    invoke-virtual {p0, v1, v0}, Lcom/bytedance/tea/crash/c/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 330
    return-object p0
.end method

.method public a(Ljava/util/Map;)Lcom/bytedance/tea/crash/c/a;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/bytedance/tea/crash/c/a;"
        }
    .end annotation

    .line 262
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 264
    const-string v1, "plugin_info"

    if-nez p1, :cond_f

    .line 265
    :try_start_9
    iget-object p1, p0, Lcom/bytedance/tea/crash/c/a;->a:Lorg/json/JSONObject;

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 266
    return-object p0

    .line 268
    :cond_f
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 269
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 270
    const-string v5, "package_name"

    invoke-virtual {v4, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 271
    const-string v5, "version_code"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 272
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 273
    goto :goto_17

    .line 274
    :cond_3a
    iget-object p1, p0, Lcom/bytedance/tea/crash/c/a;->a:Lorg/json/JSONObject;

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_3f} :catch_40

    .line 276
    goto :goto_41

    .line 275
    :catch_40
    move-exception p1

    .line 277
    :goto_41
    return-object p0
.end method

.method public a(Lorg/json/JSONObject;)Lcom/bytedance/tea/crash/c/a;
    .registers 3

    .line 345
    const-string v0, "storage"

    invoke-virtual {p0, v0, p1}, Lcom/bytedance/tea/crash/c/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 346
    return-object p0
.end method

.method public a()Lorg/json/JSONObject;
    .registers 2

    .line 201
    iget-object v0, p0, Lcom/bytedance/tea/crash/c/a;->a:Lorg/json/JSONObject;

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .line 414
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/tea/crash/c/a;->a:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    .line 417
    goto :goto_a

    .line 415
    :catch_6
    move-exception p1

    .line 416
    invoke-static {p1}, Lcom/bytedance/tea/crash/g/j;->b(Ljava/lang/Throwable;)V

    .line 418
    :goto_a
    return-void
.end method

.method public b(Ljava/util/List;)Lcom/bytedance/tea/crash/c/a;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/bytedance/tea/crash/c/a;"
        }
    .end annotation

    .line 356
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 357
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 358
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 359
    goto :goto_9

    .line 360
    :cond_19
    const-string p1, "logcat"

    invoke-virtual {p0, p1, v0}, Lcom/bytedance/tea/crash/c/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 361
    return-object p0
.end method

.method public b(Ljava/util/Map;)Lcom/bytedance/tea/crash/c/a;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/bytedance/tea/crash/c/a;"
        }
    .end annotation

    .line 287
    if-eqz p1, :cond_3e

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_3e

    .line 288
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 289
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 291
    :try_start_21
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2c
    .catch Lorg/json/JSONException; {:try_start_21 .. :try_end_2c} :catch_2d

    .line 294
    goto :goto_31

    .line 292
    :catch_2d
    move-exception v2

    .line 293
    invoke-static {v2}, Lcom/bytedance/tea/crash/g/j;->b(Ljava/lang/Throwable;)V

    .line 295
    :goto_31
    goto :goto_15

    .line 297
    :cond_32
    :try_start_32
    iget-object p1, p0, Lcom/bytedance/tea/crash/c/a;->a:Lorg/json/JSONObject;

    const-string v1, "sdk_info"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_39
    .catch Lorg/json/JSONException; {:try_start_32 .. :try_end_39} :catch_3a

    .line 300
    goto :goto_3e

    .line 298
    :catch_3a
    move-exception p1

    .line 299
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 302
    :cond_3e
    :goto_3e
    return-object p0
.end method

.method public c(Ljava/util/Map;)Lcom/bytedance/tea/crash/c/a;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/bytedance/tea/crash/c/a;"
        }
    .end annotation

    .line 371
    if-eqz p1, :cond_2d

    .line 372
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 373
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 375
    :try_start_1b
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_22
    .catch Lorg/json/JSONException; {:try_start_1b .. :try_end_22} :catch_23

    .line 378
    goto :goto_27

    .line 376
    :catch_23
    move-exception v2

    .line 377
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 379
    :goto_27
    goto :goto_f

    .line 380
    :cond_28
    const-string p1, "filters"

    invoke-virtual {p0, p1, v0}, Lcom/bytedance/tea/crash/c/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 382
    :cond_2d
    return-object p0
.end method
