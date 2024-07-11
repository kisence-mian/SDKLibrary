.class public Lcom/ss/android/downloadlib/addownload/e;
.super Ljava/lang/Object;
.source "CleanSpaceHelper.java"


# instance fields
.field private a:Landroid/os/Handler;

.field private b:Lcom/ss/android/downloadlib/addownload/b/e;

.field private c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private d:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(Landroid/os/Handler;)V
    .registers 4

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/ss/android/downloadlib/addownload/e;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 51
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/ss/android/downloadlib/addownload/e;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 42
    iput-object p1, p0, Lcom/ss/android/downloadlib/addownload/e;->a:Landroid/os/Handler;

    .line 43
    return-void
.end method

.method static synthetic a(Lcom/ss/android/downloadlib/addownload/e;Ljava/util/Map;)J
    .registers 2

    .line 35
    invoke-direct {p0, p1}, Lcom/ss/android/downloadlib/addownload/e;->a(Ljava/util/Map;)J

    move-result-wide p0

    return-wide p0
.end method

.method private a(Ljava/util/Map;)J
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)J"
        }
    .end annotation

    .line 156
    const-wide/16 v0, 0x0

    if-eqz p1, :cond_3f

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v2

    if-nez v2, :cond_b

    goto :goto_3f

    .line 160
    :cond_b
    :try_start_b
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_13
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_39

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 161
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 162
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 164
    const-string v4, "content-length"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_38

    .line 165
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_37} :catch_3a

    return-wide v0

    .line 167
    :cond_38
    goto :goto_13

    .line 170
    :cond_39
    goto :goto_3e

    .line 168
    :catch_3a
    move-exception p1

    .line 169
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 171
    :goto_3e
    return-wide v0

    .line 157
    :cond_3f
    :goto_3f
    return-wide v0
.end method

