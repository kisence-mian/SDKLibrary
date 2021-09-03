.class public abstract Ltds/androidx/recyclerview/widget/RecyclerView$ItemDecoration;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltds/androidx/recyclerview/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ItemDecoration"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10763
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;ILtds/androidx/recyclerview/widget/RecyclerView;)V
    .registers 5
    .param p1, "outRect"    # Landroid/graphics/Rect;
    .param p2, "itemPosition"    # I
    .param p3, "parent"    # Ltds/androidx/recyclerview/widget/RecyclerView;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 10812
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 10813
    return-void
.end method

.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Ltds/androidx/recyclerview/widget/RecyclerView;Ltds/androidx/recyclerview/widget/RecyclerView$State;)V
    .registers 6
    .param p1, "outRect"    # Landroid/graphics/Rect;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Ltds/androidx/recyclerview/widget/RecyclerView;
    .param p4, "state"    # Ltds/androidx/recyclerview/widget/RecyclerView$State;

    .line 10837
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutParams;

    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutParams;->getViewLayoutPosition()I

    move-result v0

    invoke-virtual {p0, p1, v0, p3}, Ltds/androidx/recyclerview/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;ILtds/androidx/recyclerview/widget/RecyclerView;)V

    .line 10839
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Ltds/androidx/recyclerview/widget/RecyclerView;)V
    .registers 3
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Ltds/androidx/recyclerview/widget/RecyclerView;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 10782
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Ltds/androidx/recyclerview/widget/RecyclerView;Ltds/androidx/recyclerview/widget/RecyclerView$State;)V
    .registers 4
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Ltds/androidx/recyclerview/widget/RecyclerView;
    .param p3, "state"    # Ltds/androidx/recyclerview/widget/RecyclerView$State;

    .line 10774
    invoke-virtual {p0, p1, p2}, Ltds/androidx/recyclerview/widget/RecyclerView$ItemDecoration;->onDraw(Landroid/graphics/Canvas;Ltds/androidx/recyclerview/widget/RecyclerView;)V

    .line 10775
    return-void
.end method

.method public onDrawOver(Landroid/graphics/Canvas;Ltds/androidx/recyclerview/widget/RecyclerView;)V
    .registers 3
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Ltds/androidx/recyclerview/widget/RecyclerView;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 10803
    return-void
.end method

.method public onDrawOver(Landroid/graphics/Canvas;Ltds/androidx/recyclerview/widget/RecyclerView;Ltds/androidx/recyclerview/widget/RecyclerView$State;)V
    .registers 4
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Ltds/androidx/recyclerview/widget/RecyclerView;
    .param p3, "state"    # Ltds/androidx/recyclerview/widget/RecyclerView$State;

    .line 10795
    invoke-virtual {p0, p1, p2}, Ltds/androidx/recyclerview/widget/RecyclerView$ItemDecoration;->onDrawOver(Landroid/graphics/Canvas;Ltds/androidx/recyclerview/widget/RecyclerView;)V

    .line 10796
    return-void
.end method
