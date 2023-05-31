.class public Lcom/JoyFramework/wight/recyclerview/ScrollHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static smoothScrollToPosition(Landroid/support/v7/widget/RecyclerView;Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;I)V
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 8
    invoke-virtual {p1, p2}, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->getOffsetToPosition(I)I

    move-result v0

    .line 9
    invoke-virtual {p1}, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->getOrientation()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_10

    .line 10
    invoke-virtual {p0, v3, v0}, Landroid/support/v7/widget/RecyclerView;->smoothScrollBy(II)V

    .line 14
    :goto_f
    return-void

    .line 12
    :cond_10
    invoke-virtual {p0, v0, v3}, Landroid/support/v7/widget/RecyclerView;->smoothScrollBy(II)V

    goto :goto_f
.end method

.method public static smoothScrollToTargetView(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)V
    .registers 4

    .prologue
    .line 17
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v1

    .line 18
    instance-of v0, v1, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;

    if-nez v0, :cond_9

    .line 21
    :goto_8
    return-void

    :cond_9
    move-object v0, v1

    .line 19
    check-cast v0, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;

    invoke-virtual {v0, p1}, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;->getLayoutPositionOfView(Landroid/view/View;)I

    move-result v0

    .line 20
    check-cast v1, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;

    invoke-static {p0, v1, v0}, Lcom/JoyFramework/wight/recyclerview/ScrollHelper;->smoothScrollToPosition(Landroid/support/v7/widget/RecyclerView;Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;I)V

    goto :goto_8
.end method
