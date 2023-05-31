.class public final Lcom/mintegral/msdk/base/utils/p;
.super Ljava/lang/Object;
.source "ResourceUtil.java"


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .registers 8

    .prologue
    const/4 v0, -0x1

    .line 25
    :try_start_1
    const-string v1, ""
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_3} :catch_34

    .line 27
    :try_start_3
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mintegral/msdk/base/controller/a;->a()Ljava/lang/String;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_a} :catch_1e

    move-result-object v1

    .line 32
    :goto_b
    :try_start_b
    invoke-static {v1}, Lcom/mintegral/msdk/base/utils/s;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 33
    if-eqz p0, :cond_17

    .line 34
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 38
    :cond_17
    invoke-static {v1}, Lcom/mintegral/msdk/base/utils/s;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 50
    :cond_1d
    :goto_1d
    return v0

    .line 29
    :catch_1e
    move-exception v2

    const-string v2, "ResourceUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "MTGSDKContext.getInstance() is null resName:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_33} :catch_34

    goto :goto_b

    .line 48
    :catch_34
    move-exception v1

    const-string v1, "ResourceUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Resource not found resName:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1d

    .line 42
    :cond_4a
    if-eqz p0, :cond_1d

    .line 43
    :try_start_4c
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1, p2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_53} :catch_34

    move-result v0

    goto :goto_1d
.end method
