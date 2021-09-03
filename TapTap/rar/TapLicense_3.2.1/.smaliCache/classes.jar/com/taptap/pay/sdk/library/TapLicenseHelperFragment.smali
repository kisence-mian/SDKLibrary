.class public Lcom/taptap/pay/sdk/library/TapLicenseHelperFragment;
.super Landroid/app/Fragment;
.source "TapLicenseHelperFragment.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private activityWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 20
    const-class v0, Lcom/taptap/pay/sdk/library/TapLicenseHelperFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/taptap/pay/sdk/library/TapLicenseHelperFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 41
    return-void
.end method

.method public static startHelperFragment(Landroid/app/Activity;)Lcom/taptap/pay/sdk/library/TapLicenseHelperFragment;
    .registers 6
    .param p0, "activity"    # Landroid/app/Activity;

    .line 23
    sget-object v0, Lcom/taptap/pay/sdk/library/TapLicenseHelperFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0001"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 25
    .local v1, "manager":Landroid/app/FragmentManager;
    nop

    .line 26
    invoke-virtual {v1, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/taptap/pay/sdk/library/TapLicenseHelperFragment;

    .line 27
    .local v2, "fragment":Lcom/taptap/pay/sdk/library/TapLicenseHelperFragment;
    if-nez v2, :cond_48

    .line 28
    new-instance v3, Lcom/taptap/pay/sdk/library/TapLicenseHelperFragment;

    invoke-direct {v3}, Lcom/taptap/pay/sdk/library/TapLicenseHelperFragment;-><init>()V

    move-object v2, v3

    .line 29
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-lt v3, v4, :cond_3d

    .line 30
    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitNowAllowingStateLoss()V

    goto :goto_48

    .line 32
    :cond_3d
    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 35
    :cond_48
    :goto_48
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, v2, Lcom/taptap/pay/sdk/library/TapLicenseHelperFragment;->activityWeakReference:Ljava/lang/ref/WeakReference;

    .line 36
    return-object v2
.end method


# virtual methods
.method public check(Landroid/app/Activity;)V
    .registers 4
    .param p1, "activity"    # Landroid/app/Activity;

    .line 49
    invoke-static {}, Lcom/taptap/pay/sdk/library/TapTapLicense;->getInstance()Lcom/taptap/pay/sdk/library/TapTapLicense;

    move-result-object v0

    new-instance v1, Lcom/taptap/pay/sdk/library/TapLicenseHelperFragment$1;

    invoke-direct {v1, p0}, Lcom/taptap/pay/sdk/library/TapLicenseHelperFragment$1;-><init>(Lcom/taptap/pay/sdk/library/TapLicenseHelperFragment;)V

    invoke-virtual {v0, v1}, Lcom/taptap/pay/sdk/library/TapTapLicense;->setLicenseCallback(Lcom/taptap/pay/sdk/library/TapLicenseCallback;)V

    .line 58
    invoke-static {}, Lcom/taptap/pay/sdk/library/TapTapLicense;->getInstance()Lcom/taptap/pay/sdk/library/TapTapLicense;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lcom/taptap/pay/sdk/library/TapTapLicense;->check(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 59
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 126
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 127
    invoke-static {p1, p2, p3}, Lcom/taptap/pay/sdk/library/TapTapLicense;->onActivityResult(IILandroid/content/Intent;)V

    .line 128
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 45
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 46
    return-void
.end method

.method public purchase(Ljava/lang/String;)V
    .registers 4
    .param p1, "purchaseSKU"    # Ljava/lang/String;

    .line 67
    invoke-static {}, Lcom/taptap/pay/sdk/library/TapLicenseHelper;->getInstance()Lcom/taptap/pay/sdk/library/TapLicenseHelper;

    move-result-object v0

    iget-boolean v0, v0, Lcom/taptap/pay/sdk/library/TapLicenseHelper;->checkOnce:Z

    invoke-static {}, Lcom/taptap/pay/sdk/library/TapLicenseHelper;->getInstance()Lcom/taptap/pay/sdk/library/TapLicenseHelper;

    move-result-object v1

    iget-object v1, v1, Lcom/taptap/pay/sdk/library/TapLicenseHelper;->publicKey:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/taptap/pay/sdk/library/TapLicenseHelperFragment;->setupDLCHelper(ZLjava/lang/String;)V

    .line 68
    invoke-static {}, Lcom/taptap/pay/sdk/library/TapTapLicense;->getInstance()Lcom/taptap/pay/sdk/library/TapTapLicense;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/taptap/pay/sdk/library/TapTapLicense;->purchase(Landroid/app/Fragment;Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method public query([Ljava/lang/String;)V
    .registers 4
    .param p1, "querySKU"    # [Ljava/lang/String;

    .line 62
    invoke-static {}, Lcom/taptap/pay/sdk/library/TapLicenseHelper;->getInstance()Lcom/taptap/pay/sdk/library/TapLicenseHelper;

    move-result-object v0

    iget-boolean v0, v0, Lcom/taptap/pay/sdk/library/TapLicenseHelper;->checkOnce:Z

    invoke-static {}, Lcom/taptap/pay/sdk/library/TapLicenseHelper;->getInstance()Lcom/taptap/pay/sdk/library/TapLicenseHelper;

    move-result-object v1

    iget-object v1, v1, Lcom/taptap/pay/sdk/library/TapLicenseHelper;->publicKey:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/taptap/pay/sdk/library/TapLicenseHelperFragment;->setupDLCHelper(ZLjava/lang/String;)V

    .line 63
    invoke-static {}, Lcom/taptap/pay/sdk/library/TapTapLicense;->getInstance()Lcom/taptap/pay/sdk/library/TapTapLicense;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/taptap/pay/sdk/library/TapTapLicense;->queryPurchaseBySKU(Landroid/app/Fragment;[Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method public removeSelf()V
    .registers 5

    .line 96
    invoke-virtual {p0}, Lcom/taptap/pay/sdk/library/TapLicenseHelperFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 98
    .local v0, "fg":Landroid/app/FragmentManager;
    const-string v1, "TapLicense"

    if-nez v0, :cond_1b

    .line 99
    invoke-virtual {p0}, Lcom/taptap/pay/sdk/library/TapLicenseHelperFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_1b

    .line 100
    const-string v2, "getActivity not null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-virtual {p0}, Lcom/taptap/pay/sdk/library/TapLicenseHelperFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 104
    :cond_1b
    if-nez v0, :cond_30

    .line 105
    iget-object v2, p0, Lcom/taptap/pay/sdk/library/TapLicenseHelperFragment;->activityWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    .line 106
    .local v2, "context":Landroid/app/Activity;
    if-eqz v2, :cond_30

    .line 107
    const-string v3, "activityWeakReference not null"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    invoke-virtual {v2}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 111
    .end local v2    # "context":Landroid/app/Activity;
    :cond_30
    if-nez v0, :cond_3d

    .line 112
    const-string v2, "fg is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-object v1, p0, Lcom/taptap/pay/sdk/library/TapLicenseHelperFragment;->activityWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->clear()V

    .line 114
    return-void

    .line 116
    :cond_3d
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_4f

    .line 117
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitNowAllowingStateLoss()V

    goto :goto_5a

    .line 119
    :cond_4f
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 121
    :goto_5a
    iget-object v1, p0, Lcom/taptap/pay/sdk/library/TapLicenseHelperFragment;->activityWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->clear()V

    .line 122
    return-void
.end method

.method setupDLCHelper(ZLjava/lang/String;)V
    .registers 5
    .param p1, "checkOnce"    # Z
    .param p2, "publicKey"    # Ljava/lang/String;

    .line 72
    invoke-static {}, Lcom/taptap/pay/sdk/library/TapTapLicense;->getInstance()Lcom/taptap/pay/sdk/library/TapTapLicense;

    move-result-object v0

    new-instance v1, Lcom/taptap/pay/sdk/library/TapLicenseHelperFragment$2;

    invoke-direct {v1, p0}, Lcom/taptap/pay/sdk/library/TapLicenseHelperFragment$2;-><init>(Lcom/taptap/pay/sdk/library/TapLicenseHelperFragment;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/taptap/pay/sdk/library/TapTapLicense;->initDLCManager(ZLjava/lang/String;Lcom/taptap/pay/sdk/library/DLCManager$InventoryCallback;)V

    .line 93
    return-void
.end method
