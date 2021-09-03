.class Lcom/tds/achievement/ui/ListNotReachView;
.super Landroid/widget/LinearLayout;
.source "ListNotReachView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 15
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 16
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/tds/achievement/ui/ListNotReachView;->initLayout(Z)V

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isLandscape"    # Z

    .line 20
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 21
    invoke-direct {p0, p2}, Lcom/tds/achievement/ui/ListNotReachView;->initLayout(Z)V

    .line 22
    return-void
.end method

.method private initLayout(Z)V
    .registers 11
    .param p1, "isLandscape"    # Z

    .line 25
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/tds/achievement/ui/ListNotReachView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 26
    .local v0, "notReachImage":Landroid/widget/ImageView;
    const/16 v1, 0x11

    invoke-virtual {p0, v1}, Lcom/tds/achievement/ui/ListNotReachView;->setGravity(I)V

    .line 27
    sget v1, Lcom/tds/achievement/ui/UIManager;->SCALE:F

    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {v1, v2}, Lcom/tds/common/utils/UIUtils;->dp2pxWithScale(FF)I

    move-result v1

    .line 28
    .local v1, "iconSize":I
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 29
    invoke-virtual {p0}, Lcom/tds/achievement/ui/ListNotReachView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "ic_achievement_not_reach"

    invoke-static {v2, v3}, Lcom/tds/common/utils/UIUtils;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 32
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 34
    .local v2, "textLP":Landroid/widget/LinearLayout$LayoutParams;
    new-instance v3, Lcom/tds/achievement/ui/VerticalTextView;

    invoke-virtual {p0}, Lcom/tds/achievement/ui/ListNotReachView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, p1}, Lcom/tds/achievement/ui/VerticalTextView;-><init>(Landroid/content/Context;Z)V

    .line 35
    .local v3, "textView":Lcom/tds/achievement/ui/VerticalTextView;
    const/high16 v4, 0x41200000    # 10.0f

    invoke-virtual {v3, v4}, Lcom/tds/achievement/ui/VerticalTextView;->setTextSize(F)V

    .line 36
    invoke-virtual {p0}, Lcom/tds/achievement/ui/ListNotReachView;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "tds_achievement_string_locked"

    invoke-static {v4, v5}, Lcom/tds/common/utils/UIUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/tds/achievement/ui/VerticalTextView;->setCustomText(Ljava/lang/CharSequence;)V

    .line 38
    const/high16 v4, 0x40000000    # 2.0f

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz p1, :cond_5f

    .line 39
    sget v7, Lcom/tds/achievement/ui/UIManager;->SCALE:F

    invoke-static {v7, v4}, Lcom/tds/common/utils/UIUtils;->dp2pxWithScale(FF)I

    move-result v4

    invoke-virtual {v2, v6, v4, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 40
    invoke-virtual {v3, v5}, Lcom/tds/achievement/ui/VerticalTextView;->setEms(I)V

    goto :goto_68

    .line 42
    :cond_5f
    sget v7, Lcom/tds/achievement/ui/UIManager;->SCALE:F

    invoke-static {v7, v4}, Lcom/tds/common/utils/UIUtils;->dp2pxWithScale(FF)I

    move-result v4

    invoke-virtual {v2, v4, v6, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 44
    :goto_68
    invoke-virtual {v3, v2}, Lcom/tds/achievement/ui/VerticalTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 45
    const/high16 v4, -0x1000000

    invoke-virtual {v3, v4}, Lcom/tds/achievement/ui/VerticalTextView;->setTextColor(I)V

    .line 46
    sget-object v4, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Lcom/tds/achievement/ui/VerticalTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 48
    const/high16 v4, 0x41100000    # 9.0f

    const/high16 v7, 0x41a80000    # 21.0f

    if-eqz p1, :cond_91

    .line 49
    invoke-virtual {p0, v5}, Lcom/tds/achievement/ui/ListNotReachView;->setOrientation(I)V

    .line 50
    sget v8, Lcom/tds/achievement/ui/UIManager;->SCALE:F

    invoke-static {v8, v7}, Lcom/tds/common/utils/UIUtils;->dp2pxWithScale(FF)I

    move-result v7

    sget v8, Lcom/tds/achievement/ui/UIManager;->SCALE:F

    invoke-static {v8, v4}, Lcom/tds/common/utils/UIUtils;->dp2pxWithScale(FF)I

    move-result v4

    invoke-virtual {p0, v7, v6, v4, v6}, Lcom/tds/achievement/ui/ListNotReachView;->setPadding(IIII)V

    .line 51
    invoke-virtual {v3, v5}, Lcom/tds/achievement/ui/VerticalTextView;->setEms(I)V

    goto :goto_a3

    .line 53
    :cond_91
    invoke-virtual {p0, v6}, Lcom/tds/achievement/ui/ListNotReachView;->setOrientation(I)V

    .line 54
    sget v5, Lcom/tds/achievement/ui/UIManager;->SCALE:F

    invoke-static {v5, v7}, Lcom/tds/common/utils/UIUtils;->dp2pxWithScale(FF)I

    move-result v5

    sget v7, Lcom/tds/achievement/ui/UIManager;->SCALE:F

    invoke-static {v7, v4}, Lcom/tds/common/utils/UIUtils;->dp2pxWithScale(FF)I

    move-result v4

    invoke-virtual {p0, v6, v5, v6, v4}, Lcom/tds/achievement/ui/ListNotReachView;->setPadding(IIII)V

    .line 57
    :goto_a3
    invoke-virtual {p0, v0}, Lcom/tds/achievement/ui/ListNotReachView;->addView(Landroid/view/View;)V

    .line 58
    invoke-virtual {p0, v3}, Lcom/tds/achievement/ui/ListNotReachView;->addView(Landroid/view/View;)V

    .line 59
    return-void
.end method
