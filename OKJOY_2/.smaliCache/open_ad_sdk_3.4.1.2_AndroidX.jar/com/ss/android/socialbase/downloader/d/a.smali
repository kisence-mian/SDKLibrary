.class public Lcom/ss/android/socialbase/downloader/d/a;
.super Ljava/lang/Object;
.source "DownloadMonitorHelper.java"


# direct methods
.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 171
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 172
    invoke-static {p0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 173
    const-wide/16 v2, 0x64

    rem-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_17

    return-object p0

    .line 177
    :cond_16
    goto :goto_1b

    .line 175
    :catch_17
    move-exception p0

    .line 176
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 178
    :goto_1b
    const-string p0, ""

    return-object p0
.end method

.method private static a(Ljava/lang/String;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/downloader/exception/BaseException;I)Lorg/json/JSONObject;
    .registers 13

    .line 182
    const-string v0, "setting_tag"

    .line 184
    const/4 v1, 0x0

    :try_start_3
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_8} :catch_241

    .line 185
    :try_start_8
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->k()Lcom/ss/android/socialbase/downloader/downloader/o;

    move-result-object v1
    :try_end_c
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_c} :catch_23e

    .line 186
    nop

    .line 187
    nop

    .line 188
    nop

    .line 189
    nop

    .line 190
    const-string v3, ""

    const/4 v4, 0x0

    if-eqz v1, :cond_26

    .line 191
    :try_start_15
    invoke-interface {v1}, Lcom/ss/android/socialbase/downloader/downloader/o;->b()Ljava/lang/String;

    move-result-object v5

    .line 192
    invoke-static {v5}, Lcom/ss/android/socialbase/downloader/d/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 193
    invoke-interface {v1}, Lcom/ss/android/socialbase/downloader/downloader/o;->a()Ljava/lang/String;

    move-result-object v7

    .line 194
    invoke-interface {v1}, Lcom/ss/android/socialbase/downloader/downloader/o;->c()I

    move-result v1

    goto :goto_2a

    .line 190
    :cond_26
    move-object v5, v3

    move-object v6, v5

    move-object v7, v6

    move v1, v4

    .line 197
    :goto_2a
    const-string v8, "event_page"

    invoke-virtual {v2, v8, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 198
    const-string p0, "app_id"

    invoke-virtual {v2, p0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 199
    const-string p0, "device_id"

    invoke-virtual {v2, p0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 200
    const-string p0, "device_id_postfix"

    invoke-virtual {v2, p0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 201
    const-string p0, "update_version"

    invoke-virtual {v2, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 202
    const-string p0, "download_status"

    invoke-virtual {v2, p0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 203
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result p0

    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/g/a;->a(I)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/g/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 205
    if-eqz p1, :cond_227

    .line 206
    const-string p0, "download_id"

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result p3

    invoke-virtual {v2, p0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 207
    const-string p0, "name"

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v2, p0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 208
    const-string p0, "url"

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v2, p0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 209
    const-string p0, "download_time"

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getDownloadTime()J

    move-result-wide v0

    invoke-virtual {v2, p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 210
    const-string p0, "cur_bytes"

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getCurBytes()J

    move-result-wide v0

    invoke-virtual {v2, p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 211
    const-string p0, "total_bytes"

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTotalBytes()J

    move-result-wide v0

    invoke-virtual {v2, p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 212
    const-string p0, "network_quality"

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getNetworkQuality()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v2, p0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 213
    const-string p0, "only_wifi"

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isOnlyWifi()Z

    move-result p3

    const/4 v0, 0x1

    if-eqz p3, :cond_a3

    move p3, v0

    goto :goto_a4

    :cond_a3
    move p3, v4

    :goto_a4
    invoke-virtual {v2, p0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 214
    const-string p0, "need_https_degrade"

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isNeedHttpsToHttpRetry()Z

    move-result p3

    if-eqz p3, :cond_b1

    move p3, v0

    goto :goto_b2

    :cond_b1
    move p3, v4

    :goto_b2
    invoke-virtual {v2, p0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 215
    const-string p0, "https_degrade_retry_used"

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isHttpsToHttpRetryUsed()Z

    move-result p3

    if-eqz p3, :cond_bf

    move p3, v0

    goto :goto_c0

    :cond_bf
    move p3, v4

    :goto_c0
    invoke-virtual {v2, p0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 216
    const-string p0, "md5"

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getMd5()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_cd

    move-object p3, v3

    goto :goto_d1

    :cond_cd
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getMd5()Ljava/lang/String;

    move-result-object p3

    :goto_d1
    invoke-virtual {v2, p0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 217
    const-string p0, "chunk_count"

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getChunkCount()I

    move-result p3

    invoke-virtual {v2, p0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 218
    const-string p0, "is_force"

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isForce()Z

    move-result p3

    if-eqz p3, :cond_e7

    move p3, v0

    goto :goto_e8

    :cond_e7
    move p3, v4

    :goto_e8
    invoke-virtual {v2, p0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 219
    const-string p0, "retry_count"

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getRetryCount()I

    move-result p3

    invoke-virtual {v2, p0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 220
    const-string p0, "cur_retry_time"

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getCurRetryTime()I

    move-result p3

    invoke-virtual {v2, p0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 221
    const-string p0, "need_retry_delay"

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isNeedRetryDelay()Z

    move-result p3

    if-eqz p3, :cond_107

    move p3, v0

    goto :goto_108

    :cond_107
    move p3, v4

    :goto_108
    invoke-virtual {v2, p0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 222
    const-string p0, "need_reuse_first_connection"

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isNeedReuseFirstConnection()Z

    move-result p3

    if-eqz p3, :cond_115

    move p3, v0

    goto :goto_116

    :cond_115
    move p3, v4

    :goto_116
    invoke-virtual {v2, p0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 223
    const-string p0, "default_http_service_backup"

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isNeedDefaultHttpServiceBackUp()Z

    move-result p3

    if-eqz p3, :cond_123

    move p3, v0

    goto :goto_124

    :cond_123
    move p3, v4

    :goto_124
    invoke-virtual {v2, p0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 224
    const-string p0, "retry_delay_status"

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getRetryDelayStatus()Lcom/ss/android/socialbase/downloader/constants/h;

    move-result-object p3

    invoke-virtual {p3}, Lcom/ss/android/socialbase/downloader/constants/h;->ordinal()I

    move-result p3

    invoke-virtual {v2, p0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 225
    const-string p0, "backup_url_used"

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isBackUpUrlUsed()Z

    move-result p3

    if-eqz p3, :cond_13e

    move p3, v0

    goto :goto_13f

    :cond_13e
    move p3, v4

    :goto_13f
    invoke-virtual {v2, p0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 226
    const-string p0, "download_byte_error_retry_status"

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getByteInvalidRetryStatus()Lcom/ss/android/socialbase/downloader/constants/b;

    move-result-object p3

    invoke-virtual {p3}, Lcom/ss/android/socialbase/downloader/constants/b;->ordinal()I

    move-result p3

    invoke-virtual {v2, p0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 227
    const-string p0, "forbidden_handler_status"

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getAsyncHandleStatus()Lcom/ss/android/socialbase/downloader/constants/a;

    move-result-object p3

    invoke-virtual {p3}, Lcom/ss/android/socialbase/downloader/constants/a;->ordinal()I

    move-result p3

    invoke-virtual {v2, p0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 228
    const-string p0, "need_independent_process"

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isNeedIndependentProcess()Z

    move-result p3

    if-eqz p3, :cond_166

    move p3, v0

    goto :goto_167

    :cond_166
    move p3, v4

    :goto_167
    invoke-virtual {v2, p0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 229
    const-string p0, "head_connection_error_msg"

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getHeadConnectionException()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_177

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getHeadConnectionException()Ljava/lang/String;

    move-result-object p3

    goto :goto_178

    :cond_177
    move-object p3, v3

    :goto_178
    invoke-virtual {v2, p0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 230
    const-string p0, "extra"

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getExtra()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_188

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getExtra()Ljava/lang/String;

    move-result-object p3

    goto :goto_189

    :cond_188
    move-object p3, v3

    :goto_189
    invoke-virtual {v2, p0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 231
    const-string p0, "add_listener_to_same_task"

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isAddListenerToSameTask()Z

    move-result p3

    if-eqz p3, :cond_195

    goto :goto_196

    :cond_195
    move v0, v4

    :goto_196
    invoke-virtual {v2, p0, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 233
    const-string p0, "backup_url_count"

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getBackUpUrls()Ljava/util/List;

    move-result-object p3

    if-eqz p3, :cond_1aa

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getBackUpUrls()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    goto :goto_1ab

    :cond_1aa
    move p3, v4

    :goto_1ab
    invoke-virtual {v2, p0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 234
    const-string p0, "cur_backup_url_index"

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getBackUpUrls()Ljava/util/List;

    move-result-object p3

    if-eqz p3, :cond_1bb

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getCurBackUpUrlIndex()I

    move-result p3

    goto :goto_1bc

    :cond_1bb
    const/4 p3, -0x1

    :goto_1bc
    invoke-virtual {v2, p0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 236
    const-string p0, "forbidden_urls"

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getForbiddenBackupUrls()Ljava/util/List;

    move-result-object p3

    if-eqz p3, :cond_1d0

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getForbiddenBackupUrls()Ljava/util/List;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_1d1

    :cond_1d0
    move-object p3, v3

    :goto_1d1
    invoke-virtual {v2, p0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1d4
    .catch Lorg/json/JSONException; {:try_start_15 .. :try_end_1d4} :catch_23e

    .line 240
    nop

    .line 241
    nop

    .line 242
    nop

    .line 243
    :try_start_1d7
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object p0

    .line 244
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_210

    .line 245
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 246
    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p1

    .line 247
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p3

    .line 248
    invoke-virtual {p0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p0

    .line 249
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_213

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_1fb
    .catchall {:try_start_1d7 .. :try_end_1fb} :catchall_223

    if-nez v0, :cond_213

    .line 251
    :try_start_1fd
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p3, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3
    :try_end_20a
    .catchall {:try_start_1fd .. :try_end_20a} :catchall_20b

    .line 254
    goto :goto_213

    .line 252
    :catchall_20b
    move-exception v0

    .line 253
    :try_start_20c
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_213

    .line 244
    :cond_210
    move-object p0, v3

    move-object p1, p0

    move-object p3, p1

    .line 257
    :cond_213
    :goto_213
    const-string v0, "url_host"

    invoke-virtual {v2, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 258
    const-string p1, "url_path"

    invoke-virtual {v2, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 259
    const-string p1, "url_last_path_segment"

    invoke-virtual {v2, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_222
    .catchall {:try_start_20c .. :try_end_222} :catchall_223

    .line 262
    goto :goto_227

    .line 260
    :catchall_223
    move-exception p0

    .line 261
    :try_start_224
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 265
    :cond_227
    :goto_227
    const-string p0, "error_code"

    if-eqz p2, :cond_22f

    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/exception/BaseException;->getErrorCode()I

    move-result v4

    :cond_22f
    invoke-virtual {v2, p0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 266
    const-string p0, "error_msg"

    if-eqz p2, :cond_23a

    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/exception/BaseException;->getErrorMessage()Ljava/lang/String;

    move-result-object v3

    :cond_23a
    invoke-virtual {v2, p0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_23d
    .catch Lorg/json/JSONException; {:try_start_224 .. :try_end_23d} :catch_23e

    .line 270
    goto :goto_246

    .line 268
    :catch_23e
    move-exception p0

    move-object v1, v2

    goto :goto_242

    :catch_241
    move-exception p0

    .line 269
    :goto_242
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    move-object v2, v1

    .line 272
    :goto_246
    return-object v2
.end method

.method private static a(ILorg/json/JSONObject;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 135
    packed-switch p0, :pswitch_data_36

    .line 163
    :pswitch_3
    const-string p0, ""

    goto :goto_30

    .line 140
    :pswitch_6
    nop

    .line 141
    const-string p0, "download_first_start"

    goto :goto_30

    .line 143
    :pswitch_a
    nop

    .line 144
    const-string p0, "download_start"

    goto :goto_30

    .line 137
    :pswitch_e
    nop

    .line 138
    const-string p0, "download_create"

    goto :goto_30

    .line 146
    :pswitch_12
    nop

    .line 147
    const-string p0, "download_pause"

    goto :goto_30

    .line 149
    :pswitch_16
    nop

    .line 151
    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getDownloadSpeed()D

    move-result-wide v0

    .line 152
    const-wide/16 v2, 0x0

    cmpl-double p0, v0, v2

    if-ltz p0, :cond_26

    .line 153
    const-string p0, "download_speed"

    invoke-virtual {p1, p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 166
    :cond_26
    const-string p0, "download_success"

    goto :goto_30

    .line 157
    :pswitch_29
    nop

    .line 158
    const-string p0, "download_cancel"

    goto :goto_30

    .line 160
    :pswitch_2d
    nop

    .line 161
    const-string p0, "download_uncomplete"

    .line 166
    :goto_30
    const-string p2, "status"

    invoke-virtual {p1, p2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 167
    return-void

    :pswitch_data_36
    .packed-switch -0x5
        :pswitch_2d
        :pswitch_29
        :pswitch_16
        :pswitch_12
        :pswitch_3
        :pswitch_e
        :pswitch_3
        :pswitch_a
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_6
    .end packed-switch
.end method

.method public static a(Lcom/ss/android/socialbase/downloader/d/b;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/downloader/exception/BaseException;I)V
    .registers 7

    .line 112
    if-eqz p0, :cond_43

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isNeedSDKMonitor()Z

    move-result v0

    if-eqz v0, :cond_43

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getMonitorScene()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_43

    .line 116
    :cond_13
    :try_start_13
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getMonitorScene()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lcom/ss/android/socialbase/downloader/d/a;->a(Ljava/lang/String;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/downloader/exception/BaseException;I)Lorg/json/JSONObject;

    move-result-object v0

    .line 117
    if-nez v0, :cond_22

    .line 118
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 120
    :cond_22
    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne p3, v1, :cond_35

    .line 121
    const-string p1, "status"

    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/exception/BaseException;->getErrorCode()I

    move-result p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 122
    const-string p1, "download_failed"

    invoke-interface {p0, p1, v0, v2, v2}, Lcom/ss/android/socialbase/downloader/d/b;->a(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    goto :goto_3d

    .line 124
    :cond_35
    invoke-static {p3, v0, p1}, Lcom/ss/android/socialbase/downloader/d/a;->a(ILorg/json/JSONObject;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    .line 125
    const-string p1, "download_common"

    invoke-interface {p0, p1, v0, v2, v2}, Lcom/ss/android/socialbase/downloader/d/b;->a(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    :try_end_3d
    .catchall {:try_start_13 .. :try_end_3d} :catchall_3e

    .line 129
    :goto_3d
    goto :goto_42

    .line 127
    :catchall_3e
    move-exception p0

    .line 128
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 130
    :goto_42
    return-void

    .line 113
    :cond_43
    :goto_43
    return-void
.end method

.method public static a(Lcom/ss/android/socialbase/downloader/depend/z;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/downloader/exception/BaseException;I)V
    .registers 6

    .line 95
    if-nez p0, :cond_3

    .line 96
    return-void

    .line 98
    :cond_3
    :try_start_3
    invoke-interface {p0}, Lcom/ss/android/socialbase/downloader/depend/z;->b()Ljava/lang/String;

    move-result-object v0

    .line 99
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 100
    const-string v0, "default"

    .line 102
    :cond_f
    invoke-static {v0, p1, p2, p3}, Lcom/ss/android/socialbase/downloader/d/a;->a(Ljava/lang/String;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/downloader/exception/BaseException;I)Lorg/json/JSONObject;

    move-result-object p1

    .line 103
    if-nez p1, :cond_1a

    .line 104
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 106
    :cond_1a
    invoke-interface {p0, p1}, Lcom/ss/android/socialbase/downloader/depend/z;->a(Lorg/json/JSONObject;)V
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1e

    .line 108
    goto :goto_1f

    .line 107
    :catchall_1e
    move-exception p0

    .line 109
    :goto_1f
    return-void
.end method

.method public static a(Lcom/ss/android/socialbase/downloader/g/a;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Ljava/lang/String;Lcom/ss/android/socialbase/downloader/network/i;ZZLcom/ss/android/socialbase/downloader/exception/BaseException;JJZJJJLorg/json/JSONObject;)V
    .registers 42

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move-object/from16 v10, p6

    move-wide/from16 v11, p7

    move-wide/from16 v13, p9

    move/from16 v15, p11

    move-wide/from16 v16, p12

    move-wide/from16 v18, p14

    move-wide/from16 v20, p16

    .line 391
    const-string v0, "monitor_download_io"

    move-object/from16 v1, p0

    invoke-virtual {v1, v0}, Lcom/ss/android/socialbase/downloader/g/a;->b(Ljava/lang/String;)I

    move-result v1

    .line 392
    const-string v0, "download_io"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v22, 0x0

    invoke-static/range {v0 .. v22}, Lcom/ss/android/socialbase/downloader/d/a;->a(Ljava/lang/String;ILcom/ss/android/socialbase/downloader/g/a;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ss/android/socialbase/downloader/network/i;ZZLcom/ss/android/socialbase/downloader/exception/BaseException;JJZJJJLorg/json/JSONObject;)V

    .line 395
    return-void
.end method

.method public static a(Lcom/ss/android/socialbase/downloader/g/a;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/ss/android/socialbase/downloader/network/i;Lcom/ss/android/socialbase/downloader/exception/BaseException;JJ)V
    .registers 35

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v8, p5

    move-object/from16 v7, p6

    move-object/from16 v10, p7

    move-wide/from16 v11, p8

    move-wide/from16 v13, p10

    .line 400
    const-string v0, "monitor_segment_io"

    move-object/from16 v1, p0

    invoke-virtual {v1, v0}, Lcom/ss/android/socialbase/downloader/g/a;->b(Ljava/lang/String;)I

    move-result v1

    .line 401
    const-string v0, "segment_io"

    const/4 v9, 0x0

    const/4 v15, 0x0

    const-wide/16 v16, -0x1

    const-wide/16 v18, -0x1

    const-wide/16 v20, -0x1

    const/16 v22, 0x0

    invoke-static/range {v0 .. v22}, Lcom/ss/android/socialbase/downloader/d/a;->a(Ljava/lang/String;ILcom/ss/android/socialbase/downloader/g/a;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ss/android/socialbase/downloader/network/i;ZZLcom/ss/android/socialbase/downloader/exception/BaseException;JJZJJJLorg/json/JSONObject;)V

    .line 404
    return-void
.end method

.method public static a(Lcom/ss/android/socialbase/downloader/model/DownloadTask;Lcom/ss/android/socialbase/downloader/exception/BaseException;I)V
    .registers 7

    .line 46
    if-nez p0, :cond_3

    .line 47
    return-void

    .line 48
    :cond_3
    :try_start_3
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getDownloadInfo()Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v0

    .line 49
    if-nez v0, :cond_a

    .line 50
    return-void

    .line 52
    :cond_a
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getMonitorDepend()Lcom/ss/android/socialbase/downloader/depend/z;

    move-result-object v1

    .line 54
    invoke-static {p2}, Lcom/ss/android/socialbase/downloader/constants/DownloadStatus;->isMonitorStatus(I)Z

    move-result v2

    .line 55
    if-nez v2, :cond_2f

    .line 56
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getExtraMonitorStatus()[I

    move-result-object v2

    .line 57
    invoke-static {v2, p2}, Lcom/ss/android/socialbase/downloader/d/a;->a([II)Z

    move-result v2

    .line 58
    if-nez v2, :cond_2f

    if-eqz v1, :cond_2f

    instance-of v3, v1, Lcom/ss/android/socialbase/downloader/depend/c;

    if-eqz v3, :cond_2f

    .line 59
    move-object v2, v1

    check-cast v2, Lcom/ss/android/socialbase/downloader/depend/c;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/depend/c;->a()[I

    move-result-object v2

    .line 60
    invoke-static {v2, p2}, Lcom/ss/android/socialbase/downloader/d/a;->a([II)Z

    move-result v2
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_4a

    .line 64
    :cond_2f
    if-eqz v2, :cond_49

    .line 66
    :try_start_31
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getDepend()Lcom/ss/android/socialbase/downloader/depend/n;

    move-result-object p0

    .line 67
    if-eqz p0, :cond_3a

    .line 68
    invoke-interface {p0, v0, p1, p2}, Lcom/ss/android/socialbase/downloader/depend/n;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/downloader/exception/BaseException;I)V
    :try_end_3a
    .catchall {:try_start_31 .. :try_end_3a} :catchall_3b

    .line 72
    :cond_3a
    goto :goto_3f

    .line 70
    :catchall_3b
    move-exception p0

    .line 71
    :try_start_3c
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 73
    :goto_3f
    invoke-static {v1, v0, p1, p2}, Lcom/ss/android/socialbase/downloader/d/a;->a(Lcom/ss/android/socialbase/downloader/depend/z;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/downloader/exception/BaseException;I)V

    .line 75
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->g()Lcom/ss/android/socialbase/downloader/d/b;

    move-result-object p0

    .line 76
    invoke-static {p0, v0, p1, p2}, Lcom/ss/android/socialbase/downloader/d/a;->a(Lcom/ss/android/socialbase/downloader/d/b;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/downloader/exception/BaseException;I)V
    :try_end_49
    .catchall {:try_start_3c .. :try_end_49} :catchall_4a

    .line 80
    :cond_49
    goto :goto_4e

    .line 78
    :catchall_4a
    move-exception p0

    .line 79
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 81
    :goto_4e
    return-void
.end method

.method public static a(Lcom/ss/android/socialbase/downloader/network/g;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ILjava/io/IOException;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V
    .registers 22

    .line 285
    move-object v1, p0

    move-object/from16 v2, p7

    const-string v3, "setting_tag"

    if-nez p8, :cond_8

    .line 286
    return-void

    .line 289
    :cond_8
    invoke-virtual/range {p8 .. p8}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/g/a;->a(I)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object v4

    .line 290
    const-string v0, "monitor_download_connect"

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;I)I

    move-result v6

    .line 291
    if-gtz v6, :cond_1a

    .line 292
    return-void

    .line 295
    :cond_1a
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 296
    return-void

    .line 299
    :cond_21
    nop

    .line 300
    const/4 v7, -0x1

    .line 301
    nop

    .line 302
    const/4 v8, 0x0

    if-eqz v1, :cond_40

    .line 304
    :try_start_27
    invoke-interface {p0}, Lcom/ss/android/socialbase/downloader/network/g;->b()I

    move-result v7
    :try_end_2b
    .catchall {:try_start_27 .. :try_end_2b} :catchall_2c

    .line 307
    goto :goto_31

    .line 305
    :catchall_2c
    move-exception v0

    move-object v9, v0

    .line 306
    :try_start_2e
    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V

    .line 308
    :goto_31
    instance-of v0, v1, Lcom/ss/android/socialbase/downloader/network/a;

    if-eqz v0, :cond_3e

    .line 309
    move-object v0, v1

    check-cast v0, Lcom/ss/android/socialbase/downloader/network/a;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/network/a;->e()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_41

    .line 308
    :cond_3e
    move-object v1, v8

    goto :goto_41

    .line 302
    :cond_40
    move-object v1, v8

    .line 312
    :goto_41
    const/16 v0, 0x190

    const/16 v9, 0xc8

    if-lt v7, v9, :cond_49

    if-lt v7, v0, :cond_79

    .line 314
    :cond_49
    invoke-virtual/range {p8 .. p8}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getCurRetryTime()I

    move-result v10

    if-eqz v10, :cond_58

    .line 315
    invoke-virtual/range {p8 .. p8}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getHttpStatusCode()I

    move-result v10

    .line 317
    if-lt v10, v9, :cond_57

    if-lt v10, v0, :cond_58

    .line 318
    :cond_57
    return-void

    .line 322
    :cond_58
    if-eqz v2, :cond_79

    .line 323
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->L()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/i/e;->c(Landroid/content/Context;)Z

    move-result v0
    :try_end_62
    .catchall {:try_start_2e .. :try_end_62} :catchall_131

    if-nez v0, :cond_68

    .line 324
    const/16 v7, 0x419

    move-object v2, v8

    goto :goto_7a

    .line 327
    :cond_68
    :try_start_68
    const-string v0, ""

    invoke-static {v2, v0}, Lcom/ss/android/socialbase/downloader/i/e;->a(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_6d
    .catch Lcom/ss/android/socialbase/downloader/exception/BaseException; {:try_start_68 .. :try_end_6d} :catch_6e
    .catchall {:try_start_68 .. :try_end_6d} :catchall_131

    .line 331
    goto :goto_79

    .line 328
    :catch_6e
    move-exception v0

    .line 329
    :try_start_6f
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/exception/BaseException;->getErrorCode()I

    move-result v7

    .line 330
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/exception/BaseException;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    goto :goto_7a

    .line 336
    :cond_79
    :goto_79
    move-object v2, v8

    :goto_7a
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 337
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v9

    .line 338
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v10

    .line 339
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v11

    .line 340
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a5

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_94
    .catchall {:try_start_6f .. :try_end_94} :catchall_131

    if-nez v0, :cond_a5

    .line 342
    :try_start_96
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v12

    sub-int/2addr v0, v12

    invoke-virtual {v10, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10
    :try_end_a3
    .catchall {:try_start_96 .. :try_end_a3} :catchall_a4

    .line 345
    goto :goto_a5

    .line 343
    :catchall_a4
    move-exception v0

    .line 348
    :cond_a5
    :goto_a5
    :try_start_a5
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V
    :try_end_aa
    .catchall {:try_start_a5 .. :try_end_aa} :catchall_131

    .line 350
    :try_start_aa
    invoke-virtual {v4, v3}, Lcom/ss/android/socialbase/downloader/g/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 351
    const-string v0, "url_host"

    invoke-virtual {v5, v0, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 352
    const-string v0, "host_ip"

    move-object v3, p2

    invoke-virtual {v5, v0, p2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 353
    const-string v0, "host_real_ip"

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 354
    const-string v0, "url_path"

    invoke-virtual {v5, v0, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 355
    const-string v0, "url_last_path_segment"

    invoke-virtual {v5, v0, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 356
    const-string v0, "net_lib"

    move/from16 v1, p6

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 357
    const-string v0, "connect_type"

    move-object/from16 v1, p5

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 358
    const-string v0, "status_code"

    invoke-virtual {v5, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 359
    if-eqz v2, :cond_f1

    .line 360
    const-string v0, "exception_msg_length"

    const/16 v1, 0x1f4

    invoke-virtual {v4, v0, v1}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;I)I

    move-result v0

    .line 361
    const-string v1, "err_msg"

    invoke-static {v2, v0}, Lcom/ss/android/socialbase/downloader/i/e;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 363
    :cond_f1
    const-string v0, "connect_time"

    move-wide/from16 v1, p3

    invoke-virtual {v5, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 364
    const-string v0, "pkg_name"

    invoke-virtual/range {p8 .. p8}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 365
    const-string v0, "name"

    invoke-virtual/range {p8 .. p8}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_10a
    .catch Lorg/json/JSONException; {:try_start_aa .. :try_end_10a} :catch_10b
    .catchall {:try_start_aa .. :try_end_10a} :catchall_131

    .line 368
    goto :goto_10f

    .line 366
    :catch_10b
    move-exception v0

    .line 367
    :try_start_10c
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_10f
    .catchall {:try_start_10c .. :try_end_10f} :catchall_131

    .line 371
    :goto_10f
    const/4 v0, 0x1

    const-string v1, "download_connect"

    const/4 v2, 0x3

    if-eq v6, v0, :cond_117

    if-ne v6, v2, :cond_120

    .line 372
    :cond_117
    :try_start_117
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->g()Lcom/ss/android/socialbase/downloader/d/b;

    move-result-object v0

    .line 373
    if-eqz v0, :cond_120

    .line 374
    invoke-interface {v0, v1, v5, v8, v8}, Lcom/ss/android/socialbase/downloader/d/b;->a(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 379
    :cond_120
    const/4 v0, 0x2

    if-eq v6, v0, :cond_125

    if-ne v6, v2, :cond_130

    .line 380
    :cond_125
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->N()Lcom/ss/android/socialbase/downloader/d/c;

    move-result-object v0

    invoke-virtual/range {p8 .. p8}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v2

    invoke-interface {v0, v2, v1, v5}, Lcom/ss/android/socialbase/downloader/d/c;->a(ILjava/lang/String;Lorg/json/JSONObject;)V
    :try_end_130
    .catchall {:try_start_117 .. :try_end_130} :catchall_131

    .line 384
    :cond_130
    goto :goto_135

    .line 382
    :catchall_131
    move-exception v0

    .line 383
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 385
    :goto_135
    return-void
.end method

.method private static a(Ljava/lang/String;ILcom/ss/android/socialbase/downloader/g/a;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ss/android/socialbase/downloader/network/i;ZZLcom/ss/android/socialbase/downloader/exception/BaseException;JJZJJJLorg/json/JSONObject;)V
    .registers 43

    .line 413
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p7

    move-wide/from16 v5, p13

    const-string v7, "setting_tag"

    if-lez v2, :cond_17f

    const-wide/16 v8, 0x0

    cmp-long v0, v5, v8

    if-gtz v0, :cond_16

    goto/16 :goto_17f

    .line 418
    :cond_16
    :try_start_16
    invoke-static/range {p4 .. p4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 419
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v8

    .line 420
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v9

    .line 421
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v10

    .line 422
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v11, 0x0

    if-nez v0, :cond_42

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_31
    .catchall {:try_start_16 .. :try_end_31} :catchall_17a

    if-nez v0, :cond_42

    .line 424
    :try_start_33
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v12

    sub-int/2addr v0, v12

    invoke-virtual {v9, v11, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9
    :try_end_40
    .catchall {:try_start_33 .. :try_end_40} :catchall_41

    .line 427
    goto :goto_42

    .line 425
    :catchall_41
    move-exception v0

    .line 431
    :cond_42
    :goto_42
    nop

    .line 432
    if-eqz p8, :cond_48

    .line 434
    const/4 v14, 0x1

    const/4 v15, 0x0

    goto :goto_67

    .line 435
    :cond_48
    if-eqz p9, :cond_4d

    .line 437
    const/4 v14, 0x2

    const/4 v15, 0x0

    goto :goto_67

    .line 439
    :cond_4d
    if-eqz p10, :cond_65

    .line 441
    :try_start_4f
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->L()Landroid/content/Context;

    move-result-object v14

    invoke-static {v14}, Lcom/ss/android/socialbase/downloader/i/e;->c(Landroid/content/Context;)Z

    move-result v14

    if-nez v14, :cond_5c

    .line 442
    const/16 v14, 0x419

    goto :goto_60

    .line 444
    :cond_5c
    invoke-virtual/range {p10 .. p10}, Lcom/ss/android/socialbase/downloader/exception/BaseException;->getErrorCode()I

    move-result v14

    .line 446
    :goto_60
    invoke-virtual/range {p10 .. p10}, Lcom/ss/android/socialbase/downloader/exception/BaseException;->getErrorMessage()Ljava/lang/String;

    move-result-object v15

    goto :goto_67

    .line 449
    :cond_65
    move v14, v11

    const/4 v15, 0x0

    .line 453
    :goto_67
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    .line 455
    nop

    .line 456
    nop

    .line 457
    const/16 v16, -0x1

    if-eqz v4, :cond_a9

    .line 458
    instance-of v0, v4, Lcom/ss/android/socialbase/downloader/network/e;

    if-eqz v0, :cond_78

    .line 459
    const/4 v0, 0x0

    goto :goto_79

    .line 461
    :cond_78
    const/4 v0, 0x1

    .line 463
    :goto_79
    const-string v12, "X-Cache"

    invoke-interface {v4, v12}, Lcom/ss/android/socialbase/downloader/network/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 464
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_8f

    .line 465
    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    const-string v13, "hit"

    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v16

    .line 467
    :cond_8f
    const-string v12, "monitor_sla"

    const/4 v13, 0x1

    invoke-virtual {v3, v12, v13}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;I)I

    move-result v12

    if-ne v12, v13, :cond_a6

    .line 468
    if-nez p8, :cond_a6

    if-nez p9, :cond_a6

    .line 469
    instance-of v12, v4, Lcom/ss/android/socialbase/downloader/network/a;

    if-eqz v12, :cond_a6

    .line 470
    check-cast v4, Lcom/ss/android/socialbase/downloader/network/a;

    const/4 v12, 0x1

    invoke-virtual {v4, v11, v12}, Lcom/ss/android/socialbase/downloader/network/a;->a(Lorg/json/JSONObject;Z)V

    .line 476
    :cond_a6
    move/from16 v4, v16

    goto :goto_ac

    .line 457
    :cond_a9
    move/from16 v0, v16

    move v4, v0

    .line 476
    :goto_ac
    move-wide/from16 v12, p11

    long-to-double v12, v12

    const-wide/high16 v18, 0x4130000000000000L    # 1048576.0

    div-double v12, v12, v18

    .line 477
    long-to-double v5, v5

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide/from16 p7, v12

    const-wide/16 v12, 0x1

    invoke-virtual {v1, v12, v13}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v12

    long-to-double v12, v12

    div-double v12, v5, v12

    .line 479
    invoke-virtual {v3, v7}, Lcom/ss/android/socialbase/downloader/g/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v7, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 480
    const-string v1, "url_host"

    invoke-virtual {v11, v1, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 481
    const-string v1, "host_ip"

    move-object/from16 v7, p5

    invoke-virtual {v11, v1, v7}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 482
    const-string v1, "host_real_ip"

    move-object/from16 v7, p6

    invoke-virtual {v11, v1, v7}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 483
    const-string v1, "url_path"

    invoke-virtual {v11, v1, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 484
    const-string v1, "url_last_path_segment"

    invoke-virtual {v11, v1, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 485
    const-string v1, "net_lib"

    invoke-virtual {v11, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 486
    const-string v0, "hit_cdn_cache"

    invoke-virtual {v11, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 487
    const-string v0, "status_code"

    invoke-virtual {v11, v0, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 488
    if-eqz v15, :cond_107

    .line 489
    const-string v0, "exception_msg_length"

    const/16 v1, 0x1f4

    invoke-virtual {v3, v0, v1}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;I)I

    move-result v0

    .line 490
    const-string v1, "err_msg"

    invoke-static {v15, v0}, Lcom/ss/android/socialbase/downloader/i/e;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 492
    :cond_107
    const-string v0, "download_sec"

    invoke-virtual {v11, v0, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 493
    const-string v0, "download_mb"

    move-wide/from16 v3, p7

    invoke-virtual {v11, v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 494
    const-wide/16 v0, 0x0

    cmpl-double v0, v12, v0

    if-lez v0, :cond_120

    .line 495
    const-string v0, "download_speed"

    div-double v12, v3, v12

    invoke-virtual {v11, v0, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 497
    :cond_120
    if-eqz p15, :cond_13e

    .line 498
    nop

    .line 499
    const-string v0, "rw_read_time"

    move-wide/from16 v3, p16

    long-to-double v3, v3

    div-double/2addr v3, v5

    invoke-virtual {v11, v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 500
    const-string v0, "rw_write_time"

    move-wide/from16 v3, p18

    long-to-double v3, v3

    div-double/2addr v3, v5

    invoke-virtual {v11, v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 501
    const-string v0, "rw_sync_time"

    move-wide/from16 v3, p20

    long-to-double v3, v3

    div-double/2addr v3, v5

    invoke-virtual {v11, v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 503
    :cond_13e
    const-string v0, "pkg_name"

    invoke-virtual/range {p3 .. p3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 504
    const-string v0, "name"

    invoke-virtual/range {p3 .. p3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 507
    const/4 v0, 0x3

    const/4 v1, 0x1

    if-eq v2, v1, :cond_15a

    if-ne v2, v0, :cond_157

    goto :goto_15a

    :cond_157
    move-object/from16 v3, p0

    goto :goto_169

    .line 508
    :cond_15a
    :goto_15a
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->g()Lcom/ss/android/socialbase/downloader/d/b;

    move-result-object v1

    .line 509
    if-eqz v1, :cond_167

    .line 510
    const/4 v4, 0x0

    move-object/from16 v3, p0

    invoke-interface {v1, v3, v11, v4, v4}, Lcom/ss/android/socialbase/downloader/d/b;->a(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    goto :goto_169

    .line 509
    :cond_167
    move-object/from16 v3, p0

    .line 515
    :goto_169
    const/4 v1, 0x2

    if-eq v2, v1, :cond_16e

    if-ne v2, v0, :cond_179

    .line 516
    :cond_16e
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->N()Lcom/ss/android/socialbase/downloader/d/c;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v1

    invoke-interface {v0, v1, v3, v11}, Lcom/ss/android/socialbase/downloader/d/c;->a(ILjava/lang/String;Lorg/json/JSONObject;)V
    :try_end_179
    .catchall {:try_start_4f .. :try_end_179} :catchall_17a

    .line 520
    :cond_179
    goto :goto_17e

    .line 518
    :catchall_17a
    move-exception v0

    .line 519
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 521
    :goto_17e
    return-void

    .line 414
    :cond_17f
    :goto_17f
    return-void
.end method

.method private static a([II)Z
    .registers 5

    .line 84
    const/4 v0, 0x0

    if-eqz p0, :cond_13

    array-length v1, p0

    if-lez v1, :cond_13

    .line 85
    move v1, v0

    :goto_7
    array-length v2, p0

    if-ge v1, v2, :cond_13

    .line 86
    aget v2, p0, v1

    if-ne p1, v2, :cond_10

    .line 87
    const/4 p0, 0x1

    return p0

    .line 85
    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 91
    :cond_13
    return v0
.end method
