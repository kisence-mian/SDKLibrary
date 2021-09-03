.class Ltds/androidx/recyclerview/widget/ItemTouchHelper$2;
.super Ljava/lang/Object;
.source "ItemTouchHelper.java"

# interfaces
.implements Ltds/androidx/recyclerview/widget/RecyclerView$OnItemTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltds/androidx/recyclerview/widget/ItemTouchHelper;
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

    .line 312
    iput-object p1, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Ltds/androidx/recyclerview/widget/ItemTouchHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Ltds/androidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)Z
    .registers 10
    .param p1, "recyclerView"    # Ltds/androidx/recyclerview/widget/RecyclerView;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 316
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Ltds/androidx/recyclerview/widget/ItemTouchHelper;

    iget-object v0, v0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mGestureDetector:Ltds/androidx/core/view/GestureDetectorCompat;

    invoke-virtual {v0, p2}, Ltds/androidx/core/view/GestureDetectorCompat;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 320
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 321
    .local v0, "action":I
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_7f

    .line 322
    iget-object v3, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Ltds/androidx/recyclerview/widget/ItemTouchHelper;

    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    iput v4, v3, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mActivePointerId:I

    .line 323
    iget-object v3, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Ltds/androidx/recyclerview/widget/ItemTouchHelper;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iput v4, v3, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mInitialTouchX:F

    .line 324
    iget-object v3, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Ltds/androidx/recyclerview/widget/ItemTouchHelper;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iput v4, v3, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mInitialTouchY:F

    .line 325
    iget-object v3, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Ltds/androidx/recyclerview/widget/ItemTouchHelper;

    invoke-virtual {v3}, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->obtainVelocityTracker()V

    .line 326
    iget-object v3, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Ltds/androidx/recyclerview/widget/ItemTouchHelper;

    iget-object v3, v3, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mSelected:Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-nez v3, :cond_a6

    .line 327
    iget-object v3, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Ltds/androidx/recyclerview/widget/ItemTouchHelper;

    invoke-virtual {v3, p2}, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->findAnimation(Landroid/view/MotionEvent;)Ltds/androidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;

    move-result-object v3

    .line 328
    .local v3, "animation":Ltds/androidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;
    if-eqz v3, :cond_7e

    .line 329
    iget-object v4, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Ltds/androidx/recyclerview/widget/ItemTouchHelper;

    iget v5, v4, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mInitialTouchX:F

    iget v6, v3, Ltds/androidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mX:F

    sub-float/2addr v5, v6

    iput v5, v4, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mInitialTouchX:F

    .line 330
    iget-object v4, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Ltds/androidx/recyclerview/widget/ItemTouchHelper;

    iget v5, v4, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mInitialTouchY:F

    iget v6, v3, Ltds/androidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mY:F

    sub-float/2addr v5, v6

    iput v5, v4, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mInitialTouchY:F

    .line 331
    iget-object v4, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Ltds/androidx/recyclerview/widget/ItemTouchHelper;

    iget-object v5, v3, Ltds/androidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mViewHolder:Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {v4, v5, v1}, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->endRecoverAnimation(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V

    .line 332
    iget-object v4, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Ltds/androidx/recyclerview/widget/ItemTouchHelper;

    iget-object v4, v4, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mPendingCleanup:Ljava/util/List;

    iget-object v5, v3, Ltds/androidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mViewHolder:Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v5, v5, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-interface {v4, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6e

    .line 333
    iget-object v4, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Ltds/androidx/recyclerview/widget/ItemTouchHelper;

    iget-object v4, v4, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mCallback:Ltds/androidx/recyclerview/widget/ItemTouchHelper$Callback;

    iget-object v5, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Ltds/androidx/recyclerview/widget/ItemTouchHelper;

    iget-object v5, v5, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Ltds/androidx/recyclerview/widget/RecyclerView;

    iget-object v6, v3, Ltds/androidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mViewHolder:Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {v4, v5, v6}, Ltds/androidx/recyclerview/widget/ItemTouchHelper$Callback;->clearView(Ltds/androidx/recyclerview/widget/RecyclerView;Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 335
    :cond_6e
    iget-object v4, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Ltds/androidx/recyclerview/widget/ItemTouchHelper;

    iget-object v5, v3, Ltds/androidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mViewHolder:Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget v6, v3, Ltds/androidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mActionState:I

    invoke-virtual {v4, v5, v6}, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->select(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    .line 336
    iget-object v4, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Ltds/androidx/recyclerview/widget/ItemTouchHelper;

    iget v5, v4, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mSelectedFlags:I

    invoke-virtual {v4, p2, v5, v2}, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->updateDxDy(Landroid/view/MotionEvent;II)V

    .line 338
    .end local v3    # "animation":Ltds/androidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;
    :cond_7e
    goto :goto_a6

    .line 339
    :cond_7f
    const/4 v3, 0x3

    const/4 v4, -0x1

    if-eq v0, v3, :cond_9c

    if-ne v0, v1, :cond_86

    goto :goto_9c

    .line 342
    :cond_86
    iget-object v3, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Ltds/androidx/recyclerview/widget/ItemTouchHelper;

    iget v3, v3, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mActivePointerId:I

    if-eq v3, v4, :cond_a6

    .line 345
    iget-object v3, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Ltds/androidx/recyclerview/widget/ItemTouchHelper;

    iget v3, v3, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mActivePointerId:I

    invoke-virtual {p2, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    .line 349
    .local v3, "index":I
    if-ltz v3, :cond_a6

    .line 350
    iget-object v4, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Ltds/androidx/recyclerview/widget/ItemTouchHelper;

    invoke-virtual {v4, v0, p2, v3}, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->checkSelectForSwipe(ILandroid/view/MotionEvent;I)V

    goto :goto_a6

    .line 340
    .end local v3    # "index":I
    :cond_9c
    :goto_9c
    iget-object v3, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Ltds/androidx/recyclerview/widget/ItemTouchHelper;

    iput v4, v3, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mActivePointerId:I

    .line 341
    iget-object v3, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Ltds/androidx/recyclerview/widget/ItemTouchHelper;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->select(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    .line 353
    :cond_a6
    :goto_a6
    iget-object v3, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Ltds/androidx/recyclerview/widget/ItemTouchHelper;

    iget-object v3, v3, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_b3

    .line 354
    iget-object v3, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Ltds/androidx/recyclerview/widget/ItemTouchHelper;

    iget-object v3, v3, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 356
    :cond_b3
    iget-object v3, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Ltds/androidx/recyclerview/widget/ItemTouchHelper;

    iget-object v3, v3, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mSelected:Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-eqz v3, :cond_ba

    goto :goto_bb

    :cond_ba
    move v1, v2

    :goto_bb
    return v1
.end method

.method public onRequestDisallowInterceptTouchEvent(Z)V
    .registers 5
    .param p1, "disallowIntercept"    # Z

    .line 419
    if-nez p1, :cond_3

    .line 420
    return-void

    .line 422
    :cond_3
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Ltds/androidx/recyclerview/widget/ItemTouchHelper;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->select(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    .line 423
    return-void
.end method

.method public onTouchEvent(Ltds/androidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)V
    .registers 11
    .param p1, "recyclerView"    # Ltds/androidx/recyclerview/widget/RecyclerView;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 361
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Ltds/androidx/recyclerview/widget/ItemTouchHelper;

    iget-object v0, v0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mGestureDetector:Ltds/androidx/core/view/GestureDetectorCompat;

    invoke-virtual {v0, p2}, Ltds/androidx/core/view/GestureDetectorCompat;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 366
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Ltds/androidx/recyclerview/widget/ItemTouchHelper;

    iget-object v0, v0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_14

    .line 367
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Ltds/androidx/recyclerview/widget/ItemTouchHelper;

    iget-object v0, v0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 369
    :cond_14
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Ltds/androidx/recyclerview/widget/ItemTouchHelper;

    iget v0, v0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mActivePointerId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1c

    .line 370
    return-void

    .line 372
    :cond_1c
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 373
    .local v0, "action":I
    iget-object v2, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Ltds/androidx/recyclerview/widget/ItemTouchHelper;

    iget v2, v2, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mActivePointerId:I

    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    .line 374
    .local v2, "activePointerIndex":I
    if-ltz v2, :cond_2f

    .line 375
    iget-object v3, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Ltds/androidx/recyclerview/widget/ItemTouchHelper;

    invoke-virtual {v3, v0, p2, v2}, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->checkSelectForSwipe(ILandroid/view/MotionEvent;I)V

    .line 377
    :cond_2f
    iget-object v3, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Ltds/androidx/recyclerview/widget/ItemTouchHelper;

    iget-object v3, v3, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mSelected:Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 378
    .local v3, "viewHolder":Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    if-nez v3, :cond_36

    .line 379
    return-void

    .line 381
    :cond_36
    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_9e

    :pswitch_3a
    goto :goto_9d

    .line 403
    :pswitch_3b
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    .line 404
    .local v1, "pointerIndex":I
    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    .line 405
    .local v5, "pointerId":I
    iget-object v6, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Ltds/androidx/recyclerview/widget/ItemTouchHelper;

    iget v6, v6, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mActivePointerId:I

    if-ne v5, v6, :cond_9d

    .line 408
    if-nez v1, :cond_4c

    const/4 v4, 0x1

    .line 409
    .local v4, "newPointerIndex":I
    :cond_4c
    iget-object v6, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Ltds/androidx/recyclerview/widget/ItemTouchHelper;

    invoke-virtual {p2, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    iput v7, v6, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mActivePointerId:I

    .line 410
    iget-object v6, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Ltds/androidx/recyclerview/widget/ItemTouchHelper;

    iget v7, v6, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mSelectedFlags:I

    invoke-virtual {v6, p2, v7, v1}, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->updateDxDy(Landroid/view/MotionEvent;II)V

    .line 411
    .end local v4    # "newPointerIndex":I
    goto :goto_9d

    .line 394
    .end local v1    # "pointerIndex":I
    .end local v5    # "pointerId":I
    :pswitch_5c
    iget-object v5, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Ltds/androidx/recyclerview/widget/ItemTouchHelper;

    iget-object v5, v5, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v5, :cond_92

    .line 395
    iget-object v5, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Ltds/androidx/recyclerview/widget/ItemTouchHelper;

    iget-object v5, v5, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_92

    .line 384
    :pswitch_6a
    if-ltz v2, :cond_9d

    .line 385
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Ltds/androidx/recyclerview/widget/ItemTouchHelper;

    iget v4, v1, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mSelectedFlags:I

    invoke-virtual {v1, p2, v4, v2}, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->updateDxDy(Landroid/view/MotionEvent;II)V

    .line 386
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Ltds/androidx/recyclerview/widget/ItemTouchHelper;

    invoke-virtual {v1, v3}, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->moveIfNecessary(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 387
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Ltds/androidx/recyclerview/widget/ItemTouchHelper;

    iget-object v1, v1, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Ltds/androidx/recyclerview/widget/RecyclerView;

    iget-object v4, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Ltds/androidx/recyclerview/widget/ItemTouchHelper;

    iget-object v4, v4, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v4}, Ltds/androidx/recyclerview/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 388
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Ltds/androidx/recyclerview/widget/ItemTouchHelper;

    iget-object v1, v1, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mScrollRunnable:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 389
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Ltds/androidx/recyclerview/widget/ItemTouchHelper;

    iget-object v1, v1, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Ltds/androidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Ltds/androidx/recyclerview/widget/RecyclerView;->invalidate()V

    goto :goto_9d

    .line 399
    :cond_92
    :goto_92
    :pswitch_92
    iget-object v5, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Ltds/androidx/recyclerview/widget/ItemTouchHelper;

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v4}, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->select(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    .line 400
    iget-object v4, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Ltds/androidx/recyclerview/widget/ItemTouchHelper;

    iput v1, v4, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mActivePointerId:I

    .line 401
    nop

    .line 415
    :cond_9d
    :goto_9d
    return-void

    :pswitch_data_9e
    .packed-switch 0x1
        :pswitch_92
        :pswitch_6a
        :pswitch_5c
        :pswitch_3a
        :pswitch_3a
        :pswitch_3b
    .end packed-switch
.end method
