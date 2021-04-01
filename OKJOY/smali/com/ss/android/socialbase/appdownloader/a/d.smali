.class public Lcom/ss/android/socialbase/appdownloader/a/d;
.super Ljava/lang/Object;
.source "DevicePlans.java"


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/socialbase/downloader/g/c;)Lcom/ss/android/socialbase/appdownloader/a/a;
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 25
    if-eqz p3, :cond_7

    if-eqz p0, :cond_7

    if-nez p2, :cond_8

    .line 51
    :cond_7
    :goto_7
    return-object v0

    .line 29
    :cond_8
    invoke-virtual {p3}, Lcom/ss/android/socialbase/downloader/g/c;->k()Ljava/lang/String;

    move-result-object v1

    .line 30
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 33
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 34
    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_88

    :cond_1f
    :goto_1f
    packed-switch v1, :pswitch_data_9e

    goto :goto_7

    .line 36
    :pswitch_23
    new-instance v0, Lcom/ss/android/socialbase/appdownloader/a/h;

    invoke-virtual {p3}, Lcom/ss/android/socialbase/downloader/g/c;->n()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/ss/android/socialbase/appdownloader/a/h;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_7

    .line 34
    :sswitch_2d
    const-string v3, "vivo1"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    const/4 v1, 0x0

    goto :goto_1f

    :sswitch_37
    const-string v3, "vivo2"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    const/4 v1, 0x1

    goto :goto_1f

    :sswitch_41
    const-string v3, "oppo1"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    const/4 v1, 0x2

    goto :goto_1f

    :sswitch_4b
    const-string v3, "oppo2"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    const/4 v1, 0x3

    goto :goto_1f

    :sswitch_55
    const-string v3, "custom"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    const/4 v1, 0x4

    goto :goto_1f

    .line 39
    :pswitch_5f
    new-instance v0, Lcom/ss/android/socialbase/appdownloader/a/i;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/ss/android/socialbase/appdownloader/a/i;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_7

    .line 42
    :pswitch_69
    new-instance v0, Lcom/ss/android/socialbase/appdownloader/a/f;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/ss/android/socialbase/appdownloader/a/f;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_7

    .line 45
    :pswitch_73
    new-instance v0, Lcom/ss/android/socialbase/appdownloader/a/g;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/ss/android/socialbase/appdownloader/a/g;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_7

    .line 48
    :pswitch_7d
    new-instance v0, Lcom/ss/android/socialbase/appdownloader/a/c;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p2}, Lcom/ss/android/socialbase/appdownloader/a/c;-><init>(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_7

    .line 34
    nop

    :sswitch_data_88
    .sparse-switch
        -0x5069748f -> :sswitch_55
        0x650cc91 -> :sswitch_41
        0x650cc92 -> :sswitch_4b
        0x6b05905 -> :sswitch_2d
        0x6b05906 -> :sswitch_37
    .end sparse-switch

    :pswitch_data_9e
    .packed-switch 0x0
        :pswitch_23
        :pswitch_5f
        :pswitch_69
        :pswitch_73
        :pswitch_7d
    .end packed-switch
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)Z
    .registers 9

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 55
    if-eqz p0, :cond_6

    if-nez p1, :cond_7

    .line 80
    :cond_6
    :goto_6
    return v1

    .line 58
    :cond_7
    const/4 v2, 0x0

    .line 59
    invoke-static {p0}, Lcom/ss/android/socialbase/appdownloader/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 60
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 63
    const/4 v3, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_7a

    :cond_1a
    :goto_1a
    packed-switch v3, :pswitch_data_90

    .line 80
    :goto_1d
    if-eqz v2, :cond_77

    invoke-virtual {v2}, Lcom/ss/android/socialbase/appdownloader/a/a;->a()Z

    move-result v2

    if-eqz v2, :cond_77

    :goto_25
    move v1, v0

    goto :goto_6

    .line 63
    :sswitch_27
    const-string v5, "vivo1"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1a

    move v3, v1

    goto :goto_1a

    :sswitch_31
    const-string v5, "vivo2"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1a

    move v3, v0

    goto :goto_1a

    :sswitch_3b
    const-string v5, "oppo1"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1a

    const/4 v3, 0x2

    goto :goto_1a

    :sswitch_45
    const-string v5, "oppo2"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1a

    const/4 v3, 0x3

    goto :goto_1a

    :sswitch_4f
    const-string v5, "custom"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1a

    const/4 v3, 0x4

    goto :goto_1a

    .line 65
    :pswitch_59
    new-instance v2, Lcom/ss/android/socialbase/appdownloader/a/h;

    invoke-direct {v2, p0, v4}, Lcom/ss/android/socialbase/appdownloader/a/h;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1d

    .line 68
    :pswitch_5f
    new-instance v2, Lcom/ss/android/socialbase/appdownloader/a/i;

    invoke-direct {v2, p0, v4}, Lcom/ss/android/socialbase/appdownloader/a/i;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1d

    .line 71
    :pswitch_65
    new-instance v2, Lcom/ss/android/socialbase/appdownloader/a/f;

    invoke-direct {v2, p0, v4}, Lcom/ss/android/socialbase/appdownloader/a/f;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1d

    .line 74
    :pswitch_6b
    new-instance v2, Lcom/ss/android/socialbase/appdownloader/a/g;

    invoke-direct {v2, p0, v4}, Lcom/ss/android/socialbase/appdownloader/a/g;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1d

    .line 77
    :pswitch_71
    new-instance v2, Lcom/ss/android/socialbase/appdownloader/a/c;

    invoke-direct {v2, p0, v4, p2}, Lcom/ss/android/socialbase/appdownloader/a/c;-><init>(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_1d

    :cond_77
    move v0, v1

    .line 80
    goto :goto_25

    .line 63
    nop

    :sswitch_data_7a
    .sparse-switch
        -0x5069748f -> :sswitch_4f
        0x650cc91 -> :sswitch_3b
        0x650cc92 -> :sswitch_45
        0x6b05905 -> :sswitch_27
        0x6b05906 -> :sswitch_31
    .end sparse-switch

    :pswitch_data_90
    .packed-switch 0x0
        :pswitch_59
        :pswitch_5f
        :pswitch_65
        :pswitch_6b
        :pswitch_71
    .end packed-switch
.end method
