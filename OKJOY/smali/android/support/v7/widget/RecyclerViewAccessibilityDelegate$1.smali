.class Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate$1;
.super Landroid/support/v4/view/AccessibilityDelegateCompat;
.source "RecyclerViewAccessibilityDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate;)V
    .registers 2
    .param p1, "this$0"    # Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate;

    .prologue
    .line 84
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate$1;->this$0:Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate;

    invoke-direct {p0}, Landroid/support/v4/view/AccessibilityDelegateCompat;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .registers 4
    .param p1, "host"    # Landroid/view/View;
    .param p2, "info"    # Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    .prologue
    .line 87
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 88
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate$1;->this$0:Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate;->shouldIgnore()Z

    move-result v0

    if-nez v0, :cond_20

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate$1;->this$0:Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 89
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate$1;->this$0:Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 90
    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 92
    :cond_20
    return-void
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .registers 5
    .param p1, "host"    # Landroid/view/View;
    .param p2, "action"    # I
    .param p3, "args"    # Landroid/os/Bundle;

    .prologue
    .line 96
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/view/AccessibilityDelegateCompat;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 97
    const/4 v0, 0x1

    .line 103
    :goto_7
    return v0

    .line 99
    :cond_8
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate$1;->this$0:Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate;->shouldIgnore()Z

    move-result v0

    if-nez v0, :cond_27

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate$1;->this$0:Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 100
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate$1;->this$0:Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 101
    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->performAccessibilityActionForItem(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    goto :goto_7

    .line 103
    :cond_27
    const/4 v0, 0x0

    goto :goto_7
.end method
