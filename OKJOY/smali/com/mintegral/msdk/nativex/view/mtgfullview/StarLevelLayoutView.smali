.class public Lcom/mintegral/msdk/nativex/view/mtgfullview/StarLevelLayoutView;
.super Landroid/widget/LinearLayout;
.source "StarLevelLayoutView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 17
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 14
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .prologue
    .line 22
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    return-void
.end method


# virtual methods
.method public setRating(I)V
    .registers 10

    .prologue
    const/4 v0, 0x5

    const/4 v7, -0x2

    .line 26
    invoke-virtual {p0}, Lcom/mintegral/msdk/nativex/view/mtgfullview/StarLevelLayoutView;->removeAllViews()V

    .line 28
    if-nez p1, :cond_8

    move p1, v0

    .line 31
    :cond_8
    const/4 v1, 0x0

    .line 32
    :goto_9
    if-ge v1, v0, :cond_4c

    .line 33
    new-instance v2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/mintegral/msdk/nativex/view/mtgfullview/StarLevelLayoutView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 34
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 36
    if-ge v1, p1, :cond_3c

    .line 37
    invoke-virtual {p0}, Lcom/mintegral/msdk/nativex/view/mtgfullview/StarLevelLayoutView;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "mintegral_demo_star_sel"

    const-string v6, "drawable"

    invoke-static {v4, v5, v6}, Lcom/mintegral/msdk/base/utils/p;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 41
    :goto_2a
    invoke-virtual {p0}, Lcom/mintegral/msdk/nativex/view/mtgfullview/StarLevelLayoutView;->getContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x40e00000    # 7.0f

    invoke-static {v4, v5}, Lcom/mintegral/msdk/base/utils/k;->b(Landroid/content/Context;F)I

    move-result v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 42
    invoke-virtual {p0, v2, v3}, Lcom/mintegral/msdk/nativex/view/mtgfullview/StarLevelLayoutView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 43
    add-int/lit8 v1, v1, 0x1

    .line 44
    goto :goto_9

    .line 39
    :cond_3c
    invoke-virtual {p0}, Lcom/mintegral/msdk/nativex/view/mtgfullview/StarLevelLayoutView;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "mintegral_demo_star_nor"

    const-string v6, "drawable"

    invoke-static {v4, v5, v6}, Lcom/mintegral/msdk/base/utils/p;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_2a

    .line 45
    :cond_4c
    return-void
.end method
