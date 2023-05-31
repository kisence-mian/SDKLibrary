.class Ltds/androidx/viewpager/FragmentCompat$FragmentCompatApi23Impl;
.super Ltds/androidx/viewpager/FragmentCompat$FragmentCompatApi15Impl;
.source "FragmentCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltds/androidx/viewpager/FragmentCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FragmentCompatApi23Impl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 138
    invoke-direct {p0}, Ltds/androidx/viewpager/FragmentCompat$FragmentCompatApi15Impl;-><init>()V

    return-void
.end method


# virtual methods
.method public requestPermissions(Landroid/app/Fragment;[Ljava/lang/String;I)V
    .registers 4
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "requestCode"    # I

    .line 141
    invoke-virtual {p1, p2, p3}, Landroid/app/Fragment;->requestPermissions([Ljava/lang/String;I)V

    .line 142
    return-void
.end method

.method public shouldShowRequestPermissionRationale(Landroid/app/Fragment;Ljava/lang/String;)Z
    .registers 4
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "permission"    # Ljava/lang/String;

    .line 146
    invoke-virtual {p1, p2}, Landroid/app/Fragment;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
