.class public Lcom/ss/android/downloadlib/h/e;
.super Ljava/lang/Object;
.source "DownloadSettingUtils.java"


# direct methods
.method public static a(I)D
    .registers 4

    .line 177
    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/g/a;->a(I)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object p0

    const-string v0, "clean_min_install_size"

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static a(Lcom/ss/android/socialbase/downloader/g/a;)I
    .registers 3

    .line 157
    const-string v0, "external_storage_permission_path_type"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static a(Lcom/ss/android/downloadad/a/b/a;)Lcom/ss/android/socialbase/downloader/g/a;
    .registers 2

    .line 47
    if-nez p0, :cond_7

    .line 48
    invoke-static {}, Lcom/ss/android/socialbase/downloader/g/a;->c()Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object p0

    return-object p0

    .line 50
    :cond_7
    invoke-interface {p0}, Lcom/ss/android/downloadad/a/b/a;->s()I

    move-result v0

    if-eqz v0, :cond_16

    .line 51
    invoke-interface {p0}, Lcom/ss/android/downloadad/a/b/a;->s()I

    move-result p0

    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/g/a;->a(I)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object p0

    return-object p0

    .line 53
    :cond_16
    invoke-interface {p0}, Lcom/ss/android/downloadad/a/b/a;->c()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 54
    invoke-static {}, Lcom/ss/android/downloadlib/h/e;->a()Lorg/json/JSONObject;

    move-result-object p0

    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/g/a;->a(Lorg/json/JSONObject;)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object p0

    return-object p0

    .line 56
    :cond_25
    invoke-interface {p0}, Lcom/ss/android/downloadad/a/b/a;->r()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_34

    .line 57
    invoke-interface {p0}, Lcom/ss/android/downloadad/a/b/a;->r()Lorg/json/JSONObject;

    move-result-object p0

    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/g/a;->a(Lorg/json/JSONObject;)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object p0

    return-object p0

    .line 59
    :cond_34
    invoke-static {}, Lcom/ss/android/socialbase/downloader/g/a;->c()Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object p0

    return-object p0
.end method

.method public static a()Lorg/json/JSONObject;
    .registers 2

    .line 26
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->i()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "ad"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/ss/android/a/a/b/c;)Lorg/json/JSONObject;
    .registers 2

    .line 30
    if-nez p0, :cond_4

    .line 31
    const/4 p0, 0x0

    return-object p0

    .line 33
    :cond_4
    invoke-interface {p0}, Lcom/ss/android/a/a/b/c;->t()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 34
    invoke-static {}, Lcom/ss/android/downloadlib/h/e;->a()Lorg/json/JSONObject;

    move-result-object p0

    return-object p0

    .line 36
    :cond_f
    invoke-interface {p0}, Lcom/ss/android/a/a/b/c;->p()Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public static b(I)J
    .registers 4

    .line 186
    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/g/a;->a(I)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object p0

    const-string v0, "storage_min_size"

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static b(Lcom/ss/android/a/a/b/c;)Lcom/ss/android/socialbase/downloader/g/a;
    .registers 1

    .line 42
    invoke-static {p0}, Lcom/ss/android/downloadlib/h/e;->a(Lcom/ss/android/a/a/b/c;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/g/a;->a(Lorg/json/JSONObject;)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object p0

    return-object p0
.end method

.method public static b(Lcom/ss/android/downloadad/a/b/a;)Z
    .registers 4

    .line 167
    invoke-static {p0}, Lcom/ss/android/downloadlib/h/e;->a(Lcom/ss/android/downloadad/a/b/a;)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object v0

    const-string v1, "pause_reserve_on_wifi"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_16

    .line 168
    invoke-interface {p0}, Lcom/ss/android/downloadad/a/b/a;->q()Z

    move-result p0

    if-eqz p0, :cond_16

    move v2, v1

    goto :goto_17

    :cond_16
    nop

    .line 167
    :goto_17
    return v2
.end method

.method public static b(Lcom/ss/android/socialbase/downloader/g/a;)Z
    .registers 3

    .line 242
    const/4 v0, 0x0

    if-eqz p0, :cond_d

    .line 243
    const-string v1, "kllk_need_rename_apk"

    invoke-virtual {p0, v1, v0}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;I)I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_d

    .line 244
    return v1

    .line 247
    :cond_d
    return v0
.end method

.method public static c(Lcom/ss/android/a/a/b/c;)I
    .registers 1

    .line 161
    invoke-static {p0}, Lcom/ss/android/downloadlib/h/e;->b(Lcom/ss/android/a/a/b/c;)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object p0

    .line 162
    invoke-static {p0}, Lcom/ss/android/downloadlib/h/e;->a(Lcom/ss/android/socialbase/downloader/g/a;)I

    move-result p0

    return p0
.end method

.method public static c(I)J
    .registers 4

    .line 196
    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/g/a;->a(I)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object p0

    const-string v0, "clean_fetch_apk_head_time_out"

    const-wide/16 v1, 0x320

    invoke-virtual {p0, v0, v1, v2}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static d(I)Z
    .registers 5

    .line 205
    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/g/a;->a(I)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object p0

    const-string v0, "clean_fetch_apk_switch"

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;J)J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long p0, v0, v2

    if-nez p0, :cond_14

    const/4 p0, 0x1

    goto :goto_15

    :cond_14
    const/4 p0, 0x0

    :goto_15
    return p0
.end method

.method public static e(I)Z
    .registers 5

    .line 214
    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/g/a;->a(I)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object p0

    const-string v0, "clean_space_before_download_switch"

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;J)J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long p0, v0, v2

    if-nez p0, :cond_14

    const/4 p0, 0x1

    goto :goto_15

    :cond_14
    const/4 p0, 0x0

    :goto_15
    return p0
.end method

.method public static f(I)Z
    .registers 3

    .line 223
    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/g/a;->a(I)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object p0

    const-string v0, "clean_space_switch"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_f

    move v1, v0

    :cond_f
    return v1
.end method

.method public static g(I)Z
    .registers 3

    .line 232
    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/g/a;->a(I)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object p0

    const-string v0, "clean_app_cache_dir"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_f

    move v1, v0

    :cond_f
    return v1
.end method
