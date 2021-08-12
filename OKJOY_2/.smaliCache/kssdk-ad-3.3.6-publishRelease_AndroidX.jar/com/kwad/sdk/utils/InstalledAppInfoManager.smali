.class public Lcom/kwad/sdk/utils/InstalledAppInfoManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/sdk/utils/InstalledAppInfoManager$AppPackageInfo;
    }
.end annotation


# direct methods
.method public static a(Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageManager;)Lcom/kwad/sdk/utils/InstalledAppInfoManager$AppPackageInfo;
    .registers 5

    new-instance v0, Lcom/kwad/sdk/utils/InstalledAppInfoManager$AppPackageInfo;

    invoke-direct {v0}, Lcom/kwad/sdk/utils/InstalledAppInfoManager$AppPackageInfo;-><init>()V

    iget-object v1, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object v1, v0, Lcom/kwad/sdk/utils/InstalledAppInfoManager$AppPackageInfo;->packageName:Ljava/lang/String;

    iget-object v1, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_23

    iget-object v1, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v1}, Lcom/kwad/sdk/utils/InstalledAppInfoManager;->a(Landroid/content/pm/ApplicationInfo;)Z

    move-result v1

    if-nez v1, :cond_20

    iget-object v1, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v1}, Lcom/kwad/sdk/utils/InstalledAppInfoManager;->b(Landroid/content/pm/ApplicationInfo;)Z

    move-result v1

    if-eqz v1, :cond_1e

    goto :goto_20

    :cond_1e
    const/4 v1, 0x0

    goto :goto_21

    :cond_20
    :goto_20
    const/4 v1, 0x1

    :goto_21
    iput-boolean v1, v0, Lcom/kwad/sdk/utils/InstalledAppInfoManager$AppPackageInfo;->isSystemApp:Z

    :cond_23
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v1, v0, Lcom/kwad/sdk/utils/InstalledAppInfoManager$AppPackageInfo;->versionName:Ljava/lang/String;

    iget-wide v1, p0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    iput-wide v1, v0, Lcom/kwad/sdk/utils/InstalledAppInfoManager$AppPackageInfo;->firstInstallTime:J

    iget-wide v1, p0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    iput-wide v1, v0, Lcom/kwad/sdk/utils/InstalledAppInfoManager$AppPackageInfo;->lastUpdateTime:J

    if-eqz p1, :cond_46

    iget-object v1, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_46

    :try_start_35
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1, p0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/kwad/sdk/utils/InstalledAppInfoManager$AppPackageInfo;->appName:Ljava/lang/String;
    :try_end_41
    .catchall {:try_start_35 .. :try_end_41} :catchall_42

    goto :goto_46

    :catchall_42
    move-exception p0

    invoke-static {p0}, Lcom/kwad/sdk/core/d/a;->b(Ljava/lang/Throwable;)V

    :cond_46
    :goto_46
    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lorg/json/JSONArray;
    .registers 3

    invoke-static {p0}, Lcom/kwad/sdk/utils/InstalledAppInfoManager;->b(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    invoke-static {}, Lcom/kwad/sdk/core/config/c;->d()Ljava/util/List;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/kwad/sdk/utils/InstalledAppInfoManager;->b(Landroid/content/Context;Ljava/util/List;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    invoke-static {v0}, Lcom/kwad/sdk/utils/InstalledAppInfoManager;->a(Ljava/util/Map;)Lorg/json/JSONArray;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/util/Map;)Lorg/json/JSONArray;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/kwad/sdk/utils/InstalledAppInfoManager$AppPackageInfo;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    :try_start_5
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kwad/sdk/utils/InstalledAppInfoManager$AppPackageInfo;

    if-eqz v2, :cond_d

    iget-object v3, v2, Lcom/kwad/sdk/utils/InstalledAppInfoManager$AppPackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_d

    invoke-static {v2}, Lcom/kwad/sdk/utils/InstalledAppInfoManager;->a(Lcom/kwad/sdk/utils/InstalledAppInfoManager$AppPackageInfo;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONArray;Lorg/json/JSONObject;)V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_30} :catch_31

    goto :goto_d

    :catch_31
    move-exception p0

    invoke-static {p0}, Lcom/kwad/sdk/core/d/a;->b(Ljava/lang/Throwable;)V

    :cond_35
    return-object v0
