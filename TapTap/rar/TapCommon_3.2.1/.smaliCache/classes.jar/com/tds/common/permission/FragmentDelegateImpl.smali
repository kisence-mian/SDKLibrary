.class public Lcom/tds/common/permission/FragmentDelegateImpl;
.super Ljava/lang/Object;
.source "FragmentDelegateImpl.java"

# interfaces
.implements Lcom/tds/common/permission/FragmentDelegate;
.implements Lcom/tds/common/permission/ForwardSettingCallback;


# static fields
.field public static final FORWARD_TO_SETTING:I = 0x2

.field public static final REQUEST_PERMISSION_CODE:I = 0x1

.field public static final REQUEST_PERMISSION_FROM_SETTING:I = 0x3


# instance fields
.field private forwardPermissions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private forwardSetting:Z

.field private mCallback:Lcom/tds/common/permission/RequestPermissionCallback;

.field private mDeniedPermissions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFragment:Landroid/app/Fragment;

.field private mGrantedPermissions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPermanentDeniedPermissions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPermissionConfirm:Ljava/lang/String;

.field private mPermissionReason:Ljava/lang/String;

.field private mPermissionTitle:Ljava/lang/String;

.field private mPermissions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/tds/common/permission/FragmentDelegateImpl;->mPermissions:Ljava/util/Set;

    .line 32
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/tds/common/permission/FragmentDelegateImpl;->mGrantedPermissions:Ljava/util/Set;

    .line 34
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/tds/common/permission/FragmentDelegateImpl;->mDeniedPermissions:Ljava/util/Set;

    .line 36
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/tds/common/permission/FragmentDelegateImpl;->mPermanentDeniedPermissions:Ljava/util/Set;

    .line 38
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/tds/common/permission/FragmentDelegateImpl;->forwardPermissions:Ljava/util/Set;

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tds/common/permission/FragmentDelegateImpl;->forwardSetting:Z

    return-void
.end method

