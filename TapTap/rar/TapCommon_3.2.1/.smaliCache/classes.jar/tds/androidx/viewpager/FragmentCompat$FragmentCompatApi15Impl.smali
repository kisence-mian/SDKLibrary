.class Ltds/androidx/viewpager/FragmentCompat$FragmentCompatApi15Impl;
.super Ltds/androidx/viewpager/FragmentCompat$FragmentCompatBaseImpl;
.source "FragmentCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltds/androidx/viewpager/FragmentCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FragmentCompatApi15Impl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 130
    invoke-direct {p0}, Ltds/androidx/viewpager/FragmentCompat$FragmentCompatBaseImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public setUserVisibleHint(Landroid/app/Fragment;Z)V
    .registers 3
    .param p1, "f"    # Landroid/app/Fragment;
    .param p2, "deferStart"    # Z

    .line 133
    invoke-virtual {p1, p2}, Landroid/app/Fragment;->setUserVisibleHint(Z)V

    .line 134
    return-void
.end method
