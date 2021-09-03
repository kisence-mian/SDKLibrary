.class public Ltds/androidx/viewpager/ViewPager$SimpleOnPageChangeListener;
.super Ljava/lang/Object;
.source "ViewPager.java"

# interfaces
.implements Ltds/androidx/viewpager/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltds/androidx/viewpager/ViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimpleOnPageChangeListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 296
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .registers 2
    .param p1, "state"    # I

    .line 310
    return-void
.end method

.method public onPageScrolled(IFI)V
    .registers 4
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .line 300
    return-void
.end method

.method public onPageSelected(I)V
    .registers 2
    .param p1, "position"    # I

    .line 305
    return-void
.end method
