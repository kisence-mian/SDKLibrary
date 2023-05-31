.class Ltds/androidx/viewpager/ViewPager$4;
.super Ljava/lang/Object;
.source "ViewPager.java"

# interfaces
.implements Ltds/androidx/core/view/OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltds/androidx/viewpager/ViewPager;->initViewPager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final mTempRect:Landroid/graphics/Rect;

.field final synthetic this$0:Ltds/androidx/viewpager/ViewPager;


# direct methods
.method constructor <init>(Ltds/androidx/viewpager/ViewPager;)V
    .registers 3
    .param p1, "this$0"    # Ltds/androidx/viewpager/ViewPager;

    .line 394
    iput-object p1, p0, Ltds/androidx/viewpager/ViewPager$4;->this$0:Ltds/androidx/viewpager/ViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 395
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Ltds/androidx/viewpager/ViewPager$4;->mTempRect:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Ltds/androidx/core/view/WindowInsetsCompat;)Ltds/androidx/core/view/WindowInsetsCompat;
    .registers 10
    .param p1, "v"    # Landroid/view/View;
    .param p2, "originalInsets"    # Ltds/androidx/core/view/WindowInsetsCompat;

    .line 401
    nop

    .line 402
    invoke-static {p1, p2}, Ltds/androidx/core/view/ViewCompat;->onApplyWindowInsets(Landroid/view/View;Ltds/androidx/core/view/WindowInsetsCompat;)Ltds/androidx/core/view/WindowInsetsCompat;

    move-result-object v0

    .line 403
    .local v0, "applied":Ltds/androidx/core/view/WindowInsetsCompat;
    invoke-virtual {v0}, Ltds/androidx/core/view/WindowInsetsCompat;->isConsumed()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 405
    return-object v0

    .line 415
    :cond_c
    iget-object v1, p0, Ltds/androidx/viewpager/ViewPager$4;->mTempRect:Landroid/graphics/Rect;

    .line 416
    .local v1, "res":Landroid/graphics/Rect;
    invoke-virtual {v0}, Ltds/androidx/core/view/WindowInsetsCompat;->getSystemWindowInsetLeft()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 417
    invoke-virtual {v0}, Ltds/androidx/core/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 418
    invoke-virtual {v0}, Ltds/androidx/core/view/WindowInsetsCompat;->getSystemWindowInsetRight()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 419
    invoke-virtual {v0}, Ltds/androidx/core/view/WindowInsetsCompat;->getSystemWindowInsetBottom()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 421
    const/4 v2, 0x0

    .local v2, "i":I
    iget-object v3, p0, Ltds/androidx/viewpager/ViewPager$4;->this$0:Ltds/androidx/viewpager/ViewPager;

    invoke-virtual {v3}, Ltds/androidx/viewpager/ViewPager;->getChildCount()I

    move-result v3

    .local v3, "count":I
    :goto_2d
    if-ge v2, v3, :cond_6c

    .line 422
    iget-object v4, p0, Ltds/androidx/viewpager/ViewPager$4;->this$0:Ltds/androidx/viewpager/ViewPager;

    .line 423
    invoke-virtual {v4, v2}, Ltds/androidx/viewpager/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4, v0}, Ltds/androidx/core/view/ViewCompat;->dispatchApplyWindowInsets(Landroid/view/View;Ltds/androidx/core/view/WindowInsetsCompat;)Ltds/androidx/core/view/WindowInsetsCompat;

    move-result-object v4

    .line 426
    .local v4, "childInsets":Ltds/androidx/core/view/WindowInsetsCompat;
    invoke-virtual {v4}, Ltds/androidx/core/view/WindowInsetsCompat;->getSystemWindowInsetLeft()I

    move-result v5

    iget v6, v1, Landroid/graphics/Rect;->left:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    iput v5, v1, Landroid/graphics/Rect;->left:I

    .line 428
    invoke-virtual {v4}, Ltds/androidx/core/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v5

    iget v6, v1, Landroid/graphics/Rect;->top:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    iput v5, v1, Landroid/graphics/Rect;->top:I

    .line 430
    invoke-virtual {v4}, Ltds/androidx/core/view/WindowInsetsCompat;->getSystemWindowInsetRight()I

    move-result v5

    iget v6, v1, Landroid/graphics/Rect;->right:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    iput v5, v1, Landroid/graphics/Rect;->right:I

    .line 432
    invoke-virtual {v4}, Ltds/androidx/core/view/WindowInsetsCompat;->getSystemWindowInsetBottom()I

    move-result v5

    iget v6, v1, Landroid/graphics/Rect;->bottom:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    iput v5, v1, Landroid/graphics/Rect;->bottom:I

    .line 421
    .end local v4    # "childInsets":Ltds/androidx/core/view/WindowInsetsCompat;
    add-int/lit8 v2, v2, 0x1

    goto :goto_2d

    .line 437
    .end local v2    # "i":I
    .end local v3    # "count":I
    :cond_6c
    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v4, v1, Landroid/graphics/Rect;->right:I

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v2, v3, v4, v5}, Ltds/androidx/core/view/WindowInsetsCompat;->replaceSystemWindowInsets(IIII)Ltds/androidx/core/view/WindowInsetsCompat;

    move-result-object v2

    return-object v2
.end method
