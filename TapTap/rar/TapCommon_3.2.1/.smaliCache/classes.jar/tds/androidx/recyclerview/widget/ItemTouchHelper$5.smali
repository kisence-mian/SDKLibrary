.class Ltds/androidx/recyclerview/widget/ItemTouchHelper$5;
.super Ljava/lang/Object;
.source "ItemTouchHelper.java"

# interfaces
.implements Ltds/androidx/recyclerview/widget/RecyclerView$ChildDrawingOrderCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltds/androidx/recyclerview/widget/ItemTouchHelper;->addChildDrawingOrderCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltds/androidx/recyclerview/widget/ItemTouchHelper;


# direct methods
.method constructor <init>(Ltds/androidx/recyclerview/widget/ItemTouchHelper;)V
    .registers 2
    .param p1, "this$0"    # Ltds/androidx/recyclerview/widget/ItemTouchHelper;

    .line 1292
    iput-object p1, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper$5;->this$0:Ltds/androidx/recyclerview/widget/ItemTouchHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetChildDrawingOrder(II)I
    .registers 6
    .param p1, "childCount"    # I
    .param p2, "i"    # I

    .line 1295
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper$5;->this$0:Ltds/androidx/recyclerview/widget/ItemTouchHelper;

    iget-object v0, v0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mOverdrawChild:Landroid/view/View;

    if-nez v0, :cond_7

    .line 1296
    return p2

    .line 1298
    :cond_7
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper$5;->this$0:Ltds/androidx/recyclerview/widget/ItemTouchHelper;

    iget v0, v0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mOverdrawChildPosition:I

    .line 1299
    .local v0, "childPosition":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1e

    .line 1300
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper$5;->this$0:Ltds/androidx/recyclerview/widget/ItemTouchHelper;

    iget-object v1, v1, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Ltds/androidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper$5;->this$0:Ltds/androidx/recyclerview/widget/ItemTouchHelper;

    iget-object v2, v2, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mOverdrawChild:Landroid/view/View;

    invoke-virtual {v1, v2}, Ltds/androidx/recyclerview/widget/RecyclerView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 1301
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper$5;->this$0:Ltds/androidx/recyclerview/widget/ItemTouchHelper;

    iput v0, v1, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mOverdrawChildPosition:I

    .line 1303
    :cond_1e
    add-int/lit8 v1, p1, -0x1

    if-ne p2, v1, :cond_23

    .line 1304
    return v0

    .line 1306
    :cond_23
    if-ge p2, v0, :cond_27

    move v1, p2

    goto :goto_29

    :cond_27
    add-int/lit8 v1, p2, 0x1

    :goto_29
    return v1
.end method
