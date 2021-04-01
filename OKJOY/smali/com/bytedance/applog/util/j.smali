.class public Lcom/bytedance/applog/util/j;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 46
    const-string v0, "com.facebook.auth.login"

    invoke-static {p0, v0}, Lcom/bytedance/applog/util/j;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 35
    if-eqz p0, :cond_9

    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    if-nez v1, :cond_a

    .line 42
    :cond_9
    :goto_9
    return-object v0

    .line 38
    :cond_a
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 39
    if-eqz v1, :cond_9

    array-length v2, v1

    if-lez v2, :cond_9

    .line 40
    const/4 v0, 0x0

    aget-object v0, v1, v0

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    goto :goto_9
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 50
    const-string v0, "com.twitter.android.auth.login"

    invoke-static {p0, v0}, Lcom/bytedance/applog/util/j;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 54
    const-string v0, "com.tencent.mm.account"

    invoke-static {p0, v0}, Lcom/bytedance/applog/util/j;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 58
    const-string v0, "com.sina.weibo.account"

    invoke-static {p0, v0}, Lcom/bytedance/applog/util/j;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static e(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 62
    const-string v0, "com.renren.renren_account_manager"

    invoke-static {p0, v0}, Lcom/bytedance/applog/util/j;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static f(Landroid/content/Context;)Lorg/json/JSONObject;
    .registers 5

    .prologue
    .line 66
    sget-boolean v0, Lcom/bytedance/applog/util/i;->b:Z

    if-eqz v0, :cond_a

    .line 67
    const-string v0, "ThirdAccountUtils pTPA c"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bytedance/applog/util/i;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 70
    :cond_a
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 71
    const-string v1, "account_facebook"

    .line 73
    :try_start_11
    invoke-static {p0}, Lcom/bytedance/applog/util/j;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 74
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1e

    .line 75
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_1e} :catch_63

    .line 79
    :cond_1e
    :goto_1e
    const-string v1, "account_twitter"

    .line 81
    :try_start_20
    invoke-static {p0}, Lcom/bytedance/applog/util/j;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 82
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2d

    .line 83
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_2d} :catch_61

    .line 87
    :cond_2d
    :goto_2d
    const-string v1, "account_weibo"

    .line 89
    :try_start_2f
    invoke-static {p0}, Lcom/bytedance/applog/util/j;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 90
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3c

    .line 91
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_3c} :catch_5f

    .line 95
    :cond_3c
    :goto_3c
    const-string v1, "account_weixin"

    .line 97
    :try_start_3e
    invoke-static {p0}, Lcom/bytedance/applog/util/j;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 98
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4b

    .line 99
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_4b} :catch_5d

    .line 103
    :cond_4b
    :goto_4b
    const-string v1, "account_renren"

    .line 105
    :try_start_4d
    invoke-static {p0}, Lcom/bytedance/applog/util/j;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 106
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5a

    .line 107
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_5a} :catch_5b

    .line 111
    :cond_5a
    :goto_5a
    return-object v0

    .line 109
    :catch_5b
    move-exception v1

    goto :goto_5a

    .line 101
    :catch_5d
    move-exception v1

    goto :goto_4b

    .line 93
    :catch_5f
    move-exception v1

    goto :goto_3c

    .line 85
    :catch_61
    move-exception v1

    goto :goto_2d

    .line 77
    :catch_63
    move-exception v1

    goto :goto_1e
.end method
