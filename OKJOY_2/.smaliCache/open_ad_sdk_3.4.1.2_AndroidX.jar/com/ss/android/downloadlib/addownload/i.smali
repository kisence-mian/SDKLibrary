.class public Lcom/ss/android/downloadlib/addownload/i;
.super Ljava/lang/Object;
.source "DownloadInsideHelper.java"


# direct methods
.method public static a(Lcom/ss/android/downloadlib/addownload/b/e;ZLcom/ss/android/socialbase/appdownloader/f;)I
    .registers 13

    .line 69
    if-eqz p2, :cond_b0

    invoke-virtual {p2}, Lcom/ss/android/socialbase/appdownloader/f;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b0

    invoke-virtual {p2}, Lcom/ss/android/socialbase/appdownloader/f;->b()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_14

    goto/16 :goto_b0

    .line 76
    :cond_14
    :try_start_14
    invoke-virtual {p2}, Lcom/ss/android/socialbase/appdownloader/f;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/ss/android/downloadlib/addownload/i;->a(Lcom/ss/android/socialbase/appdownloader/f;Ljava/lang/String;)I

    move-result v0
    :try_end_1c
    .catchall {:try_start_14 .. :try_end_1c} :catchall_1d

    .line 80
    goto :goto_37

    .line 77
    :catchall_1d
    move-exception v0

    .line 78
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "redirectSavePathIfEmpty: throwable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TAG"

    invoke-static {v1, v0}, Lcom/ss/android/socialbase/downloader/c/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const/4 v0, 0x4

    .line 82
    :goto_37
    invoke-virtual {p2, v0}, Lcom/ss/android/socialbase/appdownloader/f;->a(I)V

    .line 84
    if-nez v0, :cond_44

    .line 86
    new-instance v0, Lcom/ss/android/downloadlib/d/a;

    invoke-direct {v0}, Lcom/ss/android/downloadlib/d/a;-><init>()V

    .line 87
    invoke-virtual {p2, v0}, Lcom/ss/android/socialbase/appdownloader/f;->a(Lcom/ss/android/socialbase/downloader/depend/m;)Lcom/ss/android/socialbase/appdownloader/f;

    .line 90
    :cond_44
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/d;->j()Lcom/ss/android/socialbase/appdownloader/d;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/ss/android/socialbase/appdownloader/d;->a(Lcom/ss/android/socialbase/appdownloader/f;)I

    move-result v0

    .line 92
    invoke-static {p0, v0}, Lcom/ss/android/downloadlib/addownload/i;->a(Lcom/ss/android/downloadlib/addownload/b/e;I)Lcom/ss/android/downloadad/a/b/b;

    move-result-object v1

    .line 93
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/b/f;->a()Lcom/ss/android/downloadlib/addownload/b/f;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/ss/android/downloadlib/addownload/b/f;->a(Lcom/ss/android/downloadad/a/b/b;)V

    .line 94
    invoke-virtual {v1, v0}, Lcom/ss/android/downloadad/a/b/b;->g(I)V

    .line 95
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/ss/android/downloadad/a/b/b;->h(J)V

    .line 96
    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/ss/android/downloadad/a/b/b;->i(J)V

    .line 98
    invoke-virtual {p2}, Lcom/ss/android/socialbase/appdownloader/f;->ad()Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/g/a;->a(Lorg/json/JSONObject;)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object v1

    .line 100
    invoke-static {p2, v1, v0}, Lcom/ss/android/downloadlib/addownload/i;->a(Lcom/ss/android/socialbase/appdownloader/f;Lcom/ss/android/socialbase/downloader/g/a;I)Z

    move-result v2

    if-nez v2, :cond_af

    iget-object v2, p0, Lcom/ss/android/downloadlib/addownload/b/e;->b:Lcom/ss/android/a/a/b/c;

    invoke-interface {v2}, Lcom/ss/android/a/a/b/c;->k()Z

    move-result v2

    if-eqz v2, :cond_af

    .line 101
    iget-object v2, p0, Lcom/ss/android/downloadlib/addownload/b/e;->b:Lcom/ss/android/a/a/b/c;

    invoke-interface {v2}, Lcom/ss/android/a/a/b/c;->H()Ljava/lang/String;

    move-result-object v2

    .line 102
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8e

    .line 103
    const-string v2, "download_start_toast_text"

    invoke-virtual {v1, v2}, Lcom/ss/android/socialbase/downloader/g/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 105
    :cond_8e
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9e

    .line 106
    if-eqz p1, :cond_99

    const-string p1, "\u5df2\u5f00\u59cb\u4e0b\u8f7d\uff0c\u53ef\u5728\"\u6211\u7684\"\u91cc\u67e5\u770b\u7ba1\u7406"

    goto :goto_9b

    :cond_99
    const-string p1, "\u5df2\u5f00\u59cb\u4e0b\u8f7d"

    :goto_9b
    move-object v2, p1

    move-object v7, v2

    goto :goto_9f

    .line 105
    :cond_9e
    move-object v7, v2

    .line 108
    :goto_9f
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->d()Lcom/ss/android/a/a/a/k;

    move-result-object v3

    const/4 v4, 0x2

    .line 109
    invoke-virtual {p2}, Lcom/ss/android/socialbase/appdownloader/f;->b()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/ss/android/downloadlib/addownload/b/e;->b:Lcom/ss/android/a/a/b/c;

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 108
    invoke-interface/range {v3 .. v9}, Lcom/ss/android/a/a/a/k;->a(ILandroid/content/Context;Lcom/ss/android/a/a/b/c;Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)V

    .line 112
    :cond_af
    return v0

    .line 70
    :cond_b0
    :goto_b0
    const/4 p0, 0x0

    return p0
