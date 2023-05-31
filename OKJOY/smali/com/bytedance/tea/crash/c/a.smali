.class public Lcom/bytedance/tea/crash/c/a;
.super Ljava/lang/Object;
.source "CrashBody.java"


# instance fields
.field protected a:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
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

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-object p1, p0, Lcom/bytedance/tea/crash/c/a;->a:Lorg/json/JSONObject;

    .line 104
    return-void
.end method

.method public static a(JLandroid/content/Context;Ljava/lang/Thread;Ljava/lang/Throwable;)Lcom/bytedance/tea/crash/c/a;
    .registers 11
    .param p3    # Ljava/lang/Thread;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Throwable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x1

    .line 115
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-nez v0, :cond_b

    .line 116
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    .line 118
    :cond_b
    new-instance v1, Lcom/bytedance/tea/crash/c/a;

    invoke-direct {v1}, Lcom/bytedance/tea/crash/c/a;-><init>()V

    .line 119
    const-string v0, "isJava"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/bytedance/tea/crash/c/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 120
    const-string v0, "event_type"

    const-string v2, "java_crash"

    invoke-virtual {v1, v0, v2}, Lcom/bytedance/tea/crash/c/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 121
    const-string v0, "timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/bytedance/tea/crash/c/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 122
    const-string v0, "data"

    invoke-static {p4}, Lcom/bytedance/tea/crash/g/m;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/bytedance/tea/crash/c/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 123
    const-string v0, "isOOM"

    invoke-static {p4}, Lcom/bytedance/tea/crash/g/m;->b(Ljava/lang/Throwable;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/bytedance/tea/crash/c/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 124
    const-string v0, "crash_time"

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/bytedance/tea/crash/c/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 125
    const-string v0, "process_name"

    invoke-static {p2}, Lcom/bytedance/tea/crash/g/a;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/bytedance/tea/crash/c/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 126
    invoke-static {p2}, Lcom/bytedance/tea/crash/g/a;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_64

    .line 127
    const-string v0, "remote_process"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/bytedance/tea/crash/c/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 129
    :cond_64
    invoke-virtual {v1}, Lcom/bytedance/tea/crash/c/a;->a()Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/bytedance/tea/crash/g/a;->a(Landroid/content/Context;Lorg/json/JSONObject;)V

    .line 130
    if-nez p3, :cond_7f

    const/4 v0, 0x0

    .line 131
    :goto_6e
    if-eqz v0, :cond_75

    .line 132
    const-string v2, "crash_thread_name"

    invoke-virtual {v1, v2, v0}, Lcom/bytedance/tea/crash/c/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 134
    :cond_75
    const-string v2, "all_thread_stacks"

    invoke-static {v0}, Lcom/bytedance/tea/crash/g/m;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/bytedance/tea/crash/c/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 135
    return-object v1

    .line 130
    :cond_7f
    invoke-virtual {p3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_6e
.end method


# virtual methods
.method public a(ILjava/lang/String;)Lcom/bytedance/tea/crash/c/a;
    .registers 5

    .prologue
    .line 313
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/tea/crash/c/a;->a:Lorg/json/JSONObject;

    const-string v1, "miniapp_id"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 314
    iget-object v0, p0, Lcom/bytedance/tea/crash/c/a;->a:Lorg/json/JSONObject;

    const-string v1, "miniapp_version"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_e
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_e} :catch_f

    .line 318
    :goto_e
    return-object p0

    .line 315
    :catch_f
    move-exception v0

    .line 316
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_e
.end method

.method public a(J)Lcom/bytedance/tea/crash/c/a;
    .registers 6

    .prologue
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

    move-result-object v0

    .line 225
    const-string v1, "app_start_time_readable"

    invoke-virtual {p0, v1, v0}, Lcom/bytedance/tea/crash/c/a;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_22} :catch_23

    .line 229
    :goto_22
    return-object p0

    .line 226
    :catch_23
    move-exception v0

    .line 227
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_22
.end method

.method public a(Lcom/bytedance/tea/crash/c/b;)Lcom/bytedance/tea/crash/c/a;
    .registers 4

    .prologue
    .line 205
    const-string v0, "header"

    invoke-virtual {p1}, Lcom/bytedance/tea/crash/c/b;->a()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/tea/crash/c/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 206
    return-object p0
.end method

