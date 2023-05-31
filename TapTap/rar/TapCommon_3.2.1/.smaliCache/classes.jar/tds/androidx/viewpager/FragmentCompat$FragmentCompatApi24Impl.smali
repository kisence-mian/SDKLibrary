.class Ltds/androidx/viewpager/FragmentCompat$FragmentCompatApi24Impl;
.super Ltds/androidx/viewpager/FragmentCompat$FragmentCompatApi23Impl;
.source "FragmentCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltds/androidx/viewpager/FragmentCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FragmentCompatApi24Impl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 151
    invoke-direct {p0}, Ltds/androidx/viewpager/FragmentCompat$FragmentCompatApi23Impl;-><init>()V

    return-void
.end method


# virtual methods
.method public setUserVisibleHint(Landroid/app/Fragment;Z)V
    .registers 3
    .param p1, "f"    # Landroid/app/Fragment;
    .param p2, "deferStart"    # Z

    .line 154
    invoke-virtual {p1, p2}, Landroid/app/Fragment;->setUserVisibleHint(Z)V

    .line 155
    return-void
.end method
