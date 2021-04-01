.class Lcom/JoyFramework/module/user/fragment/account/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/JoyFramework/wight/recyclerview/MoreGameAdapter$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/JoyFramework/module/user/fragment/account/MoreGameActivity;


# direct methods
.method constructor <init>(Lcom/JoyFramework/module/user/fragment/account/MoreGameActivity;)V
    .registers 2

    .prologue
    .line 107
    iput-object p1, p0, Lcom/JoyFramework/module/user/fragment/account/i;->a:Lcom/JoyFramework/module/user/fragment/account/MoreGameActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)V
    .registers 4

    .prologue
    .line 110
    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/i;->a:Lcom/JoyFramework/module/user/fragment/account/MoreGameActivity;

    # getter for: Lcom/JoyFramework/module/user/fragment/account/MoreGameActivity;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;
    invoke-static {v0}, Lcom/JoyFramework/module/user/fragment/account/MoreGameActivity;->access$000(Lcom/JoyFramework/module/user/fragment/account/MoreGameActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/JoyFramework/wight/recyclerview/ScrollHelper;->smoothScrollToTargetView(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)V

    .line 111
    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/i;->a:Lcom/JoyFramework/module/user/fragment/account/MoreGameActivity;

    # getter for: Lcom/JoyFramework/module/user/fragment/account/MoreGameActivity;->mShowingCurrentPosition:I
    invoke-static {v0}, Lcom/JoyFramework/module/user/fragment/account/MoreGameActivity;->access$100(Lcom/JoyFramework/module/user/fragment/account/MoreGameActivity;)I

    move-result v0

    if-eq p2, v0, :cond_1b

    .line 112
    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/i;->a:Lcom/JoyFramework/module/user/fragment/account/MoreGameActivity;

    # setter for: Lcom/JoyFramework/module/user/fragment/account/MoreGameActivity;->mShowingCurrentPosition:I
    invoke-static {v0, p2}, Lcom/JoyFramework/module/user/fragment/account/MoreGameActivity;->access$102(Lcom/JoyFramework/module/user/fragment/account/MoreGameActivity;I)I

    .line 114
    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/i;->a:Lcom/JoyFramework/module/user/fragment/account/MoreGameActivity;

    invoke-virtual {v0}, Lcom/JoyFramework/module/user/fragment/account/MoreGameActivity;->showPicOrVideo()V

    .line 120
    :cond_1b
    return-void
.end method
