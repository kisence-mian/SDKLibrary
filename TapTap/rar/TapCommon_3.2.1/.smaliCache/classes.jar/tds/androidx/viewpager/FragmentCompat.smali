.class public Ltds/androidx/viewpager/FragmentCompat;
.super Ljava/lang/Object;
.source "FragmentCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltds/androidx/viewpager/FragmentCompat$OnRequestPermissionsResultCallback;,
        Ltds/androidx/viewpager/FragmentCompat$FragmentCompatApi24Impl;,
        Ltds/androidx/viewpager/FragmentCompat$FragmentCompatApi23Impl;,
        Ltds/androidx/viewpager/FragmentCompat$FragmentCompatApi15Impl;,
        Ltds/androidx/viewpager/FragmentCompat$FragmentCompatBaseImpl;,
        Ltds/androidx/viewpager/FragmentCompat$PermissionCompatDelegate;,
        Ltds/androidx/viewpager/FragmentCompat$FragmentCompatImpl;
    }
.end annotation


# static fields
.field static final IMPL:Ltds/androidx/viewpager/FragmentCompat$FragmentCompatImpl;

.field private static sDelegate:Ltds/androidx/viewpager/FragmentCompat$PermissionCompatDelegate;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 160
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_e

    .line 161
    new-instance v0, Ltds/androidx/viewpager/FragmentCompat$FragmentCompatApi24Impl;

    invoke-direct {v0}, Ltds/androidx/viewpager/FragmentCompat$FragmentCompatApi24Impl;-><init>()V

    sput-object v0, Ltds/androidx/viewpager/FragmentCompat;->IMPL:Ltds/androidx/viewpager/FragmentCompat$FragmentCompatImpl;

    goto :goto_31

    .line 162
    :cond_e
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1c

    .line 163
    new-instance v0, Ltds/androidx/viewpager/FragmentCompat$FragmentCompatApi23Impl;

    invoke-direct {v0}, Ltds/androidx/viewpager/FragmentCompat$FragmentCompatApi23Impl;-><init>()V

    sput-object v0, Ltds/androidx/viewpager/FragmentCompat;->IMPL:Ltds/androidx/viewpager/FragmentCompat$FragmentCompatImpl;

    goto :goto_31

    .line 164
    :cond_1c
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-lt v0, v1, :cond_2a

    .line 165
    new-instance v0, Ltds/androidx/viewpager/FragmentCompat$FragmentCompatApi15Impl;

    invoke-direct {v0}, Ltds/androidx/viewpager/FragmentCompat$FragmentCompatApi15Impl;-><init>()V

    sput-object v0, Ltds/androidx/viewpager/FragmentCompat;->IMPL:Ltds/androidx/viewpager/FragmentCompat$FragmentCompatImpl;

    goto :goto_31

    .line 167
    :cond_2a
    new-instance v0, Ltds/androidx/viewpager/FragmentCompat$FragmentCompatBaseImpl;

    invoke-direct {v0}, Ltds/androidx/viewpager/FragmentCompat$FragmentCompatBaseImpl;-><init>()V

    sput-object v0, Ltds/androidx/viewpager/FragmentCompat;->IMPL:Ltds/androidx/viewpager/FragmentCompat$FragmentCompatImpl;

    .line 169
    :goto_31
    return-void
.end method

.method public constructor <init>()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method

.method public static getPermissionCompatDelegate()Ltds/androidx/viewpager/FragmentCompat$PermissionCompatDelegate;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 194
    sget-object v0, Ltds/androidx/viewpager/FragmentCompat;->sDelegate:Ltds/androidx/viewpager/FragmentCompat$PermissionCompatDelegate;

    return-object v0
.end method

.method public static requestPermissions(Landroid/app/Fragment;[Ljava/lang/String;I)V
    .registers 4
    .param p0, "fragment"    # Landroid/app/Fragment;
    .param p1, "permissions"    # [Ljava/lang/String;
    .param p2, "requestCode"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 302
    sget-object v0, Ltds/androidx/viewpager/FragmentCompat;->sDelegate:Ltds/androidx/viewpager/FragmentCompat$PermissionCompatDelegate;

    if-eqz v0, :cond_b

    invoke-interface {v0, p0, p1, p2}, Ltds/androidx/viewpager/FragmentCompat$PermissionCompatDelegate;->requestPermissions(Landroid/app/Fragment;[Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 304
    return-void

    .line 307
    :cond_b
    sget-object v0, Ltds/androidx/viewpager/FragmentCompat;->IMPL:Ltds/androidx/viewpager/FragmentCompat$FragmentCompatImpl;

    invoke-interface {v0, p0, p1, p2}, Ltds/androidx/viewpager/FragmentCompat$FragmentCompatImpl;->requestPermissions(Landroid/app/Fragment;[Ljava/lang/String;I)V

    .line 308
    return-void
.end method

.method public static setMenuVisibility(Landroid/app/Fragment;Z)V
    .registers 2
    .param p0, "f"    # Landroid/app/Fragment;
    .param p1, "visible"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 234
    invoke-virtual {p0, p1}, Landroid/app/Fragment;->setMenuVisibility(Z)V

    .line 235
    return-void
.end method

.method public static setPermissionCompatDelegate(Ltds/androidx/viewpager/FragmentCompat$PermissionCompatDelegate;)V
    .registers 1
    .param p0, "delegate"    # Ltds/androidx/viewpager/FragmentCompat$PermissionCompatDelegate;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 183
    sput-object p0, Ltds/androidx/viewpager/FragmentCompat;->sDelegate:Ltds/androidx/viewpager/FragmentCompat$PermissionCompatDelegate;

    .line 184
    return-void
.end method

.method public static setUserVisibleHint(Landroid/app/Fragment;Z)V
    .registers 3
    .param p0, "f"    # Landroid/app/Fragment;
    .param p1, "deferStart"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 245
    sget-object v0, Ltds/androidx/viewpager/FragmentCompat;->IMPL:Ltds/androidx/viewpager/FragmentCompat$FragmentCompatImpl;

    invoke-interface {v0, p0, p1}, Ltds/androidx/viewpager/FragmentCompat$FragmentCompatImpl;->setUserVisibleHint(Landroid/app/Fragment;Z)V

    .line 246
    return-void
.end method

.method public static shouldShowRequestPermissionRationale(Landroid/app/Fragment;Ljava/lang/String;)Z
    .registers 3
    .param p0, "fragment"    # Landroid/app/Fragment;
    .param p1, "permission"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 335
    sget-object v0, Ltds/androidx/viewpager/FragmentCompat;->IMPL:Ltds/androidx/viewpager/FragmentCompat$FragmentCompatImpl;

    invoke-interface {v0, p0, p1}, Ltds/androidx/viewpager/FragmentCompat$FragmentCompatImpl;->shouldShowRequestPermissionRationale(Landroid/app/Fragment;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