.method static synthetic a(Lcom/ss/android/downloadlib/addownload/e;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/ss/android/downloadlib/addownload/e;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static a(Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 3

    .line 300
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 302
    :try_start_5
    const-string v1, "clean_space_install_params"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_a} :catch_b

    .line 305
    goto :goto_f

    .line 303
    :catch_b
    move-exception p0

    .line 304
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    .line 306
    :goto_f
    return-object v0
.end method

.method public static a(I)V
    .registers 1

    .line 310
    invoke-static {p0}, Lcom/ss/android/downloadlib/h/e;->f(I)Z

    move-result p0

    if-nez p0, :cond_7

    .line 312
    return-void

    .line 314
    :cond_7
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->l()Lcom/ss/android/a/a/a/m;

    move-result-object p0

    if-eqz p0, :cond_1e

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->l()Lcom/ss/android/a/a/a/m;

    move-result-object p0

    invoke-interface {p0}, Lcom/ss/android/a/a/a/m;->b()Z

    move-result p0

    if-eqz p0, :cond_1e

    .line 315
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->l()Lcom/ss/android/a/a/a/m;

    move-result-object p0

    invoke-interface {p0}, Lcom/ss/android/a/a/a/m;->c()V

    .line 317
    :cond_1e
    return-void
.end method

.method private a(ILjava/lang/String;JLcom/ss/android/downloadad/a/b/b;JLcom/ss/android/downloadlib/addownload/f$a;)V
    .registers 27

    .line 177
    move-object/from16 v8, p0

    move-wide/from16 v1, p3

    move-object/from16 v9, p5

    move-object/from16 v10, p8

    .line 178
    iget-object v0, v8, Lcom/ss/android/downloadlib/addownload/e;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v11, 0x1

    invoke-virtual {v0, v11}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 179
    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    const/4 v12, 0x0

    if-lez v0, :cond_93

    .line 180
    new-instance v13, Lorg/json/JSONObject;

    invoke-direct {v13}, Lorg/json/JSONObject;-><init>()V

    .line 182
    :try_start_1a
    const-string v0, "apk_size"

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v13, v0, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_23
    .catch Lorg/json/JSONException; {:try_start_1a .. :try_end_23} :catch_24

    .line 185
    goto :goto_28

    .line 183
    :catch_24
    move-exception v0

    .line 184
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 187
    :goto_28
    invoke-static/range {p1 .. p1}, Lcom/ss/android/downloadlib/h/e;->a(I)D

    move-result-wide v3

    .line 188
    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    add-double/2addr v3, v5

    long-to-double v0, v1

    mul-double/2addr v3, v0

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->longValue()J

    move-result-wide v0

    invoke-static/range {p1 .. p1}, Lcom/ss/android/downloadlib/h/e;->b(I)J

    move-result-wide v2

    add-long/2addr v0, v2

    sub-long v14, v0, p6

    .line 189
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/e;->d()J

    move-result-wide v16

    .line 191
    cmp-long v0, v16, v14

    if-gez v0, :cond_93

    .line 193
    move-object/from16 v1, p0

    move-object/from16 v2, p5

    move-object v3, v13

    move-wide v4, v14

    move-wide/from16 v6, v16

    invoke-direct/range {v1 .. v7}, Lcom/ss/android/downloadlib/addownload/e;->a(Lcom/ss/android/downloadad/a/b/b;Lorg/json/JSONObject;JJ)V

    .line 196
    invoke-static/range {p5 .. p5}, Lcom/ss/android/downloadlib/addownload/e;->a(Lcom/ss/android/downloadad/a/b/b;)V

    .line 198
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/e;->d()J

    move-result-wide v6

    .line 199
    cmp-long v0, v6, v14

    if-gez v0, :cond_60

    move v0, v11

    goto :goto_61

    :cond_60
    move v0, v12

    .line 201
    :goto_61
    if-eqz v0, :cond_89

    .line 202
    invoke-virtual {v9, v11}, Lcom/ss/android/downloadad/a/b/b;->d(Z)V

    .line 204
    invoke-virtual/range {p5 .. p5}, Lcom/ss/android/downloadad/a/b/b;->a()Ljava/lang/String;

    move-result-object v0

    .line 205
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/c/d;->a()Lcom/ss/android/downloadlib/addownload/c/d;

    move-result-object v1

    new-instance v2, Lcom/ss/android/downloadlib/addownload/e$4;

    invoke-direct {v2, v8, v9, v10, v0}, Lcom/ss/android/downloadlib/addownload/e$4;-><init>(Lcom/ss/android/downloadlib/addownload/e;Lcom/ss/android/downloadad/a/b/b;Lcom/ss/android/downloadlib/addownload/f$a;Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Lcom/ss/android/downloadlib/addownload/c/d;->a(Ljava/lang/String;Lcom/ss/android/downloadlib/addownload/c/e;)V

    .line 219
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p5

    move-object/from16 v4, p2

    move-wide v5, v14

    invoke-direct/range {v1 .. v6}, Lcom/ss/android/downloadlib/addownload/e;->a(ILcom/ss/android/downloadad/a/b/b;Ljava/lang/String;J)Z

    move-result v12

    .line 220
    if-eqz v12, :cond_88

    .line 221
    invoke-virtual {v9, v11}, Lcom/ss/android/downloadad/a/b/b;->e(Z)V

    .line 223
    :cond_88
    goto :goto_93

    .line 224
    :cond_89
    move-object/from16 v1, p0

    move-object/from16 v2, p5

    move-object v3, v13

    move-wide/from16 v4, v16

    invoke-direct/range {v1 .. v7}, Lcom/ss/android/downloadlib/addownload/e;->b(Lcom/ss/android/downloadad/a/b/b;Lorg/json/JSONObject;JJ)V

    .line 229
    :cond_93
    :goto_93
    if-nez v12, :cond_9f

    .line 230
    iget-object v0, v8, Lcom/ss/android/downloadlib/addownload/e;->a:Landroid/os/Handler;

    new-instance v1, Lcom/ss/android/downloadlib/addownload/e$5;

    invoke-direct {v1, v8, v10}, Lcom/ss/android/downloadlib/addownload/e$5;-><init>(Lcom/ss/android/downloadlib/addownload/e;Lcom/ss/android/downloadlib/addownload/f$a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 237
    :cond_9f
    return-void
.end method

.method private static a(Lcom/ss/android/downloadad/a/b/b;)V
    .registers 7

    .line 327
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/e;->d()J

    move-result-wide v0

    .line 329
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->l()Lcom/ss/android/a/a/a/m;

    move-result-object v2

    if-eqz v2, :cond_11

    .line 330
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->l()Lcom/ss/android/a/a/a/m;

    move-result-object v2

    invoke-interface {v2}, Lcom/ss/android/a/a/a/m;->e()V

    .line 334
    :cond_11
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/c/c;->a()V

    .line 335
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/c/c;->b()V

    .line 337
    invoke-virtual {p0}, Lcom/ss/android/downloadad/a/b/b;->s()I

    move-result v2

    invoke-static {v2}, Lcom/ss/android/downloadlib/h/e;->g(I)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 338
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/ss/android/downloadlib/addownload/c/c;->a(Landroid/content/Context;)V

    .line 341
    :cond_28
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/e;->d()J

    move-result-wide v2

    .line 342
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 344
    :try_start_31
    const-string v5, "quite_clean_size"

    sub-long/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3b
    .catch Lorg/json/JSONException; {:try_start_31 .. :try_end_3b} :catch_3c

    .line 347
    goto :goto_40

    .line 345
    :catch_3c
    move-exception v0

    .line 346
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 348
    :goto_40
    invoke-static {}, Lcom/ss/android/downloadlib/e/a;->a()Lcom/ss/android/downloadlib/e/a;

    move-result-object v0

    const-string v1, "clean_quite_finish"

    invoke-virtual {v0, v1, v4, p0}, Lcom/ss/android/downloadlib/e/a;->a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/downloadad/a/b/b;)V

    .line 349
    return-void
.end method

.method private a(Lcom/ss/android/downloadad/a/b/b;Lorg/json/JSONObject;JJ)V
    .registers 8

    .line 357
    :try_start_0
    const-string v0, "available_space"

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p5

    invoke-virtual {p2, v0, p5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 358
    const-string p5, "apk_download_need_size"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p2, p5, p3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_12
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_12} :catch_13

    .line 361
    goto :goto_17

    .line 359
    :catch_13
    move-exception p3

    .line 360
    invoke-virtual {p3}, Lorg/json/JSONException;->printStackTrace()V

    .line 362
    :goto_17
    invoke-static {}, Lcom/ss/android/downloadlib/e/a;->a()Lcom/ss/android/downloadlib/e/a;

    move-result-object p3

    const-string p4, "clean_space_no_enough_for_download"

    invoke-virtual {p3, p4, p2, p1}, Lcom/ss/android/downloadlib/e/a;->a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/downloadad/a/b/b;)V

    .line 363
    return-void
.end method

.method static synthetic a(Lcom/ss/android/downloadlib/addownload/e;ILjava/lang/String;JLcom/ss/android/downloadad/a/b/b;JLcom/ss/android/downloadlib/addownload/f$a;)V
    .registers 9

    .line 35
    invoke-direct/range {p0 .. p8}, Lcom/ss/android/downloadlib/addownload/e;->a(ILjava/lang/String;JLcom/ss/android/downloadad/a/b/b;JLcom/ss/android/downloadlib/addownload/f$a;)V

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/ss/android/downloadad/a/b/b;Lcom/ss/android/downloadlib/addownload/f$b;)V
    .registers 4

    .line 125
    if-nez p3, :cond_3

    .line 126
    return-void

    .line 129
    :cond_3
    new-instance p2, Lcom/ss/android/downloadlib/addownload/e$3;

    invoke-direct {p2, p0, p3}, Lcom/ss/android/downloadlib/addownload/e$3;-><init>(Lcom/ss/android/downloadlib/addownload/e;Lcom/ss/android/downloadlib/addownload/f$b;)V

    invoke-static {p1, p2}, Lcom/ss/android/socialbase/downloader/network/a/b;->a(Ljava/lang/String;Lcom/ss/android/socialbase/downloader/network/j;)V

    .line 153
    return-void
