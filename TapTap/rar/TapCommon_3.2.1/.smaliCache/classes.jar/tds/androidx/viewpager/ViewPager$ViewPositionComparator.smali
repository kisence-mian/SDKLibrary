.class Ltds/androidx/viewpager/ViewPager$ViewPositionComparator;
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
    name = "ViewPositionComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 3046
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/view/View;Landroid/view/View;)I
    .registers 7
    .param p1, "lhs"    # Landroid/view/View;
    .param p2, "rhs"    # Landroid/view/View;

    .line 3049
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Ltds/androidx/viewpager/ViewPager$LayoutParams;

    .line 3050
    .local v0, "llp":Ltds/androidx/viewpager/ViewPager$LayoutParams;
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Ltds/androidx/viewpager/ViewPager$LayoutParams;

    .line 3051
    .local v1, "rlp":Ltds/androidx/viewpager/ViewPager$LayoutParams;
    iget-boolean v2, v0, Ltds/androidx/viewpager/ViewPager$LayoutParams;->isDecor:Z

    iget-boolean v3, v1, Ltds/androidx/viewpager/ViewPager$LayoutParams;->isDecor:Z

    if-eq v2, v3, :cond_1a

    .line 3052
    iget-boolean v2, v0, Ltds/androidx/viewpager/ViewPager$LayoutParams;->isDecor:Z

    if-eqz v2, :cond_18

    const/4 v2, 0x1

    goto :goto_19

    :cond_18
    const/4 v2, -0x1

    :goto_19
    return v2

    .line 3054
    :cond_1a
    iget v2, v0, Ltds/androidx/viewpager/ViewPager$LayoutParams;->position:I

    iget v3, v1, Ltds/androidx/viewpager/ViewPager$LayoutParams;->position:I

    sub-int/2addr v2, v3

    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 3046
    check-cast p1, Landroid/view/View;

    check-cast p2, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Ltds/androidx/viewpager/ViewPager$ViewPositionComparator;->compare(Landroid/view/View;Landroid/view/View;)I

    move-result p1

    return p1
.end method
