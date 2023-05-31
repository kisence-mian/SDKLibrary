.class public Lcom/taptap/sdk/AndroidBug5497Workaround;
.super Ljava/lang/Object;
.source "AndroidBug5497Workaround.java"


# instance fields
.field private frameLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

.field private mChildOfContent:Landroid/view/View;

.field private usableHeightPrevious:I


# direct methods
.method private constructor <init>(Landroid/app/Activity;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const v1, 0x1020002

    invoke-virtual {p1, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 21
    .local v0, "content":Landroid/widget/FrameLayout;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/taptap/sdk/AndroidBug5497Workaround;->mChildOfContent:Landroid/view/View;

    .line 22
    iget-object v1, p0, Lcom/taptap/sdk/AndroidBug5497Workaround;->mChildOfContent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/taptap/sdk/AndroidBug5497Workaround$1;

    invoke-direct {v2, p0}, Lcom/taptap/sdk/AndroidBug5497Workaround$1;-><init>(Lcom/taptap/sdk/AndroidBug5497Workaround;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 27
    iget-object v1, p0, Lcom/taptap/sdk/AndroidBug5497Workaround;->mChildOfContent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    iput-object v1, p0, Lcom/taptap/sdk/AndroidBug5497Workaround;->frameLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    .line 28
    return-void
.end method

.method static synthetic access$000(Lcom/taptap/sdk/AndroidBug5497Workaround;)V
    .registers 1
    .param p0, "x0"    # Lcom/taptap/sdk/AndroidBug5497Workaround;

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/taptap/sdk/AndroidBug5497Workaround;->possiblyResizeChildOfContent()V

    return-void
.end method

.method public static assistActivity(Landroid/app/Activity;)V
    .registers 2
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 12
    new-instance v0, Lcom/taptap/sdk/AndroidBug5497Workaround;

    invoke-direct {v0, p0}, Lcom/taptap/sdk/AndroidBug5497Workaround;-><init>(Landroid/app/Activity;)V

    .line 13
    return-void
.end method

.method private computeUsableHeight()I
    .registers 4

    .prologue
    .line 48
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 49
    .local v0, "r":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/taptap/sdk/AndroidBug5497Workaround;->mChildOfContent:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 50
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    return v1
.end method

.method private possiblyResizeChildOfContent()V
    .registers 6

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/taptap/sdk/AndroidBug5497Workaround;->computeUsableHeight()I

    move-result v1

    .line 32
    .local v1, "usableHeightNow":I
    iget v3, p0, Lcom/taptap/sdk/AndroidBug5497Workaround;->usableHeightPrevious:I

    if-eq v1, v3, :cond_25

    .line 33
    iget-object v3, p0, Lcom/taptap/sdk/AndroidBug5497Workaround;->mChildOfContent:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 34
    .local v2, "usableHeightSansKeyboard":I
    sub-int v0, v2, v1

    .line 35
    .local v0, "heightDifference":I
    div-int/lit8 v3, v2, 0x4

    if-le v0, v3, :cond_26

    .line 37
    iget-object v3, p0, Lcom/taptap/sdk/AndroidBug5497Workaround;->frameLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    sub-int v4, v2, v0

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 42
    :goto_1e
    iget-object v3, p0, Lcom/taptap/sdk/AndroidBug5497Workaround;->mChildOfContent:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->requestLayout()V

    .line 43
    iput v1, p0, Lcom/taptap/sdk/AndroidBug5497Workaround;->usableHeightPrevious:I

    .line 45
    .end local v0    # "heightDifference":I
    .end local v2    # "usableHeightSansKeyboard":I
    :cond_25
    return-void

    .line 40
    .restart local v0    # "heightDifference":I
    .restart local v2    # "usableHeightSansKeyboard":I
    :cond_26
    iget-object v3, p0, Lcom/taptap/sdk/AndroidBug5497Workaround;->frameLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    iput v2, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto :goto_1e
.end method