.end method

.method private static a(Lcom/ss/android/socialbase/appdownloader/f;Ljava/lang/String;)I
    .registers 7

    .line 218
    invoke-virtual {p0}, Lcom/ss/android/socialbase/appdownloader/f;->ad()Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/g/a;->a(Lorg/json/JSONObject;)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object v0

    .line 219
    const-string v1, "download_dir"

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/g/a;->d(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 220
    if-eqz v1, :cond_c9

    const-string v2, "dir_name"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1e

    goto/16 :goto_c9

    .line 224
    :cond_1e
    invoke-virtual {p0}, Lcom/ss/android/socialbase/appdownloader/f;->d()Ljava/lang/String;

    move-result-object v1

    .line 225
    invoke-virtual {p0}, Lcom/ss/android/socialbase/appdownloader/f;->N()Ljava/lang/String;

    move-result-object v2

    .line 226
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 227
    invoke-virtual {p0}, Lcom/ss/android/socialbase/appdownloader/f;->n()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {p1, v1, v2, v3}, Lcom/ss/android/socialbase/appdownloader/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 229
    :cond_35
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0xff

    if-le v3, v4, :cond_46

    .line 230
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 232
    :cond_46
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4d

    .line 233
    move-object v1, v2

    .line 237
    :cond_4d
    invoke-virtual {p0}, Lcom/ss/android/socialbase/appdownloader/f;->e()Ljava/lang/String;

    move-result-object v3

    .line 238
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5b

    .line 239
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/c;->b()Ljava/lang/String;

    move-result-object v3

    .line 242
    :cond_5b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1, v0}, Lcom/ss/android/socialbase/appdownloader/c;->a(Ljava/lang/String;Lcom/ss/android/socialbase/downloader/g/a;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 245
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/d;->j()Lcom/ss/android/socialbase/appdownloader/d;

    move-result-object v3

    invoke-virtual {p0}, Lcom/ss/android/socialbase/appdownloader/f;->b()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4, p1}, Lcom/ss/android/socialbase/appdownloader/d;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p1

    .line 246
    if-eqz p1, :cond_a1

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isSavePathRedirected()Z

    move-result v3

    if-eqz v3, :cond_a1

    .line 248
    const/4 v0, 0x0

    .line 250
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getSavePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/ss/android/socialbase/appdownloader/f;->c(Ljava/lang/String;)Lcom/ss/android/socialbase/appdownloader/f;

    .line 253
    :try_start_92
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getDownloadSettingString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/ss/android/socialbase/appdownloader/f;->a(Lorg/json/JSONObject;)Lcom/ss/android/socialbase/appdownloader/f;
    :try_end_9e
    .catchall {:try_start_92 .. :try_end_9e} :catchall_9f

    goto :goto_a0

    .line 254
    :catchall_9f
    move-exception p0

    .line 255
    :goto_a0
    goto :goto_c8

    .line 256
    :cond_a1
    if-nez p1, :cond_c1

    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/d;->j()Lcom/ss/android/socialbase/appdownloader/d;

    move-result-object v3

    invoke-virtual {p0}, Lcom/ss/android/socialbase/appdownloader/f;->n()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lcom/ss/android/socialbase/appdownloader/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "application/vnd.android.package-archive"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c1

    .line 260
    invoke-static {v0}, Lcom/ss/android/socialbase/appdownloader/b;->a(Lcom/ss/android/socialbase/downloader/g/a;)I

    move-result v0

    .line 261
    if-nez v0, :cond_c8

    .line 262
    invoke-virtual {p0, v1}, Lcom/ss/android/socialbase/appdownloader/f;->c(Ljava/lang/String;)Lcom/ss/android/socialbase/appdownloader/f;

    goto :goto_c8

    .line 264
    :cond_c1
    if-eqz p1, :cond_c6

    .line 266
    const/16 v0, 0x8

    goto :goto_c8

    .line 269
    :cond_c6
    const/16 v0, 0x9

    .line 271
    :cond_c8
    :goto_c8
    return v0

    .line 221
    :cond_c9
    :goto_c9
    const/4 p0, -0x1

    return p0
