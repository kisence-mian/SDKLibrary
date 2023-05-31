.class public Lcom/kwad/sdk/e/d;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/sdk/e/d$a;
    }
.end annotation


# direct methods
.method private static a(Landroid/content/Context;Ljava/util/List;)Ljava/util/Map;
    .registers 8
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/kwad/sdk/e/d$a;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    if-eqz p0, :cond_a

    if-nez p1, :cond_c

    :cond_a
    move-object v0, v1

    :goto_b
    return-object v0

    :cond_c
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_10
    :goto_10
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_55

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :try_start_1c
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    if-eqz v4, :cond_10

    new-instance v5, Lcom/kwad/sdk/e/d$a;

    invoke-direct {v5}, Lcom/kwad/sdk/e/d$a;-><init>()V

    iget-object v0, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object v0, v5, Lcom/kwad/sdk/e/d$a;->a:Ljava/lang/String;

    iget-object v0, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_47

    iget-object v0, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v0}, Lcom/kwad/sdk/e/d;->a(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-nez v0, :cond_44

    iget-object v0, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v0}, Lcom/kwad/sdk/e/d;->b(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-eqz v0, :cond_53

    :cond_44
    const/4 v0, 0x1

    :goto_45
    iput-boolean v0, v5, Lcom/kwad/sdk/e/d$a;->c:Z

    :cond_47
    iget-object v0, v4, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v0, v5, Lcom/kwad/sdk/e/d$a;->b:Ljava/lang/String;

    iget-object v0, v5, Lcom/kwad/sdk/e/d$a;->a:Ljava/lang/String;

    invoke-interface {v1, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_50} :catch_51

    goto :goto_10

    :catch_51
    move-exception v0

    goto :goto_10

    :cond_53
    move v0, v2

    goto :goto_45

    :cond_55
    move-object v0, v1

    goto :goto_b
.end method

.method public static a(Landroid/content/Context;)Lorg/json/JSONArray;
    .registers 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-static {p0}, Lcom/kwad/sdk/e/d;->b(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    invoke-static {}, Lcom/kwad/sdk/c/a/a;->d()Ljava/util/List;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/kwad/sdk/e/d;->a(Landroid/content/Context;Ljava/util/List;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    invoke-static {v0}, Lcom/kwad/sdk/e/d;->a(Ljava/util/Map;)Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/util/Map;)Lorg/json/JSONArray;
    .registers 7
    .param p0    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/kwad/sdk/e/d$a;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_d
    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_47

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/e/d$a;

    if-eqz v0, :cond_d

    iget-object v3, v0, Lcom/kwad/sdk/e/d$a;->a:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_d

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    iget-object v4, v0, Lcom/kwad/sdk/e/d$a;->a:Ljava/lang/String;

    const-string v5, "pkgName"

    invoke-static {v3, v5, v4}, Lcom/kwad/sdk/e/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "system_app"

    iget-boolean v5, v0, Lcom/kwad/sdk/e/d$a;->c:Z

    invoke-static {v3, v4, v5}, Lcom/kwad/sdk/e/e;->a(Lorg/json/JSONObject;Ljava/lang/String;I)V

    iget-object v0, v0, Lcom/kwad/sdk/e/d$a;->b:Ljava/lang/String;

    const-string v4, "appVersion"

    invoke-static {v3, v4, v0}, Lcom/kwad/sdk/e/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1, v3}, Lcom/kwad/sdk/e/e;->a(Lorg/json/JSONArray;Lorg/json/JSONObject;)V

    goto :goto_d

    :cond_47
    return-object v1
.end method

.method private static a(Landroid/content/pm/ApplicationInfo;)Z
    .registers 2

    iget v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static b(Landroid/content/Context;)Ljava/util/Map;
    .registers 7
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/kwad/sdk/e/d$a;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    if-nez p0, :cond_9

    move-object v0, v1

    :goto_8
    return-object v0

    :cond_9
    :try_start_9
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/16 v4, 0x20

    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_28
    :goto_28
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_80

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    if-eqz v0, :cond_28

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v4, :cond_28

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_28

    new-instance v4, Lcom/kwad/sdk/e/d$a;

    invoke-direct {v4}, Lcom/kwad/sdk/e/d$a;-><init>()V

    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iput-object v5, v4, Lcom/kwad/sdk/e/d$a;->a:Ljava/lang/String;

    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v5, :cond_6c

    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v5}, Lcom/kwad/sdk/e/d;->a(Landroid/content/pm/ApplicationInfo;)Z

    move-result v5

    if-nez v5, :cond_69

    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v5}, Lcom/kwad/sdk/e/d;->b(Landroid/content/pm/ApplicationInfo;)Z

    move-result v5

    if-eqz v5, :cond_82

    :cond_69
    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/kwad/sdk/e/d$a;->c:Z

    :cond_6c
    :goto_6c
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v2, v0, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v0, v4, Lcom/kwad/sdk/e/d$a;->b:Ljava/lang/String;

    iget-object v0, v4, Lcom/kwad/sdk/e/d$a;->a:Ljava/lang/String;

    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_28

    :catch_7f
    move-exception v0

    :cond_80
    move-object v0, v1

    goto :goto_8

    :cond_82
    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/kwad/sdk/e/d$a;->c:Z
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_85} :catch_7f

    goto :goto_6c