.method public a(Lcom/bytedance/tea/crash/e/a/b;)Lcom/bytedance/tea/crash/c/a;
    .registers 4

    .prologue
    .line 251
    const-string v0, "activity_trace"

    invoke-virtual {p1}, Lcom/bytedance/tea/crash/e/a/b;->a()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/tea/crash/c/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 252
    const-string v0, "running_tasks"

    invoke-virtual {p1}, Lcom/bytedance/tea/crash/e/a/b;->b()Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/tea/crash/c/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 253
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/bytedance/tea/crash/c/a;
    .registers 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
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
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/bytedance/tea/crash/c/a;"
        }
    .end annotation

    .prologue
    .line 327
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 328
    if-eqz p1, :cond_d

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 329
    :cond_d
    const-string v0, "patch_info"

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/tea/crash/c/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 336
    :goto_12
    return-object p0

    .line 332
    :cond_13
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 333
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_17

    .line 335
    :cond_27
    const-string v0, "patch_info"

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/tea/crash/c/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_12
.end method

.method public a(Ljava/util/Map;)Lcom/bytedance/tea/crash/c/a;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/bytedance/tea/crash/c/a;"
        }
    .end annotation

    .prologue
    .line 262
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 264
    if-nez p1, :cond_f

    .line 265
    :try_start_7
    iget-object v0, p0, Lcom/bytedance/tea/crash/c/a;->a:Lorg/json/JSONObject;

    const-string v2, "plugin_info"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 277
    :goto_e
    return-object p0

    .line 268
    :cond_f
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 269
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 270
    const-string v4, "package_name"

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 271
    const-string v4, "version_code"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 272
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_17

    .line 275
    :catch_3a
    move-exception v0

    goto :goto_e

    .line 274
    :cond_3c
    iget-object v0, p0, Lcom/bytedance/tea/crash/c/a;->a:Lorg/json/JSONObject;

    const-string v2, "plugin_info"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_43} :catch_3a

    goto :goto_e
.end method

.method public a(Lorg/json/JSONObject;)Lcom/bytedance/tea/crash/c/a;
    .registers 3

    .prologue
    .line 345
    const-string v0, "storage"

    invoke-virtual {p0, v0, p1}, Lcom/bytedance/tea/crash/c/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 346
    return-object p0
.end method

.method public a()Lorg/json/JSONObject;
    .registers 2

    .prologue
    .line 201
    iget-object v0, p0, Lcom/bytedance/tea/crash/c/a;->a:Lorg/json/JSONObject;

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 414
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/tea/crash/c/a;->a:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    .line 418
    :goto_5
    return-void

    .line 415
    :catch_6
    move-exception v0

    .line 416
    invoke-static {v0}, Lcom/bytedance/tea/crash/g/j;->b(Ljava/lang/Throwable;)V

    goto :goto_5
.end method

.method public b(Ljava/util/List;)Lcom/bytedance/tea/crash/c/a;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/bytedance/tea/crash/c/a;"
        }
    .end annotation

    .prologue
    .line 356
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 357
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 358
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_9

    .line 360
    :cond_19
    const-string v0, "logcat"

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/tea/crash/c/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 361
    return-object p0
.end method

.method public b(Ljava/util/Map;)Lcom/bytedance/tea/crash/c/a;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/bytedance/tea/crash/c/a;"
        }
    .end annotation

    .prologue
    .line 287
    if-eqz p1, :cond_39

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_39

    .line 288
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 289
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 291
    :try_start_21
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2c
    .catch Lorg/json/JSONException; {:try_start_21 .. :try_end_2c} :catch_2d

    goto :goto_15

    .line 292
    :catch_2d
    move-exception v0

    .line 293
    invoke-static {v0}, Lcom/bytedance/tea/crash/g/j;->b(Ljava/lang/Throwable;)V

    goto :goto_15

    .line 297
    :cond_32
    :try_start_32
    iget-object v0, p0, Lcom/bytedance/tea/crash/c/a;->a:Lorg/json/JSONObject;

    const-string v2, "sdk_info"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_39
    .catch Lorg/json/JSONException; {:try_start_32 .. :try_end_39} :catch_3a

    .line 302
    :cond_39
    :goto_39
    return-object p0

    .line 298
    :catch_3a
    move-exception v0

    .line 299
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_39
.end method

.method public c(Ljava/util/Map;)Lcom/bytedance/tea/crash/c/a;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/bytedance/tea/crash/c/a;"
        }
    .end annotation

    .prologue
    .line 371
    if-eqz p1, :cond_2d

    .line 372
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 373
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 375
    :try_start_1b
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_22
    .catch Lorg/json/JSONException; {:try_start_1b .. :try_end_22} :catch_23

    goto :goto_f

    .line 376
    :catch_23
    move-exception v0

    .line 377
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_f

    .line 380
    :cond_28
    const-string v0, "filters"

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/tea/crash/c/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 382
    :cond_2d
    return-object p0
.end method
