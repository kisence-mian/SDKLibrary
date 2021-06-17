.class public Landroidx/fragment/app/DialogFragment;
.super Landroidx/fragment/app/Fragment;
.source "DialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# static fields
.field private static final SAVED_BACK_STACK_ID:Ljava/lang/String; = "android:backStackId"

.field private static final SAVED_CANCELABLE:Ljava/lang/String; = "android:cancelable"

.field private static final SAVED_DIALOG_STATE_TAG:Ljava/lang/String; = "android:savedDialogState"

.field private static final SAVED_SHOWS_DIALOG:Ljava/lang/String; = "android:showsDialog"

.field private static final SAVED_STYLE:Ljava/lang/String; = "android:style"

.field private static final SAVED_THEME:Ljava/lang/String; = "android:theme"

.field public static final STYLE_NORMAL:I = 0x0

.field public static final STYLE_NO_FRAME:I = 0x2

.field public static final STYLE_NO_INPUT:I = 0x3

.field public static final STYLE_NO_TITLE:I = 0x1


# instance fields
.field mBackStackId:I

.field mCancelable:Z

.field mDialog:Landroid/app/Dialog;

.field private mDismissRunnable:Ljava/lang/Runnable;

.field mDismissed:Z

.field private mHandler:Landroid/os/Handler;

.field mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field mShownByMe:Z

.field mShowsDialog:Z

.field mStyle:I

.field mTheme:I

.field mViewDestroyed:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 132
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 94
    new-instance v0, Landroidx/fragment/app/DialogFragment$1;

    invoke-direct {v0, p0}, Landroidx/fragment/app/DialogFragment$1;-><init>(Landroidx/fragment/app/DialogFragment;)V

    iput-object v0, p0, Landroidx/fragment/app/DialogFragment;->mDismissRunnable:Ljava/lang/Runnable;

    .line 101
    new-instance v0, Landroidx/fragment/app/DialogFragment$2;

    invoke-direct {v0, p0}, Landroidx/fragment/app/DialogFragment$2;-><init>(Landroidx/fragment/app/DialogFragment;)V

    iput-object v0, p0, Landroidx/fragment/app/DialogFragment;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    .line 111
    new-instance v0, Landroidx/fragment/app/DialogFragment$3;

    invoke-direct {v0, p0}, Landroidx/fragment/app/DialogFragment$3;-><init>(Landroidx/fragment/app/DialogFragment;)V

    iput-object v0, p0, Landroidx/fragment/app/DialogFragment;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 121
    const/4 v0, 0x0

    iput v0, p0, Landroidx/fragment/app/DialogFragment;->mStyle:I

    .line 122
    iput v0, p0, Landroidx/fragment/app/DialogFragment;->mTheme:I

    .line 123
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/DialogFragment;->mCancelable:Z

    .line 124
    iput-boolean v0, p0, Landroidx/fragment/app/DialogFragment;->mShowsDialog:Z

    .line 125
    const/4 v0, -0x1

    iput v0, p0, Landroidx/fragment/app/DialogFragment;->mBackStackId:I

    .line 133
    return-void
.end method


# virtual methods
.method public dismiss()V
    .registers 2

    .line 222
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Landroidx/fragment/app/DialogFragment;->dismissInternal(ZZ)V

    .line 223
    return-void
.end method

.method public dismissAllowingStateLoss()V
    .registers 3

    .line 232
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/DialogFragment;->dismissInternal(ZZ)V

    .line 233
    return-void
.end method