.end method

.method private a(ILcom/ss/android/downloadad/a/b/b;Ljava/lang/String;J)Z
    .registers 14

    .line 243
    invoke-static {p1}, Lcom/ss/android/downloadlib/h/e;->f(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 245
    return v1

    .line 248
    :cond_8
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->l()Lcom/ss/android/a/a/a/m;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 249
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->l()Lcom/ss/android/a/a/a/m;

    move-result-object v2

    const/4 v5, 0x1

    move v3, p1

    move-object v4, p3

    move-wide v6, p4

    invoke-interface/range {v2 .. v7}, Lcom/ss/android/a/a/a/m;->a(ILjava/lang/String;ZJ)Z

    move-result p1

    return p1

    .line 251
    :cond_1b
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 253
    :try_start_20
    const-string p3, "show_dialog_result"

    const/4 p4, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p1, p3, p4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2a
    .catch Lorg/json/JSONException; {:try_start_20 .. :try_end_2a} :catch_2b

    .line 256
    goto :goto_2f

    .line 254
    :catch_2b
    move-exception p3

    .line 255
    invoke-virtual {p3}, Lorg/json/JSONException;->printStackTrace()V

    .line 257
    :goto_2f
    invoke-static {}, Lcom/ss/android/downloadlib/e/a;->a()Lcom/ss/android/downloadlib/e/a;

    move-result-object p3

    const-string p4, "cleanspace_window_show"

    invoke-virtual {p3, p4, p1, p2}, Lcom/ss/android/downloadlib/e/a;->a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/downloadad/a/b/b;)V

    .line 258
    return v1
