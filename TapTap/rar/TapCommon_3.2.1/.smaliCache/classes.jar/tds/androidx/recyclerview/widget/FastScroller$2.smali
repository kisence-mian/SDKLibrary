.class Ltds/androidx/recyclerview/widget/FastScroller$2;
.super Ltds/androidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "FastScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltds/androidx/recyclerview/widget/FastScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltds/androidx/recyclerview/widget/FastScroller;


# direct methods
.method constructor <init>(Ltds/androidx/recyclerview/widget/FastScroller;)V
    .registers 2
    .param p1, "this$0"    # Ltds/androidx/recyclerview/widget/FastScroller;

    .line 130
    iput-object p1, p0, Ltds/androidx/recyclerview/widget/FastScroller$2;->this$0:Ltds/androidx/recyclerview/widget/FastScroller;

    invoke-direct {p0}, Ltds/androidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Ltds/androidx/recyclerview/widget/RecyclerView;II)V
    .registers 7
    .param p1, "recyclerView"    # Ltds/androidx/recyclerview/widget/RecyclerView;
    .param p2, "dx"    # I
    .param p3, "dy"    # I

    .line 133
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/FastScroller$2;->this$0:Ltds/androidx/recyclerview/widget/FastScroller;

    invoke-virtual {p1}, Ltds/androidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollOffset()I

    move-result v1

    .line 134
    invoke-virtual {p1}, Ltds/androidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result v2

    .line 133
    invoke-virtual {v0, v1, v2}, Ltds/androidx/recyclerview/widget/FastScroller;->updateScrollPosition(II)V

    .line 135
    return-void
.end method
