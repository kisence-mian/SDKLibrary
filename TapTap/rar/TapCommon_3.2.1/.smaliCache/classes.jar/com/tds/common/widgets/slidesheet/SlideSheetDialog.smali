.class public Lcom/tds/common/widgets/slidesheet/SlideSheetDialog;
.super Landroid/app/Dialog;
.source "SlideSheetDialog.java"


# instance fields
.field private behavior:Lcom/tds/common/widgets/behavior/BottomSheetBehavior;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tds/common/widgets/behavior/BottomSheetBehavior<",
            "Landroid/widget/FrameLayout;",
            ">;"
        }
    .end annotation
.end field

.field private bottomSheet:Landroid/widget/FrameLayout;

.field private bottomSheetCallback:Lcom/tds/common/widgets/behavior/BottomSheetBehavior$BottomSheetCallback;

.field cancelable:Z

.field private canceledOnTouchOutside:Z

.field private canceledOnTouchOutsideSet:Z

.field private container:Landroid/widget/FrameLayout;

.field private coordinator:Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;

.field dismissWithAnimation:Z

.field private final isLandscape:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isLandscape"    # Z

    .line 39
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tds/common/widgets/slidesheet/SlideSheetDialog;->cancelable:Z

    .line 32
    iput-boolean v0, p0, Lcom/tds/common/widgets/slidesheet/SlideSheetDialog;->canceledOnTouchOutside:Z

    .line 242
    new-instance v1, Lcom/tds/common/widgets/slidesheet/SlideSheetDialog$3;

    invoke-direct {v1, p0}, Lcom/tds/common/widgets/slidesheet/SlideSheetDialog$3;-><init>(Lcom/tds/common/widgets/slidesheet/SlideSheetDialog;)V

    iput-object v1, p0, Lcom/tds/common/widgets/slidesheet/SlideSheetDialog;->bottomSheetCallback:Lcom/tds/common/widgets/behavior/BottomSheetBehavior$BottomSheetCallback;

    .line 40
    invoke-virtual {p0}, Lcom/tds/common/widgets/slidesheet/SlideSheetDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x1000000

    invoke-virtual {v1, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 42
    invoke-virtual {p0, v0}, Lcom/tds/common/widgets/slidesheet/SlideSheetDialog;->requestWindowFeature(I)Z

    .line 43
    iput-boolean p2, p0, Lcom/tds/common/widgets/slidesheet/SlideSheetDialog;->isLandscape:Z

    .line 44
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_27

    .line 45
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {p0, v0}, Lcom/tds/common/widgets/slidesheet/SlideSheetDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 47
    :cond_27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZZLandroid/content/DialogInterface$OnCancelListener;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isLandscape"    # Z
    .param p3, "cancelable"    # Z
    .param p4, "cancelListener"    # Landroid/content/DialogInterface$OnCancelListener;

    .line 51
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tds/common/widgets/slidesheet/SlideSheetDialog;->cancelable:Z

    .line 32
    iput-boolean v0, p0, Lcom/tds/common/widgets/slidesheet/SlideSheetDialog;->canceledOnTouchOutside:Z

    .line 242
    new-instance v1, Lcom/tds/common/widgets/slidesheet/SlideSheetDialog$3;

    invoke-direct {v1, p0}, Lcom/tds/common/widgets/slidesheet/SlideSheetDialog$3;-><init>(Lcom/tds/common/widgets/slidesheet/SlideSheetDialog;)V

    iput-object v1, p0, Lcom/tds/common/widgets/slidesheet/SlideSheetDialog;->bottomSheetCallback:Lcom/tds/common/widgets/behavior/BottomSheetBehavior$BottomSheetCallback;

    .line 52
    invoke-virtual {p0, v0}, Lcom/tds/common/widgets/slidesheet/SlideSheetDialog;->requestWindowFeature(I)Z

    .line 53
    iput-boolean p2, p0, Lcom/tds/common/widgets/slidesheet/SlideSheetDialog;->isLandscape:Z

    .line 54
    iput-boolean p3, p0, Lcom/tds/common/widgets/slidesheet/SlideSheetDialog;->cancelable:Z

    .line 55
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_20

    .line 56
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {p0, v0}, Lcom/tds/common/widgets/slidesheet/SlideSheetDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 58
    :cond_20
    return-void
.end method

.method private ensureContainerAndBehavior()Landroid/widget/FrameLayout;
    .registers 5

    .line 158
    iget-object v0, p0, Lcom/tds/common/widgets/slidesheet/SlideSheetDialog;->container:Landroid/widget/FrameLayout;

    if-nez v0, :cond_ac

    .line 159
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/tds/common/widgets/slidesheet/SlideSheetDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tds/common/widgets/slidesheet/SlideSheetDialog;->container:Landroid/widget/FrameLayout;

    .line 160
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 161
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 163
    iget-object v0, p0, Lcom/tds/common/widgets/slidesheet/SlideSheetDialog;->container:Landroid/widget/FrameLayout;

    const/high16 v1, 0x66000000

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 165
    new-instance v0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;

    invoke-virtual {p0}, Lcom/tds/common/widgets/slidesheet/SlideSheetDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tds/common/widgets/slidesheet/SlideSheetDialog;->coordinator:Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 166
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 167
    invoke-virtual {v0, v1}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 171
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Lcom/tds/common/widgets/slidesheet/SlideSheetDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 172
    .local v0, "touchOutsideView":Landroid/view/View;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 173
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 174
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 176
    new-instance v1, Lcom/tds/common/widgets/slidesheet/SlideSheetDialog$1;

    invoke-direct {v1, p0}, Lcom/tds/common/widgets/slidesheet/SlideSheetDialog$1;-><init>(Lcom/tds/common/widgets/slidesheet/SlideSheetDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    iget-object v1, p0, Lcom/tds/common/widgets/slidesheet/SlideSheetDialog;->coordinator:Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;

    invoke-virtual {v1, v0}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->addView(Landroid/view/View;)V

    .line 187
    .end local v0    # "touchOutsideView":Landroid/view/View;
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/tds/common/widgets/slidesheet/SlideSheetDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tds/common/widgets/slidesheet/SlideSheetDialog;->bottomSheet:Landroid/widget/FrameLayout;

    .line 188
    iget-boolean v0, p0, Lcom/tds/common/widgets/slidesheet/SlideSheetDialog;->isLandscape:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_70

    .line 189
    new-instance v0, Lcom/tds/common/widgets/behavior/RightSheetBehavior;

    invoke-virtual {p0}, Lcom/tds/common/widgets/slidesheet/SlideSheetDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3, v1}, Lcom/tds/common/widgets/behavior/RightSheetBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/tds/common/widgets/slidesheet/SlideSheetDialog;->behavior:Lcom/tds/common/widgets/behavior/BottomSheetBehavior;

    goto :goto_7b

    .line 191
    :cond_70
    new-instance v0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;

    invoke-virtual {p0}, Lcom/tds/common/widgets/slidesheet/SlideSheetDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3, v1}, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/tds/common/widgets/slidesheet/SlideSheetDialog;->behavior:Lcom/tds/common/widgets/behavior/BottomSheetBehavior;

    .line 193
    :goto_7b
    iget-object v0, p0, Lcom/tds/common/widgets/slidesheet/SlideSheetDialog;->behavior:Lcom/tds/common/widgets/behavior/BottomSheetBehavior;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->setHideable(Z)V

    .line 194
    iget-object v0, p0, Lcom/tds/common/widgets/slidesheet/SlideSheetDialog;->behavior:Lcom/tds/common/widgets/behavior/BottomSheetBehavior;

    iget-object v1, p0, Lcom/tds/common/widgets/slidesheet/SlideSheetDialog;->bottomSheetCallback:Lcom/tds/common/widgets/behavior/BottomSheetBehavior$BottomSheetCallback;

    invoke-virtual {v0, v1}, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->addBottomSheetCallback(Lcom/tds/common/widgets/behavior/BottomSheetBehavior$BottomSheetCallback;)V

    .line 195
    iget-object v0, p0, Lcom/tds/common/widgets/slidesheet/SlideSheetDialog;->behavior:Lcom/tds/common/widgets/behavior/BottomSheetBehavior;

    iget-boolean v1, p0, Lcom/tds/common/widgets/slidesheet/SlideSheetDialog;->cancelable:Z

    invoke-virtual {v0, v1}, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->setHideable(Z)V

    .line 196
    new-instance v0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;-><init>(II)V

    .line 199
    .local v0, "bottomSheetLP":Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    iget-object v1, p0, Lcom/tds/common/widgets/slidesheet/SlideSheetDialog;->behavior:Lcom/tds/common/widgets/behavior/BottomSheetBehavior;

    invoke-virtual {v0, v1}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->setBehavior(Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;)V

    .line 200
    iget-object v1, p0, Lcom/tds/common/widgets/slidesheet/SlideSheetDialog;->bottomSheet:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 201
    iget-object v1, p0, Lcom/tds/common/widgets/slidesheet/SlideSheetDialog;->coordinator:Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;

    iget-object v2, p0, Lcom/tds/common/widgets/slidesheet/SlideSheetDialog;->bottomSheet:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->addView(Landroid/view/View;)V

    .line 203
    .end local v0    # "bottomSheetLP":Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    iget-object v0, p0, Lcom/tds/common/widgets/slidesheet/SlideSheetDialog;->container:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/tds/common/widgets/slidesheet/SlideSheetDialog;->coordinator:Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 205
    :cond_ac
    iget-object v0, p0, Lcom/tds/common/widgets/slidesheet/SlideSheetDialog;->container:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method private wrapInBottomSheet(ILandroid/view/View;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/View;
    .registers 7
    .param p1, "layoutResId"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 209
    invoke-direct {p0}, Lcom/tds/common/widgets/slidesheet/SlideSheetDialog;->ensureContainerAndBehavior()Landroid/widget/FrameLayout;

    .line 211
    if-eqz p1, :cond_12

    if-nez p2, :cond_12

    .line 212
    invoke-virtual {p0}, Lcom/tds/common/widgets/slidesheet/SlideSheetDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/tds/common/widgets/slidesheet/SlideSheetDialog;->coordinator:Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 215
    :cond_12
    iget-object v0, p0, Lcom/tds/common/widgets/slidesheet/SlideSheetDialog;->bottomSheet:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 216
    if-eqz p3, :cond_1f

    .line 217
    iget-object v0, p0, Lcom/tds/common/widgets/slidesheet/SlideSheetDialog;->bottomSheet:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_24

    .line 219
    :cond_1f
    iget-object v0, p0, Lcom/tds/common/widgets/slidesheet/SlideSheetDialog;->bottomSheet:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 221
    :goto_24
    iget-object v0, p0, Lcom/tds/common/widgets/slidesheet/SlideSheetDialog;->bottomSheet:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/tds/common/widgets/slidesheet/SlideSheetDialog$2;

    invoke-direct {v1, p0}, Lcom/tds/common/widgets/slidesheet/SlideSheetDialog$2;-><init>(Lcom/tds/common/widgets/slidesheet/SlideSheetDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 227
    iget-object v0, p0, Lcom/tds/common/widgets/slidesheet/SlideSheetDialog;->container:Landroid/widget/FrameLayout;

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .registers 4

    .line 122
    invoke-virtual {p0}, Lcom/tds/common/widgets/slidesheet/SlideSheetDialog;->getBehavior()Lcom/tds/common/widgets/behavior/BottomSheetBehavior;

    move-result-object v0

    .line 124
    .local v0, "behavior":Lcom/tds/common/widgets/behavior/BottomSheetBehavior;, "Lcom/tds/common/widgets/behavior/BottomSheetBehavior<Landroid/widget/FrameLayout;>;"
    iget-boolean v1, p0, Lcom/tds/common/widgets/slidesheet/SlideSheetDialog;->dismissWithAnimation:Z

    if-eqz v1, :cond_14

    invoke-virtual {v0}, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->getState()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_10

    goto :goto_14

    .line 127
    :cond_10
    invoke-virtual {v0, v2}, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->setState(I)V

    goto :goto_17

    .line 125
    :cond_14
    :goto_14
    invoke-super {p0}, Landroid/app/Dialog;->cancel()V

    .line 129
    :goto_17
    return-void
.end method

.method public getBehavior()Lcom/tds/common/widgets/behavior/BottomSheetBehavior;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/tds/common/widgets/behavior/BottomSheetBehavior<",
            "Landroid/widget/FrameLayout;",
            ">;"
        }
    .end annotation

    .line 142
    iget-object v0, p0, Lcom/tds/common/widgets/slidesheet/SlideSheetDialog;->behavior:Lcom/tds/common/widgets/behavior/BottomSheetBehavior;

    if-nez v0, :cond_7

    .line 144
    invoke-direct {p0}, Lcom/tds/common/widgets/slidesheet/SlideSheetDialog;->ensureContainerAndBehavior()Landroid/widget/FrameLayout;

    .line 146
    :cond_7
    iget-object v0, p0, Lcom/tds/common/widgets/slidesheet/SlideSheetDialog;->behavior:Lcom/tds/common/widgets/behavior/BottomSheetBehavior;

    return-object v0
.end method

.method public getDismissWithAnimation()Z
    .registers 2

    .line 154
    iget-boolean v0, p0, Lcom/tds/common/widgets/slidesheet/SlideSheetDialog;->dismissWithAnimation:Z

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 62
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 63
    invoke-virtual {p0}, Lcom/tds/common/widgets/slidesheet/SlideSheetDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 64
    .local v0, "window":Landroid/view/Window;
    if-eqz v0, :cond_3d

    .line 65
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_19

    .line 66
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 67
    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 69
    :cond_19
    const/4 v1, -0x1

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setLayout(II)V

    .line 72
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 73
    invoke-virtual {p0}, Lcom/tds/common/widgets/slidesheet/SlideSheetDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-boolean v3, p0, Lcom/tds/common/widgets/slidesheet/SlideSheetDialog;->isLandscape:Z

    if-eqz v3, :cond_2c

    const-string v3, "tds_common_animation_slideSheetDialog_landscape"

    goto :goto_2e

    :cond_2c
    const-string v3, "tds_common_animation_slideSheetDialog_portrait"

    :goto_2e
    invoke-static {v2, v3}, Lcom/tds/common/utils/UIUtils;->getStyleId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 76
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 78
    :cond_3d
    return-void
.end method

.method protected onStart()V
    .registers 3

    .line 114
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 115
    iget-object v0, p0, Lcom/tds/common/widgets/slidesheet/SlideSheetDialog;->behavior:Lcom/tds/common/widgets/behavior/BottomSheetBehavior;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->getState()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_14

    .line 116
    iget-object v0, p0, Lcom/tds/common/widgets/slidesheet/SlideSheetDialog;->behavior:Lcom/tds/common/widgets/behavior/BottomSheetBehavior;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->setState(I)V

    .line 118
    :cond_14
    return-void
.end method

.method public setCancelable(Z)V
    .registers 3
    .param p1, "cancelable"    # Z

    .line 97
    invoke-super {p0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 98
    iget-boolean v0, p0, Lcom/tds/common/widgets/slidesheet/SlideSheetDialog;->cancelable:Z

    if-eq v0, p1, :cond_10

    .line 99
    iput-boolean p1, p0, Lcom/tds/common/widgets/slidesheet/SlideSheetDialog;->cancelable:Z

    .line 100
    iget-object v0, p0, Lcom/tds/common/widgets/slidesheet/SlideSheetDialog;->behavior:Lcom/tds/common/widgets/behavior/BottomSheetBehavior;

    if-eqz v0, :cond_10

    .line 101
    invoke-virtual {v0, p1}, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->setHideable(Z)V

    .line 104
    :cond_10
    return-void
.end method

.method public setCanceledOnTouchOutside(Z)V
    .registers 4
    .param p1, "cancel"    # Z

    .line 133
    invoke-super {p0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 134
    const/4 v0, 0x1

    if-eqz p1, :cond_c

    iget-boolean v1, p0, Lcom/tds/common/widgets/slidesheet/SlideSheetDialog;->cancelable:Z

    if-nez v1, :cond_c

    .line 135
    iput-boolean v0, p0, Lcom/tds/common/widgets/slidesheet/SlideSheetDialog;->cancelable:Z

    .line 137
    :cond_c
    iput-boolean p1, p0, Lcom/tds/common/widgets/slidesheet/SlideSheetDialog;->canceledOnTouchOutside:Z

    .line 138
    iput-boolean v0, p0, Lcom/tds/common/widgets/slidesheet/SlideSheetDialog;->canceledOnTouchOutsideSet:Z

    .line 139
    return-void
.end method

.method public setContentView(I)V
    .registers 3
    .param p1, "layoutResID"    # I

    .line 82
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/tds/common/widgets/slidesheet/SlideSheetDialog;->wrapInBottomSheet(ILandroid/view/View;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/View;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 83
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .line 87
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/tds/common/widgets/slidesheet/SlideSheetDialog;->wrapInBottomSheet(ILandroid/view/View;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/View;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 88
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 92
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/tds/common/widgets/slidesheet/SlideSheetDialog;->wrapInBottomSheet(ILandroid/view/View;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/View;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 93
    return-void
.end method

.method public setDismissWithAnimation(Z)V
    .registers 2
    .param p1, "dismissWithAnimation"    # Z

    .line 150
    iput-boolean p1, p0, Lcom/tds/common/widgets/slidesheet/SlideSheetDialog;->dismissWithAnimation:Z

    .line 151
    return-void
.end method

.method shouldWindowCloseOnTouchOutside()Z
    .registers 6

    .line 231
    iget-boolean v0, p0, Lcom/tds/common/widgets/slidesheet/SlideSheetDialog;->canceledOnTouchOutsideSet:Z

    if-nez v0, :cond_21

    .line 232
    nop

    .line 233
    invoke-virtual {p0}, Lcom/tds/common/widgets/slidesheet/SlideSheetDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [I

    const v3, 0x101035b

    const/4 v4, 0x0

    aput v3, v2, v4

    .line 234
    invoke-virtual {v0, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 235
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/tds/common/widgets/slidesheet/SlideSheetDialog;->canceledOnTouchOutside:Z

    .line 236
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 237
    iput-boolean v1, p0, Lcom/tds/common/widgets/slidesheet/SlideSheetDialog;->canceledOnTouchOutsideSet:Z

    .line 239
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_21
    iget-boolean v0, p0, Lcom/tds/common/widgets/slidesheet/SlideSheetDialog;->canceledOnTouchOutside:Z

    return v0
.end method

.method public show()V
    .registers 1

    .line 108
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 110
    return-void
.end method
