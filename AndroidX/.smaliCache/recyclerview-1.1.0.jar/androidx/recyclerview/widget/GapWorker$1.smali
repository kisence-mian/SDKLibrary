.class final Landroidx/recyclerview/widget/GapWorker$1;
.super Ljava/lang/Object;
.source "GapWorker.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/GapWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroidx/recyclerview/widget/GapWorker$Task;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroidx/recyclerview/widget/GapWorker$Task;Landroidx/recyclerview/widget/GapWorker$Task;)I
    .registers 8
    .param p1, "lhs"    # Landroidx/recyclerview/widget/GapWorker$Task;
    .param p2, "rhs"    # Landroidx/recyclerview/widget/GapWorker$Task;

    .line 194
    iget-object v0, p1, Landroidx/recyclerview/widget/GapWorker$Task;->view:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    iget-object v3, p2, Landroidx/recyclerview/widget/GapWorker$Task;->view:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v3, :cond_f

    const/4 v3, 0x1

    goto :goto_10

    :cond_f
    const/4 v3, 0x0

    :goto_10
    const/4 v4, -0x1

    if-eq v0, v3, :cond_1a

    .line 195
    iget-object v0, p1, Landroidx/recyclerview/widget/GapWorker$Task;->view:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_18

    goto :goto_19

    :cond_18
    const/4 v2, -0x1

    :goto_19
    return v2

    .line 199
    :cond_1a
    iget-boolean v0, p1, Landroidx/recyclerview/widget/GapWorker$Task;->immediate:Z

    iget-boolean v3, p2, Landroidx/recyclerview/widget/GapWorker$Task;->immediate:Z

    if-eq v0, v3, :cond_26

    .line 200
    iget-boolean v0, p1, Landroidx/recyclerview/widget/GapWorker$Task;->immediate:Z

    if-eqz v0, :cond_25

    const/4 v2, -0x1

    :cond_25
    return v2

    .line 204
    :cond_26
    iget v0, p2, Landroidx/recyclerview/widget/GapWorker$Task;->viewVelocity:I

    iget v2, p1, Landroidx/recyclerview/widget/GapWorker$Task;->viewVelocity:I

    sub-int/2addr v0, v2

    .line 205
    .local v0, "deltaViewVelocity":I
    if-eqz v0, :cond_2e

    return v0

    .line 208
    :cond_2e
    iget v2, p1, Landroidx/recyclerview/widget/GapWorker$Task;->distanceToItem:I

    iget v3, p2, Landroidx/recyclerview/widget/GapWorker$Task;->distanceToItem:I

    sub-int/2addr v2, v3

    .line 209
    .local v2, "deltaDistanceToItem":I
    if-eqz v2, :cond_36

    return v2

    .line 211
    :cond_36
    return v1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 190
    check-cast p1, Landroidx/recyclerview/widget/GapWorker$Task;

    check-cast p2, Landroidx/recyclerview/widget/GapWorker$Task;

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/GapWorker$1;->compare(Landroidx/recyclerview/widget/GapWorker$Task;Landroidx/recyclerview/widget/GapWorker$Task;)I

    move-result p1

    return p1
.end method
