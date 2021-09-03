.class public Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;
.super Ltds/androidx/recyclerview/widget/RecyclerView$LayoutParams;
.source "StaggeredGridLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# static fields
.field public static final INVALID_SPAN_ID:I = -0x1


# instance fields
.field mFullSpan:Z

.field mSpan:Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$Span;


# direct methods
.method public constructor <init>(II)V
    .registers 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 2428
    invoke-direct {p0, p1, p2}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    .line 2429
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 2424
    invoke-direct {p0, p1, p2}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2425
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .registers 2
    .param p1, "source"    # Landroid/view/ViewGroup$LayoutParams;

    .line 2436
    invoke-direct {p0, p1}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2437
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .registers 2
    .param p1, "source"    # Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2432
    invoke-direct {p0, p1}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 2433
    return-void
.end method

.method public constructor <init>(Ltds/androidx/recyclerview/widget/RecyclerView$LayoutParams;)V
    .registers 2
    .param p1, "source"    # Ltds/androidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 2440
    invoke-direct {p0, p1}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(Ltds/androidx/recyclerview/widget/RecyclerView$LayoutParams;)V

    .line 2441
    return-void
.end method


# virtual methods
.method public final getSpanIndex()I
    .registers 2

    .line 2472
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    if-nez v0, :cond_6

    .line 2473
    const/4 v0, -0x1

    return v0

    .line 2475
    :cond_6
    iget v0, v0, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    return v0
.end method

.method public isFullSpan()Z
    .registers 2

    .line 2462
    iget-boolean v0, p0, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    return v0
.end method

.method public setFullSpan(Z)V
    .registers 2
    .param p1, "fullSpan"    # Z

    .line 2452
    iput-boolean p1, p0, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    .line 2453
    return-void
.end method
