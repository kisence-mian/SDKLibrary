.class Landroidx/appcompat/widget/ScrollingTabContainerView$TabClickListener;
.super Ljava/lang/Object;
.source "ScrollingTabContainerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/ScrollingTabContainerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/appcompat/widget/ScrollingTabContainerView;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/ScrollingTabContainerView;)V
    .registers 2

    .line 556
    iput-object p1, p0, Landroidx/appcompat/widget/ScrollingTabContainerView$TabClickListener;->this$0:Landroidx/appcompat/widget/ScrollingTabContainerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 557
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .param p1, "view"    # Landroid/view/View;

    .line 561
    move-object v0, p1

    check-cast v0, Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;

    .line 562
    .local v0, "tabView":Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;
    invoke-virtual {v0}, Landroidx/appcompat/widget/ScrollingTabContainerView$TabView;->getTab()Landroidx/appcompat/app/ActionBar$Tab;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/app/ActionBar$Tab;->select()V

    .line 563
    iget-object v1, p0, Landroidx/appcompat/widget/ScrollingTabContainerView$TabClickListener;->this$0:Landroidx/appcompat/widget/ScrollingTabContainerView;

    iget-object v1, v1, Landroidx/appcompat/widget/ScrollingTabContainerView;->mTabLayout:Landroidx/appcompat/widget/LinearLayoutCompat;

    invoke-virtual {v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildCount()I

    move-result v1

    .line 564
    .local v1, "tabCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_13
    if-ge v2, v1, :cond_28

    .line 565
    iget-object v3, p0, Landroidx/appcompat/widget/ScrollingTabContainerView$TabClickListener;->this$0:Landroidx/appcompat/widget/ScrollingTabContainerView;

    iget-object v3, v3, Landroidx/appcompat/widget/ScrollingTabContainerView;->mTabLayout:Landroidx/appcompat/widget/LinearLayoutCompat;

    invoke-virtual {v3, v2}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 566
    .local v3, "child":Landroid/view/View;
    if-ne v3, p1, :cond_21

    const/4 v4, 0x1

    goto :goto_22

    :cond_21
    const/4 v4, 0x0

    :goto_22
    invoke-virtual {v3, v4}, Landroid/view/View;->setSelected(Z)V

    .line 564
    .end local v3    # "child":Landroid/view/View;
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 568
    .end local v2    # "i":I
    :cond_28
    return-void
.end method
