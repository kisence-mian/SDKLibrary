.class public Lcom/tapsdk/moment/AndroidBug5497Workaround;
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

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const v0, 0x1020002

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 24
    .local v0, "content":Landroid/widget/FrameLayout;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/tapsdk/moment/AndroidBug5497Workaround;->mChildOfContent:Landroid/view/View;

    .line 25
    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/tapsdk/moment/AndroidBug5497Workaround$1;

    invoke-direct {v2, p0}, Lcom/tapsdk/moment/AndroidBug5497Workaround$1;-><init>(Lcom/tapsdk/moment/AndroidBug5497Workaround;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 30
    iget-object v1, p0, Lcom/tapsdk/moment/AndroidBug5497Workaround;->mChildOfContent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    iput-object v1, p0, Lcom/tapsdk/moment/AndroidBug5497Workaround;->frameLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    .line 31
    return-void
.end method

.method private constructor <init>(Landroid/widget/FrameLayout;)V
    .registers 4
    .param p1, "content"    # Landroid/widget/FrameLayout;

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tapsdk/moment/AndroidBug5497Workaround;->mChildOfContent:Landroid/view/View;

    .line 35
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/tapsdk/moment/AndroidBug5497Workaround$2;

    invoke-direct {v1, p0}, Lcom/tapsdk/moment/AndroidBug5497Workaround$2;-><init>(Lcom/tapsdk/moment/AndroidBug5497Workaround;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 40
    iget-object v0, p0, Lcom/tapsdk/moment/AndroidBug5497Workaround;->mChildOfContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput-object v0, p0, Lcom/tapsdk/moment/AndroidBug5497Workaround;->frameLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    .line 41
    return-void
.end method

.method static synthetic access$000(Lcom/tapsdk/moment/AndroidBug5497Workaround;)V
    .registers 1
    .param p0, "x0"    # Lcom/tapsdk/moment/AndroidBug5497Workaround;

    .line 9
    invoke-direct {p0}, Lcom/tapsdk/moment/AndroidBug5497Workaround;->possiblyResizeChildOfContent()V

    return-void
.end method

.method public static assistActivity(Landroid/app/Activity;)V
    .registers 2
    .param p0, "activity"    # Landroid/app/Activity;

    .line 12
    new-instance v0, Lcom/tapsdk/moment/AndroidBug5497Workaround;

    invoke-direct {v0, p0}, Lcom/tapsdk/moment/AndroidBug5497Workaround;-><init>(Landroid/app/Activity;)V

    .line 13
    return-void
.end method

.method public static assistActivity(Landroid/widget/FrameLayout;)V
    .registers 2
    .param p0, "content"    # Landroid/widget/FrameLayout;

    .line 15
    new-instance v0, Lcom/tapsdk/moment/AndroidBug5497Workaround;

    invoke-direct {v0, p0}, Lcom/tapsdk/moment/AndroidBug5497Workaround;-><init>(Landroid/widget/FrameLayout;)V

    .line 16
    return-void
.end method

.method private computeUsableHeight()I
    .registers 4

    .line 59
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 60
    .local v0, "r":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/tapsdk/moment/AndroidBug5497Workaround;->mChildOfContent:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 61
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    return v1
.end method

.method private possiblyResizeChildOfContent()V
    .registers 6

    .line 44
    invoke-direct {p0}, Lcom/tapsdk/moment/AndroidBug5497Workaround;->computeUsableHeight()I

    move-result v0

    .line 45
    .local v0, "usableHeightNow":I
    iget-object v1, p0, Lcom/tapsdk/moment/AndroidBug5497Workaround;->mChildOfContent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 46
    .local v1, "usableHeightSansKeyboard":I
    sub-int v2, v1, v0

    .line 47
    .local v2, "heightDifference":I
    div-int/lit8 v3, v1, 0x4

    if-le v2, v3, :cond_1b

    .line 49
    iget-object v3, p0, Lcom/tapsdk/moment/AndroidBug5497Workaround;->frameLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    sub-int v4, v1, v2

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto :goto_1f

    .line 52
    :cond_1b
    iget-object v3, p0, Lcom/tapsdk/moment/AndroidBug5497Workaround;->frameLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 54
    :goto_1f
    iget-object v3, p0, Lcom/tapsdk/moment/AndroidBug5497Workaround;->mChildOfContent:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->requestLayout()V

    .line 55
    iput v0, p0, Lcom/tapsdk/moment/AndroidBug5497Workaround;->usableHeightPrevious:I

    .line 56
    return-void
.end method