.method private handlerRequestPermission([Ljava/lang/String;[II)V
    .registers 11
    .param p1, "permissions"    # [Ljava/lang/String;
    .param p2, "grantResults"    # [I
    .param p3, "requestCode"    # I

    .line 106
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_35

    .line 107
    aget-object v1, p1, v0

    .line 108
    .local v1, "permission":Ljava/lang/String;
    aget v2, p2, v0

    if-nez v2, :cond_1a

    .line 109
    iget-object v2, p0, Lcom/tds/common/permission/FragmentDelegateImpl;->mGrantedPermissions:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 110
    iget-object v2, p0, Lcom/tds/common/permission/FragmentDelegateImpl;->mDeniedPermissions:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 111
    iget-object v2, p0, Lcom/tds/common/permission/FragmentDelegateImpl;->mPermanentDeniedPermissions:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_32

    .line 114
    :cond_1a
    iget-object v2, p0, Lcom/tds/common/permission/FragmentDelegateImpl;->mFragment:Landroid/app/Fragment;

    .line 115
    invoke-virtual {v2, v1}, Landroid/app/Fragment;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v2

    .line 116
    .local v2, "shouldShowRationale":Z
    if-eqz v2, :cond_28

    .line 117
    iget-object v3, p0, Lcom/tds/common/permission/FragmentDelegateImpl;->mDeniedPermissions:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_32

    .line 119
    :cond_28
    iget-object v3, p0, Lcom/tds/common/permission/FragmentDelegateImpl;->mPermanentDeniedPermissions:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 120
    iget-object v3, p0, Lcom/tds/common/permission/FragmentDelegateImpl;->mDeniedPermissions:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 106
    .end local v1    # "permission":Ljava/lang/String;
    .end local v2    # "shouldShowRationale":Z
    :goto_32
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 124
    .end local v0    # "i":I
    :cond_35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 125
    .local v0, "deniedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/tds/common/permission/FragmentDelegateImpl;->mPermanentDeniedPermissions:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 126
    iget-object v1, p0, Lcom/tds/common/permission/FragmentDelegateImpl;->mDeniedPermissions:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 127
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_48
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 128
    .local v2, "permission":Ljava/lang/String;
    iget-object v3, p0, Lcom/tds/common/permission/FragmentDelegateImpl;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v3}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/tds/common/permission/TdsPermission;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6a

    .line 129
    iget-object v3, p0, Lcom/tds/common/permission/FragmentDelegateImpl;->mDeniedPermissions:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 130
    iget-object v3, p0, Lcom/tds/common/permission/FragmentDelegateImpl;->mGrantedPermissions:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 132
    .end local v2    # "permission":Ljava/lang/String;
    :cond_6a
    goto :goto_48

    .line 133
    :cond_6b
    iget-object v1, p0, Lcom/tds/common/permission/FragmentDelegateImpl;->mGrantedPermissions:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    iget-object v2, p0, Lcom/tds/common/permission/FragmentDelegateImpl;->mPermissions:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lt v1, v2, :cond_85

    iget-object v1, p0, Lcom/tds/common/permission/FragmentDelegateImpl;->mDeniedPermissions:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-gtz v1, :cond_85

    move v1, v4

    goto :goto_86

    :cond_85
    move v1, v3

    .line 134
    .local v1, "allGranted":Z
    :goto_86
    if-eqz v1, :cond_9e

    .line 135
    iget-object v2, p0, Lcom/tds/common/permission/FragmentDelegateImpl;->mCallback:Lcom/tds/common/permission/RequestPermissionCallback;

    if-eqz v2, :cond_ec

    .line 136
    new-instance v3, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/tds/common/permission/FragmentDelegateImpl;->mGrantedPermissions:Ljava/util/Set;

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v5, Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/tds/common/permission/FragmentDelegateImpl;->mDeniedPermissions:Ljava/util/Set;

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v2, v4, v3, v5}, Lcom/tds/common/permission/RequestPermissionCallback;->onResult(ZLjava/util/List;Ljava/util/List;)V

    goto :goto_ec

    .line 139
    :cond_9e
    iget-object v2, p0, Lcom/tds/common/permission/FragmentDelegateImpl;->mPermanentDeniedPermissions:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    if-gtz v2, :cond_bc

    .line 140
    iget-object v2, p0, Lcom/tds/common/permission/FragmentDelegateImpl;->mCallback:Lcom/tds/common/permission/RequestPermissionCallback;

    if-eqz v2, :cond_bb

    .line 141
    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/tds/common/permission/FragmentDelegateImpl;->mGrantedPermissions:Ljava/util/Set;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v5, Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/tds/common/permission/FragmentDelegateImpl;->mDeniedPermissions:Ljava/util/Set;

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v2, v3, v4, v5}, Lcom/tds/common/permission/RequestPermissionCallback;->onResult(ZLjava/util/List;Ljava/util/List;)V

    .line 143
    :cond_bb
    return-void

    .line 145
    :cond_bc
    iget-object v2, p0, Lcom/tds/common/permission/FragmentDelegateImpl;->forwardPermissions:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 146
    iget-object v2, p0, Lcom/tds/common/permission/FragmentDelegateImpl;->forwardPermissions:Ljava/util/Set;

    iget-object v5, p0, Lcom/tds/common/permission/FragmentDelegateImpl;->mPermanentDeniedPermissions:Ljava/util/Set;

    invoke-interface {v2, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 147
    if-ne p3, v4, :cond_d6

    .line 148
    iget-boolean v2, p0, Lcom/tds/common/permission/FragmentDelegateImpl;->forwardSetting:Z

    if-eqz v2, :cond_d2

    .line 149
    invoke-direct {p0}, Lcom/tds/common/permission/FragmentDelegateImpl;->showForwardSetting()V

    goto :goto_ec

    .line 151
    :cond_d2
    invoke-virtual {p0}, Lcom/tds/common/permission/FragmentDelegateImpl;->forwardSetting()V

    goto :goto_ec

    .line 153
    :cond_d6
    const/4 v2, 0x3

    if-ne p3, v2, :cond_ec

    .line 154
    iget-object v2, p0, Lcom/tds/common/permission/FragmentDelegateImpl;->mCallback:Lcom/tds/common/permission/RequestPermissionCallback;

    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/tds/common/permission/FragmentDelegateImpl;->mGrantedPermissions:Ljava/util/Set;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v5, Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/tds/common/permission/FragmentDelegateImpl;->mDeniedPermissions:Ljava/util/Set;

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v2, v3, v4, v5}, Lcom/tds/common/permission/RequestPermissionCallback;->onResult(ZLjava/util/List;Ljava/util/List;)V

    .line 157
    :cond_ec
    :goto_ec
    return-void
