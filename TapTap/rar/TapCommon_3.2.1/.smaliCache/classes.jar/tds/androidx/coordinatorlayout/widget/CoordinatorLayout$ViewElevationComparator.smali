.class Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$ViewElevationComparator;
.super Ljava/lang/Object;
.source "CoordinatorLayout.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewElevationComparator"
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

    .line 2063
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/view/View;Landroid/view/View;)I
    .registers 6
    .param p1, "lhs"    # Landroid/view/View;
    .param p2, "rhs"    # Landroid/view/View;

    .line 2067
    invoke-static {p1}, Ltds/androidx/core/view/ViewCompat;->getZ(Landroid/view/View;)F

    move-result v0

    .line 2068
    .local v0, "lz":F
    invoke-static {p2}, Ltds/androidx/core/view/ViewCompat;->getZ(Landroid/view/View;)F

    move-result v1

    .line 2069
    .local v1, "rz":F
    cmpl-float v2, v0, v1

    if-lez v2, :cond_e

    .line 2070
    const/4 v2, -0x1

    return v2

    .line 2071
    :cond_e
    cmpg-float v2, v0, v1

    if-gez v2, :cond_14

    .line 2072
    const/4 v2, 0x1

    return v2

    .line 2074
    :cond_14
    const/4 v2, 0x0

    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 2063
    check-cast p1, Landroid/view/View;

    check-cast p2, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$ViewElevationComparator;->compare(Landroid/view/View;Landroid/view/View;)I

    move-result p1

    return p1
.end method