.end method

.method public static a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;J)Z
    .registers 9

    .line 268
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v1

    .line 269
    invoke-static {v1}, Lcom/ss/android/downloadlib/h/e;->f(I)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_c

    .line 271
    return v2

    .line 273
    :cond_c
    nop

    .line 274
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->l()Lcom/ss/android/a/a/a/m;

    move-result-object v0

    if-eqz v0, :cond_33

    .line 275
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->l()Lcom/ss/android/a/a/a/m;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move-wide v4, p1

    invoke-interface/range {v0 .. v5}, Lcom/ss/android/a/a/a/m;->a(ILjava/lang/String;ZJ)Z

    move-result v2

    .line 276
    if-eqz v2, :cond_33

    .line 277
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/c/d;->a()Lcom/ss/android/downloadlib/addownload/c/d;

    move-result-object p1

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lcom/ss/android/downloadlib/addownload/e$6;

    invoke-direct {v0, p0}, Lcom/ss/android/downloadlib/addownload/e$6;-><init>(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    invoke-virtual {p1, p2, v0}, Lcom/ss/android/downloadlib/addownload/c/d;->a(Ljava/lang/String;Lcom/ss/android/downloadlib/addownload/c/e;)V

    .line 295
    :cond_33
    return v2
.end method

.method public static b()J
    .registers 2

    .line 320
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->l()Lcom/ss/android/a/a/a/m;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 321
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->l()Lcom/ss/android/a/a/a/m;

    move-result-object v0

    invoke-interface {v0}, Lcom/ss/android/a/a/a/m;->a()J

    move-result-wide v0

    return-wide v0

    .line 323
    :cond_f
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private b(Lcom/ss/android/downloadad/a/b/b;Lorg/json/JSONObject;JJ)V
    .registers 8

    .line 366
    const-string v0, "1"

    invoke-virtual {p1, v0}, Lcom/ss/android/downloadad/a/b/b;->l(Ljava/lang/String;)V

    .line 367
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/b/i;->a()Lcom/ss/android/downloadlib/addownload/b/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ss/android/downloadlib/addownload/b/i;->a(Lcom/ss/android/downloadad/a/b/b;)V

    .line 369
    :try_start_c
    const-string v0, "quite_clean_size"

    sub-long/2addr p5, p3

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p2, v0, p3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_16
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_16} :catch_17

    .line 372
    goto :goto_1b

    .line 370
    :catch_17
    move-exception p3

    .line 371
    invoke-virtual {p3}, Lorg/json/JSONException;->printStackTrace()V

    .line 373
    :goto_1b
    invoke-static {}, Lcom/ss/android/downloadlib/e/a;->a()Lcom/ss/android/downloadlib/e/a;

    move-result-object p3

    const-string p4, "cleanspace_download_after_quite_clean"

    invoke-virtual {p3, p4, p2, p1}, Lcom/ss/android/downloadlib/e/a;->a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/downloadad/a/b/b;)V

    .line 374
    return-void
