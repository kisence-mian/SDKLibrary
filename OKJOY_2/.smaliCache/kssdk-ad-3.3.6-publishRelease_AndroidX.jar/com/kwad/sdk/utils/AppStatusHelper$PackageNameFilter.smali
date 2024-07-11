.class public Lcom/kwad/sdk/utils/AppStatusHelper$PackageNameFilter;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwad/sdk/collector/NodeFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/utils/AppStatusHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PackageNameFilter"
.end annotation


# instance fields
.field private installedApp:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/kwad/sdk/utils/InstalledAppInfoManager$AppPackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private packageSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/kwad/sdk/utils/InstalledAppInfoManager;->b(Landroid/content/Context;)Ljava/util/Map;

    move-result-object p1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/kwad/sdk/utils/AppStatusHelper$PackageNameFilter;->installedApp:Ljava/util/HashMap;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/kwad/sdk/utils/AppStatusHelper$PackageNameFilter;->installedApp:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kwad/sdk/utils/InstalledAppInfoManager$AppPackageInfo;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-boolean v3, v2, Lcom/kwad/sdk/utils/InstalledAppInfoManager$AppPackageInfo;->isSystemApp:Z

    if-eqz v3, :cond_3a

    goto :goto_1d

    :cond_3a
    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1d

    :cond_3e
    new-instance p1, Ljava/util/HashSet;

    iget-object v0, p0, Lcom/kwad/sdk/utils/AppStatusHelper$PackageNameFilter;->installedApp:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/kwad/sdk/utils/AppStatusHelper$PackageNameFilter;->packageSet:Ljava/util/HashSet;

    return-void
.end method


# virtual methods
.method public createByPackages(Ljava/util/Set;)Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/kwad/sdk/utils/AppStatusHelper$AppRunningInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-nez p1, :cond_8

    return-object v0

    :cond_8
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/kwad/sdk/utils/AppStatusHelper$PackageNameFilter;->installedApp:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kwad/sdk/utils/InstalledAppInfoManager$AppPackageInfo;

    if-nez v2, :cond_23

    goto :goto_c

    :cond_23
    invoke-static {v2}, Lcom/kwad/sdk/utils/AppStatusHelper$AppRunningInfo;->createInstance(Lcom/kwad/sdk/utils/InstalledAppInfoManager$AppPackageInfo;)Lcom/kwad/sdk/utils/AppStatusHelper$AppRunningInfo;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c

    :cond_2b
    return-object v0
.end method

.method public onChildNodeCreate(Lcom/kwad/sdk/collector/FNode;)V
    .registers 4

    invoke-virtual {p1}, Lcom/kwad/sdk/collector/FNode;->getRealFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/utils/AppStatusHelper$PackageNameFilter;->installedApp:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/utils/InstalledAppInfoManager$AppPackageInfo;

    if-eqz v0, :cond_19

    invoke-static {v0}, Lcom/kwad/sdk/utils/AppStatusHelper$AppRunningInfo;->createInstance(Lcom/kwad/sdk/utils/InstalledAppInfoManager$AppPackageInfo;)Lcom/kwad/sdk/utils/AppStatusHelper$AppRunningInfo;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/kwad/sdk/collector/FNode;->setAppRunningInfo(Lcom/kwad/sdk/utils/AppStatusHelper$AppRunningInfo;)V

    :cond_19
    return-void
.end method

.method public onFilterChild(Ljava/io/File;)Z
    .registers 3

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/kwad/sdk/utils/AppStatusHelper$PackageNameFilter;->packageSet:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
