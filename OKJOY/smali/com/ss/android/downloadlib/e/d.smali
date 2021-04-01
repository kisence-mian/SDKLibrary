.class public Lcom/ss/android/downloadlib/e/d;
.super Ljava/lang/Object;
.source "OpenAppUtils.java"


# direct methods
.method public static a(Landroid/content/Context;Landroid/net/Uri;)Lcom/ss/android/downloadlib/a/b/d;
    .registers 6

    .prologue
    const/4 v3, 0x6

    .line 32
    if-eqz p0, :cond_11

    if-eqz p1, :cond_11

    const-string v0, "market"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 33
    :cond_11
    new-instance v0, Lcom/ss/android/downloadlib/a/b/d;

    invoke-direct {v0, v3}, Lcom/ss/android/downloadlib/a/b/d;-><init>(I)V

    .line 51
    :goto_16
    return-object v0

    .line 36
    :cond_17
    :try_start_17
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 37
    invoke-static {p0, v0}, Lcom/ss/android/downloadlib/e/g;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_33

    .line 38
    new-instance v0, Lcom/ss/android/downloadlib/a/b/d;

    const/4 v1, 0x6

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/ss/android/downloadlib/a/b/d;-><init>(II)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_2b} :catch_2c

    goto :goto_16

    .line 50
    :catch_2c
    move-exception v0

    .line 51
    new-instance v0, Lcom/ss/android/downloadlib/a/b/d;

    invoke-direct {v0, v3}, Lcom/ss/android/downloadlib/a/b/d;-><init>(I)V

    goto :goto_16

    .line 40
    :cond_33
    :try_start_33
    invoke-static {}, Lcom/ss/android/socialbase/downloader/m/i;->h()Ljava/lang/String;

    move-result-object v1

    .line 42
    invoke-static {p0, v1}, Lcom/ss/android/downloadlib/e/g;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_46

    invoke-static {}, Lcom/ss/android/socialbase/downloader/m/i;->e()Z

    move-result v2

    if-nez v2, :cond_46

    .line 43
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 45
    :cond_46
    instance-of v1, p0, Landroid/app/Activity;

    if-nez v1, :cond_4f

    .line 46
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 48
    :cond_4f
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 49
    new-instance v0, Lcom/ss/android/downloadlib/a/b/d;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lcom/ss/android/downloadlib/a/b/d;-><init>(I)V
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_58} :catch_2c

    goto :goto_16
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Lcom/ss/android/downloadlib/a/b/d;
    .registers 4

    .prologue
    .line 59
    if-eqz p0, :cond_8

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 60
    :cond_8
    new-instance v0, Lcom/ss/android/downloadlib/a/b/d;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lcom/ss/android/downloadlib/a/b/d;-><init>(I)V

    .line 65
    :goto_e
    return-object v0

    .line 62
    :cond_f
    invoke-static {}, Lcom/ss/android/socialbase/downloader/m/i;->e()Z

    move-result v0

    if-eqz v0, :cond_22

    const-string v0, "com.sec.android.app.samsungapps"

    invoke-static {p0, v0}, Lcom/ss/android/downloadlib/e/g;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 63
    invoke-static {p0, p1}, Lcom/ss/android/downloadlib/e/d;->d(Landroid/content/Context;Ljava/lang/String;)Lcom/ss/android/downloadlib/a/b/d;

    move-result-object v0

    goto :goto_e

    .line 65
    :cond_22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "market://details?id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/ss/android/downloadlib/e/d;->a(Landroid/content/Context;Landroid/net/Uri;)Lcom/ss/android/downloadlib/a/b/d;

    move-result-object v0

    goto :goto_e
.end method

