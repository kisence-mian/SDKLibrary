.class public final Lcom/ss/android/socialbase/appdownloader/g;
.super Ljava/lang/Object;
.source "AppUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/socialbase/appdownloader/g$a;
    }
.end annotation


# direct methods
.method public static a(Ljava/lang/String;)I
    .registers 4

    .line 69
    invoke-static {p0}, Lcom/ss/android/socialbase/appdownloader/g;->c(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_8

    return v1

    .line 71
    :cond_8
    :try_start_8
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->L()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 72
    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 73
    if-nez p0, :cond_18

    goto :goto_1a

    :cond_18
    iget v1, p0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_1a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_1a} :catch_1b

    :goto_1a
    return v1

    .line 74
    :catch_1b
    move-exception p0

    .line 75
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 76
    return v1
.end method

.method private static a(Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;)Lcom/ss/android/socialbase/appdownloader/g$a;
    .registers 11

    .line 152
    if-nez p1, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 153
    :cond_4
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 154
    iget-object v2, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 155
    invoke-virtual {v0, p0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 156
    invoke-virtual {v0, p0}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 157
    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 158
    iget-object v6, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 159
    iget v7, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 160
    iget p0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 p1, 0x1

    and-int/2addr p0, p1

    if-eqz p0, :cond_22

    move v8, p1

    goto :goto_24

    :cond_22
    const/4 p0, 0x0

    move v8, p0

    .line 161
    :goto_24
    new-instance p0, Lcom/ss/android/socialbase/appdownloader/g$a;

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/ss/android/socialbase/appdownloader/g$a;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;IZ)V

    return-object p0
.end method

.method public static b(Ljava/lang/String;)Lcom/ss/android/socialbase/appdownloader/g$a;
    .registers 4

    .line 115
    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->L()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 116
    if-nez v1, :cond_c

    return-object v0

    .line 117
    :cond_c
    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/ss/android/socialbase/appdownloader/g;->a(Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;)Lcom/ss/android/socialbase/appdownloader/g$a;

    move-result-object p0
    :try_end_15
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_15} :catch_16

    return-object p0

    .line 118
    :catch_16
    move-exception p0

    .line 119
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 120
    return-object v0
.end method

.method private static c(Ljava/lang/String;)Z
    .registers 6

    .line 259
    const/4 v0, 0x1

    if-nez p0, :cond_4

    return v0

    .line 260
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_a
    if-ge v3, v1, :cond_1a

    .line 261
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-nez v4, :cond_17

    .line 262
    return v2

    .line 260
    :cond_17
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 265
    :cond_1a
    return v0
.end method
