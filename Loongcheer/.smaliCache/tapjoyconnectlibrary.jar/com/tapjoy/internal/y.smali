.class public final Lcom/tapjoy/internal/y;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;)I
    .registers 2

    .line 68
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/tapjoy/internal/y;->b(Landroid/content/pm/PackageManager;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static a(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 54
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_7} :catch_8

    return-object p0

    .line 55
    :catch_8
    move-exception p0

    .line 56
    const/4 p0, 0x0

    return-object p0
.end method

.method public static b(Landroid/content/pm/PackageManager;Ljava/lang/String;)I
    .registers 3

    .line 95
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_7} :catch_8

    return p0

    .line 96
    :catch_8
    move-exception p0

    .line 97
    return v0
.end method

.method public static c(Landroid/content/pm/PackageManager;Ljava/lang/String;)J
    .registers 6

    .line 126
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-wide/16 v1, 0x0

    const/16 v3, 0x9

    if-lt v0, v3, :cond_16

    .line 128
    const/4 v0, 0x0

    :try_start_9
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget-wide p0, p0, Landroid/content/pm/PackageInfo;->firstInstallTime:J
    :try_end_f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9 .. :try_end_f} :catch_15

    .line 129
    cmp-long v0, p0, v1

    if-lez v0, :cond_14

    .line 130
    return-wide p0

    .line 134
    :cond_14
    goto :goto_16

    .line 132
    :catch_15
    move-exception p0

    .line 136
    :cond_16
    :goto_16
    return-wide v1
.end method

.method public static d(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 199
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-static {p0}, Lcom/tapjoy/internal/js;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_b} :catch_c

    return-object p0

    .line 200
    :catch_c
    move-exception p0

    .line 203
    const/4 p0, 0x0

    return-object p0
.end method

.method public static e(Landroid/content/pm/PackageManager;Ljava/lang/String;)[Landroid/content/pm/Signature;
    .registers 3
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 219
    const/16 v0, 0x40

    :try_start_2
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;
    :try_end_8
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_8} :catch_9

    return-object p0

    .line 220
    :catch_9
    move-exception p0

    .line 221
    const/4 p0, 0x0

    return-object p0
.end method
