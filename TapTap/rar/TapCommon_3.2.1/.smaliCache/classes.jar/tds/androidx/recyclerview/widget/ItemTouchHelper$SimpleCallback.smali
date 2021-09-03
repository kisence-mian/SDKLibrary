.class public abstract Ltds/androidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;
.super Ltds/androidx/recyclerview/widget/ItemTouchHelper$Callback;
.source "ItemTouchHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltds/androidx/recyclerview/widget/ItemTouchHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SimpleCallback"
.end annotation


# instance fields
.field private mDefaultDragDirs:I

.field private mDefaultSwipeDirs:I


# direct methods
.method public constructor <init>(II)V
    .registers 3
    .param p1, "dragDirs"    # I
    .param p2, "swipeDirs"    # I

    .line 2230
    invoke-direct {p0}, Ltds/androidx/recyclerview/widget/ItemTouchHelper$Callback;-><init>()V

    .line 2231
    iput p2, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;->mDefaultSwipeDirs:I

    .line 2232
    iput p1, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;->mDefaultDragDirs:I

    .line 2233
    return-void
.end method


# virtual methods
.method public getDragDirs(Ltds/androidx/recyclerview/widget/RecyclerView;Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)I
    .registers 4
    .param p1, "recyclerView"    # Ltds/androidx/recyclerview/widget/RecyclerView;
    .param p2, "viewHolder"    # Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 2284
    iget v0, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;->mDefaultDragDirs:I

    return v0
.end method

.method public getMovementFlags(Ltds/androidx/recyclerview/widget/RecyclerView;Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)I
    .registers 5
    .param p1, "recyclerView"    # Ltds/androidx/recyclerview/widget/RecyclerView;
    .param p2, "viewHolder"    # Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 2290
    invoke-virtual {p0, p1, p2}, Ltds/androidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;->getDragDirs(Ltds/androidx/recyclerview/widget/RecyclerView;Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)I

    move-result v0

    .line 2291
    invoke-virtual {p0, p1, p2}, Ltds/androidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;->getSwipeDirs(Ltds/androidx/recyclerview/widget/RecyclerView;Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)I

    move-result v1

    .line 2290
    invoke-static {v0, v1}, Ltds/androidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;->makeMovementFlags(II)I

    move-result v0

    return v0
.end method

.method public getSwipeDirs(Ltds/androidx/recyclerview/widget/RecyclerView;Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)I
    .registers 4
    .param p1, "recyclerView"    # Ltds/androidx/recyclerview/widget/RecyclerView;
    .param p2, "viewHolder"    # Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 2269
    iget v0, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;->mDefaultSwipeDirs:I

    return v0
.end method

.method public setDefaultDragDirs(I)V
    .registers 2
    .param p1, "defaultDragDirs"    # I

    .line 2254
    iput p1, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;->mDefaultDragDirs:I

    .line 2255
    return-void
.end method

.method public setDefaultSwipeDirs(I)V
    .registers 2
    .param p1, "defaultSwipeDirs"    # I

    .line 2243
    iput p1, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;->mDefaultSwipeDirs:I

    .line 2244
    return-void
.end method
