.class public Lcom/bytedance/sdk/openadsdk/preload/geckox/utils/a;
.super Ljava/lang/Object;
.source "AppUtils.java"


# direct methods
.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 20
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 21
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 22
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_10

    return-object p0

    .line 23
    :catch_10
    move-exception p0

    .line 24
    const-string v0, "gecko-debug-tag"

    const-string v1, "getVersion:"

    invoke-static {v0, v1, p0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/h/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 25
    const-string p0, "null"

    return-object p0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .line 31
    const-string v0, ""

    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 32
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    .line 33
    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 34
    if-nez p0, :cond_12

    .line 35
    return-object v0

    .line 37
    :cond_12
    invoke-virtual {p0, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_1a
    .catchall {:try_start_2 .. :try_end_1a} :catchall_1b

    return-object p0

    .line 38
    :catchall_1b
    move-exception p0

    .line 39
    const-string v1, "gecko-debug-tag"

    const-string v2, "getApplicationName:"

    invoke-static {v1, v2, p0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/h/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 41
    return-object v0
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    .line 59
    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    .line 60
    const-string v2, "activity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 61
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object p0

    .line 62
    if-nez p0, :cond_14

    .line 63
    return-object v0

    .line 65
    :cond_14
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_18
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 66
    iget v3, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v3, v1, :cond_2b

    .line 67
    iget-object p0, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2a} :catch_2d

    return-object p0

    .line 69
    :cond_2b
    goto :goto_18

    .line 72
    :cond_2c
    goto :goto_35

    .line 70
    :catch_2d
    move-exception p0

    .line 71
    const-string v1, "gecko-debug-tag"

    const-string v2, "getProcessName:"

    invoke-static {v1, v2, p0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/h/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 73
    :goto_35
    return-object v0
.end method
