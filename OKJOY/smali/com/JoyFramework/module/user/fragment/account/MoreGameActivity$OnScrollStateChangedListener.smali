.class public Lcom/JoyFramework/module/user/fragment/account/MoreGameActivity$OnScrollStateChangedListener;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/JoyFramework/module/user/fragment/account/MoreGameActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OnScrollStateChangedListener"
.end annotation


# instance fields
.field private mActivityWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/JoyFramework/module/user/fragment/account/MoreGameActivity;


# direct methods
.method public constructor <init>(Lcom/JoyFramework/module/user/fragment/account/MoreGameActivity;Landroid/app/Activity;)V
    .registers 4

    .prologue
    .line 134
    iput-object p1, p0, Lcom/JoyFramework/module/user/fragment/account/MoreGameActivity$OnScrollStateChangedListener;->this$0:Lcom/JoyFramework/module/user/fragment/account/MoreGameActivity;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    .line 135
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/MoreGameActivity$OnScrollStateChangedListener;->mActivityWeakReference:Ljava/lang/ref/WeakReference;

    .line 136
    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .registers 5

    .prologue
    .line 140
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V

    .line 141
    if-nez p2, :cond_21

    .line 143
    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/MoreGameActivity$OnScrollStateChangedListener;->this$0:Lcom/JoyFramework/module/user/fragment/account/MoreGameActivity;

    # getter for: Lcom/JoyFramework/module/user/fragment/account/MoreGameActivity;->mViewPagerLayoutManager:Lcom/JoyFramework/wight/recyclerview/CarouselLayoutManager;
    invoke-static {v0}, Lcom/JoyFramework/module/user/fragment/account/MoreGameActivity;->access$200(Lcom/JoyFramework/module/user/fragment/account/MoreGameActivity;)Lcom/JoyFramework/wight/recyclerview/CarouselLayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/JoyFramework/wight/recyclerview/CarouselLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result v0

    .line 145
    iget-object v1, p0, Lcom/JoyFramework/module/user/fragment/account/MoreGameActivity$OnScrollStateChangedListener;->this$0:Lcom/JoyFramework/module/user/fragment/account/MoreGameActivity;

    # getter for: Lcom/JoyFramework/module/user/fragment/account/MoreGameActivity;->mShowingCurrentPosition:I
    invoke-static {v1}, Lcom/JoyFramework/module/user/fragment/account/MoreGameActivity;->access$100(Lcom/JoyFramework/module/user/fragment/account/MoreGameActivity;)I

    move-result v1

    if-eq v1, v0, :cond_21

    .line 146
    iget-object v1, p0, Lcom/JoyFramework/module/user/fragment/account/MoreGameActivity$OnScrollStateChangedListener;->this$0:Lcom/JoyFramework/module/user/fragment/account/MoreGameActivity;

    # setter for: Lcom/JoyFramework/module/user/fragment/account/MoreGameActivity;->mShowingCurrentPosition:I
    invoke-static {v1, v0}, Lcom/JoyFramework/module/user/fragment/account/MoreGameActivity;->access$102(Lcom/JoyFramework/module/user/fragment/account/MoreGameActivity;I)I

    .line 147
    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/MoreGameActivity$OnScrollStateChangedListener;->this$0:Lcom/JoyFramework/module/user/fragment/account/MoreGameActivity;

    invoke-virtual {v0}, Lcom/JoyFramework/module/user/fragment/account/MoreGameActivity;->showPicOrVideo()V

    .line 152
    :cond_21
    return-void
.end method
