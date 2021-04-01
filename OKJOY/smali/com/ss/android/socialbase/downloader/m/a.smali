.class public final Lcom/ss/android/socialbase/downloader/m/a;
.super Ljava/lang/Object;
.source "AppUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/socialbase/downloader/m/a$a;
    }
.end annotation


# direct methods
.method private static a(Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;)Lcom/ss/android/socialbase/downloader/m/a$a;
    .registers 10

    .prologue
    .line 154
    if-nez p1, :cond_4

    const/4 v0, 0x0

    .line 163
    :goto_3
    return-object v0

    .line 155
    :cond_4
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 156
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 157
    invoke-virtual {v0, p0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 158
    invoke-virtual {v0, p0}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 159
    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 160
    iget-object v5, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 161
    iget v6, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 162
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_27

    const/4 v7, 0x1

    .line 163
    :goto_21
    new-instance v0, Lcom/ss/android/socialbase/downloader/m/a$a;

    invoke-direct/range {v0 .. v7}, Lcom/ss/android/socialbase/downloader/m/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;IZ)V

    goto :goto_3

    .line 162
    :cond_27
    const/4 v7, 0x0

    goto :goto_21
.end method

.method public static a(Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/m/a$a;
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 117
    :try_start_1
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->B()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 118
    if-nez v1, :cond_c

    .line 122
    :goto_b
    return-object v0

    .line 119
    :cond_c
    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ss/android/socialbase/downloader/m/a;->a(Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;)Lcom/ss/android/socialbase/downloader/m/a$a;
    :try_end_14
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_14} :catch_16

    move-result-object v0

    goto :goto_b

    .line 120
    :catch_16
    move-exception v1

    .line 121
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_b
.end method
