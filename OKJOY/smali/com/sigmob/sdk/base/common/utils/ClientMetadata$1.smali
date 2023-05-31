.class Lcom/sigmob/sdk/base/common/utils/ClientMetadata$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Landroid/content/pm/PackageInfo;Ljava/lang/String;Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

.field final synthetic val$adUnit:Lcom/sigmob/sdk/base/models/BaseAdUnit;

.field final synthetic val$event:Ljava/lang/String;

.field final synthetic val$info:Landroid/content/pm/PackageInfo;

.field final synthetic val$pointType:Ljava/lang/String;

.field final synthetic val$subCate:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/base/common/utils/ClientMetadata;Ljava/lang/String;Landroid/content/pm/PackageInfo;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    iput-object p1, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata$1;->this$0:Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    iput-object p2, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata$1;->val$subCate:Ljava/lang/String;

    iput-object p3, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata$1;->val$info:Landroid/content/pm/PackageInfo;

    iput-object p4, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata$1;->val$adUnit:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    iput-object p5, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata$1;->val$pointType:Ljava/lang/String;

    iput-object p6, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata$1;->val$event:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    invoke-static {}, Lcom/sigmob/sdk/base/common/b/a;->a()Lcom/sigmob/sdk/base/common/b/a;

    move-result-object v0

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string v1, "sub_category"

    iget-object v2, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata$1;->val$subCate:Ljava/lang/String;

    invoke-interface {v5, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_2d

    :try_start_16
    const-string v2, "allow_install"

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata$1;->this$0:Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    invoke-static {v1}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->a(Lcom/sigmob/sdk/base/common/utils/ClientMetadata;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager;->canRequestPackageInstalls()Z

    move-result v1

    if-eqz v1, :cond_76

    const-string v1, "1"

    :goto_2a
    invoke-interface {v5, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_2d} :catch_79

    :cond_2d
    :goto_2d
    iget-object v1, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata$1;->val$info:Landroid/content/pm/PackageInfo;

    if-eqz v1, :cond_6b

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata$1;->val$info:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    :try_start_35
    iget-object v2, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata$1;->this$0:Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    invoke-static {v2}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->a(Lcom/sigmob/sdk/base/common/utils/ClientMetadata;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "app_name"

    invoke-interface {v5, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4c
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_4c} :catch_7e

    :goto_4c
    const-string v1, "package_name"

    iget-object v2, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata$1;->val$info:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v5, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "update"

    iget-object v2, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata$1;->val$info:Landroid/content/pm/PackageInfo;

    iget-wide v2, v2, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "app_version"

    iget-object v2, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata$1;->val$info:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-interface {v5, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6b
    iget-object v1, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata$1;->val$adUnit:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    iget-object v2, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata$1;->val$pointType:Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata$1;->val$event:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/sigmob/sdk/base/common/b/a;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void

    :cond_76
    :try_start_76
    const-string v1, "0"
    :try_end_78
    .catch Ljava/lang/Throwable; {:try_start_76 .. :try_end_78} :catch_79

    goto :goto_2a

    :catch_79
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2d

    :catch_7e
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;)V

    goto :goto_4c
.end method
