.class Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager$2;
.super Ljava/lang/Object;
.source "RecyclerView.java"

# interfaces
.implements Ltds/androidx/recyclerview/widget/ViewBoundsCheck$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;


# direct methods
.method constructor <init>(Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;)V
    .registers 2
    .param p1, "this$0"    # Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 7894
    iput-object p1, p0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager$2;->this$0:Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getChildAt(I)Landroid/view/View;
    .registers 3
    .param p1, "index"    # I

    .line 7897
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager$2;->this$0:Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p1}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getChildEnd(Landroid/view/View;)I
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .line 7920
    nop

    .line 7921
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 7922
    .local v0, "params":Ltds/androidx/recyclerview/widget/RecyclerView$LayoutParams;
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager$2;->this$0:Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1, p1}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedBottom(Landroid/view/View;)I

    move-result v1

    iget v2, v0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    return v1
.end method

.method public getChildStart(Landroid/view/View;)I
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .line 7913
    nop

    .line 7914
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 7915
    .local v0, "params":Ltds/androidx/recyclerview/widget/RecyclerView$LayoutParams;
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager$2;->this$0:Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1, p1}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result v1

    iget v2, v0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutParams;->topMargin:I

    sub-int/2addr v1, v2

    return v1
.end method

.method public getParentEnd()I
    .registers 3

    .line 7907
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager$2;->this$0:Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v0

    iget-object v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager$2;->this$0:Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 7908
    invoke-virtual {v1}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    .line 7907
    return v0
.end method

.method public getParentStart()I
    .registers 2

    .line 7902
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager$2;->this$0:Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v0

    return v0
.end method