.end method

.method private requestPermission(Ljava/util/Set;Lcom/tds/common/permission/RequestPermissionCallback;Lcom/tds/common/permission/PermissionConfig;I)V
    .registers 12
    .param p2, "callback"    # Lcom/tds/common/permission/RequestPermissionCallback;
    .param p3, "config"    # Lcom/tds/common/permission/PermissionConfig;
    .param p4, "requestCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/tds/common/permission/RequestPermissionCallback;",
            "Lcom/tds/common/permission/PermissionConfig;",
            "I)V"
        }
    .end annotation

    .line 68
    .local p1, "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v3, p3, Lcom/tds/common/permission/PermissionConfig;->title:Ljava/lang/String;

    iget-object v4, p3, Lcom/tds/common/permission/PermissionConfig;->reason:Ljava/lang/String;

    iget-object v5, p3, Lcom/tds/common/permission/PermissionConfig;->buttonText:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/tds/common/permission/FragmentDelegateImpl;->requestPermission(Ljava/util/Set;Lcom/tds/common/permission/RequestPermissionCallback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 69
    return-void
.end method

.method private requestPermission(Ljava/util/Set;Lcom/tds/common/permission/RequestPermissionCallback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 11
    .param p2, "callback"    # Lcom/tds/common/permission/RequestPermissionCallback;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "reason"    # Ljava/lang/String;
    .param p5, "confirm"    # Ljava/lang/String;
    .param p6, "requestCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/tds/common/permission/RequestPermissionCallback;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 77
    .local p1, "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/tds/common/permission/FragmentDelegateImpl;->mPermissions:Ljava/util/Set;

    .line 78
    iput-object p2, p0, Lcom/tds/common/permission/FragmentDelegateImpl;->mCallback:Lcom/tds/common/permission/RequestPermissionCallback;

    .line 79
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_14

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14

    move v0, v1

    goto :goto_15

    :cond_14
    move v0, v2

    :goto_15
    iput-boolean v0, p0, Lcom/tds/common/permission/FragmentDelegateImpl;->forwardSetting:Z

    .line 80
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_20

    const-string v0, "\u524d\u5f80\u8bbe\u7f6e\u9875\u9762\u4e2d\u5f00\u542f\u6743\u9650"

    goto :goto_21

    :cond_20
    move-object v0, p4

    :goto_21
    iput-object v0, p0, Lcom/tds/common/permission/FragmentDelegateImpl;->mPermissionReason:Ljava/lang/String;

    .line 81
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2c

    const-string v0, "\u6743\u9650\u8bbe\u7f6e"

    goto :goto_2d

    :cond_2c
    move-object v0, p3

    :goto_2d
    iput-object v0, p0, Lcom/tds/common/permission/FragmentDelegateImpl;->mPermissionTitle:Ljava/lang/String;

    .line 82
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_38

    const-string v0, "\u53bb\u5f00\u542f"

    goto :goto_39

    :cond_38
    move-object v0, p5

    :goto_39
    iput-object v0, p0, Lcom/tds/common/permission/FragmentDelegateImpl;->mPermissionConfirm:Ljava/lang/String;

    .line 83
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v0, v3, :cond_51

    .line 84
    iget-object v0, p0, Lcom/tds/common/permission/FragmentDelegateImpl;->mFragment:Landroid/app/Fragment;

    iget-object v1, p0, Lcom/tds/common/permission/FragmentDelegateImpl;->mPermissions:Ljava/util/Set;

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-virtual {v0, v1, p6}, Landroid/app/Fragment;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_5e

    .line 86
    :cond_51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2, v1, v0, v2}, Lcom/tds/common/permission/RequestPermissionCallback;->onResult(ZLjava/util/List;Ljava/util/List;)V

    .line 88
    :goto_5e
    return-void
.end method

.method private showForwardSetting()V
    .registers 4

    .line 160
    iget-object v0, p0, Lcom/tds/common/permission/FragmentDelegateImpl;->mPermissionTitle:Ljava/lang/String;

    iget-object v1, p0, Lcom/tds/common/permission/FragmentDelegateImpl;->mPermissionReason:Ljava/lang/String;

    iget-object v2, p0, Lcom/tds/common/permission/FragmentDelegateImpl;->mPermissionConfirm:Ljava/lang/String;

    invoke-static {v0, v1, v2, p0}, Lcom/tds/common/permission/ForwardSettingDialog;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tds/common/permission/ForwardSettingCallback;)Lcom/tds/common/permission/ForwardSettingDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/tds/common/permission/FragmentDelegateImpl;->mFragment:Landroid/app/Fragment;

    .line 161
    invoke-virtual {v1}, Landroid/app/Fragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    sget-object v2, Lcom/tds/common/permission/ForwardSettingDialog;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/tds/common/permission/ForwardSettingDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 162
    return-void