.end method

.method public static a(Lcom/kwad/sdk/utils/InstalledAppInfoManager$AppPackageInfo;)Lorg/json/JSONObject;
    .registers 5

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lcom/kwad/sdk/utils/InstalledAppInfoManager$AppPackageInfo;->packageName:Ljava/lang/String;

    const-string v2, "pkgName"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/kwad/sdk/utils/InstalledAppInfoManager$AppPackageInfo;->isSystemApp:Z

    const-string v2, "system_app"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/kwad/sdk/utils/InstalledAppInfoManager$AppPackageInfo;->versionName:Ljava/lang/String;

    const-string v2, "appVersion"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/kwad/sdk/utils/InstalledAppInfoManager$AppPackageInfo;->firstInstallTime:J

    const-string v3, "firstInstallTime"

    invoke-static {v0, v3, v1, v2}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;J)V

    iget-wide v1, p0, Lcom/kwad/sdk/utils/InstalledAppInfoManager$AppPackageInfo;->lastUpdateTime:J

    const-string v3, "lastUpdateTime"

    invoke-static {v0, v3, v1, v2}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;J)V

    iget v1, p0, Lcom/kwad/sdk/utils/InstalledAppInfoManager$AppPackageInfo;->reportMethod:I

    const-string v2, "reportMethod"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;I)V

    iget-object p0, p0, Lcom/kwad/sdk/utils/InstalledAppInfoManager$AppPackageInfo;->appName:Ljava/lang/String;

    const-string v1, "appName"

    invoke-static {v0, v1, p0}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static a(Landroid/content/pm/ApplicationInfo;)Z
    .registers 2

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public static a(Landroid/content/Context;Ljava/util/List;)[Lorg/json/JSONArray;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)[",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Lorg/json/JSONArray;

    if-eqz p0, :cond_65

    if-eqz p1, :cond_65

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_e

    goto :goto_65

    :cond_e
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_58

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    :try_start_29
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    if-eqz v4, :cond_3d

    invoke-static {v4, v5}, Lcom/kwad/sdk/utils/InstalledAppInfoManager;->a(Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageManager;)Lcom/kwad/sdk/utils/InstalledAppInfoManager$AppPackageInfo;

    move-result-object v4

    iget-object v5, v4, Lcom/kwad/sdk/utils/InstalledAppInfoManager$AppPackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1c

    :cond_3d
    new-instance v4, Lcom/kwad/sdk/utils/InstalledAppInfoManager$AppPackageInfo;

    invoke-direct {v4}, Lcom/kwad/sdk/utils/InstalledAppInfoManager$AppPackageInfo;-><init>()V

    iput-object v3, v4, Lcom/kwad/sdk/utils/InstalledAppInfoManager$AppPackageInfo;->packageName:Ljava/lang/String;

    iget-object v5, v4, Lcom/kwad/sdk/utils/InstalledAppInfoManager$AppPackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_49} :catch_4a

    goto :goto_1c

    :catch_4a
    move-exception v4

    new-instance v4, Lcom/kwad/sdk/utils/InstalledAppInfoManager$AppPackageInfo;

    invoke-direct {v4}, Lcom/kwad/sdk/utils/InstalledAppInfoManager$AppPackageInfo;-><init>()V

    iput-object v3, v4, Lcom/kwad/sdk/utils/InstalledAppInfoManager$AppPackageInfo;->packageName:Ljava/lang/String;

    iget-object v3, v4, Lcom/kwad/sdk/utils/InstalledAppInfoManager$AppPackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1c

    :cond_58
    invoke-static {v1}, Lcom/kwad/sdk/utils/InstalledAppInfoManager;->a(Ljava/util/Map;)Lorg/json/JSONArray;

    move-result-object p0

    aput-object p0, v0, v4

    const/4 p0, 0x1

    invoke-static {v2}, Lcom/kwad/sdk/utils/InstalledAppInfoManager;->a(Ljava/util/Map;)Lorg/json/JSONArray;

    move-result-object p1

    aput-object p1, v0, p0

    :cond_65
    :goto_65
    return-object v0
