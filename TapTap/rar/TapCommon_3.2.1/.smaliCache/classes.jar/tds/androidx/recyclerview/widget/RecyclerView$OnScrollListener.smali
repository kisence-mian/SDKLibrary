.class public abstract Ltds/androidx/recyclerview/widget/RecyclerView$OnScrollListener;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltds/androidx/recyclerview/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "OnScrollListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10925
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Ltds/androidx/recyclerview/widget/RecyclerView;I)V
    .registers 3
    .param p1, "recyclerView"    # Ltds/androidx/recyclerview/widget/RecyclerView;
    .param p2, "newState"    # I

    .line 10934
    return-void
.end method

.method public onScrolled(Ltds/androidx/recyclerview/widget/RecyclerView;II)V
    .registers 4
    .param p1, "recyclerView"    # Ltds/androidx/recyclerview/widget/RecyclerView;
    .param p2, "dx"    # I
    .param p3, "dy"    # I

    .line 10948
    return-void
.end method
