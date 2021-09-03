.class interface abstract Lcom/tds/common/permission/FragmentDelegate;
.super Ljava/lang/Object;
.source "FragmentDelegate.java"


# virtual methods
.method public abstract bind(Landroid/app/Fragment;)V
.end method

.method public abstract onActivityResult(IILandroid/content/Intent;)V
.end method

.method public abstract onRequestPermissionsResult(I[Ljava/lang/String;[I)V
.end method

.method public abstract requestPermission(Ljava/util/Set;Lcom/tds/common/permission/RequestPermissionCallback;Lcom/tds/common/permission/PermissionConfig;)V
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
.end method
