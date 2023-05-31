.class Landroid/support/v7/widget/helper/ItemTouchHelper$5;
.super Ljava/lang/Object;
.source "ItemTouchHelper.java"

# interfaces
.implements Landroid/support/v7/widget/RecyclerView$ChildDrawingOrderCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/helper/ItemTouchHelper;->addChildDrawingOrderCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/helper/ItemTouchHelper;)V
    .registers 2
    .param p1, "this$0"    # Landroid/support/v7/widget/helper/ItemTouchHelper;

    .prologue
    .line 1265
    iput-object p1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$5;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetChildDrawingOrder(II)I
    .registers 6
    .param p1, "childCount"    # I
    .param p2, "i"    # I

    .prologue
    .line 1268
    iget-object v1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$5;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget-object v1, v1, Landroid/support/v7/widget/helper/ItemTouchHelper;->mOverdrawChild:Landroid/view/View;

    if-nez v1, :cond_7

    .line 1279
    .end local p2    # "i":I
    :cond_6
    :goto_6
    return p2

    .line 1271
    .restart local p2    # "i":I
    :cond_7
    iget-object v1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$5;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget v0, v1, Landroid/support/v7/widget/helper/ItemTouchHelper;->mOverdrawChildPosition:I

    .line 1272
    .local v0, "childPosition":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1e

    .line 1273
    iget-object v1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$5;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget-object v1, v1, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$5;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget-object v2, v2, Landroid/support/v7/widget/helper/ItemTouchHelper;->mOverdrawChild:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 1274
    iget-object v1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$5;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iput v0, v1, Landroid/support/v7/widget/helper/ItemTouchHelper;->mOverdrawChildPosition:I

    .line 1276
    :cond_1e
    add-int/lit8 v1, p1, -0x1

    if-ne p2, v1, :cond_24

    move p2, v0

    .line 1277
    goto :goto_6

    .line 1279
    :cond_24
    if-lt p2, v0, :cond_6

    add-int/lit8 p2, p2, 0x1

    goto :goto_6
.end method
