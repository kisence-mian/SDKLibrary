.class public final Lcom/anythink/china/common/c/a;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/io/File;)Ljava/lang/String;
    .registers 4

    .line 23
    const-string v0, ""

    if-eqz p0, :cond_1c

    if-nez p1, :cond_7

    goto :goto_1c

    .line 28
    :cond_7
    :try_start_7
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 30
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_17

    return-object p0

    .line 33
    :catchall_17
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 35
    return-object v0

    .line 24
    :cond_1c
    :goto_1c
    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4

    .line 40
    const/4 v0, 0x0

    if-eqz p0, :cond_17

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_17

    .line 44
    :cond_a
    :try_start_a
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v1, 0x2000

    .line 45
    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_13
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a .. :try_end_13} :catch_15

    .line 46
    const/4 p0, 0x1

    return p0

    .line 47
    :catch_15
    move-exception p0

    .line 48
    return v0

    .line 41
    :cond_17
    :goto_17
    return v0
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .line 66
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 67
    if-eqz p1, :cond_12

    .line 68
    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 69
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_12
    .catchall {:try_start_0 .. :try_end_12} :catchall_13

    .line 73
    :cond_12
    return-void

    .line 72
    :catchall_13
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 74
    return-void
.end method

.method private static b(Landroid/content/Context;Ljava/io/File;)Z
    .registers 4

    .line 53
    const/4 v0, 0x0

    if-eqz p0, :cond_16

    if-nez p1, :cond_6

    goto :goto_16

    .line 57
    :cond_6
    invoke-static {p0, p1}, Lcom/anythink/china/common/c/a;->a(Landroid/content/Context;Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    .line 58
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 59
    invoke-static {p0, p1}, Lcom/anythink/china/common/c/a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 61
    :cond_15
    return v0

    .line 54
    :cond_16
    :goto_16
    return v0
.end method
