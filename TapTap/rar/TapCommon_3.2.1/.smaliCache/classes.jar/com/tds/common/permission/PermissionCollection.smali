.class public Lcom/tds/common/permission/PermissionCollection;
.super Ljava/lang/Object;
.source "PermissionCollection.java"


# instance fields
.field private activity:Landroid/app/Activity;

.field private config:Lcom/tds/common/permission/PermissionConfig;

.field private mCallback:Lcom/tds/common/permission/RequestPermissionCallback;

.field private requestPermissions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 2
    .param p1, "activity"    # Landroid/app/Activity;

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/tds/common/permission/PermissionCollection;->activity:Landroid/app/Activity;

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/app/Fragment;)V
    .registers 3
    .param p1, "fragment"    # Landroid/app/Fragment;

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/tds/common/permission/PermissionCollection;->activity:Landroid/app/Activity;

    .line 32
    return-void
.end method

.method private request(Landroid/app/Activity;)V
    .registers 7
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 58
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 59
    .local v0, "fragmentManager":Landroid/app/FragmentManager;
    sget-object v1, Lcom/tds/common/permission/PermissionFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/tds/common/permission/PermissionFragment;

    .line 60
    .local v1, "fragment":Lcom/tds/common/permission/PermissionFragment;
    if-nez v1, :cond_3e

    .line 61
    new-instance v2, Lcom/tds/common/permission/PermissionFragment;

    invoke-direct {v2}, Lcom/tds/common/permission/PermissionFragment;-><init>()V

    move-object v1, v2

    .line 62
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_1d

    .line 63
    invoke-virtual {v1}, Lcom/tds/common/permission/PermissionFragment;->start()V

    .line 65
    :cond_1d
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_31

    .line 66
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    sget-object v3, Lcom/tds/common/permission/PermissionFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commitNowAllowingStateLoss()V

    goto :goto_3e

    .line 68
    :cond_31
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    sget-object v3, Lcom/tds/common/permission/PermissionFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 71
    :cond_3e
    :goto_3e
    iget-object v2, p0, Lcom/tds/common/permission/PermissionCollection;->requestPermissions:Ljava/util/Set;

    iget-object v3, p0, Lcom/tds/common/permission/PermissionCollection;->mCallback:Lcom/tds/common/permission/RequestPermissionCallback;

    iget-object v4, p0, Lcom/tds/common/permission/PermissionCollection;->config:Lcom/tds/common/permission/PermissionConfig;

    invoke-virtual {v1, v2, v3, v4}, Lcom/tds/common/permission/PermissionFragment;->requestPermission(Ljava/util/Set;Lcom/tds/common/permission/RequestPermissionCallback;Lcom/tds/common/permission/PermissionConfig;)V

    .line 72
    return-void
.end method


# virtual methods
.method public forwardSetting(Lcom/tds/common/permission/PermissionConfig;)Lcom/tds/common/permission/PermissionCollection;
    .registers 2
    .param p1, "config"    # Lcom/tds/common/permission/PermissionConfig;

    .line 45
    iput-object p1, p0, Lcom/tds/common/permission/PermissionCollection;->config:Lcom/tds/common/permission/PermissionConfig;

    .line 46
    return-object p0
.end method

.method public forwardSetting(Ljava/lang/String;Ljava/lang/String;)Lcom/tds/common/permission/PermissionCollection;
    .registers 5
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .line 40
    new-instance v0, Lcom/tds/common/permission/PermissionConfig;

    const-string v1, "\u53bb\u5f00\u542f"

    invoke-direct {v0, p1, p2, v1}, Lcom/tds/common/permission/PermissionConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tds/common/permission/PermissionCollection;->config:Lcom/tds/common/permission/PermissionConfig;

    .line 41
    return-object p0
.end method

.method public varargs permission([Ljava/lang/String;)Lcom/tds/common/permission/PermissionCollection;
    .registers 4
    .param p1, "permissions"    # [Ljava/lang/String;

    .line 35
    new-instance v0, Ljava/util/HashSet;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/tds/common/permission/PermissionCollection;->requestPermissions:Ljava/util/Set;

    .line 36
    return-object p0
.end method

.method public request(Lcom/tds/common/permission/RequestPermissionCallback;)V
    .registers 3
    .param p1, "callback"    # Lcom/tds/common/permission/RequestPermissionCallback;

    .line 50
    iput-object p1, p0, Lcom/tds/common/permission/PermissionCollection;->mCallback:Lcom/tds/common/permission/RequestPermissionCallback;

    .line 51
    iget-object v0, p0, Lcom/tds/common/permission/PermissionCollection;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_9

    .line 52
    invoke-direct {p0, v0}, Lcom/tds/common/permission/PermissionCollection;->request(Landroid/app/Activity;)V

    .line 54
    :cond_9
    return-void
.end method