.end method

.method static synthetic c()J
    .registers 2

    .line 35
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/e;->d()J

    move-result-wide v0

    return-wide v0
.end method

.method private static d()J
    .registers 2

    .line 352
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Lcom/ss/android/downloadlib/h/k;->a(J)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method a(IJJLcom/ss/android/downloadlib/addownload/f$a;)V
    .registers 22

    .line 66
    move-object v9, p0

    move-object/from16 v10, p6

    iget-object v0, v9, Lcom/ss/android/downloadlib/addownload/e;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 68
    if-nez v10, :cond_c

    .line 69
    return-void

    .line 72
    :cond_c
    invoke-static/range {p1 .. p1}, Lcom/ss/android/downloadlib/h/e;->f(I)Z

    move-result v0

    if-eqz v0, :cond_aa

    invoke-static/range {p1 .. p1}, Lcom/ss/android/downloadlib/h/e;->e(I)Z

    move-result v0

    if-nez v0, :cond_1a

    goto/16 :goto_aa

    .line 76
    :cond_1a
    invoke-static/range {p1 .. p1}, Lcom/ss/android/downloadlib/h/e;->c(I)J

    move-result-wide v11

    .line 77
    iget-object v0, v9, Lcom/ss/android/downloadlib/addownload/e;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 78
    iget-object v0, v9, Lcom/ss/android/downloadlib/addownload/e;->b:Lcom/ss/android/downloadlib/addownload/b/e;

    iget-object v0, v0, Lcom/ss/android/downloadlib/addownload/b/e;->b:Lcom/ss/android/a/a/b/c;

    invoke-interface {v0}, Lcom/ss/android/a/a/b/c;->a()Ljava/lang/String;

    move-result-object v8

    .line 80
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/b/f;->a()Lcom/ss/android/downloadlib/addownload/b/f;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/ss/android/downloadlib/addownload/b/f;->b(Ljava/lang/String;)Lcom/ss/android/downloadad/a/b/b;

    move-result-object v0

    .line 81
    if-nez v0, :cond_4f

    .line 82
    new-instance v0, Lcom/ss/android/downloadad/a/b/b;

    iget-object v2, v9, Lcom/ss/android/downloadlib/addownload/e;->b:Lcom/ss/android/downloadlib/addownload/b/e;

    iget-object v2, v2, Lcom/ss/android/downloadlib/addownload/b/e;->b:Lcom/ss/android/a/a/b/c;

    iget-object v3, v9, Lcom/ss/android/downloadlib/addownload/e;->b:Lcom/ss/android/downloadlib/addownload/b/e;

    iget-object v3, v3, Lcom/ss/android/downloadlib/addownload/b/e;->c:Lcom/ss/android/a/a/b/b;

    iget-object v4, v9, Lcom/ss/android/downloadlib/addownload/e;->b:Lcom/ss/android/downloadlib/addownload/b/e;

    iget-object v4, v4, Lcom/ss/android/downloadlib/addownload/b/e;->d:Lcom/ss/android/a/a/b/a;

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/ss/android/downloadad/a/b/b;-><init>(Lcom/ss/android/a/a/b/c;Lcom/ss/android/a/a/b/b;Lcom/ss/android/a/a/b/a;I)V

    .line 83
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/b/f;->a()Lcom/ss/android/downloadlib/addownload/b/f;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/ss/android/downloadlib/addownload/b/f;->a(Lcom/ss/android/downloadad/a/b/b;)V

    move-object v13, v0

    goto :goto_50

    .line 81
    :cond_4f
    move-object v13, v0

    .line 85
    :goto_50
    invoke-virtual {v13, v1}, Lcom/ss/android/downloadad/a/b/b;->e(Z)V

    .line 86
    nop

    .line 87
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->l()Lcom/ss/android/a/a/a/m;

    move-result-object v0

    if-eqz v0, :cond_65

    .line 88
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->l()Lcom/ss/android/a/a/a/m;

    move-result-object v0

    invoke-virtual {v13}, Lcom/ss/android/downloadad/a/b/b;->b()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/ss/android/a/a/a/m;->a(J)V

    .line 90
    :cond_65
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/c/d;->a()Lcom/ss/android/downloadlib/addownload/c/d;

    move-result-object v0

    invoke-virtual {v13}, Lcom/ss/android/downloadad/a/b/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadlib/addownload/c/d;->a(Ljava/lang/String;)V

    .line 92
    invoke-static/range {p1 .. p1}, Lcom/ss/android/downloadlib/h/e;->d(I)Z

    move-result v0

    .line 94
    const-wide/16 v1, 0x0

    cmp-long v3, p4, v1

    if-lez v3, :cond_89

    .line 95
    move-object v0, p0

    move/from16 v1, p1

    move-object v2, v8

    move-wide/from16 v3, p4

    move-object v5, v13

    move-wide/from16 v6, p2

    move-object/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/ss/android/downloadlib/addownload/e;->a(ILjava/lang/String;JLcom/ss/android/downloadad/a/b/b;JLcom/ss/android/downloadlib/addownload/f$a;)V

    goto :goto_9f

    .line 96
    :cond_89
    if-eqz v0, :cond_9e

    .line 98
    new-instance v14, Lcom/ss/android/downloadlib/addownload/e$1;

    move-object v0, v14

    move-object v1, p0

    move/from16 v2, p1

    move-object v3, v8

    move-object v4, v13

    move-wide/from16 v5, p2

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/ss/android/downloadlib/addownload/e$1;-><init>(Lcom/ss/android/downloadlib/addownload/e;ILjava/lang/String;Lcom/ss/android/downloadad/a/b/b;JLcom/ss/android/downloadlib/addownload/f$a;)V

    invoke-direct {p0, v8, v13, v14}, Lcom/ss/android/downloadlib/addownload/e;->a(Ljava/lang/String;Lcom/ss/android/downloadad/a/b/b;Lcom/ss/android/downloadlib/addownload/f$b;)V

    goto :goto_9f

    .line 106
    :cond_9e
    move-wide v11, v1

    .line 111
    :goto_9f
    iget-object v0, v9, Lcom/ss/android/downloadlib/addownload/e;->a:Landroid/os/Handler;

    new-instance v1, Lcom/ss/android/downloadlib/addownload/e$2;

    invoke-direct {v1, p0, v10}, Lcom/ss/android/downloadlib/addownload/e$2;-><init>(Lcom/ss/android/downloadlib/addownload/e;Lcom/ss/android/downloadlib/addownload/f$a;)V

    invoke-virtual {v0, v1, v11, v12}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 122
    return-void

    .line 73
    :cond_aa
    :goto_aa
    invoke-interface/range {p6 .. p6}, Lcom/ss/android/downloadlib/addownload/f$a;->a()V

    .line 74
    return-void
.end method

.method public a(Lcom/ss/android/downloadlib/addownload/b/e;)V
    .registers 2

    .line 46
    iput-object p1, p0, Lcom/ss/android/downloadlib/addownload/e;->b:Lcom/ss/android/downloadlib/addownload/b/e;

    .line 47
    return-void
.end method

.method public a(Z)V
    .registers 3

    .line 58
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/e;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 59
    return-void
.end method

.method public a()Z
    .registers 2

    .line 54
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/e;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method
