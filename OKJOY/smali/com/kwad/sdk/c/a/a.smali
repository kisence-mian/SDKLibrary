.class public Lcom/kwad/sdk/c/a/a;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static volatile a:Lcom/kwad/sdk/core/response/model/AdConfigData$AdConfigs;


# direct methods
.method public static a()I
    .registers 1

    sget-object v0, Lcom/kwad/sdk/c/a/a;->a:Lcom/kwad/sdk/core/response/model/AdConfigData$AdConfigs;

    if-nez v0, :cond_7

    const/16 v0, 0x14

    :goto_6
    return v0

    :cond_7
    sget-object v0, Lcom/kwad/sdk/c/a/a;->a:Lcom/kwad/sdk/core/response/model/AdConfigData$AdConfigs;

    iget v0, v0, Lcom/kwad/sdk/core/response/model/AdConfigData$AdConfigs;->batchReportCatchLimit:I

    goto :goto_6
.end method

.method public static a(Landroid/content/Context;)V
    .registers 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-static {p0}, Lcom/kwad/sdk/c/a/a;->b(Landroid/content/Context;)Lcom/kwad/sdk/core/response/model/AdConfigData$AdConfigs;

    move-result-object v0

    sput-object v0, Lcom/kwad/sdk/c/a/a;->a:Lcom/kwad/sdk/core/response/model/AdConfigData$AdConfigs;

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/kwad/sdk/core/response/model/AdConfigData$AdConfigs;)V
    .registers 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-static {p0, p1}, Lcom/kwad/sdk/c/a/a;->b(Landroid/content/Context;Lcom/kwad/sdk/core/response/model/AdConfigData$AdConfigs;)Z

    return-void
.end method

.method public static b()I
    .registers 1

    sget-object v0, Lcom/kwad/sdk/c/a/a;->a:Lcom/kwad/sdk/core/response/model/AdConfigData$AdConfigs;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    sget-object v0, Lcom/kwad/sdk/c/a/a;->a:Lcom/kwad/sdk/core/response/model/AdConfigData$AdConfigs;

    iget v0, v0, Lcom/kwad/sdk/core/response/model/AdConfigData$AdConfigs;->likeButtonSwitch:I

    goto :goto_5
.end method

