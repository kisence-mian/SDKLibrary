.class public LsdkInterface/tool/AppUtils;
.super Ljava/lang/Object;
.source "AppUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getAppName(Landroid/content/Context;)Ljava/lang/String;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;

    const-class v0, LsdkInterface/tool/AppUtils;

    monitor-enter v0

    .line 15
    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 16
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    nop

    .line 17
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 16
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 18
    .local v2, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->labelRes:I

    .line 19
    .local v3, "labelRes":I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_1d} :catch_21
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1f

    monitor-exit v0

    return-object v4

    .line 14
    .end local v1    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v2    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v3    # "labelRes":I
    .end local p0    # "context":Landroid/content/Context;
    :catchall_1f
    move-exception p0

    goto :goto_28

    .line 20
    .restart local p0    # "context":Landroid/content/Context;
    :catch_21
    move-exception v1

    .line 21
    .local v1, "e":Ljava/lang/Exception;
    :try_start_22
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_1f

    .line 23
    .end local v1    # "e":Ljava/lang/Exception;
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    .line 14
    .end local p0    # "context":Landroid/content/Context;
    :goto_28
    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;

    const-class v0, LsdkInterface/tool/AppUtils;

    monitor-enter v0

    .line 85
    const/4 v1, 0x0

    .line 86
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v2, 0x0

    .line 88
    .local v2, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :try_start_5
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 89
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    move-object v1, v3

    .line 90
    nop

    .line 91
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 90
    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3
    :try_end_18
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_18} :catch_1c
    .catchall {:try_start_5 .. :try_end_18} :catchall_1a

    move-object v2, v3

    .line 94
    goto :goto_1e

    .line 84
    .end local v1    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v2    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local p0    # "context":Landroid/content/Context;
    :catchall_1a
    move-exception p0

    goto :goto_2b

    .line 92
    .restart local v1    # "packageManager":Landroid/content/pm/PackageManager;
    .restart local v2    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .restart local p0    # "context":Landroid/content/Context;
    :catch_1c
    move-exception v3

    .line 93
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v2, 0x0

    .line 95
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_1e
    :try_start_1e
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 96
    .local v3, "d":Landroid/graphics/drawable/Drawable;
    move-object v4, v3

    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    .line 97
    .local v4, "bd":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5
    :try_end_29
    .catchall {:try_start_1e .. :try_end_29} :catchall_1a

    .line 98
    .local v5, "bm":Landroid/graphics/Bitmap;
    monitor-exit v0

    return-object v5

    .line 84
    .end local v1    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v2    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "d":Landroid/graphics/drawable/Drawable;
    .end local v4    # "bd":Landroid/graphics/drawable/BitmapDrawable;
    .end local v5    # "bm":Landroid/graphics/Bitmap;
    .end local p0    # "context":Landroid/content/Context;
    :goto_2b
    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getPackageName(Landroid/content/Context;)Ljava/lang/String;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    const-class v0, LsdkInterface/tool/AppUtils;

    monitor-enter v0

    .line 69
    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 70
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    nop

    .line 71
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 70
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 72
    .local v2, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_13} :catch_17
    .catchall {:try_start_3 .. :try_end_13} :catchall_15

    monitor-exit v0

    return-object v3

    .line 68
    .end local v1    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v2    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local p0    # "context":Landroid/content/Context;
    :catchall_15
    move-exception p0

    goto :goto_1e

    .line 73
    .restart local p0    # "context":Landroid/content/Context;
    :catch_17
    move-exception v1

    .line 74
    .local v1, "e":Ljava/lang/Exception;
    :try_start_18
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_15

    .line 76
    .end local v1    # "e":Ljava/lang/Exception;
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    .line 68
    .end local p0    # "context":Landroid/content/Context;
    :goto_1e
    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getVersionCode(Landroid/content/Context;)I
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    const-class v0, LsdkInterface/tool/AppUtils;

    monitor-enter v0

    .line 51
    const/4 v1, 0x0

    :try_start_4
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 52
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    nop

    .line 53
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 52
    invoke-virtual {v2, v3, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 54
    .local v3, "packageInfo":Landroid/content/pm/PackageInfo;
    iget v1, v3, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_13} :catch_17
    .catchall {:try_start_4 .. :try_end_13} :catchall_15

    monitor-exit v0

    return v1

    .line 50
    .end local v2    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v3    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local p0    # "context":Landroid/content/Context;
    :catchall_15
    move-exception p0

    goto :goto_1d

    .line 55
    .restart local p0    # "context":Landroid/content/Context;
    :catch_17
    move-exception v2

    .line 56
    .local v2, "e":Ljava/lang/Exception;
    :try_start_18
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_15

    .line 58
    .end local v2    # "e":Ljava/lang/Exception;
    monitor-exit v0

    return v1

    .line 50
    .end local p0    # "context":Landroid/content/Context;
    :goto_1d
    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getVersionName(Landroid/content/Context;)Ljava/lang/String;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    const-class v0, LsdkInterface/tool/AppUtils;

    monitor-enter v0

    .line 33
    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 34
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    nop

    .line 35
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 34
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 36
    .local v2, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_13} :catch_17
    .catchall {:try_start_3 .. :try_end_13} :catchall_15

    monitor-exit v0

    return-object v3

    .line 32
    .end local v1    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v2    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local p0    # "context":Landroid/content/Context;
    :catchall_15
    move-exception p0

    goto :goto_1e

    .line 37
    .restart local p0    # "context":Landroid/content/Context;
    :catch_17
    move-exception v1

    .line 38
    .local v1, "e":Ljava/lang/Exception;
    :try_start_18
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_15

    .line 40
    .end local v1    # "e":Ljava/lang/Exception;
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    .line 32
    .end local p0    # "context":Landroid/content/Context;
    :goto_1e
    monitor-exit v0

    throw p0
.end method
