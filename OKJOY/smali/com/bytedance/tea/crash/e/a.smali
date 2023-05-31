.class public Lcom/bytedance/tea/crash/e/a;
.super Ljava/lang/Object;
.source "CommonParams.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/bytedance/tea/crash/d;

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/tea/crash/d;)V
    .registers 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bytedance/tea/crash/d;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
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
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 88
    if-eqz p0, :cond_28

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_28

    const-string v0, "app_version"

    .line 89
    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    const-string v0, "version_name"

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    :cond_18
    const-string v0, "version_code"

    .line 90
    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    const-string v0, "update_version_code"

    .line 91
    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    :cond_28
    const/4 v0, 0x1

    .line 88
    :goto_29
    return v0

    .line 91
    :cond_2a
    const/4 v0, 0x0

    goto :goto_29
.end method


# virtual methods
.method public a()Ljava/util/Map;
    .registers 5
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 38
    iget-object v0, p0, Lcom/bytedance/tea/crash/e/a;->b:Lcom/bytedance/tea/crash/d;

    invoke-interface {v0}, Lcom/bytedance/tea/crash/d;->a()Ljava/util/Map;

    move-result-object v0

    .line 39
    if-nez v0, :cond_e

    .line 40
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 44
    :cond_e
    invoke-static {v0}, Lcom/bytedance/tea/crash/e/a;->a(Ljava/util/Map;)Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 46
    :try_start_14
    iget-object v1, p0, Lcom/bytedance/tea/crash/e/a;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/tea/crash/e/a;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 47
    const-string v1, "version_name"

    iget-object v3, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    const-string v1, "version_code"

    iget v3, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    const-string v1, "update_version_code"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_5e

    .line 51
    const/4 v1, 0x0

    .line 52
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v3, :cond_51

    .line 53
    iget-object v1, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "UPDATE_VERSION_CODE"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 55
    :cond_51
    if-nez v1, :cond_59

    .line 56
    const-string v1, "version_code"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 58
    :cond_59
    const-string v2, "update_version_code"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5e
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_5e} :catch_5f

    .line 69
    :cond_5e
    :goto_5e
    return-object v0

    .line 60
    :catch_5f
    move-exception v1

    .line 61
    const-string v1, "version_name"

    iget-object v2, p0, Lcom/bytedance/tea/crash/e/a;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/bytedance/tea/crash/g/a;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    const-string v1, "version_code"

    iget-object v2, p0, Lcom/bytedance/tea/crash/e/a;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/bytedance/tea/crash/g/a;->f(Landroid/content/Context;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    const-string v1, "update_version_code"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_5e

    .line 64
    const-string v1, "update_version_code"

    const-string v2, "version_code"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5e
.end method

.method public b()Ljava/util/Map;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
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
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 96
    iget-object v0, p0, Lcom/bytedance/tea/crash/e/a;->b:Lcom/bytedance/tea/crash/d;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/bytedance/tea/crash/e/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/tea/crash/g/a;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .registers 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/bytedance/tea/crash/e/a;->b:Lcom/bytedance/tea/crash/d;

    invoke-interface {v0}, Lcom/bytedance/tea/crash/d;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