.method private static b(Landroid/content/Context;)Lcom/kwad/sdk/core/response/model/AdConfigData$AdConfigs;
    .registers 6
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const/4 v4, 0x0

    const/4 v3, 0x1

    new-instance v0, Lcom/kwad/sdk/core/response/model/AdConfigData$AdConfigs;

    invoke-direct {v0}, Lcom/kwad/sdk/core/response/model/AdConfigData$AdConfigs;-><init>()V

    if-eqz p0, :cond_73

    const-string v1, "ksadsdk_config"

    invoke-virtual {p0, v1, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    if-eqz v1, :cond_73

    const-string v2, "toolbarSwitch"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Lcom/kwad/sdk/core/response/model/AdConfigData$AdConfigs;->toolbarSwitch:I

    const-string v2, "likeButtonSwitch"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Lcom/kwad/sdk/core/response/model/AdConfigData$AdConfigs;->likeButtonSwitch:I

    const-string v2, "moreButtonSwitch"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Lcom/kwad/sdk/core/response/model/AdConfigData$AdConfigs;->moreButtonSwitch:I

    const-string v2, "seekBarSwitch"

    const/16 v3, 0x3b

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Lcom/kwad/sdk/core/response/model/AdConfigData$AdConfigs;->seekBarSwitch:I

    const-string v2, "videoCacheSwitch"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Lcom/kwad/sdk/core/response/model/AdConfigData$AdConfigs;->videoCacheSwitch:I

    const-string v2, "pldat"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_69

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_69

    :try_start_4b
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    new-instance v3, Ljava/lang/String;

    invoke-static {}, Lcom/kwad/sdk/c/b/a;->b()Lcom/kwad/sdk/c/b/a$a;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/kwad/sdk/c/b/a$a;->a([B)[B

    move-result-object v2

    const-string v4, "UTF-8"

    invoke-direct {v3, v2, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/kwad/sdk/e/e;->a(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v0, Lcom/kwad/sdk/core/response/model/AdConfigData$AdConfigs;->pkgNameList:Ljava/util/List;
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_69} :catch_74

    :cond_69
    :goto_69
    const-string v2, "reportCatch"

    const/16 v3, 0x14

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/kwad/sdk/core/response/model/AdConfigData$AdConfigs;->batchReportCatchLimit:I

    :cond_73
    return-object v0

    :catch_74
    move-exception v2

    goto :goto_69
.end method

.method private static b(Landroid/content/Context;Lcom/kwad/sdk/core/response/model/AdConfigData$AdConfigs;)Z
    .registers 6
    .param p1    # Lcom/kwad/sdk/core/response/model/AdConfigData$AdConfigs;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_5f

    const-string v1, "ksadsdk_config"

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget v1, p1, Lcom/kwad/sdk/core/response/model/AdConfigData$AdConfigs;->toolbarSwitch:I

    const-string v2, "toolbarSwitch"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    iget v1, p1, Lcom/kwad/sdk/core/response/model/AdConfigData$AdConfigs;->likeButtonSwitch:I

    const-string v2, "likeButtonSwitch"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    iget v1, p1, Lcom/kwad/sdk/core/response/model/AdConfigData$AdConfigs;->moreButtonSwitch:I

    const-string v2, "moreButtonSwitch"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    iget v1, p1, Lcom/kwad/sdk/core/response/model/AdConfigData$AdConfigs;->seekBarSwitch:I

    const-string v2, "seekBarSwitch"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    iget v1, p1, Lcom/kwad/sdk/core/response/model/AdConfigData$AdConfigs;->videoCacheSwitch:I

    const-string v2, "videoCacheSwitch"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    iget-object v1, p1, Lcom/kwad/sdk/core/response/model/AdConfigData$AdConfigs;->pkgNameList:Ljava/util/List;

    if-eqz v1, :cond_54

    :try_start_34
    invoke-static {v1}, Lcom/kwad/sdk/e/e;->a(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-static {}, Lcom/kwad/sdk/c/b/a;->c()Lcom/kwad/sdk/c/b/a$b;

    move-result-object v2

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/kwad/sdk/c/b/a$b;->a([B)[B

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-string v1, "pldat"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_54} :catch_60

    :cond_54
    :goto_54
    iget v1, p1, Lcom/kwad/sdk/core/response/model/AdConfigData$AdConfigs;->batchReportCatchLimit:I

    const-string v2, "reportCatch"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    :cond_5f
    return v0

    :catch_60
    move-exception v1

    goto :goto_54
.end method

.method public static c()I
    .registers 1

    sget-object v0, Lcom/kwad/sdk/c/a/a;->a:Lcom/kwad/sdk/core/response/model/AdConfigData$AdConfigs;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    sget-object v0, Lcom/kwad/sdk/c/a/a;->a:Lcom/kwad/sdk/core/response/model/AdConfigData$AdConfigs;

    iget v0, v0, Lcom/kwad/sdk/core/response/model/AdConfigData$AdConfigs;->moreButtonSwitch:I

    goto :goto_5
.end method

.method public static d()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/kwad/sdk/c/a/a;->a:Lcom/kwad/sdk/core/response/model/AdConfigData$AdConfigs;

    if-nez v0, :cond_a

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_9
    return-object v0

    :cond_a
    sget-object v0, Lcom/kwad/sdk/c/a/a;->a:Lcom/kwad/sdk/core/response/model/AdConfigData$AdConfigs;

    iget-object v0, v0, Lcom/kwad/sdk/core/response/model/AdConfigData$AdConfigs;->pkgNameList:Ljava/util/List;

    goto :goto_9
.end method

.method public static e()I
    .registers 1

    sget-object v0, Lcom/kwad/sdk/c/a/a;->a:Lcom/kwad/sdk/core/response/model/AdConfigData$AdConfigs;

    if-nez v0, :cond_7

    const/16 v0, 0x3b

    :goto_6
    return v0

    :cond_7
    sget-object v0, Lcom/kwad/sdk/c/a/a;->a:Lcom/kwad/sdk/core/response/model/AdConfigData$AdConfigs;

    iget v0, v0, Lcom/kwad/sdk/core/response/model/AdConfigData$AdConfigs;->seekBarSwitch:I

    goto :goto_6
.end method

.method public static f()I
    .registers 1

    sget-object v0, Lcom/kwad/sdk/c/a/a;->a:Lcom/kwad/sdk/core/response/model/AdConfigData$AdConfigs;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    sget-object v0, Lcom/kwad/sdk/c/a/a;->a:Lcom/kwad/sdk/core/response/model/AdConfigData$AdConfigs;

    iget v0, v0, Lcom/kwad/sdk/core/response/model/AdConfigData$AdConfigs;->toolbarSwitch:I

    goto :goto_5
.end method

.method public static g()Z
    .registers 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget-object v2, Lcom/kwad/sdk/c/a/a;->a:Lcom/kwad/sdk/core/response/model/AdConfigData$AdConfigs;

    if-nez v2, :cond_7

    :goto_6
    return v1

    :cond_7
    sget-object v2, Lcom/kwad/sdk/c/a/a;->a:Lcom/kwad/sdk/core/response/model/AdConfigData$AdConfigs;

    iget v2, v2, Lcom/kwad/sdk/core/response/model/AdConfigData$AdConfigs;->videoCacheSwitch:I

    if-ne v2, v0, :cond_f

    :goto_d
    move v1, v0

    goto :goto_6

    :cond_f
    move v0, v1

    goto :goto_d
.end method