.end method


# virtual methods
.method public bind(Landroid/app/Fragment;)V
    .registers 2
    .param p1, "context"    # Landroid/app/Fragment;

    .line 54
    iput-object p1, p0, Lcom/tds/common/permission/FragmentDelegateImpl;->mFragment:Landroid/app/Fragment;

    .line 55
    return-void
.end method

.method public close()V
    .registers 5

    .line 179
    iget-object v0, p0, Lcom/tds/common/permission/FragmentDelegateImpl;->mCallback:Lcom/tds/common/permission/RequestPermissionCallback;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/tds/common/permission/FragmentDelegateImpl;->mGrantedPermissions:Ljava/util/Set;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/tds/common/permission/FragmentDelegateImpl;->mDeniedPermissions:Ljava/util/Set;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v3, 0x0

    invoke-interface {v0, v3, v1, v2}, Lcom/tds/common/permission/RequestPermissionCallback;->onResult(ZLjava/util/List;Ljava/util/List;)V

    .line 180
    return-void
.end method

.method public forwardSetting()V
    .registers 6

    .line 166
    iget-object v0, p0, Lcom/tds/common/permission/FragmentDelegateImpl;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 167
    .local v0, "activity":Landroid/app/Activity;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 168
    .local v1, "intent":Landroid/content/Intent;
    nop

    .line 169
    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 168
    const-string v3, "package"

    const/4 v4, 0x0

    invoke-static {v3, v2, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 171
    .local v2, "uri":Landroid/net/Uri;
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 172
    iget-object v3, p0, Lcom/tds/common/permission/FragmentDelegateImpl;->mFragment:Landroid/app/Fragment;

    if-eqz v3, :cond_24

    .line 173
    const/4 v4, 0x2

    invoke-virtual {v3, v1, v4}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 175
    :cond_24
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 12
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 100
    const/4 v0, 0x2

    if-ne p1, v0, :cond_12

    .line 101
    iget-object v2, p0, Lcom/tds/common/permission/FragmentDelegateImpl;->forwardPermissions:Ljava/util/Set;

    iget-object v3, p0, Lcom/tds/common/permission/FragmentDelegateImpl;->mCallback:Lcom/tds/common/permission/RequestPermissionCallback;

    iget-object v4, p0, Lcom/tds/common/permission/FragmentDelegateImpl;->mPermissionTitle:Ljava/lang/String;

    iget-object v5, p0, Lcom/tds/common/permission/FragmentDelegateImpl;->mPermissionConfirm:Ljava/lang/String;

    iget-object v6, p0, Lcom/tds/common/permission/FragmentDelegateImpl;->mPermissionReason:Ljava/lang/String;

    const/4 v7, 0x3

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/tds/common/permission/FragmentDelegateImpl;->requestPermission(Ljava/util/Set;Lcom/tds/common/permission/RequestPermissionCallback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 103
    :cond_12
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 5
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .line 93
    const/4 v0, 0x1

    if-eq p1, v0, :cond_6

    const/4 v0, 0x3

    if-ne p1, v0, :cond_9

    .line 94
    :cond_6
    invoke-direct {p0, p2, p3, p1}, Lcom/tds/common/permission/FragmentDelegateImpl;->handlerRequestPermission([Ljava/lang/String;[II)V

    .line 96
    :cond_9
    return-void
.end method

.method public requestPermission(Ljava/util/Set;Lcom/tds/common/permission/RequestPermissionCallback;Lcom/tds/common/permission/PermissionConfig;)V
    .registers 5
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

    .line 61
    .local p1, "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/tds/common/permission/FragmentDelegateImpl;->requestPermission(Ljava/util/Set;Lcom/tds/common/permission/RequestPermissionCallback;Lcom/tds/common/permission/PermissionConfig;I)V

    .line 62
    return-void
.end method