.end method

.method private static a(Lcom/ss/android/downloadlib/addownload/b/e;I)Lcom/ss/android/downloadad/a/b/b;
    .registers 6

    .line 117
    new-instance v0, Lcom/ss/android/downloadad/a/b/b;

    iget-object v1, p0, Lcom/ss/android/downloadlib/addownload/b/e;->b:Lcom/ss/android/a/a/b/c;

    iget-object v2, p0, Lcom/ss/android/downloadlib/addownload/b/e;->c:Lcom/ss/android/a/a/b/b;

    iget-object v3, p0, Lcom/ss/android/downloadlib/addownload/b/e;->d:Lcom/ss/android/a/a/b/a;

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/ss/android/downloadad/a/b/b;-><init>(Lcom/ss/android/a/a/b/c;Lcom/ss/android/a/a/b/b;Lcom/ss/android/a/a/b/a;I)V

    .line 118
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/g/a;->a(I)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object p1

    const-string v1, "download_event_opt"

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;I)I

    move-result p1

    if-le p1, v2, :cond_3a

    .line 120
    :try_start_18
    iget-object p0, p0, Lcom/ss/android/downloadlib/addownload/b/e;->b:Lcom/ss/android/a/a/b/c;

    invoke-interface {p0}, Lcom/ss/android/a/a/b/c;->v()Ljava/lang/String;

    move-result-object p0

    .line 121
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_38

    .line 122
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->a()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 123
    if-eqz p0, :cond_34

    goto :goto_35

    :cond_34
    move v2, v1

    :goto_35
    invoke-virtual {v0, v2}, Lcom/ss/android/downloadad/a/b/b;->h(Z)V
    :try_end_38
    .catchall {:try_start_18 .. :try_end_38} :catchall_39

    .line 127
    :cond_38
    goto :goto_3a

    .line 125
    :catchall_39
    move-exception p0

    .line 129
    :cond_3a
    :goto_3a
    return-object v0
.end method

.method public static a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Ljava/lang/String;
    .registers 3

    .line 191
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 192
    return-object v0

    .line 195
    :cond_4
    :try_start_4
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getExtra()Ljava/lang/String;

    move-result-object p0

    .line 196
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 197
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 198
    const-string p0, "notification_jump_url"

    invoke-virtual {v1, p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_19} :catch_1b

    return-object p0

    .line 202
    :cond_1a
    goto :goto_1f

    .line 200
    :catch_1b
    move-exception p0

    .line 201
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 204
    :goto_1f
    return-object v0
.end method

.method public static a(I)Z
    .registers 2

    .line 43
    const/4 v0, 0x1

    if-eqz p0, :cond_7

    if-ne p0, v0, :cond_6

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :cond_7
    :goto_7
    return v0
.end method

.method public static a(Lcom/ss/android/a/a/b/c;)Z
    .registers 3

    .line 55
    invoke-interface {p0}, Lcom/ss/android/a/a/b/c;->t()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_12

    instance-of v0, p0, Lcom/ss/android/downloadad/a/a/c;

    if-eqz v0, :cond_12

    invoke-interface {p0}, Lcom/ss/android/a/a/b/c;->A()I

    move-result p0

    if-ne p0, v1, :cond_12

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    return v1
.end method