.method dismissInternal(ZZ)V
    .registers 6
    .param p1, "allowStateLoss"    # Z
    .param p2, "fromOnDismiss"    # Z

    .line 236
    iget-boolean v0, p0, Landroidx/fragment/app/DialogFragment;->mDismissed:Z

    if-eqz v0, :cond_5

    .line 237
    return-void

    .line 239
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/DialogFragment;->mDismissed:Z

    .line 240
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/fragment/app/DialogFragment;->mShownByMe:Z

    .line 241
    iget-object v1, p0, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_33

    .line 245
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 246
    iget-object v1, p0, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 247
    if-nez p2, :cond_33

    .line 252
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Landroidx/fragment/app/DialogFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_2c

    .line 253
    iget-object v1, p0, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p0, v1}, Landroidx/fragment/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    goto :goto_33

    .line 255
    :cond_2c
    iget-object v1, p0, Landroidx/fragment/app/DialogFragment;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroidx/fragment/app/DialogFragment;->mDismissRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 259
    :cond_33
    :goto_33
    iput-boolean v0, p0, Landroidx/fragment/app/DialogFragment;->mViewDestroyed:Z

    .line 260
    iget v1, p0, Landroidx/fragment/app/DialogFragment;->mBackStackId:I

    if-ltz v1, :cond_46

    .line 261
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    iget v2, p0, Landroidx/fragment/app/DialogFragment;->mBackStackId:I

    invoke-virtual {v1, v2, v0}, Landroidx/fragment/app/FragmentManager;->popBackStack(II)V

    .line 263
    const/4 v0, -0x1

    iput v0, p0, Landroidx/fragment/app/DialogFragment;->mBackStackId:I

    goto :goto_5a

    .line 265
    :cond_46
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 266
    .local v0, "ft":Landroidx/fragment/app/FragmentTransaction;
    invoke-virtual {v0, p0}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 267
    if-eqz p1, :cond_57

    .line 268
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_5a

    .line 270
    :cond_57
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 273
    .end local v0    # "ft":Landroidx/fragment/app/FragmentTransaction;
    :goto_5a
    return-void
.end method

.method public getDialog()Landroid/app/Dialog;
    .registers 2

    .line 282
    iget-object v0, p0, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method public getShowsDialog()Z
    .registers 2

    .line 352
    iget-boolean v0, p0, Landroidx/fragment/app/DialogFragment;->mShowsDialog:Z

    return v0
.end method

.method public getTheme()I
    .registers 2

    .line 303
    iget v0, p0, Landroidx/fragment/app/DialogFragment;->mTheme:I

    return v0
.end method

.method public isCancelable()Z
    .registers 2

    .line 324
    iget-boolean v0, p0, Landroidx/fragment/app/DialogFragment;->mCancelable:Z

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 476
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 478
    iget-boolean v0, p0, Landroidx/fragment/app/DialogFragment;->mShowsDialog:Z

    if-nez v0, :cond_8

    .line 479
    return-void

    .line 482
    :cond_8
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 483
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_22

    .line 484
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_1a

    .line 488
    iget-object v1, p0, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    goto :goto_22

    .line 485
    :cond_1a
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "DialogFragment can not be attached to a container view"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 490
    :cond_22
    :goto_22
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    .line 491
    .local v1, "activity":Landroid/app/Activity;
    if-eqz v1, :cond_2d

    .line 492
    iget-object v2, p0, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v2, v1}, Landroid/app/Dialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 494
    :cond_2d
    iget-object v2, p0, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    iget-boolean v3, p0, Landroidx/fragment/app/DialogFragment;->mCancelable:Z

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 495
    iget-object v2, p0, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    iget-object v3, p0, Landroidx/fragment/app/DialogFragment;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 496
    iget-object v2, p0, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    iget-object v3, p0, Landroidx/fragment/app/DialogFragment;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 497
    if-eqz p1, :cond_51

    .line 498
    const-string v2, "android:savedDialogState"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 499
    .local v2, "dialogState":Landroid/os/Bundle;
    if-eqz v2, :cond_51

    .line 500
    iget-object v3, p0, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v3, v2}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 503
    .end local v2    # "dialogState":Landroid/os/Bundle;
    :cond_51
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 358
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 359
    iget-boolean v0, p0, Landroidx/fragment/app/DialogFragment;->mShownByMe:Z

    if-nez v0, :cond_a

    .line 362
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/DialogFragment;->mDismissed:Z

    .line 364
    :cond_a
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .line 460
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 381
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 383
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/DialogFragment;->mHandler:Landroid/os/Handler;

    .line 385
    iget v0, p0, Landroidx/fragment/app/DialogFragment;->mContainerId:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    iput-boolean v0, p0, Landroidx/fragment/app/DialogFragment;->mShowsDialog:Z

    .line 387
    if-eqz p1, :cond_42

    .line 388
    const-string v0, "android:style"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroidx/fragment/app/DialogFragment;->mStyle:I

    .line 389
    const-string v0, "android:theme"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroidx/fragment/app/DialogFragment;->mTheme:I

    .line 390
    const-string v0, "android:cancelable"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/fragment/app/DialogFragment;->mCancelable:Z

    .line 391
    iget-boolean v0, p0, Landroidx/fragment/app/DialogFragment;->mShowsDialog:Z

    const-string v1, "android:showsDialog"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/fragment/app/DialogFragment;->mShowsDialog:Z

    .line 392
    const/4 v0, -0x1

    const-string v1, "android:backStackId"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroidx/fragment/app/DialogFragment;->mBackStackId:I

    .line 394
    :cond_42
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 455
    new-instance v0, Landroid/app/Dialog;

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getTheme()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public onDestroyView()V
    .registers 3

    .line 558
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 559
    iget-object v0, p0, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1e

    .line 563
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/fragment/app/DialogFragment;->mViewDestroyed:Z

    .line 567
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 568
    iget-object v0, p0, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 569
    iget-boolean v0, p0, Landroidx/fragment/app/DialogFragment;->mDismissed:Z

    if-nez v0, :cond_1c

    .line 572
    iget-object v0, p0, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p0, v0}, Landroidx/fragment/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 574
    :cond_1c
    iput-object v1, p0, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    .line 576
    :cond_1e
    return-void
