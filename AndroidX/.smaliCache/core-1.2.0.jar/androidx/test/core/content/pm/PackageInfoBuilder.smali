.class public final Landroidx/test/core/content/pm/PackageInfoBuilder;
.super Ljava/lang/Object;
.source "PackageInfoBuilder.java"


# instance fields
.field private applicationInfo:Landroid/content/pm/ApplicationInfo;

.field private packageName:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newBuilder()Landroidx/test/core/content/pm/PackageInfoBuilder;
    .registers 1

    .line 38
    new-instance v0, Landroidx/test/core/content/pm/PackageInfoBuilder;

    invoke-direct {v0}, Landroidx/test/core/content/pm/PackageInfoBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public build()Landroid/content/pm/PackageInfo;
    .registers 4

    .line 68
    iget-object v0, p0, Landroidx/test/core/content/pm/PackageInfoBuilder;->packageName:Ljava/lang/String;

    const-string v1, "Mandatory field \'packageName\' missing."

    invoke-static {v0, v1}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    new-instance v0, Landroid/content/pm/PackageInfo;

    invoke-direct {v0}, Landroid/content/pm/PackageInfo;-><init>()V

    .line 71
    .local v0, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v1, p0, Landroidx/test/core/content/pm/PackageInfoBuilder;->packageName:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 73
    iget-object v1, p0, Landroidx/test/core/content/pm/PackageInfoBuilder;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v1, :cond_24

    .line 74
    invoke-static {}, Landroidx/test/core/content/pm/ApplicationInfoBuilder;->newBuilder()Landroidx/test/core/content/pm/ApplicationInfoBuilder;

    move-result-object v1

    iget-object v2, p0, Landroidx/test/core/content/pm/PackageInfoBuilder;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroidx/test/core/content/pm/ApplicationInfoBuilder;->setPackageName(Ljava/lang/String;)Landroidx/test/core/content/pm/ApplicationInfoBuilder;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/test/core/content/pm/ApplicationInfoBuilder;->build()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iput-object v1, p0, Landroidx/test/core/content/pm/PackageInfoBuilder;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 76
    :cond_24
    iget-object v1, p0, Landroidx/test/core/content/pm/PackageInfoBuilder;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 78
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 79
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 78
    const-string v2, "Field \'packageName\' must match field \'applicationInfo.packageName\'"

    invoke-static {v1, v2}, Landroidx/test/internal/util/Checks;->checkState(ZLjava/lang/Object;)V

    .line 82
    return-object v0
.end method

.method public setApplicationInfo(Landroid/content/pm/ApplicationInfo;)Landroidx/test/core/content/pm/PackageInfoBuilder;
    .registers 2
    .param p1, "applicationInfo"    # Landroid/content/pm/ApplicationInfo;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "applicationInfo"
        }
    .end annotation

    .line 61
    iput-object p1, p0, Landroidx/test/core/content/pm/PackageInfoBuilder;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 62
    return-object p0
.end method

.method public setPackageName(Ljava/lang/String;)Landroidx/test/core/content/pm/PackageInfoBuilder;
    .registers 2
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "packageName"
        }
    .end annotation

    .line 49
    iput-object p1, p0, Landroidx/test/core/content/pm/PackageInfoBuilder;->packageName:Ljava/lang/String;

    .line 50
    return-object p0
.end method