.end method

.method private static b(Landroid/content/pm/ApplicationInfo;)Z
    .registers 2

    iget v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static b(Landroid/content/Context;Ljava/util/List;)[Lorg/json/JSONArray;
    .registers 12
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)[",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x2

    new-array v1, v0, [Lorg/json/JSONArray;

    if-eqz p0, :cond_f

    if-eqz p1, :cond_f

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    :cond_f
    move-object v0, v1

    :goto_10
    return-object v0

    :cond_11
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1f
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7d

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :try_start_2b
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v8, 0x0

    invoke-virtual {v2, v0, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v8

    if-eqz v8, :cond_70

    new-instance v9, Lcom/kwad/sdk/e/d$a;

    invoke-direct {v9}, Lcom/kwad/sdk/e/d$a;-><init>()V

    iget-object v2, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object v2, v9, Lcom/kwad/sdk/e/d$a;->a:Ljava/lang/String;

    iget-object v2, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_56

    iget-object v2, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v2}, Lcom/kwad/sdk/e/d;->a(Landroid/content/pm/ApplicationInfo;)Z

    move-result v2

    if-nez v2, :cond_53

    iget-object v2, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v2}, Lcom/kwad/sdk/e/d;->b(Landroid/content/pm/ApplicationInfo;)Z

    move-result v2

    if-eqz v2, :cond_6e

    :cond_53
    move v2, v4

    :goto_54
    iput-boolean v2, v9, Lcom/kwad/sdk/e/d$a;->c:Z

    :cond_56
    iget-object v2, v8, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v2, v9, Lcom/kwad/sdk/e/d$a;->b:Ljava/lang/String;

    iget-object v2, v9, Lcom/kwad/sdk/e/d$a;->a:Ljava/lang/String;

    invoke-interface {v5, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_5f} :catch_60

    goto :goto_1f

    :catch_60
    move-exception v2

    new-instance v2, Lcom/kwad/sdk/e/d$a;

    invoke-direct {v2}, Lcom/kwad/sdk/e/d$a;-><init>()V

    iput-object v0, v2, Lcom/kwad/sdk/e/d$a;->a:Ljava/lang/String;

    iget-object v0, v2, Lcom/kwad/sdk/e/d$a;->a:Ljava/lang/String;

    invoke-interface {v6, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1f

    :cond_6e
    move v2, v3

    goto :goto_54

    :cond_70
    :try_start_70
    new-instance v2, Lcom/kwad/sdk/e/d$a;

    invoke-direct {v2}, Lcom/kwad/sdk/e/d$a;-><init>()V

    iput-object v0, v2, Lcom/kwad/sdk/e/d$a;->a:Ljava/lang/String;

    iget-object v8, v2, Lcom/kwad/sdk/e/d$a;->a:Ljava/lang/String;

    invoke-interface {v6, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7c
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_7c} :catch_60

    goto :goto_1f

    :cond_7d
    invoke-static {v5}, Lcom/kwad/sdk/e/d;->a(Ljava/util/Map;)Lorg/json/JSONArray;

    move-result-object v0

    aput-object v0, v1, v3

    invoke-static {v6}, Lcom/kwad/sdk/e/d;->a(Ljava/util/Map;)Lorg/json/JSONArray;

    move-result-object v0

    aput-object v0, v1, v4

    move-object v0, v1

    goto :goto_10
.end method
