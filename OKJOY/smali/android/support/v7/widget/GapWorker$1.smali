.class final Landroid/support/v7/widget/GapWorker$1;
.super Ljava/lang/Object;
.source "GapWorker.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/GapWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/support/v7/widget/GapWorker$Task;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/support/v7/widget/GapWorker$Task;Landroid/support/v7/widget/GapWorker$Task;)I
    .registers 10
    .param p1, "lhs"    # Landroid/support/v7/widget/GapWorker$Task;
    .param p2, "rhs"    # Landroid/support/v7/widget/GapWorker$Task;

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 186
    iget-object v2, p1, Landroid/support/v7/widget/GapWorker$Task;->view:Landroid/support/v7/widget/RecyclerView;

    if-nez v2, :cond_14

    move v2, v3

    :goto_8
    iget-object v6, p2, Landroid/support/v7/widget/GapWorker$Task;->view:Landroid/support/v7/widget/RecyclerView;

    if-nez v6, :cond_16

    move v6, v3

    :goto_d
    if-eq v2, v6, :cond_1a

    .line 187
    iget-object v2, p1, Landroid/support/v7/widget/GapWorker$Task;->view:Landroid/support/v7/widget/RecyclerView;

    if-nez v2, :cond_18

    .line 203
    :goto_13
    return v3

    :cond_14
    move v2, v4

    .line 186
    goto :goto_8

    :cond_16
    move v6, v4

    goto :goto_d

    :cond_18
    move v3, v5

    .line 187
    goto :goto_13

    .line 191
    :cond_1a
    iget-boolean v2, p1, Landroid/support/v7/widget/GapWorker$Task;->immediate:Z

    iget-boolean v6, p2, Landroid/support/v7/widget/GapWorker$Task;->immediate:Z

    if-eq v2, v6, :cond_28

    .line 192
    iget-boolean v2, p1, Landroid/support/v7/widget/GapWorker$Task;->immediate:Z

    if-eqz v2, :cond_26

    :goto_24
    move v3, v5

    goto :goto_13

    :cond_26
    move v5, v3

    goto :goto_24

    .line 196
    :cond_28
    iget v2, p2, Landroid/support/v7/widget/GapWorker$Task;->viewVelocity:I

    iget v3, p1, Landroid/support/v7/widget/GapWorker$Task;->viewVelocity:I

    sub-int v1, v2, v3

    .line 197
    .local v1, "deltaViewVelocity":I
    if-eqz v1, :cond_32

    move v3, v1

    goto :goto_13

    .line 200
    :cond_32
    iget v2, p1, Landroid/support/v7/widget/GapWorker$Task;->distanceToItem:I

    iget v3, p2, Landroid/support/v7/widget/GapWorker$Task;->distanceToItem:I

    sub-int v0, v2, v3

    .line 201
    .local v0, "deltaDistanceToItem":I
    if-eqz v0, :cond_3c

    move v3, v0

    goto :goto_13

    :cond_3c
    move v3, v4

    .line 203
    goto :goto_13
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    .prologue
    .line 182
    check-cast p1, Landroid/support/v7/widget/GapWorker$Task;

    check-cast p2, Landroid/support/v7/widget/GapWorker$Task;

    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/GapWorker$1;->compare(Landroid/support/v7/widget/GapWorker$Task;Landroid/support/v7/widget/GapWorker$Task;)I

    move-result v0

    return v0
.end method
