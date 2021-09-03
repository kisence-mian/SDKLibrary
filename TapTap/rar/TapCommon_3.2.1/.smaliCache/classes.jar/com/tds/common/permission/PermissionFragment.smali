.class public Lcom/tds/common/permission/PermissionFragment;
.super Landroid/app/Fragment;
.source "PermissionFragment.java"

# interfaces
.implements Lcom/tds/common/permission/FragmentLifecycle;


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mFragmentDelegate:Lcom/tds/common/permission/FragmentDelegate;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 17
    const-class v0, Lcom/tds/common/permission/PermissionFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tds/common/permission/PermissionFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 22
    new-instance v0, Lcom/tds/common/permission/FragmentDelegateImpl;

    invoke-direct {v0}, Lcom/tds/common/permission/FragmentDelegateImpl;-><init>()V

    invoke-direct {p0, v0}, Lcom/tds/common/permission/PermissionFragment;-><init>(Lcom/tds/common/permission/FragmentDelegate;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Lcom/tds/common/permission/FragmentDelegate;)V
    .registers 2
    .param p1, "fragmentDelegate"    # Lcom/tds/common/permission/FragmentDelegate;

    .line 26
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/tds/common/permission/PermissionFragment;->mFragmentDelegate:Lcom/tds/common/permission/FragmentDelegate;

    .line 28
    return-void
.end method

.method static synthetic access$000(Lcom/tds/common/permission/PermissionFragment;)Lcom/tds/common/permission/FragmentDelegate;
    .registers 2
    .param p0, "x0"    # Lcom/tds/common/permission/PermissionFragment;

    .line 15
    iget-object v0, p0, Lcom/tds/common/permission/PermissionFragment;->mFragmentDelegate:Lcom/tds/common/permission/FragmentDelegate;

    return-object v0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 54
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 55
    iget-object v0, p0, Lcom/tds/common/permission/PermissionFragment;->mFragmentDelegate:Lcom/tds/common/permission/FragmentDelegate;

    invoke-interface {v0, p1, p2, p3}, Lcom/tds/common/permission/FragmentDelegate;->onActivityResult(IILandroid/content/Intent;)V

    .line 56
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 5
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .line 60
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 61
    iget-object v0, p0, Lcom/tds/common/permission/PermissionFragment;->mFragmentDelegate:Lcom/tds/common/permission/FragmentDelegate;

    invoke-interface {v0, p1, p2, p3}, Lcom/tds/common/permission/FragmentDelegate;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 62
    return-void
.end method

.method public onStart()V
    .registers 1

    .line 48
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 49
    invoke-virtual {p0}, Lcom/tds/common/permission/PermissionFragment;->start()V

    .line 50
    return-void
.end method

.method public requestPermission(Ljava/util/Set;Lcom/tds/common/permission/RequestPermissionCallback;Lcom/tds/common/permission/PermissionConfig;)V
    .registers 6
    .param p2, "callback"    # Lcom/tds/common/permission/RequestPermissionCallback;
    .param p3, "config"    # Lcom/tds/common/permission/PermissionConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/tds/common/permission/RequestPermissionCallback;",
            "Lcom/tds/common/permission/PermissionConfig;",
            ")V"
        }
    .end annotation

    .line 33
    .local p1, "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/tds/common/permission/PermissionFragment$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/tds/common/permission/PermissionFragment$1;-><init>(Lcom/tds/common/permission/PermissionFragment;Ljava/util/Set;Lcom/tds/common/permission/RequestPermissionCallback;Lcom/tds/common/permission/PermissionConfig;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 39
    return-void
.end method

.method public start()V
    .registers 2

    .line 43
    iget-object v0, p0, Lcom/tds/common/permission/PermissionFragment;->mFragmentDelegate:Lcom/tds/common/permission/FragmentDelegate;

    invoke-interface {v0, p0}, Lcom/tds/common/permission/FragmentDelegate;->bind(Landroid/app/Fragment;)V

    .line 44
    return-void
.end method
