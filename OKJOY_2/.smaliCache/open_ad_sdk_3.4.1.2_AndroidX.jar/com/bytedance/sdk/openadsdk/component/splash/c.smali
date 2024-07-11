.class public Lcom/bytedance/sdk/openadsdk/component/splash/c;
.super Ljava/lang/Object;
.source "SplashUtils.java"


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .registers 6

    .line 333
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->h()Lcom/bytedance/sdk/openadsdk/core/h/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/h/h;->B()I

    move-result v0

    .line 334
    const-string v1, "splashLoadAd"

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1b

    .line 336
    const-string v0, "\u89c6\u9891\u5b58\u50a8\u4f7f\u7528\u5185\u90e8\u5b58\u50a8"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    invoke-static {p0, v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/utils/l;->b(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0

    .line 340
    :cond_1b
    const-string v0, "\u89c6\u9891\u5b58\u50a8\u4f7f\u7528\u5916\u5b58\u50a8"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    invoke-static {p0, v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/utils/l;->a(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static a(JZZLcom/bytedance/sdk/openadsdk/core/d/l;JLcom/bytedance/sdk/adnet/core/m;)V
    .registers 19

    .line 126
    move-object v7, p4

    move-object/from16 v0, p7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    sub-long v2, v1, p0

    .line 127
    nop

    .line 128
    if-eqz p2, :cond_15

    .line 129
    if-eqz p3, :cond_11

    const-string v1, "load_video_success"

    goto :goto_13

    :cond_11
    const-string v1, "load_video_error"

    :goto_13
    move-object v8, v1

    goto :goto_1d

    .line 131
    :cond_15
    if-eqz p3, :cond_1a

    const-string v1, "download_video_image_success"

    goto :goto_1c

    :cond_1a
    const-string v1, "download_video_image_fail"

    :goto_1c
    move-object v8, v1

    .line 133
    :goto_1d
    const/4 v1, 0x0

    .line 134
    if-nez p3, :cond_2e

    if-eqz v0, :cond_2e

    iget-object v4, v0, Lcom/bytedance/sdk/adnet/core/m;->c:Lcom/bytedance/sdk/adnet/err/VAdError;

    if-eqz v4, :cond_2e

    .line 135
    iget-object v0, v0, Lcom/bytedance/sdk/adnet/core/m;->c:Lcom/bytedance/sdk/adnet/err/VAdError;

    invoke-virtual {v0}, Lcom/bytedance/sdk/adnet/err/VAdError;->getMessage()Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    goto :goto_2f

    .line 137
    :cond_2e
    move-object v6, v1

    :goto_2f
    const-string v9, "splash_ad"

    const-string v10, "splash_show_type"

    if-eqz p2, :cond_4d

    .line 138
    move v0, p3

    move-object v1, p4

    move-wide/from16 v4, p5

    invoke-static/range {v0 .. v6}, Lcom/bytedance/sdk/openadsdk/utils/aj;->a(ZLcom/bytedance/sdk/openadsdk/core/d/l;JJLjava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 139
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p4, v9, v8, v0}, Lcom/bytedance/sdk/openadsdk/c/d;->f(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 141
    goto :goto_64

    .line 142
    :cond_4d
    move v0, p3

    move-object v1, p4

    move-wide/from16 v4, p5

    invoke-static/range {v0 .. v6}, Lcom/bytedance/sdk/openadsdk/utils/aj;->b(ZLcom/bytedance/sdk/openadsdk/core/d/l;JJLjava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 143
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p4, v9, v8, v0}, Lcom/bytedance/sdk/openadsdk/c/d;->e(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 147
    :goto_64
    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .registers 1

    .line 320
    :try_start_0
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/splash/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->a()V
    :try_end_7
    .catchall {:try_start_0 .. :try_end_7} :catchall_8

    .line 322
    goto :goto_9

    .line 321
    :catchall_8
    move-exception p0

    .line 323
    :goto_9
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/AdSlot;)V
    .registers 2

    .line 308
    :try_start_0
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/splash/a;

    move-result-object p0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->d(Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_0 .. :try_end_b} :catchall_c

    .line 310
    goto :goto_d

    .line 309
    :catchall_c
    move-exception p0

    .line 311
    :goto_d
    return-void
.end method

.method public static a(Lcom/bytedance/sdk/openadsdk/AdSlot;ZJJ)V
    .registers 8

    .line 85
    if-eqz p1, :cond_4

    const/4 p1, 0x2

    goto :goto_5

    :cond_4
    const/4 p1, 0x1

    .line 87
    :goto_5
    :try_start_5
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 88
    const-string v1, "available_type"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 89
    const-string p1, "creative_check_duration"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    invoke-virtual {v0, p1, p4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 91
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/g/a/c;->b()Lcom/bytedance/sdk/openadsdk/g/a/c;

    move-result-object p1

    const/4 p4, 0x4

    .line 92
    invoke-virtual {p1, p4}, Lcom/bytedance/sdk/openadsdk/g/a/c;->a(I)Lcom/bytedance/sdk/openadsdk/g/a/c;

    move-result-object p1

    .line 93
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/bytedance/sdk/openadsdk/g/a/c;->c(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/g/a/c;

    move-result-object p0

    long-to-int p1, p2

    .line 94
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/g/a/c;->b(I)Lcom/bytedance/sdk/openadsdk/g/a/c;

    move-result-object p0

    .line 95
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/g/a/c;->b(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/g/a/c;

    move-result-object p0

    .line 97
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/g/a;->a()Lcom/bytedance/sdk/openadsdk/g/a;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/bytedance/sdk/openadsdk/g/a;->n(Lcom/bytedance/sdk/openadsdk/g/a/c;)V
    :try_end_41
    .catchall {:try_start_5 .. :try_end_41} :catchall_42

    .line 99
    goto :goto_43

    .line 98
    :catchall_42
    move-exception p0

    .line 100
    :goto_43
    return-void
.end method

.method public static a(Lcom/bytedance/sdk/openadsdk/core/d/a;)V
    .registers 11

    .line 155
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/component/splash/c;->b(Lcom/bytedance/sdk/openadsdk/core/d/a;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 156
    return-void

    .line 160
    :cond_7
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/a;->c()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/bytedance/sdk/openadsdk/core/d/l;

    .line 161
    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/core/d/l;->aj()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/aj;->d(Ljava/lang/String;)I

    move-result v0

    .line 162
    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/core/d/l;->R()Lcom/bytedance/sdk/openadsdk/core/d/t;

    move-result-object v1

    .line 164
    nop

    .line 167
    if-eqz v1, :cond_b7

    .line 168
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 169
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/t;->i()Ljava/lang/String;

    move-result-object v8

    .line 170
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 172
    const/4 v3, 0x1

    const/4 v4, 0x0

    const-wide/16 v8, -0x1

    const/4 p0, 0x0

    move-wide v1, v6

    move-wide v6, v8

    move-object v8, p0

    invoke-static/range {v1 .. v8}, Lcom/bytedance/sdk/openadsdk/component/splash/c;->a(JZZLcom/bytedance/sdk/openadsdk/core/d/l;JLcom/bytedance/sdk/adnet/core/m;)V

    .line 173
    return-void

    .line 177
    :cond_3c
    const/4 v2, 0x1

    invoke-static {v5, v2}, Lcom/bytedance/sdk/openadsdk/component/splash/c;->a(Lcom/bytedance/sdk/openadsdk/core/d/l;I)V

    .line 179
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/t;->l()Ljava/lang/String;

    move-result-object v1

    .line 180
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4e

    invoke-static {v8}, Lcom/bytedance/sdk/openadsdk/utils/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_4e
    move-object v3, v1

    .line 181
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/splash/a;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v4

    invoke-virtual {v1, v2, v4}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 182
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1, v3}, Lcom/bytedance/sdk/openadsdk/component/splash/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 185
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->h()Lcom/bytedance/sdk/openadsdk/core/h/h;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/h/h;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a4

    .line 186
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/x;->d(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_a4

    .line 188
    if-eqz v3, :cond_a3

    .line 189
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_a3

    .line 190
    const-string v0, "preLoadVideo"

    const-string v1, "\u975ewifi\u73af\u5883\uff0c\u5df2\u7f13\u5b58\u76f8\u540curl\u7684\u89c6\u9891\u6587\u4ef6\u4e5f\u662f\u53ef\u4ee5\u64ad\u653e\u7684"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/splash/a;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/d/p;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v5, v2}, Lcom/bytedance/sdk/openadsdk/core/d/p;-><init>(Lcom/bytedance/sdk/openadsdk/core/d/a;Lcom/bytedance/sdk/openadsdk/core/d/l;[B)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->b(Lcom/bytedance/sdk/openadsdk/core/d/p;)V

    .line 194
    :cond_a3
    return-void

    .line 200
    :cond_a4
    nop

    .line 201
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/h/d;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/h/d;

    move-result-object v0

    new-instance v9, Lcom/bytedance/sdk/openadsdk/component/splash/c$1;

    move-object v1, v9

    move-object v4, p0

    invoke-direct/range {v1 .. v7}, Lcom/bytedance/sdk/openadsdk/component/splash/c$1;-><init>(Ljava/io/File;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/d/a;Lcom/bytedance/sdk/openadsdk/core/d/l;J)V

    invoke-virtual {v0, v8, v9}, Lcom/bytedance/sdk/openadsdk/h/d;->a(Ljava/lang/String;Lcom/bytedance/sdk/adnet/b/b$a;)V

    .line 256
    :cond_b7
    return-void
.end method

.method public static a(Lcom/bytedance/sdk/openadsdk/core/d/l;)V
    .registers 10

    .line 264
    if-eqz p0, :cond_91

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->M()Lcom/bytedance/sdk/openadsdk/core/d/l$a;

    move-result-object v0

    if-nez v0, :cond_a

    goto/16 :goto_91

    .line 267
    :cond_a
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->aB()Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 269
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->Z()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5f

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->Z()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5f

    .line 270
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->Z()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_28
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/core/d/k;

    .line 271
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/k;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5e

    .line 272
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/h/d;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/h/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/h/d;->f()Lcom/bytedance/sdk/openadsdk/h/a/b;

    move-result-object v3

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/k;->a()Ljava/lang/String;

    move-result-object v4

    .line 273
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/h/a/b;->a()Lcom/bytedance/sdk/openadsdk/h/a/b$a;

    move-result-object v5

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/k;->b()I

    move-result v6

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/k;->c()I

    move-result v7

    const/4 v8, 0x1

    .line 272
    invoke-virtual/range {v3 .. v8}, Lcom/bytedance/sdk/openadsdk/h/a/b;->a(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/h/a/b$b;IIZ)V

    .line 275
    :cond_5e
    goto :goto_28

    .line 278
    :cond_5f
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->U()Lcom/bytedance/sdk/openadsdk/core/d/k;

    move-result-object p0

    .line 279
    if-eqz p0, :cond_90

    .line 280
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_70

    .line 281
    return-void

    .line 283
    :cond_70
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/h/d;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/h/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/h/d;->f()Lcom/bytedance/sdk/openadsdk/h/a/b;

    move-result-object v1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->a()Ljava/lang/String;

    move-result-object v2

    .line 284
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/h/a/b;->a()Lcom/bytedance/sdk/openadsdk/h/a/b$a;

    move-result-object v3

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->b()I

    move-result v4

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->c()I

    move-result v5

    const/4 v6, 0x1

    .line 283
    invoke-virtual/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/h/a/b;->a(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/h/a/b$b;IIZ)V

    .line 286
    :cond_90
    return-void

    .line 265
    :cond_91
    :goto_91
    return-void
.end method

.method public static a(Lcom/bytedance/sdk/openadsdk/core/d/l;I)V
    .registers 5

    .line 49
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/x;->c(Landroid/content/Context;)I

    move-result v0

    .line 51
    packed-switch v0, :pswitch_data_38

    .line 65
    const/4 v0, 0x0

    goto :goto_15

    .line 62
    :pswitch_d
    const/4 v0, 0x4

    .line 63
    goto :goto_15

    .line 53
    :pswitch_f
    const/4 v0, 0x1

    .line 54
    goto :goto_15

    .line 59
    :pswitch_11
    const/4 v0, 0x3

    .line 60
    goto :goto_15

    .line 56
    :pswitch_13
    const/4 v0, 0x2

    .line 57
    nop

    .line 68
    :goto_15
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 69
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v2, "splash_show_type"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "network_status"

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object p1

    const-string v0, "splash_ad"

    const-string v2, "network_type"

    invoke-static {p1, p0, v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/c/d;->b(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 72
    return-void

    :pswitch_data_38
    .packed-switch 0x2
        :pswitch_13
        :pswitch_11
        :pswitch_f
        :pswitch_d
    .end packed-switch
.end method

.method public static a(Lcom/bytedance/sdk/openadsdk/g/a/c;Ljava/lang/String;)V
    .registers 5

    .line 109
    nop

    .line 110
    const/4 v0, -0x7

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/h;->a(I)Ljava/lang/String;

    move-result-object v1

    .line 112
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/g/a;->a()Lcom/bytedance/sdk/openadsdk/g/a;

    move-result-object v2

    .line 113
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/g/a/c;->b(I)Lcom/bytedance/sdk/openadsdk/g/a/c;

    move-result-object p0

    .line 114
    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/openadsdk/g/a/c;->g(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/g/a/c;

    move-result-object p0

    .line 115
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/g/a/c;->i(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/g/a/c;

    move-result-object p0

    .line 112
    invoke-virtual {v2, p0}, Lcom/bytedance/sdk/openadsdk/g/a;->f(Lcom/bytedance/sdk/openadsdk/g/a/c;)V

    .line 116
    return-void
.end method

.method public static a(Ljava/io/File;)V
    .registers 1

    .line 372
    if-nez p0, :cond_3

    .line 373
    return-void

    .line 376
    :cond_3
    :try_start_3
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/l;->b(Ljava/io/File;)V
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_7

    .line 379
    goto :goto_8

    .line 377
    :catchall_7
    move-exception p0

    .line 380
    :goto_8
    return-void
.end method

.method public static a(Lcom/bytedance/sdk/openadsdk/core/d/p;)Z
    .registers 1

    .line 289
    if-eqz p0, :cond_a

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/p;->a()Lcom/bytedance/sdk/openadsdk/core/d/l;

    move-result-object p0

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public static b(Lcom/bytedance/sdk/openadsdk/core/d/l;)I
    .registers 1

    .line 358
    if-eqz p0, :cond_b

    .line 359
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->aj()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/aj;->d(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 361
    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method public static b(Lcom/bytedance/sdk/openadsdk/core/d/a;)Z
    .registers 3

    .line 300
    const/4 v0, 0x0

    if-eqz p0, :cond_1e

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/a;->c()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1e

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/a;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1e

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/a;->c()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1e

    const/4 v0, 0x1

    :cond_1e
    return v0
.end method

.method public static b(Lcom/bytedance/sdk/openadsdk/core/d/p;)Z
    .registers 2

    .line 293
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/p;->a()Lcom/bytedance/sdk/openadsdk/core/d/l;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 294
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/p;->a()Lcom/bytedance/sdk/openadsdk/core/d/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->aB()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 295
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/p;->b()[B

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 296
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/p;->b()[B

    move-result-object p0

    array-length p0, p0

    if-eqz p0, :cond_1f

    const/4 p0, 0x1

    goto :goto_20

    :cond_1f
    const/4 p0, 0x0

    .line 293
    :goto_20
    return p0
.end method

.method public static c(Lcom/bytedance/sdk/openadsdk/core/d/a;)I
    .registers 1

    .line 365
    if-eqz p0, :cond_7

    .line 366
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/a;->b()I

    move-result p0

    return p0

    .line 368
    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method public static c(Lcom/bytedance/sdk/openadsdk/core/d/p;)I
    .registers 2

    .line 346
    if-eqz p0, :cond_15

    .line 347
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/p;->c()Lcom/bytedance/sdk/openadsdk/core/d/a;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/c;->c(Lcom/bytedance/sdk/openadsdk/core/d/a;)I

    move-result v0

    .line 348
    if-gtz v0, :cond_14

    .line 349
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/p;->a()Lcom/bytedance/sdk/openadsdk/core/d/l;

    move-result-object p0

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/component/splash/c;->b(Lcom/bytedance/sdk/openadsdk/core/d/l;)I

    move-result v0

    .line 351
    :cond_14
    return v0

    .line 354
    :cond_15
    const/4 p0, 0x0

    return p0
.end method
