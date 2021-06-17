.class public final Landroidx/test/core/content/pm/ApplicationInfoBuilder;
.super Ljava/lang/Object;
.source "ApplicationInfoBuilder.java"


# instance fields
.field private name:Ljava/lang/String;

.field private packageName:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newBuilder()Landroidx/test/core/content/pm/ApplicationInfoBuilder;
    .registers 1

    .line 36
    new-instance v0, Landroidx/test/core/content/pm/ApplicationInfoBuilder;

    invoke-direct {v0}, Landroidx/test/core/content/pm/ApplicationInfoBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public build()Landroid/content/pm/ApplicationInfo;
    .registers 3

    .line 63
    iget-object v0, p0, Landroidx/test/core/content/pm/ApplicationInfoBuilder;->packageName:Ljava/lang/String;

    const-string v1, "Mandatory field \'packageName\' missing."

    invoke-static {v0, v1}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    new-instance v0, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v0}, Landroid/content/pm/ApplicationInfo;-><init>()V

    .line 66
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v1, p0, Landroidx/test/core/content/pm/ApplicationInfoBuilder;->name:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->name:Ljava/lang/String;

    .line 67
    iget-object v1, p0, Landroidx/test/core/content/pm/ApplicationInfoBuilder;->packageName:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 69
    return-object v0
.end method

.method public setName(Ljava/lang/String;)Landroidx/test/core/content/pm/ApplicationInfoBuilder;
    .registers 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 57
    iput-object p1, p0, Landroidx/test/core/content/pm/ApplicationInfoBuilder;->name:Ljava/lang/String;

    .line 58
    return-object p0
.end method

.method public setPackageName(Ljava/lang/String;)Landroidx/test/core/content/pm/ApplicationInfoBuilder;
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

    .line 45
    iput-object p1, p0, Landroidx/test/core/content/pm/ApplicationInfoBuilder;->packageName:Ljava/lang/String;

    .line 46
    return-object p0
.end method