.end method

.method public onDetach()V
    .registers 2

    .line 369
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    .line 370
    iget-boolean v0, p0, Landroidx/fragment/app/DialogFragment;->mShownByMe:Z

    if-nez v0, :cond_e

    iget-boolean v0, p0, Landroidx/fragment/app/DialogFragment;->mDismissed:Z

    if-nez v0, :cond_e

    .line 374
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/DialogFragment;->mDismissed:Z

    .line 376
    :cond_e
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .line 464
    iget-boolean v0, p0, Landroidx/fragment/app/DialogFragment;->mViewDestroyed:Z

    if-nez v0, :cond_8

    .line 469
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0}, Landroidx/fragment/app/DialogFragment;->dismissInternal(ZZ)V

    .line 471
    :cond_8
    return-void
.end method

.method public onGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .registers 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 399
    iget-boolean v0, p0, Landroidx/fragment/app/DialogFragment;->mShowsDialog:Z

    if-nez v0, :cond_9

    .line 400
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v0

    return-object v0

    .line 403
    :cond_9
    invoke-virtual {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    .line 405
    const-string v1, "layout_inflater"

    if-eqz v0, :cond_25

    .line 406
    iget v2, p0, Landroidx/fragment/app/DialogFragment;->mStyle:I

    invoke-virtual {p0, v0, v2}, Landroidx/fragment/app/DialogFragment;->setupDialog(Landroid/app/Dialog;I)V

    .line 408
    iget-object v0, p0, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    return-object v0

    .line 411
    :cond_25
    iget-object v0, p0, Landroidx/fragment/app/DialogFragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    return-object v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 519
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 520
    iget-object v0, p0, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_12

    .line 521
    invoke-virtual {v0}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 522
    .local v0, "dialogState":Landroid/os/Bundle;
    if-eqz v0, :cond_12

    .line 523
    const-string v1, "android:savedDialogState"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 526
    .end local v0    # "dialogState":Landroid/os/Bundle;
    :cond_12
    iget v0, p0, Landroidx/fragment/app/DialogFragment;->mStyle:I

    if-eqz v0, :cond_1b

    .line 527
    const-string v1, "android:style"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 529
    :cond_1b
    iget v0, p0, Landroidx/fragment/app/DialogFragment;->mTheme:I

    if-eqz v0, :cond_24

    .line 530
    const-string v1, "android:theme"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 532
    :cond_24
    iget-boolean v0, p0, Landroidx/fragment/app/DialogFragment;->mCancelable:Z

    if-nez v0, :cond_2d

    .line 533
    const-string v1, "android:cancelable"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 535
    :cond_2d
    iget-boolean v0, p0, Landroidx/fragment/app/DialogFragment;->mShowsDialog:Z

    if-nez v0, :cond_36

    .line 536
    const-string v1, "android:showsDialog"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 538
    :cond_36
    iget v0, p0, Landroidx/fragment/app/DialogFragment;->mBackStackId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_40

    .line 539
    const-string v1, "android:backStackId"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 541
    :cond_40
    return-void
.end method

.method public onStart()V
    .registers 3

    .line 508
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    .line 510
    iget-object v0, p0, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_d

    .line 511
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/fragment/app/DialogFragment;->mViewDestroyed:Z

    .line 512
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 514
    :cond_d
    return-void
.end method

.method public onStop()V
    .registers 2

    .line 546
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    .line 547
    iget-object v0, p0, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_a

    .line 548
    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    .line 550
    :cond_a
    return-void
.end method

.method public final requireDialog()Landroid/app/Dialog;
    .registers 5

    .line 294
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 295
    .local v0, "dialog":Landroid/app/Dialog;
    if-eqz v0, :cond_7

    .line 298
    return-object v0

    .line 296
    :cond_7
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DialogFragment "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " does not have a Dialog."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setCancelable(Z)V
    .registers 3
    .param p1, "cancelable"    # Z

    .line 316
    iput-boolean p1, p0, Landroidx/fragment/app/DialogFragment;->mCancelable:Z

    .line 317
    iget-object v0, p0, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_9

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 318
    :cond_9
    return-void
.end method

.method public setShowsDialog(Z)V
    .registers 2
    .param p1, "showsDialog"    # Z

    .line 345
    iput-boolean p1, p0, Landroidx/fragment/app/DialogFragment;->mShowsDialog:Z

    .line 346
    return-void
.end method

.method public setStyle(II)V
    .registers 4
    .param p1, "style"    # I
    .param p2, "theme"    # I

    .line 150
    iput p1, p0, Landroidx/fragment/app/DialogFragment;->mStyle:I

    .line 151
    const/4 v0, 0x2

    if-eq p1, v0, :cond_8

    const/4 v0, 0x3

    if-ne p1, v0, :cond_d

    .line 152
    :cond_8
    const v0, 0x1030059

    iput v0, p0, Landroidx/fragment/app/DialogFragment;->mTheme:I

    .line 154
    :cond_d
    if-eqz p2, :cond_11

    .line 155
    iput p2, p0, Landroidx/fragment/app/DialogFragment;->mTheme:I

    .line 157
    :cond_11
    return-void
.end method

.method public setupDialog(Landroid/app/Dialog;I)V
    .registers 5
    .param p1, "dialog"    # Landroid/app/Dialog;
    .param p2, "style"    # I

    .line 418
    packed-switch p2, :pswitch_data_12

    goto :goto_11

    .line 420
    :pswitch_4
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 426
    :pswitch_d
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 428
    :goto_11
    return-void

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_d
        :pswitch_d
        :pswitch_4
    .end packed-switch
.end method

.method public show(Landroidx/fragment/app/FragmentTransaction;Ljava/lang/String;)I
    .registers 5
    .param p1, "transaction"    # Landroidx/fragment/app/FragmentTransaction;
    .param p2, "tag"    # Ljava/lang/String;

    .line 188
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/DialogFragment;->mDismissed:Z

    .line 189
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/fragment/app/DialogFragment;->mShownByMe:Z

    .line 190
    invoke-virtual {p1, p0, p2}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 191
    iput-boolean v0, p0, Landroidx/fragment/app/DialogFragment;->mViewDestroyed:Z

    .line 192
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    move-result v0

    iput v0, p0, Landroidx/fragment/app/DialogFragment;->mBackStackId:I

    .line 193
    return v0
.end method

.method public show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V
    .registers 4
    .param p1, "manager"    # Landroidx/fragment/app/FragmentManager;
    .param p2, "tag"    # Ljava/lang/String;

    .line 171
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/DialogFragment;->mDismissed:Z

    .line 172
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/DialogFragment;->mShownByMe:Z

    .line 173
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 174
    .local v0, "ft":Landroidx/fragment/app/FragmentTransaction;
    invoke-virtual {v0, p0, p2}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 175
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 176
    return-void
.end method

.method public showNow(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V
    .registers 4
    .param p1, "manager"    # Landroidx/fragment/app/FragmentManager;
    .param p2, "tag"    # Ljava/lang/String;

    .line 208
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/DialogFragment;->mDismissed:Z

    .line 209
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/DialogFragment;->mShownByMe:Z

    .line 210
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 211
    .local v0, "ft":Landroidx/fragment/app/FragmentTransaction;
    invoke-virtual {v0, p0, p2}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 212
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitNow()V

    .line 213
    return-void
.end method
