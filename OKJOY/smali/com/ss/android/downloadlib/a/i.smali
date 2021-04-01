.class public Lcom/ss/android/downloadlib/a/i;
.super Ljava/lang/Object;
.source "DownloadInsideHelper.java"


# direct methods
.method public static a(Lcom/ss/android/a/a/b/c;ZLcom/ss/android/socialbase/appdownloader/g;)I
    .registers 11
    .param p0    # Lcom/ss/android/a/a/b/c;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v6, 0x0

    .line 59
    if-eqz p2, :cond_13

    invoke-virtual {p2}, Lcom/ss/android/socialbase/appdownloader/g;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    invoke-virtual {p2}, Lcom/ss/android/socialbase/appdownloader/g;->b()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_14

    .line 75
    :cond_13
    :goto_13
    return v6

    .line 63
    :cond_14
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/d;->h()Lcom/ss/android/socialbase/appdownloader/d;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/ss/android/socialbase/appdownloader/d;->a(Lcom/ss/android/socialbase/appdownloader/g;)I

    move-result v7

    .line 64
    invoke-virtual {p2}, Lcom/ss/android/socialbase/appdownloader/g;->U()Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/k/a;->a(Lorg/json/JSONObject;)Lcom/ss/android/socialbase/downloader/k/a;

    move-result-object v0

    .line 66
    invoke-static {p2, v0}, Lcom/ss/android/downloadlib/a/i;->a(Lcom/ss/android/socialbase/appdownloader/g;Lcom/ss/android/socialbase/downloader/k/a;)Z

    move-result v1

    if-nez v1, :cond_4f

    invoke-interface {p0}, Lcom/ss/android/a/a/b/c;->i()Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 67
    const-string v1, "download_start_toast_text"

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/k/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 68
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 69
    if-eqz p1, :cond_51

    const-string v0, "\u5df2\u5f00\u59cb\u4e0b\u8f7d\uff0c\u53ef\u5728\"\u6211\u7684\"\u91cc\u67e5\u770b\u7ba1\u7406"

    :goto_40
    move-object v4, v0

    .line 71
    :cond_41
    invoke-static {}, Lcom/ss/android/downloadlib/a/j;->d()Lcom/ss/android/a/a/a/j;

    move-result-object v0

    const/4 v1, 0x2

    .line 72
    invoke-virtual {p2}, Lcom/ss/android/socialbase/appdownloader/g;->b()Landroid/content/Context;

    move-result-object v2

    const/4 v5, 0x0

    move-object v3, p0

    .line 71
    invoke-interface/range {v0 .. v6}, Lcom/ss/android/a/a/a/j;->a(ILandroid/content/Context;Lcom/ss/android/a/a/b/c;Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)V

    :cond_4f
    move v6, v7

    .line 75
    goto :goto_13

    .line 69
    :cond_51
    const-string v0, "\u5df2\u5f00\u59cb\u4e0b\u8f7d"

    goto :goto_40
.end method

.method static a(I)Z
    .registers 2

    .prologue
    const/4 v0, 0x1

    .line 33
    if-eqz p0, :cond_5

    if-ne p0, v0, :cond_6

    :cond_5
    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method static a(Lcom/ss/android/a/a/b/c;)Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 45
    invoke-interface {p0}, Lcom/ss/android/a/a/b/c;->r()Z

    move-result v1

    if-eqz v1, :cond_12

    instance-of v1, p0, Lcom/ss/android/downloadad/a/a/c;

    if-eqz v1, :cond_12

    invoke-interface {p0}, Lcom/ss/android/a/a/b/c;->x()I

    move-result v1

    if-ne v1, v0, :cond_12

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private static a(Lcom/ss/android/socialbase/appdownloader/g;Lcom/ss/android/socialbase/downloader/k/a;)Z
    .registers 10
    .param p1    # Lcom/ss/android/socialbase/downloader/k/a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 82
    .line 83
    const-string v1, "show_unknown_source_on_startup"

    invoke-virtual {p1, v1}, Lcom/ss/android/socialbase/downloader/k/a;->b(Ljava/lang/String;)Z

    move-result v1

    .line 84
    if-eqz v1, :cond_3a

    .line 85
    const-string v1, "anti_plans"

    invoke-virtual {p1, v1}, Lcom/ss/android/socialbase/downloader/k/a;->e(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 86
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    move v3, v0

    .line 87
    :goto_15
    if-ge v3, v5, :cond_3f

    .line 88
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 89
    if-eqz v1, :cond_3b

    .line 90
    const-string v6, "type"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 91
    const-string v7, "jump_unknown_source"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3b

    .line 97
    :goto_2b
    if-eqz v1, :cond_3a

    .line 98
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->B()Landroid/content/Context;

    move-result-object v0

    new-instance v3, Lcom/ss/android/socialbase/appdownloader/a;

    invoke-direct {v3}, Lcom/ss/android/socialbase/appdownloader/a;-><init>()V

    invoke-static {v0, v2, v1, v3}, Lcom/ss/android/socialbase/appdownloader/b;->a(Landroid/content/Context;Landroid/content/Intent;Lorg/json/JSONObject;Lcom/ss/android/socialbase/appdownloader/a;)Z

    move-result v0

    .line 101
    :cond_3a
    return v0

    .line 87
    :cond_3b
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_15

    :cond_3f
    move-object v1, v2

    goto :goto_2b
.end method

.method static b(I)Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 37
    const/4 v1, 0x2

    if-eq p0, v1, :cond_6

    if-ne p0, v0, :cond_7

    :cond_6
    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method static c(I)Z
    .registers 2

    .prologue
    .line 41
    const/4 v0, 0x2

    if-ne p0, v0, :cond_5

    const/4 v0, 0x1

    :goto_4
    return v0

    :cond_5
    const/4 v0, 0x0

    goto :goto_4
.end method
