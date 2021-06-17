.class public Lcom/loongcheer/appsflyersdk/utils/YDGooglePlayUtils;
.super Ljava/lang/Object;
.source "YDGooglePlayUtils.java"


# static fields
.field public static AMAZON:Ljava/lang/String;

.field public static GOOGLE_PLAY:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 12
    const-string v0, "com.android.vending"

    sput-object v0, Lcom/loongcheer/appsflyersdk/utils/YDGooglePlayUtils;->GOOGLE_PLAY:Ljava/lang/String;

    .line 13
    const-string v0, "com.amazon.venezia"

    sput-object v0, Lcom/loongcheer/appsflyersdk/utils/YDGooglePlayUtils;->AMAZON:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstallerPackageName(Landroid/content/Context;)Ljava/lang/String;
    .registers 5
    .param p0, "ctx"    # Landroid/content/Context;

    .line 36
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 37
    .local v0, "packageName":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 38
    .local v1, "pm":Landroid/content/pm/PackageManager;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1e

    if-lt v2, v3, :cond_19

    .line 39
    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getInstallSourceInfo(Ljava/lang/String;)Landroid/content/pm/InstallSourceInfo;

    move-result-object v2

    .line 40
    .local v2, "info":Landroid/content/pm/InstallSourceInfo;
    if-eqz v2, :cond_19

    .line 41
    invoke-virtual {v2}, Landroid/content/pm/InstallSourceInfo;->getInstallingPackageName()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 44
    .end local v2    # "info":Landroid/content/pm/InstallSourceInfo;
    :cond_19
    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_1d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_1d} :catch_1e

    return-object v2

    .line 45
    .end local v0    # "packageName":Ljava/lang/String;
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    :catch_1e
    move-exception v0

    .line 47
    const-string v0, ""

    return-object v0
.end method

.method public static isInstalledVia(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "required"    # Ljava/lang/String;

    .line 29
    invoke-static {p0}, Lcom/loongcheer/appsflyersdk/utils/YDGooglePlayUtils;->getInstallerPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 31
    .local v0, "installer":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static isInstalledViaAmazon(Landroid/content/Context;)Z
    .registers 2
    .param p0, "ctx"    # Landroid/content/Context;

    .line 20
    sget-object v0, Lcom/loongcheer/appsflyersdk/utils/YDGooglePlayUtils;->AMAZON:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/loongcheer/appsflyersdk/utils/YDGooglePlayUtils;->isInstalledVia(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isInstalledViaGooglePlay(Landroid/content/Context;)Z
    .registers 2
    .param p0, "ctx"    # Landroid/content/Context;

    .line 16
    sget-object v0, Lcom/loongcheer/appsflyersdk/utils/YDGooglePlayUtils;->GOOGLE_PLAY:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/loongcheer/appsflyersdk/utils/YDGooglePlayUtils;->isInstalledVia(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isSideloaded(Landroid/content/Context;)Z
    .registers 3
    .param p0, "ctx"    # Landroid/content/Context;

    .line 24
    invoke-static {p0}, Lcom/loongcheer/appsflyersdk/utils/YDGooglePlayUtils;->getInstallerPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 25
    .local v0, "installer":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    return v1
.end method
