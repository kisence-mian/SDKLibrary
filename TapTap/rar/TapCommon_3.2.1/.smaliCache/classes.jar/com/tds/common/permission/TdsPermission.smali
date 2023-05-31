.class public Lcom/tds/common/permission/TdsPermission;
.super Ljava/lang/Object;
.source "TdsPermission.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkPermission(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permission"    # Ljava/lang/String;

    .line 17
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x17

    if-lt v0, v2, :cond_10

    .line 18
    invoke-virtual {p0, p1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_e

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    return v1

    .line 20
    :cond_10
    return v1
.end method

.method public static with(Landroid/app/Activity;)Lcom/tds/common/permission/PermissionCollection;
    .registers 2
    .param p0, "activity"    # Landroid/app/Activity;

    .line 24
    new-instance v0, Lcom/tds/common/permission/PermissionCollection;

    invoke-direct {v0, p0}, Lcom/tds/common/permission/PermissionCollection;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method

.method public static with(Landroid/app/Fragment;)Lcom/tds/common/permission/PermissionCollection;
    .registers 2
    .param p0, "fragment"    # Landroid/app/Fragment;

    .line 28
    new-instance v0, Lcom/tds/common/permission/PermissionCollection;

    invoke-direct {v0, p0}, Lcom/tds/common/permission/PermissionCollection;-><init>(Landroid/app/Fragment;)V

    return-object v0
.end method
