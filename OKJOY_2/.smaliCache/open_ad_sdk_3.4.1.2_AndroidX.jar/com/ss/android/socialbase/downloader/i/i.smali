.class public Lcom/ss/android/socialbase/downloader/i/i;
.super Ljava/lang/Object;
.source "SystemUtils.java"


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7

    .line 16
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v1, 0x4

    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 17
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    array-length p1, p0

    move v1, v0

    :goto_e
    if-ge v1, p1, :cond_2b

    aget-object v2, p0, v1

    .line 18
    iget-boolean v3, v2, Landroid/content/pm/ServiceInfo;->exported:Z

    if-eqz v3, :cond_28

    iget-boolean v3, v2, Landroid/content/pm/ServiceInfo;->enabled:Z

    if-eqz v3, :cond_28

    iget-object v3, v2, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    if-nez v3, :cond_28

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_2c

    if-eqz v2, :cond_28

    .line 19
    const/4 p0, 0x1

    return p0

    .line 17
    :cond_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 24
    :cond_2b
    goto :goto_30

    .line 22
    :catchall_2c
    move-exception p0

    .line 23
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 25
    :goto_30
    return v0
.end method