.method private static a(Lcom/ss/android/socialbase/appdownloader/f;Lcom/ss/android/socialbase/downloader/g/a;I)Z
    .registers 13

    .line 136
    nop

    .line 137
    const-string p0, "ah_plans"

    invoke-virtual {p1, p0}, Lcom/ss/android/socialbase/downloader/g/a;->e(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    .line 138
    const/4 v0, 0x0

    if-eqz p0, :cond_b8

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-nez v1, :cond_12

    goto/16 :goto_b8

    .line 141
    :cond_12
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    .line 143
    const/4 v2, 0x0

    move v3, v0

    move-object v4, v2

    :goto_19
    const/4 v5, 0x1

    if-ge v3, v1, :cond_9b

    .line 144
    invoke-virtual {p0, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 145
    if-eqz v6, :cond_97

    .line 146
    const-string v7, "type"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 148
    const/4 v8, -0x1

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v9

    packed-switch v9, :pswitch_data_ba

    :cond_30
    goto :goto_76

    :pswitch_31
    const-string v9, "plan_g"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_30

    const/4 v8, 0x5

    goto :goto_76

    :pswitch_3b
    const-string v9, "plan_f"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_30

    const/4 v8, 0x3

    goto :goto_76

    :pswitch_45
    const-string v9, "plan_e"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_30

    const/4 v8, 0x2

    goto :goto_76

    :pswitch_4f
    const-string v9, "plan_d"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_30

    const/4 v8, 0x4

    goto :goto_76

    :pswitch_59
    const-string v9, "plan_c"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_30

    const/4 v8, 0x6

    goto :goto_76

    :pswitch_63
    const-string v9, "plan_b"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_30

    move v8, v5

    goto :goto_76

    :pswitch_6d
    const-string v9, "plan_a"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_30

    move v8, v0

    :goto_76
    packed-switch v8, :pswitch_data_cc

    goto :goto_97

    .line 171
    :pswitch_7a
    move-object v4, v6

    goto :goto_97

    .line 165
    :pswitch_7c
    invoke-static {v6, p1}, Lcom/ss/android/socialbase/appdownloader/b;->b(Lorg/json/JSONObject;Lcom/ss/android/socialbase/downloader/g/a;)Lcom/ss/android/socialbase/appdownloader/a;

    move-result-object v6

    .line 166
    iget v6, v6, Lcom/ss/android/socialbase/appdownloader/a;->b:I

    if-nez v6, :cond_97

    .line 167
    goto :goto_9b

    .line 159
    :pswitch_85
    invoke-static {v6}, Lcom/ss/android/socialbase/appdownloader/b;->c(Lorg/json/JSONObject;)Lcom/ss/android/socialbase/appdownloader/a;

    move-result-object v6

    .line 160
    iget v6, v6, Lcom/ss/android/socialbase/appdownloader/a;->b:I

    if-nez v6, :cond_97

    .line 161
    goto :goto_9b

    .line 153
    :pswitch_8e
    invoke-static {v6, p1}, Lcom/ss/android/socialbase/appdownloader/b;->a(Lorg/json/JSONObject;Lcom/ss/android/socialbase/downloader/g/a;)Lcom/ss/android/socialbase/appdownloader/a;

    move-result-object v6

    .line 154
    iget v6, v6, Lcom/ss/android/socialbase/appdownloader/a;->b:I

    if-nez v6, :cond_97

    .line 155
    goto :goto_9b

    .line 143
    :cond_97
    :goto_97
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_19

    .line 176
    :cond_9b
    :goto_9b
    if-eqz v4, :cond_b7

    .line 177
    const-string p0, "show_unknown_source_on_startup"

    invoke-virtual {v4, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    if-ne p0, v5, :cond_a6

    goto :goto_a7

    :cond_a6
    move v5, v0

    .line 178
    :goto_a7
    if-eqz v5, :cond_b7

    .line 179
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->L()Landroid/content/Context;

    move-result-object p0

    new-instance p1, Lcom/ss/android/socialbase/appdownloader/a;

    invoke-direct {p1}, Lcom/ss/android/socialbase/appdownloader/a;-><init>()V

    invoke-static {p0, v2, v4, p2, p1}, Lcom/ss/android/socialbase/appdownloader/b;->a(Landroid/content/Context;Landroid/content/Intent;Lorg/json/JSONObject;ILcom/ss/android/socialbase/appdownloader/a;)Z

    move-result p0

    return p0

    .line 182
    :cond_b7
    return v0

    .line 139
    :cond_b8
    :goto_b8
    return v0

    nop

    :pswitch_data_ba
    .packed-switch -0x3ac18f35
        :pswitch_6d
        :pswitch_63
        :pswitch_59
        :pswitch_4f
        :pswitch_45
        :pswitch_3b
        :pswitch_31
    .end packed-switch

    :pswitch_data_cc
    .packed-switch 0x0
        :pswitch_8e
        :pswitch_8e
        :pswitch_8e
        :pswitch_8e
        :pswitch_85
        :pswitch_7c
        :pswitch_7a
    .end packed-switch
.end method

.method public static b(I)Z
    .registers 3

    .line 47
    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_8

    if-ne p0, v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :cond_8
    :goto_8
    return v0
.end method

.method public static b(Lcom/ss/android/a/a/b/c;)Z
    .registers 2

    .line 62
    if-eqz p0, :cond_b

    invoke-interface {p0}, Lcom/ss/android/a/a/b/c;->A()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_b

    const/4 p0, 0x1

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return p0
.end method
