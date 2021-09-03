.class Ltds/androidx/recyclerview/widget/SnapHelper$1;
.super Ltds/androidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SnapHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltds/androidx/recyclerview/widget/SnapHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mScrolled:Z

.field final synthetic this$0:Ltds/androidx/recyclerview/widget/SnapHelper;


# direct methods
.method constructor <init>(Ltds/androidx/recyclerview/widget/SnapHelper;)V
    .registers 3
    .param p1, "this$0"    # Ltds/androidx/recyclerview/widget/SnapHelper;

    .line 43
    iput-object p1, p0, Ltds/androidx/recyclerview/widget/SnapHelper$1;->this$0:Ltds/androidx/recyclerview/widget/SnapHelper;

    invoke-direct {p0}, Ltds/androidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Ltds/androidx/recyclerview/widget/SnapHelper$1;->mScrolled:Z

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Ltds/androidx/recyclerview/widget/RecyclerView;I)V
    .registers 4
    .param p1, "recyclerView"    # Ltds/androidx/recyclerview/widget/RecyclerView;
    .param p2, "newState"    # I

    .line 48
    invoke-super {p0, p1, p2}, Ltds/androidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Ltds/androidx/recyclerview/widget/RecyclerView;I)V

    .line 49
    if-nez p2, :cond_11

    iget-boolean v0, p0, Ltds/androidx/recyclerview/widget/SnapHelper$1;->mScrolled:Z

    if-eqz v0, :cond_11

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Ltds/androidx/recyclerview/widget/SnapHelper$1;->mScrolled:Z

    .line 51
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/SnapHelper$1;->this$0:Ltds/androidx/recyclerview/widget/SnapHelper;

    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/SnapHelper;->snapToTargetExistingView()V

    .line 53
    :cond_11
    return-void
.end method

.method public onScrolled(Ltds/androidx/recyclerview/widget/RecyclerView;II)V
    .registers 5
    .param p1, "recyclerView"    # Ltds/androidx/recyclerview/widget/RecyclerView;
    .param p2, "dx"    # I
    .param p3, "dy"    # I

    .line 57
    if-nez p2, :cond_4

    if-eqz p3, :cond_7

    .line 58
    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Ltds/androidx/recyclerview/widget/SnapHelper$1;->mScrolled:Z

    .line 60
    :cond_7
    return-void
.end method