.method public static a(Ljava/lang/String;)Lcom/ss/android/downloadlib/a/b/d;
    .registers 9

    .prologue
    const/high16 v7, 0x10000000

    const/16 v6, 0x1d

    const/4 v5, 0x1

    const/4 v4, 0x2

    .line 128
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 129
    new-instance v0, Lcom/ss/android/downloadlib/a/b/d;

    const/4 v1, 0x3

    invoke-direct {v0, v4, v1}, Lcom/ss/android/downloadlib/a/b/d;-><init>(II)V

    .line 158
    :goto_12
    return-object v0

    .line 131
    :cond_13
    invoke-static {}, Lcom/ss/android/downloadlib/a/j;->a()Landroid/content/Context;

    move-result-object v0

    .line 132
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 133
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 134
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 135
    invoke-virtual {v2, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 136
    invoke-static {v0, v2}, Lcom/ss/android/downloadlib/e/g;->b(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_88

    .line 138
    invoke-static {}, Lcom/ss/android/downloadlib/a/j;->i()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "open_url_mode"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_57

    .line 139
    invoke-static {}, Lcom/ss/android/downloadlib/a/j;->k()Lcom/ss/android/a/a/a/a;

    move-result-object v0

    if-eqz v0, :cond_57

    .line 140
    invoke-static {}, Lcom/ss/android/downloadlib/a/j;->k()Lcom/ss/android/a/a/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/ss/android/a/a/a/a;->a()Z

    move-result v0

    if-eqz v0, :cond_57

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v6, :cond_57

    .line 142
    invoke-static {p0}, Lcom/ss/android/downloadlib/activity/TTDelegateActivity;->a(Ljava/lang/String;)V

    .line 156
    :goto_51
    new-instance v0, Lcom/ss/android/downloadlib/a/b/d;

    invoke-direct {v0, v5}, Lcom/ss/android/downloadlib/a/b/d;-><init>(I)V

    goto :goto_12

    .line 143
    :cond_57
    invoke-static {}, Lcom/ss/android/downloadlib/a/j;->i()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "open_url_mode"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v5, :cond_71

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_71

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v6, :cond_71

    .line 146
    invoke-static {p0}, Lcom/ss/android/downloadlib/activity/TTDelegateActivity;->a(Ljava/lang/String;)V

    goto :goto_51

    .line 148
    :cond_71
    const-string v0, "open_url"

    invoke-virtual {v2, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 149
    invoke-virtual {v2, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 151
    :try_start_79
    invoke-static {}, Lcom/ss/android/downloadlib/a/j;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_79 .. :try_end_80} :catch_81

    goto :goto_51

    .line 152
    :catch_81
    move-exception v0

    .line 153
    new-instance v0, Lcom/ss/android/downloadlib/a/b/d;

    invoke-direct {v0, v4}, Lcom/ss/android/downloadlib/a/b/d;-><init>(I)V

    goto :goto_12

    .line 158
    :cond_88
    new-instance v0, Lcom/ss/android/downloadlib/a/b/d;

    invoke-direct {v0, v4}, Lcom/ss/android/downloadlib/a/b/d;-><init>(I)V

    goto :goto_12
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lcom/ss/android/downloadlib/a/b/d;
    .registers 5

    .prologue
    .line 97
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 98
    invoke-static {}, Lcom/ss/android/downloadlib/a/j;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/ss/android/downloadlib/e/d;->b(Landroid/content/Context;Ljava/lang/String;)Lcom/ss/android/downloadlib/a/b/d;

    move-result-object v0

    .line 104
    :cond_e
    :goto_e
    return-object v0

    .line 100
    :cond_f
    invoke-static {p0}, Lcom/ss/android/downloadlib/e/d;->a(Ljava/lang/String;)Lcom/ss/android/downloadlib/a/b/d;

    move-result-object v0

    .line 101
    invoke-virtual {v0}, Lcom/ss/android/downloadlib/a/b/d;->a()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_e

    .line 102
    invoke-static {}, Lcom/ss/android/downloadlib/a/j;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/ss/android/downloadlib/e/d;->b(Landroid/content/Context;Ljava/lang/String;)Lcom/ss/android/downloadlib/a/b/d;

    move-result-object v0

    goto :goto_e
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)Lcom/ss/android/downloadlib/a/b/d;
    .registers 6

    .prologue
    const/4 v3, 0x4

    .line 110
    invoke-static {p0, p1}, Lcom/ss/android/downloadlib/e/g;->e(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 111
    if-nez v0, :cond_d

    .line 112
    new-instance v0, Lcom/ss/android/downloadlib/a/b/d;

    invoke-direct {v0, v3}, Lcom/ss/android/downloadlib/a/b/d;-><init>(I)V

    .line 120
    :goto_c
    return-object v0

    .line 114
    :cond_d
    const-string v1, "START_ONLY_FOR_ANDROID"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 116
    :try_start_13
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_16} :catch_1d

    .line 120
    new-instance v0, Lcom/ss/android/downloadlib/a/b/d;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/ss/android/downloadlib/a/b/d;-><init>(I)V

    goto :goto_c

    .line 117
    :catch_1d
    move-exception v0

    .line 118
    new-instance v0, Lcom/ss/android/downloadlib/a/b/d;

    invoke-direct {v0, v3}, Lcom/ss/android/downloadlib/a/b/d;-><init>(I)V

    goto :goto_c
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 169
    if-nez p0, :cond_4

    .line 182
    :goto_3
    return v0

    .line 173
    :cond_4
    :try_start_4
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 174
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 175
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 176
    const/high16 v1, 0x10000000

    invoke-virtual {v2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 177
    const-string v1, "open_url"

    invoke-virtual {v2, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 178
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_1f} :catch_21

    .line 179
    const/4 v0, 0x1

    goto :goto_3

    .line 180
    :catch_21
    move-exception v1

    .line 181
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3
.end method

.method private static d(Landroid/content/Context;Ljava/lang/String;)Lcom/ss/android/downloadlib/a/b/d;
    .registers 6
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 74
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://www.samsungapps.com/appquery/appDetail.as?appId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 75
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 76
    const-string v2, "com.sec.android.app.samsungapps"

    const-string v3, "com.sec.android.app.samsungapps.Main"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 77
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 78
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 79
    new-instance v0, Lcom/ss/android/downloadlib/a/b/d;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lcom/ss/android/downloadlib/a/b/d;-><init>(I)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2f} :catch_30

    .line 81
    :goto_2f
    return-object v0

    .line 80
    :catch_30
    move-exception v0

    .line 81
    new-instance v0, Lcom/ss/android/downloadlib/a/b/d;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lcom/ss/android/downloadlib/a/b/d;-><init>(I)V

    goto :goto_2f
.end method
