.class Landroid/support/v7/app/AppCompatDelegateImpl$ListMenuDecorView;
.super Landroid/support/v7/widget/ContentFrameLayout;
.source "AppCompatDelegateImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/AppCompatDelegateImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListMenuDecorView"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/app/AppCompatDelegateImpl;


# direct methods
.method public constructor <init>(Landroid/support/v7/app/AppCompatDelegateImpl;Landroid/content/Context;)V
    .registers 3
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 2490
    iput-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl$ListMenuDecorView;->this$0:Landroid/support/v7/app/AppCompatDelegateImpl;

    .line 2491
    invoke-direct {p0, p2}, Landroid/support/v7/widget/ContentFrameLayout;-><init>(Landroid/content/Context;)V

    .line 2492
    return-void
.end method

.method private isOutOfBounds(II)Z
    .registers 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v0, -0x5

    .line 2520
    if-lt p1, v0, :cond_15

    if-lt p2, v0, :cond_15

    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImpl$ListMenuDecorView;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    if-gt p1, v0, :cond_15

    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImpl$ListMenuDecorView;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    if-le p2, v0, :cond_17

    :cond_15
    const/4 v0, 0x1

    :goto_16
    return v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 2496
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl$ListMenuDecorView;->this$0:Landroid/support/v7/app/AppCompatDelegateImpl;

    invoke-virtual {v0, p1}, Landroid/support/v7/app/AppCompatDelegateImpl;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 2497
    invoke-super {p0, p1}, Landroid/support/v7/widget/ContentFrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_e
    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 2502
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 2503
    .local v0, "action":I
    if-nez v0, :cond_1e

    .line 2504
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v1, v3

    .line 2505
    .local v1, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v2, v3

    .line 2506
    .local v2, "y":I
    invoke-direct {p0, v1, v2}, Landroid/support/v7/app/AppCompatDelegateImpl$ListMenuDecorView;->isOutOfBounds(II)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 2507
    iget-object v3, p0, Landroid/support/v7/app/AppCompatDelegateImpl$ListMenuDecorView;->this$0:Landroid/support/v7/app/AppCompatDelegateImpl;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/support/v7/app/AppCompatDelegateImpl;->closePanel(I)V

    .line 2508
    const/4 v3, 0x1

    .line 2511
    .end local v1    # "x":I
    .end local v2    # "y":I
    :goto_1d
    return v3

    :cond_1e
    invoke-super {p0, p1}, Landroid/support/v7/widget/ContentFrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    goto :goto_1d
.end method

.method public setBackgroundResource(I)V
    .registers 3
    .param p1, "resid"    # I

    .prologue
    .line 2516
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImpl$ListMenuDecorView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v7/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/app/AppCompatDelegateImpl$ListMenuDecorView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2517
    return-void
.end method
