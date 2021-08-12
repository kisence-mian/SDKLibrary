.class Lcom/sigmob/sdk/base/common/s$4$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/sdk/base/common/s$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/base/common/s$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/base/common/s$4;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/base/common/s$4;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/base/common/s$4$1;->a:Lcom/sigmob/sdk/base/common/s$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .registers 6

    invoke-static {}, Lcom/sigmob/sdk/common/a;->ai()Lcom/sigmob/sdk/common/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/common/a;->Y()Landroid/content/Context;

    move-result-object v0

    instance-of v1, p1, Lcom/sigmob/sdk/common/mta/PointEntitySigmob;

    if-eqz v1, :cond_7d

    check-cast p1, Lcom/sigmob/sdk/common/mta/PointEntitySigmob;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_36

    :try_start_19
    const-string v2, "allow_install"

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/PackageManager;->canRequestPackageInstalls()Z

    move-result v3

    if-eqz v3, :cond_28

    const-string v3, "1"

    goto :goto_2a

    :cond_28
    const-string v3, "0"

    :goto_2a
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2d
    .catchall {:try_start_19 .. :try_end_2d} :catchall_2e

    goto :goto_36

    :catchall_2e
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    :cond_36
    :goto_36
    iget-object v2, p0, Lcom/sigmob/sdk/base/common/s$4$1;->a:Lcom/sigmob/sdk/base/common/s$4;

    iget-object v2, v2, Lcom/sigmob/sdk/base/common/s$4;->d:Landroid/content/pm/PackageInfo;

    if-eqz v2, :cond_7a

    iget-object v2, p0, Lcom/sigmob/sdk/base/common/s$4$1;->a:Lcom/sigmob/sdk/base/common/s$4;

    iget-object v2, v2, Lcom/sigmob/sdk/base/common/s$4;->d:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    :try_start_42
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "app_name"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_53
    .catchall {:try_start_42 .. :try_end_53} :catchall_54

    goto :goto_55

    :catchall_54
    move-exception v0

    :goto_55
    iget-object v0, p0, Lcom/sigmob/sdk/base/common/s$4$1;->a:Lcom/sigmob/sdk/base/common/s$4;

    iget-object v0, v0, Lcom/sigmob/sdk/base/common/s$4;->d:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v2, "package_name"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/s$4$1;->a:Lcom/sigmob/sdk/base/common/s$4;

    iget-object v0, v0, Lcom/sigmob/sdk/base/common/s$4;->d:Landroid/content/pm/PackageInfo;

    iget-wide v2, v0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v2, "update"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/s$4$1;->a:Lcom/sigmob/sdk/base/common/s$4;

    iget-object v0, v0, Lcom/sigmob/sdk/base/common/s$4;->d:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    const-string v2, "app_version"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7a
    invoke-virtual {p1, v1}, Lcom/sigmob/sdk/common/mta/PointEntitySigmob;->setOptions(Ljava/util/Map;)V

    :cond_7d
    return-void
.end method
