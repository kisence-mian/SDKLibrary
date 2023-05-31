.class public final Lcom/anythink/china/common/c/a;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/io/File;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 16
    if-eqz p0, :cond_4

    if-nez p1, :cond_7

    .line 17
    :cond_4
    const-string v0, ""

    .line 28
    :goto_6
    return-object v0

    .line 21
    :cond_7
    :try_start_7
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 23
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_16} :catch_17

    goto :goto_6

    .line 26
    :catch_17
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 28
    const-string v0, ""

    goto :goto_6
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 33
    if-eqz p0, :cond_9

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 41
    :cond_9
    :goto_9
    return v0

    .line 37
    :cond_a
    :try_start_a
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x2000

    .line 38
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_13
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a .. :try_end_13} :catch_15

    .line 39
    const/4 v0, 0x1

    goto :goto_9

    .line 41
    :catch_15
    move-exception v1

    goto :goto_9
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 59
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 60
    if-eqz v0, :cond_12

    .line 61
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 62
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_12} :catch_13

    .line 67
    :cond_12
    :goto_12
    return-void

    .line 65
    :catch_13
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_12
.end method

.method private static b(Landroid/content/Context;Ljava/io/File;)Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 46
    if-eqz p0, :cond_5

    if-nez p1, :cond_6

    .line 54
    :cond_5
    :goto_5
    return v0

    .line 50
    :cond_6
    invoke-static {p0, p1}, Lcom/anythink/china/common/c/a;->a(Landroid/content/Context;Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    .line 51
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 52
    invoke-static {p0, v1}, Lcom/anythink/china/common/c/a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    goto :goto_5
.end method
