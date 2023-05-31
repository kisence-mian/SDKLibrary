.class Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$HierarchyChangeListener;
.super Ljava/lang/Object;
.source "CoordinatorLayout.java"

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HierarchyChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;


# direct methods
.method constructor <init>(Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;)V
    .registers 2

    .line 3218
    iput-object p1, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$HierarchyChangeListener;->this$0:Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3219
    return-void
.end method


# virtual methods
.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .registers 4
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;

    .line 3223
    iget-object v0, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$HierarchyChangeListener;->this$0:Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;

    iget-object v0, v0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    if-eqz v0, :cond_d

    .line 3224
    iget-object v0, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$HierarchyChangeListener;->this$0:Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;

    iget-object v0, v0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    invoke-interface {v0, p1, p2}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewAdded(Landroid/view/View;Landroid/view/View;)V

    .line 3226
    :cond_d
    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .registers 5
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;

    .line 3230
    iget-object v0, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$HierarchyChangeListener;->this$0:Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->onChildViewsChanged(I)V

    .line 3232
    iget-object v0, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$HierarchyChangeListener;->this$0:Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;

    iget-object v0, v0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    if-eqz v0, :cond_13

    .line 3233
    iget-object v0, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$HierarchyChangeListener;->this$0:Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;

    iget-object v0, v0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    invoke-interface {v0, p1, p2}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V

    .line 3235
    :cond_13
    return-void
.end method
