.class public Lcom/ss/android/socialbase/downloader/h/a;
.super Ljava/lang/Object;
.source "DownloadMonitorHelper.java"


# direct methods
.method private static a(Ljava/lang/String;Lcom/ss/android/socialbase/downloader/g/c;Lcom/ss/android/socialbase/downloader/e/a;I)Lorg/json/JSONObject;
    .registers 13

    .prologue
    .line 36
    const/4 v2, 0x0

    .line 38
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_6} :catch_1e5

    .line 39
    :try_start_6
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->i()Lcom/ss/android/socialbase/downloader/downloader/q;

    move-result-object v5

    .line 40
    const-string v4, ""

    .line 41
    const-string v0, ""

    .line 42
    const-string v3, ""

    .line 43
    const/4 v2, 0x0

    .line 44
    if-eqz v5, :cond_1f1

    .line 45
    invoke-interface {v5}, Lcom/ss/android/socialbase/downloader/downloader/q;->b()Ljava/lang/String;
    :try_end_16
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_16} :catch_1ec

    move-result-object v4

    .line 47
    :try_start_17
    invoke-static {v4}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 48
    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 49
    const-wide/16 v6, 0x64

    rem-long/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_2b} :catch_1ba
    .catch Lorg/json/JSONException; {:try_start_17 .. :try_end_2b} :catch_1ec

    move-result-object v0

    :cond_2c
    move-object v3, v0

    .line 54
    :goto_2d
    :try_start_2d
    invoke-interface {v5}, Lcom/ss/android/socialbase/downloader/downloader/q;->a()Ljava/lang/String;

    move-result-object v2

    .line 55
    invoke-interface {v5}, Lcom/ss/android/socialbase/downloader/downloader/q;->c()I

    move-result v0

    .line 58
    :goto_35
    const-string v5, "event_page"

    invoke-virtual {v1, v5, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 59
    const-string v5, "app_id"

    invoke-virtual {v1, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 60
    const-string v2, "device_id"

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 61
    const-string v2, "device_id_postfix"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 62
    const-string v2, "update_version"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 63
    const-string v0, "download_status"

    invoke-virtual {v1, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 64
    if-eqz p1, :cond_1a4

    .line 65
    const-string v0, "download_id"

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->g()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 66
    const-string v0, "name"

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 67
    const-string v0, "url"

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 68
    const-string v0, "download_time"

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->aw()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 69
    const-string v0, "cur_bytes"

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->Z()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 70
    const-string v0, "total_bytes"

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->ab()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 71
    const-string v0, "network_quality"

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->ad()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 72
    const-string v2, "only_wifi"

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->x()Z

    move-result v0

    if-eqz v0, :cond_1c1

    const/4 v0, 0x1

    :goto_9d
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 73
    const-string v2, "need_https_degrade"

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->ai()Z

    move-result v0

    if-eqz v0, :cond_1c4

    const/4 v0, 0x1

    :goto_a9
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 74
    const-string v2, "https_degrade_retry_used"

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->t()Z

    move-result v0

    if-eqz v0, :cond_1c7

    const/4 v0, 0x1

    :goto_b5
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 75
    const-string v0, "md5"

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->A()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 76
    const-string v0, "chunk_count"

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->aV()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 77
    const-string v2, "is_force"

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->Y()Z

    move-result v0

    if-eqz v0, :cond_1ca

    const/4 v0, 0x1

    :goto_d3
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 78
    const-string v0, "retry_count"

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->D()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 79
    const-string v0, "cur_retry_time"

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->al()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 80
    const-string v2, "need_retry_delay"

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->aj()Z

    move-result v0

    if-eqz v0, :cond_1cd

    const/4 v0, 0x1

    :goto_f1
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 81
    const-string v2, "need_reuse_first_connection"

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->S()Z

    move-result v0

    if-eqz v0, :cond_1d0

    const/4 v0, 0x1

    :goto_fd
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 82
    const-string v2, "default_http_service_backup"

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->o()Z

    move-result v0

    if-eqz v0, :cond_1d3

    const/4 v0, 0x1

    :goto_109
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 83
    const-string v0, "retry_delay_status"

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->aq()Lcom/ss/android/socialbase/downloader/b/j;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/b/j;->ordinal()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 84
    const-string v2, "backup_url_used"

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->J()Z

    move-result v0

    if-eqz v0, :cond_1d6

    const/4 v0, 0x1

    :goto_122
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 85
    const-string v0, "download_byte_error_retry_status"

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->aa()Lcom/ss/android/socialbase/downloader/b/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/b/b;->ordinal()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 86
    const-string v0, "forbidden_handler_status"

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->ar()Lcom/ss/android/socialbase/downloader/b/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/b/a;->ordinal()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 87
    const-string v2, "need_independent_process"

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->T()Z

    move-result v0

    if-eqz v0, :cond_1d9

    const/4 v0, 0x1

    :goto_148
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 88
    const-string v2, "head_connection_error_msg"

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1dc

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->c()Ljava/lang/String;

    move-result-object v0

    :goto_157
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 89
    const-string v2, "extra"

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->y()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1e0

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->y()Ljava/lang/String;

    move-result-object v0

    :goto_166
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 90
    const-string v2, "add_listener_to_same_task"

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->X()Z

    move-result v0

    if-eqz v0, :cond_1e3

    const/4 v0, 0x1

    :goto_172
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 92
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->aC()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_191

    .line 93
    const-string v0, "backup_url_count"

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->aC()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 94
    const-string v0, "cur_backup_url_index"

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->s()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 97
    :cond_191
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->H()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1a4

    .line 98
    const-string v0, "forbidden_urls"

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->H()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 101
    :cond_1a4
    if-eqz p2, :cond_1b8

    .line 102
    const-string v0, "error_code"

    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/e/a;->a()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 103
    const-string v0, "error_msg"

    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/e/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1b8
    move-object v0, v1

    .line 111
    :goto_1b9
    return-object v0

    .line 51
    :catch_1ba
    move-exception v2

    .line 52
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    move-object v3, v0

    goto/16 :goto_2d

    .line 72
    :cond_1c1
    const/4 v0, 0x0

    goto/16 :goto_9d

    .line 73
    :cond_1c4
    const/4 v0, 0x0

    goto/16 :goto_a9

    .line 74
    :cond_1c7
    const/4 v0, 0x0

    goto/16 :goto_b5

    .line 77
    :cond_1ca
    const/4 v0, 0x0

    goto/16 :goto_d3

    .line 80
    :cond_1cd
    const/4 v0, 0x0

    goto/16 :goto_f1

    .line 81
    :cond_1d0
    const/4 v0, 0x0

    goto/16 :goto_fd

    .line 82
    :cond_1d3
    const/4 v0, 0x0

    goto/16 :goto_109

    .line 84
    :cond_1d6
    const/4 v0, 0x0

    goto/16 :goto_122

    .line 87
    :cond_1d9
    const/4 v0, 0x0

    goto/16 :goto_148

    .line 88
    :cond_1dc
    const-string v0, ""

    goto/16 :goto_157

    .line 89
    :cond_1e0
    const-string v0, ""
    :try_end_1e2
    .catch Lorg/json/JSONException; {:try_start_2d .. :try_end_1e2} :catch_1ec

    goto :goto_166

    .line 90
    :cond_1e3
    const/4 v0, 0x0

    goto :goto_172

    .line 107
    :catch_1e5
    move-exception v0

    move-object v1, v0

    move-object v0, v2

    .line 108
    :goto_1e8
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1b9

    .line 107
    :catch_1ec
    move-exception v0

    move-object v8, v0

    move-object v0, v1

    move-object v1, v8

    goto :goto_1e8

    :cond_1f1
    move v8, v2

    move-object v2, v3

    move-object v3, v0

    move v0, v8

    goto/16 :goto_35
.end method

.method public static a(Lcom/ss/android/socialbase/downloader/d/x;Lcom/ss/android/socialbase/downloader/g/c;Lcom/ss/android/socialbase/downloader/e/a;I)V
    .registers 5

    .prologue
    .line 23
    if-nez p0, :cond_3

    .line 33
    :goto_2
    return-void

    .line 26
    :cond_3
    :try_start_3
    invoke-interface {p0}, Lcom/ss/android/socialbase/downloader/d/x;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lcom/ss/android/socialbase/downloader/h/a;->a(Ljava/lang/String;Lcom/ss/android/socialbase/downloader/g/c;Lcom/ss/android/socialbase/downloader/e/a;I)Lorg/json/JSONObject;

    move-result-object v0

    .line 27
    if-nez v0, :cond_12

    .line 28
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 30
    :cond_12
    invoke-interface {p0, v0}, Lcom/ss/android/socialbase/downloader/d/x;->a(Lorg/json/JSONObject;)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_15} :catch_16

    goto :goto_2

    .line 31
    :catch_16
    move-exception v0

    goto :goto_2
.end method
