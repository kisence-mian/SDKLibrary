.class public Ltds/androidx/viewpager/ViewPager$LayoutParams;
.super Landroid/view/ViewGroup$LayoutParams;
.source "ViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltds/androidx/viewpager/ViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field childIndex:I

.field public gravity:I

.field public isDecor:Z

.field needsMeasure:Z

.field position:I

.field widthFactor:F


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 3034
    const/4 v0, -0x1

    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 3015
    const/4 v0, 0x0

    iput v0, p0, Ltds/androidx/viewpager/ViewPager$LayoutParams;->widthFactor:F

    .line 3035
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 3038
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3015
    const/4 v0, 0x0

    iput v0, p0, Ltds/androidx/viewpager/ViewPager$LayoutParams;->widthFactor:F

    .line 3040
    sget-object v0, Ltds/androidx/viewpager/ViewPager;->LAYOUT_ATTRS:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 3041
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    const/16 v2, 0x30

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Ltds/androidx/viewpager/ViewPager$LayoutParams;->gravity:I

    .line 3042
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 3043
    return-void
.end method
