.class public Lcom/bytedance/tea/crash/e/a;
.super Ljava/lang/Object;
.source "CommonParams.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/bytedance/tea/crash/d;

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/tea/crash/d;)V
    .registers 3

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/bytedance/tea/crash/e/a;->a:Landroid/content/Context;

    .line 32
    iput-object p2, p0, Lcom/bytedance/tea/crash/e/a;->b:Lcom/bytedance/tea/crash/d;

    .line 34
    return-void
.end method

.method public static a(Ljava/util/Map;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 88
    if-eqz p0, :cond_2b

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2b

    .line 89
    const-string v0, "app_version"

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    const-string v0, "version_name"

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 90
    :cond_18
    const-string v0, "version_code"

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 91
    const-string v0, "update_version_code"

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_29

    goto :goto_2b

    :cond_29
    const/4 p0, 0x0

    goto :goto_2c

    :cond_2b
    :goto_2b
    const/4 p0, 0x1

    .line 88
    :goto_2c
    return p0
.end method


# virtual methods
.method public a()Ljava/util/Map;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 38
    const-string v0, "version_name"

    const-string v1, "update_version_code"

    const-string v2, "version_code"

    iget-object v3, p0, Lcom/bytedance/tea/crash/e/a;->b:Lcom/bytedance/tea/crash/d;

    invoke-interface {v3}, Lcom/bytedance/tea/crash/d;->a()Ljava/util/Map;

    move-result-object v3

    .line 39
    if-nez v3, :cond_14

    .line 40
    new-instance v3, Ljava/util/HashMap;

    const/4 v4, 0x4

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(I)V

    .line 43
    :cond_14
    nop

    .line 44
    invoke-static {v3}, Lcom/bytedance/tea/crash/e/a;->a(Ljava/util/Map;)Z

    move-result v4

    if-eqz v4, :cond_80

    .line 46
    :try_start_1b
    iget-object v4, p0, Lcom/bytedance/tea/crash/e/a;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v5, p0, Lcom/bytedance/tea/crash/e/a;->a:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x80

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 47
    iget-object v5, v4, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-interface {v3, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    iget v5, v4, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_5b

    .line 51
    const/4 v5, 0x0

    .line 52
    iget-object v6, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v6, :cond_52

    .line 53
    iget-object v4, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v5, "UPDATE_VERSION_CODE"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 55
    :cond_52
    if-nez v5, :cond_58

    .line 56
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 58
    :cond_58
    invoke-interface {v3, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5b
    .catchall {:try_start_1b .. :try_end_5b} :catchall_5c

    .line 66
    :cond_5b
    goto :goto_80

    .line 60
    :catchall_5c
    move-exception v4

    .line 61
    iget-object v4, p0, Lcom/bytedance/tea/crash/e/a;->a:Landroid/content/Context;

    invoke-static {v4}, Lcom/bytedance/tea/crash/g/a;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    iget-object v0, p0, Lcom/bytedance/tea/crash/e/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/tea/crash/g/a;->f(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_80

    .line 64
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    :cond_80
    :goto_80
    return-object v3
.end method

.method public b()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lcom/bytedance/tea/crash/e/a;->c:Ljava/util/Map;

    if-nez v0, :cond_c

    .line 76
    iget-object v0, p0, Lcom/bytedance/tea/crash/e/a;->b:Lcom/bytedance/tea/crash/d;

    invoke-interface {v0}, Lcom/bytedance/tea/crash/d;->g()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/tea/crash/e/a;->c:Ljava/util/Map;

    .line 78
    :cond_c
    iget-object v0, p0, Lcom/bytedance/tea/crash/e/a;->c:Ljava/util/Map;

    return-object v0
.end method

.method public c()Lcom/bytedance/tea/crash/d;
    .registers 2

    .line 96
    iget-object v0, p0, Lcom/bytedance/tea/crash/e/a;->b:Lcom/bytedance/tea/crash/d;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    .line 105
    iget-object v0, p0, Lcom/bytedance/tea/crash/e/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/tea/crash/g/a;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .registers 2

    .line 114
    iget-object v0, p0, Lcom/bytedance/tea/crash/e/a;->b:Lcom/bytedance/tea/crash/d;

    invoke-interface {v0}, Lcom/bytedance/tea/crash/d;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
