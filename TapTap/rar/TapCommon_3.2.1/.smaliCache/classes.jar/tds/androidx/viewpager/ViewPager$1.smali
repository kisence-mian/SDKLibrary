.class final Ltds/androidx/viewpager/ViewPager$1;
.super Ljava/lang/Object;
.source "ViewPager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltds/androidx/viewpager/ViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ltds/androidx/viewpager/ViewPager$ItemInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 115
    check-cast p1, Ltds/androidx/viewpager/ViewPager$ItemInfo;

    check-cast p2, Ltds/androidx/viewpager/ViewPager$ItemInfo;

    invoke-virtual {p0, p1, p2}, Ltds/androidx/viewpager/ViewPager$1;->compare(Ltds/androidx/viewpager/ViewPager$ItemInfo;Ltds/androidx/viewpager/ViewPager$ItemInfo;)I

    move-result p1

    return p1
.end method

.method public compare(Ltds/androidx/viewpager/ViewPager$ItemInfo;Ltds/androidx/viewpager/ViewPager$ItemInfo;)I
    .registers 5
    .param p1, "lhs"    # Ltds/androidx/viewpager/ViewPager$ItemInfo;
    .param p2, "rhs"    # Ltds/androidx/viewpager/ViewPager$ItemInfo;

    .line 118
    iget v0, p1, Ltds/androidx/viewpager/ViewPager$ItemInfo;->position:I

    iget v1, p2, Ltds/androidx/viewpager/ViewPager$ItemInfo;->position:I

    sub-int/2addr v0, v1

    return v0
.end method
