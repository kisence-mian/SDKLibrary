.class public Lcom/anythink/china/api/ATChinaSDKHandler;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/core/api/IATChinaSDKHandler;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fillRequestData(Lorg/json/JSONObject;Lcom/anythink/core/c/a;)V
    .registers 7

    .prologue
    const/4 v1, 0x1

    .line 23
    if-eqz p2, :cond_31

    invoke-virtual {p2}, Lcom/anythink/core/c/a;->e()Ljava/lang/String;

    move-result-object v0

    .line 24
    :goto_7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 26
    :try_start_d
    const-string v0, "mac"

    invoke-static {}, Lcom/anythink/china/b/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 27
    const-string v0, "imei"

    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/b/a/e;->c()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/anythink/china/b/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 28
    const-string v0, "oaid"

    invoke-static {}, Lcom/anythink/china/b/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_30} :catch_7b

    .line 51
    :goto_30
    return-void

    .line 23
    :cond_31
    const-string v0, ""

    goto :goto_7

    .line 36
    :cond_34
    :try_start_34
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 37
    const-string v0, "m"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_3e} :catch_6f

    move-result v0

    .line 38
    :try_start_3f
    const-string v3, "i"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_44} :catch_79

    move-result v2

    .line 44
    :goto_45
    :try_start_45
    const-string v3, "mac"

    if-ne v0, v1, :cond_73

    invoke-static {}, Lcom/anythink/china/b/a;->a()Ljava/lang/String;

    move-result-object v0

    :goto_4d
    invoke-virtual {p1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 45
    const-string v3, "imei"

    if-ne v2, v1, :cond_76

    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/b/a/e;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/china/b/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :goto_60
    invoke-virtual {p1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 46
    const-string v0, "oaid"

    invoke-static {}, Lcom/anythink/china/b/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_30

    .line 51
    :catch_6d
    move-exception v0

    goto :goto_30

    :catch_6f
    move-exception v0

    move v0, v1

    :goto_71
    move v2, v1

    goto :goto_45

    .line 44
    :cond_73
    const-string v0, ""

    goto :goto_4d

    .line 45
    :cond_76
    const-string v0, ""
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_78} :catch_6d

    goto :goto_60

    :catch_79
    move-exception v2

    goto :goto_71

    .line 31
    :catch_7b
    move-exception v0

    goto :goto_30
.end method

.method public initDeviceInfo(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 18
    invoke-static {p1}, Lcom/anythink/china/b/a;->a(Landroid/content/Context;)V

    .line 19
    return-void
.end method

.method public requestPermissionIfNecessary(Landroid/content/Context;)V
    .registers 7

    .prologue
    .line 59
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.READ_PHONE_STATE"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    .line 1026
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    const v2, 0x3b9aca00

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    .line 1027
    sget-object v2, Lcom/anythink/china/activity/TransparentActivity;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1028
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/anythink/china/activity/TransparentActivity;

    invoke-direct {v2, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1029
    const-string v3, "type"

    const/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1030
    const-string v3, "request_code"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1031
    const-string v1, "permission_list"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 1032
    const/high16 v0, 0x10000000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1033
    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 60
    return-void
.end method