.end method

.method public static b(Landroid/content/Context;)Ljava/util/Map;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/kwad/sdk/utils/InstalledAppInfoManager$AppPackageInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-nez p0, :cond_8

    return-object v0

    :cond_8
    :try_start_8
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/16 v4, 0x20

    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    invoke-static {p0}, Lcom/kwad/sdk/utils/AppStatusHelper;->b(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2b
    :goto_2b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_6b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    if-eqz v3, :cond_2b

    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v5, :cond_2b

    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2b

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    if-eqz p0, :cond_57

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_57

    invoke-interface {p0, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_57
    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    if-nez v3, :cond_5e

    goto :goto_2b

    :cond_5e
    invoke-static {v3, v1}, Lcom/kwad/sdk/utils/InstalledAppInfoManager;->a(Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageManager;)Lcom/kwad/sdk/utils/InstalledAppInfoManager$AppPackageInfo;

    move-result-object v3

    const/4 v4, 0x1

    iput v4, v3, Lcom/kwad/sdk/utils/InstalledAppInfoManager$AppPackageInfo;->reportMethod:I

    iget-object v4, v3, Lcom/kwad/sdk/utils/InstalledAppInfoManager$AppPackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2b

    :cond_6b
    if-eqz p0, :cond_9a

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9a

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_77
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_83} :catch_99

    :try_start_83
    invoke-virtual {v1, v2, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    if-nez v2, :cond_8a

    goto :goto_77

    :cond_8a
    invoke-static {v2, v1}, Lcom/kwad/sdk/utils/InstalledAppInfoManager;->a(Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageManager;)Lcom/kwad/sdk/utils/InstalledAppInfoManager$AppPackageInfo;

    move-result-object v2

    const/4 v3, 0x2

    iput v3, v2, Lcom/kwad/sdk/utils/InstalledAppInfoManager$AppPackageInfo;->reportMethod:I

    iget-object v3, v2, Lcom/kwad/sdk/utils/InstalledAppInfoManager$AppPackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_96
    .catchall {:try_start_83 .. :try_end_96} :catchall_97

    goto :goto_77

    :catchall_97
    move-exception v2

    goto :goto_77

    :catch_99
    move-exception p0

    :cond_9a
    return-object v0
.end method

.method private static b(Landroid/content/Context;Ljava/util/List;)Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/kwad/sdk/utils/InstalledAppInfoManager$AppPackageInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p0, :cond_31

    if-nez p1, :cond_a

    goto :goto_31

    :cond_a
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_e
    :goto_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :try_start_1a
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-eqz v1, :cond_e

    invoke-static {v1, v2}, Lcom/kwad/sdk/utils/InstalledAppInfoManager;->a(Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageManager;)Lcom/kwad/sdk/utils/InstalledAppInfoManager$AppPackageInfo;

    move-result-object v1

    iget-object v2, v1, Lcom/kwad/sdk/utils/InstalledAppInfoManager$AppPackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_2e} :catch_2f

    goto :goto_e

    :catch_2f
    move-exception v1

    goto :goto_e

    :cond_31
    :goto_31
    return-object v0
.end method

.method private static b(Landroid/content/pm/ApplicationInfo;)Z
    .registers 1

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 p0, p0, 0x80

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method
