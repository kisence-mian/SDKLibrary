.class public final Lcom/appsflyer/internal/bc;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static AFKeystoreWrapper(Landroid/content/Context;)Z
    .registers 3

    .line 8
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_f

    .line 9
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/PackageManager;->isInstantApp()Z

    move-result p0

    return p0

    .line 12
    :cond_f
    :try_start_f
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    const-string v0, "com.google.android.instantapps.supervisor.InstantAppsRuntime"

    invoke-virtual {p0, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_18
    .catch Ljava/lang/ClassNotFoundException; {:try_start_f .. :try_end_18} :catch_1a

    .line 14
    const/4 p0, 0x1

    return p0

    .line 15
    :catch_1a
    move-exception p0

    .line 16
    const/4 p0, 0x0

    return p0
.end method
