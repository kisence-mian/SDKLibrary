.class public Lcom/bytedance/sdk/openadsdk/component/splash/c;
.super Ljava/lang/Object;
.source "SplashUtils.java"


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .registers 4

    .prologue
    .line 326
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    invoke-static {p0, v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/utils/k;->a(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static a(JZZLcom/bytedance/sdk/openadsdk/core/d/k;JLcom/bytedance/sdk/adnet/core/n;)V
    .registers 19

    .prologue
    .line 124
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long v4, v2, p0

    .line 125
    const-string v2, ""

    .line 126
    if-eqz p2, :cond_43

    .line 127
    if-eqz p3, :cond_40

    const-string v2, "load_video_success"

    :goto_e
    move-object v9, v2

    .line 131
    :goto_f
    const/4 v8, 0x0

    .line 132
    if-nez p3, :cond_22

    if-eqz p7, :cond_22

    move-object/from16 v0, p7

    iget-object v2, v0, Lcom/bytedance/sdk/adnet/core/n;->c:Lcom/bytedance/sdk/adnet/err/VAdError;

    if-eqz v2, :cond_22

    .line 133
    move-object/from16 v0, p7

    iget-object v2, v0, Lcom/bytedance/sdk/adnet/core/n;->c:Lcom/bytedance/sdk/adnet/err/VAdError;

    invoke-virtual {v2}, Lcom/bytedance/sdk/adnet/err/VAdError;->getMessage()Ljava/lang/String;

    move-result-object v8

    .line 135
    :cond_22
    if-eqz p2, :cond_4c

    move v2, p3

    move-object v3, p4

    move-wide/from16 v6, p5

    .line 136
    invoke-static/range {v2 .. v8}, Lcom/bytedance/sdk/openadsdk/utils/ah;->a(ZLcom/bytedance/sdk/openadsdk/core/d/k;JJLjava/lang/String;)Ljava/util/Map;

    move-result-object v2

    .line 137
    const-string v3, "splash_show_type"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v3

    const-string v4, "splash_ad"

    invoke-static {v3, p4, v4, v9, v2}, Lcom/bytedance/sdk/openadsdk/c/d;->m(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 145
    :goto_3f
    return-void

    .line 127
    :cond_40
    const-string v2, "load_video_error"

    goto :goto_e

    .line 129
    :cond_43
    if-eqz p3, :cond_49

    const-string v2, "download_video_image_success"

    :goto_47
    move-object v9, v2

    goto :goto_f

    :cond_49
    const-string v2, "download_video_image_fail"

    goto :goto_47

    :cond_4c
    move v2, p3

    move-object v3, p4

    move-wide/from16 v6, p5

    .line 140
    invoke-static/range {v2 .. v8}, Lcom/bytedance/sdk/openadsdk/utils/ah;->b(ZLcom/bytedance/sdk/openadsdk/core/d/k;JJLjava/lang/String;)Ljava/util/Map;

    move-result-object v2

    .line 141
    const-string v3, "splash_show_type"

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v3

    const-string v4, "splash_ad"

    invoke-static {v3, p4, v4, v9, v2}, Lcom/bytedance/sdk/openadsdk/c/d;->l(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_3f
.end method

.method public static a(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 314
    :try_start_0
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/splash/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->a()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_7} :catch_8

    .line 317
    :goto_7
    return-void

    .line 315
    :catch_8
    move-exception v0

    goto :goto_7
.end method

.method public static a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/AdSlot;)V
    .registers 4

    .prologue
    .line 302
    :try_start_0
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/splash/a;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->d(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_b} :catch_c

    .line 305
    :goto_b
    return-void

    .line 303
    :catch_c
    move-exception v0

    goto :goto_b
.end method

.method public static a(Lcom/bytedance/sdk/openadsdk/AdSlot;ZJJ)V
    .registers 10

    .prologue
    .line 83
    if-eqz p1, :cond_47

    const/4 v0, 0x2

    .line 85
    :goto_3
    :try_start_3
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 86
    const-string v2, "available_type"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 87
    const-string v0, "creative_check_duration"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 89
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/f/a/d;->b()Lcom/bytedance/sdk/openadsdk/f/a/d;

    move-result-object v0

    const/4 v2, 0x4

    .line 90
    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/f/a/d;->a(I)Lcom/bytedance/sdk/openadsdk/f/a/d;

    move-result-object v0

    .line 91
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/f/a/d;->c(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/f/a/d;

    move-result-object v0

    .line 92
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/f/a/d;->b(I)Lcom/bytedance/sdk/openadsdk/f/a/d;

    move-result-object v0

    .line 93
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/f/a/d;->b(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/f/a/d;

    move-result-object v0

    .line 95
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/f/a;->a()Lcom/bytedance/sdk/openadsdk/f/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/f/a;->n(Lcom/bytedance/sdk/openadsdk/f/a/d;)V
    :try_end_46
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_46} :catch_49

    .line 98
    :goto_46
    return-void

    .line 83
    :cond_47
    const/4 v0, 0x1

    goto :goto_3

    .line 96
    :catch_49
    move-exception v0

    goto :goto_46
.end method

.method public static a(Lcom/bytedance/sdk/openadsdk/core/d/a;)V
    .registers 14

    .prologue
    const/4 v7, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 153
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/component/splash/c;->b(Lcom/bytedance/sdk/openadsdk/core/d/a;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 250
    :cond_9
    :goto_9
    return-void

    .line 158
    :cond_a
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/a;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/bytedance/sdk/openadsdk/core/d/k;

    .line 159
    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/d/k;->P()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/ah;->d(Ljava/lang/String;)I

    move-result v5

    .line 160
    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/d/k;->z()Lcom/bytedance/sdk/openadsdk/core/d/r;

    move-result-object v6

    .line 165
    if-eqz v6, :cond_9

    .line 166
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 167
    invoke-virtual {v6}, Lcom/bytedance/sdk/openadsdk/core/d/r;->g()Ljava/lang/String;

    move-result-object v12

    .line 168
    if-nez v12, :cond_32

    .line 170
    const-wide/16 v5, -0x1

    invoke-static/range {v0 .. v7}, Lcom/bytedance/sdk/openadsdk/component/splash/c;->a(JZZLcom/bytedance/sdk/openadsdk/core/d/k;JLcom/bytedance/sdk/adnet/core/n;)V

    goto :goto_9

    .line 175
    :cond_32
    invoke-static {v4, v2}, Lcom/bytedance/sdk/openadsdk/component/splash/c;->a(Lcom/bytedance/sdk/openadsdk/core/d/k;I)V

    .line 177
    invoke-virtual {v6}, Lcom/bytedance/sdk/openadsdk/core/d/r;->j()Ljava/lang/String;

    move-result-object v2

    .line 178
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_43

    invoke-static {v12}, Lcom/bytedance/sdk/openadsdk/utils/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 179
    :cond_43
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/splash/a;

    move-result-object v3

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v8

    invoke-virtual {v3, v6, v8}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    .line 180
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v3, v2}, Lcom/bytedance/sdk/openadsdk/component/splash/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    .line 183
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->h()Lcom/bytedance/sdk/openadsdk/core/h/l;

    move-result-object v3

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/bytedance/sdk/openadsdk/core/h/l;->e(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_98

    .line 184
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/utils/w;->d(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_98

    .line 186
    if-eqz v2, :cond_9

    .line 187
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 188
    const-string v0, "preLoadVideo"

    const-string v1, "\u975ewifi\u73af\u5883\uff0c\u5df2\u7f13\u5b58\u76f8\u540curl\u7684\u89c6\u9891\u6587\u4ef6\u4e5f\u662f\u53ef\u4ee5\u64ad\u653e\u7684"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/splash/a;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/d/n;

    invoke-direct {v1, p0, v4, v7}, Lcom/bytedance/sdk/openadsdk/core/d/n;-><init>(Lcom/bytedance/sdk/openadsdk/core/d/a;Lcom/bytedance/sdk/openadsdk/core/d/k;[B)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->b(Lcom/bytedance/sdk/openadsdk/core/d/n;)V

    goto/16 :goto_9

    .line 199
    :cond_98
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/g/e;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/g/e;

    move-result-object v3

    new-instance v5, Lcom/bytedance/sdk/openadsdk/component/splash/c$1;

    move-object v7, v2

    move-object v8, p0

    move-object v9, v4

    move-wide v10, v0

    invoke-direct/range {v5 .. v11}, Lcom/bytedance/sdk/openadsdk/component/splash/c$1;-><init>(Ljava/io/File;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/d/a;Lcom/bytedance/sdk/openadsdk/core/d/k;J)V

    invoke-virtual {v3, v12, v5}, Lcom/bytedance/sdk/openadsdk/g/e;->a(Ljava/lang/String;Lcom/bytedance/sdk/adnet/b/b$a;)V

    goto/16 :goto_9
.end method

.method public static a(Lcom/bytedance/sdk/openadsdk/core/d/k;)V
    .registers 7

    .prologue
    .line 258
    if-eqz p0, :cond_8

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->x()Lcom/bytedance/sdk/openadsdk/core/d/k$a;

    move-result-object v0

    if-nez v0, :cond_9

    .line 280
    :cond_8
    :goto_8
    return-void

    .line 261
    :cond_9
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->aa()Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 263
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->F()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5d

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->F()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5d

    .line 264
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->F()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_27
    :goto_27
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/d/j;

    .line 265
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/j;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_27

    .line 266
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/g/e;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/g/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/g/e;->f()Lcom/bytedance/sdk/openadsdk/g/a/b;

    move-result-object v2

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/j;->a()Ljava/lang/String;

    move-result-object v3

    .line 267
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/g/a/b;->a()Lcom/bytedance/sdk/openadsdk/g/a/b$a;

    move-result-object v4

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/j;->b()I

    move-result v5

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/j;->c()I

    move-result v0

    .line 266
    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/bytedance/sdk/openadsdk/g/a/b;->a(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/g/a/b$b;II)V

    goto :goto_27

    .line 272
    :cond_5d
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->C()Lcom/bytedance/sdk/openadsdk/core/d/j;

    move-result-object v0

    .line 273
    if-eqz v0, :cond_8

    .line 274
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/j;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 277
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/g/e;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/g/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/g/e;->f()Lcom/bytedance/sdk/openadsdk/g/a/b;

    move-result-object v1

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/j;->a()Ljava/lang/String;

    move-result-object v2

    .line 278
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/g/a/b;->a()Lcom/bytedance/sdk/openadsdk/g/a/b$a;

    move-result-object v3

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/j;->b()I

    move-result v4

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/j;->c()I

    move-result v0

    .line 277
    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/bytedance/sdk/openadsdk/g/a/b;->a(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/g/a/b$b;II)V

    goto/16 :goto_8
.end method

.method public static a(Lcom/bytedance/sdk/openadsdk/core/d/k;I)V
    .registers 6

    .prologue
    .line 47
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/w;->c(Landroid/content/Context;)I

    move-result v0

    .line 49
    packed-switch v0, :pswitch_data_38

    .line 63
    const/4 v0, 0x0

    .line 66
    :goto_c
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 67
    const-string v2, "splash_show_type"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    const-string v2, "network_status"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v0

    const-string v2, "splash_ad"

    const-string v3, "network_type"

    invoke-static {v0, p0, v2, v3, v1}, Lcom/bytedance/sdk/openadsdk/c/d;->h(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 70
    return-void

    .line 51
    :pswitch_2f
    const/4 v0, 0x1

    .line 52
    goto :goto_c

    .line 54
    :pswitch_31
    const/4 v0, 0x2

    .line 55
    goto :goto_c

    .line 57
    :pswitch_33
    const/4 v0, 0x3

    .line 58
    goto :goto_c

    .line 60
    :pswitch_35
    const/4 v0, 0x4

    .line 61
    goto :goto_c

    .line 49
    nop

    :pswitch_data_38
    .packed-switch 0x2
        :pswitch_31
        :pswitch_33
        :pswitch_2f
        :pswitch_35
    .end packed-switch
.end method

.method public static a(Lcom/bytedance/sdk/openadsdk/f/a/d;Ljava/lang/String;)V
    .registers 5

    .prologue
    const/4 v2, -0x7

    .line 107
    .line 108
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/g;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 110
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/f/a;->a()Lcom/bytedance/sdk/openadsdk/f/a;

    move-result-object v1

    .line 111
    invoke-virtual {p0, v2}, Lcom/bytedance/sdk/openadsdk/f/a/d;->b(I)Lcom/bytedance/sdk/openadsdk/f/a/d;

    move-result-object v2

    .line 112
    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/openadsdk/f/a/d;->g(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/f/a/d;

    move-result-object v0

    .line 113
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/f/a/d;->i(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/f/a/d;

    move-result-object v0

    .line 110
    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/f/a;->f(Lcom/bytedance/sdk/openadsdk/f/a/d;)V

    .line 114
    return-void
.end method

.method public static a(Lcom/bytedance/sdk/openadsdk/core/d/n;)Z
    .registers 2

    .prologue
    .line 283
    if-eqz p0, :cond_a

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/n;->a()Lcom/bytedance/sdk/openadsdk/core/d/k;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static b(Lcom/bytedance/sdk/openadsdk/core/d/k;)I
    .registers 2

    .prologue
    .line 342
    if-eqz p0, :cond_b

    .line 343
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->P()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/ah;->d(Ljava/lang/String;)I

    move-result v0

    .line 345
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static b(Lcom/bytedance/sdk/openadsdk/core/d/a;)Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 294
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

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1e

    const/4 v0, 0x1

    :cond_1e
    return v0
.end method

.method public static b(Lcom/bytedance/sdk/openadsdk/core/d/n;)Z
    .registers 2

    .prologue
    .line 287
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/n;->a()Lcom/bytedance/sdk/openadsdk/core/d/k;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 288
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/n;->a()Lcom/bytedance/sdk/openadsdk/core/d/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->aa()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 289
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/n;->b()[B

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 290
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/n;->b()[B

    move-result-object v0

    array-length v0, v0

    if-eqz v0, :cond_1f

    const/4 v0, 0x1

    .line 287
    :goto_1e
    return v0

    .line 290
    :cond_1f
    const/4 v0, 0x0

    goto :goto_1e
.end method

.method public static c(Lcom/bytedance/sdk/openadsdk/core/d/a;)I
    .registers 2

    .prologue
    .line 349
    if-eqz p0, :cond_7

    .line 350
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/a;->b()I

    move-result v0

    .line 352
    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public static c(Lcom/bytedance/sdk/openadsdk/core/d/n;)I
    .registers 2

    .prologue
    .line 330
    if-eqz p0, :cond_15

    .line 331
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/n;->c()Lcom/bytedance/sdk/openadsdk/core/d/a;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/c;->c(Lcom/bytedance/sdk/openadsdk/core/d/a;)I

    move-result v0

    .line 332
    if-gtz v0, :cond_14

    .line 333
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/n;->a()Lcom/bytedance/sdk/openadsdk/core/d/k;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/c;->b(Lcom/bytedance/sdk/openadsdk/core/d/k;)I

    move-result v0

    .line 338
    :cond_14
    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method
