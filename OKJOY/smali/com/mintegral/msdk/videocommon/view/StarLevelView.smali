.class public Lcom/mintegral/msdk/videocommon/view/StarLevelView;
.super Landroid/widget/LinearLayout;
.source "StarLevelView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 30
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 31
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/videocommon/view/StarLevelView;->setOrientation(I)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/videocommon/view/StarLevelView;->setOrientation(I)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/videocommon/view/StarLevelView;->setOrientation(I)V

    .line 38
    return-void
.end method


# virtual methods
.method public initScore(D)V
    .registers 12

    .prologue
    const/4 v8, -0x2

    const/4 v1, 0x0

    const/4 v7, 0x5

    .line 42
    move v0, v1

    :goto_4
    double-to-int v2, p1

    if-ge v0, v2, :cond_2f

    .line 43
    new-instance v2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/mintegral/msdk/videocommon/view/StarLevelView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 44
    invoke-virtual {p0}, Lcom/mintegral/msdk/videocommon/view/StarLevelView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "mintegral_video_common_full_star"

    const-string v5, "drawable"

    invoke-static {v3, v4, v5}, Lcom/mintegral/msdk/base/utils/p;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 45
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 46
    if-eqz v0, :cond_29

    .line 49
    invoke-virtual {v3, v7, v1, v7, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 52
    :cond_29
    invoke-virtual {p0, v2, v3}, Lcom/mintegral/msdk/videocommon/view/StarLevelView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 42
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 55
    :cond_2f
    const-wide/high16 v2, 0x4049000000000000L    # 50.0

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    mul-double/2addr v4, p1

    sub-double/2addr v2, v4

    double-to-int v0, v2

    .line 56
    if-gtz v0, :cond_39

    .line 112
    :cond_38
    return-void

    .line 60
    :cond_39
    const/4 v2, 0x1

    if-le v0, v2, :cond_67

    const/16 v2, 0xa

    if-ge v0, v2, :cond_67

    .line 61
    if-lez v0, :cond_be

    if-ge v0, v7, :cond_be

    .line 63
    new-instance v2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/mintegral/msdk/videocommon/view/StarLevelView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 64
    invoke-virtual {p0}, Lcom/mintegral/msdk/videocommon/view/StarLevelView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "mintegral_video_common_full_star"

    const-string v5, "drawable"

    invoke-static {v3, v4, v5}, Lcom/mintegral/msdk/base/utils/p;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 65
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 66
    invoke-virtual {v3, v7, v1, v7, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 67
    invoke-virtual {p0, v2, v3}, Lcom/mintegral/msdk/videocommon/view/StarLevelView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 78
    :cond_67
    :goto_67
    div-int/lit8 v2, v0, 0xa

    .line 79
    if-lez v2, :cond_38

    .line 81
    mul-int/lit8 v3, v2, 0xa

    rem-int/2addr v0, v3

    .line 82
    if-lez v0, :cond_e2

    if-ge v0, v7, :cond_e2

    .line 84
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/mintegral/msdk/videocommon/view/StarLevelView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 86
    invoke-virtual {p0}, Lcom/mintegral/msdk/videocommon/view/StarLevelView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "mintegral_video_common_full_while_star"

    const-string v5, "drawable"

    invoke-static {v3, v4, v5}, Lcom/mintegral/msdk/base/utils/p;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 87
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 88
    invoke-virtual {v3, v7, v1, v7, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 89
    invoke-virtual {p0, v0, v3}, Lcom/mintegral/msdk/videocommon/view/StarLevelView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_95
    :goto_95
    move v0, v1

    .line 100
    :goto_96
    if-ge v0, v2, :cond_38

    .line 101
    new-instance v3, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/mintegral/msdk/videocommon/view/StarLevelView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 103
    invoke-virtual {p0}, Lcom/mintegral/msdk/videocommon/view/StarLevelView;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "mintegral_video_common_full_while_star"

    const-string v6, "drawable"

    invoke-static {v4, v5, v6}, Lcom/mintegral/msdk/base/utils/p;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 104
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 105
    invoke-virtual {v4, v7, v1, v7, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 106
    invoke-virtual {p0, v3, v4}, Lcom/mintegral/msdk/videocommon/view/StarLevelView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 100
    add-int/lit8 v0, v0, 0x1

    goto :goto_96

    .line 69
    :cond_be
    new-instance v2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/mintegral/msdk/videocommon/view/StarLevelView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 70
    invoke-virtual {p0}, Lcom/mintegral/msdk/videocommon/view/StarLevelView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "mintegral_video_common_full_star"

    const-string v5, "drawable"

    invoke-static {v3, v4, v5}, Lcom/mintegral/msdk/base/utils/p;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 71
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 72
    invoke-virtual {v3, v7, v1, v7, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 73
    invoke-virtual {p0, v2, v3}, Lcom/mintegral/msdk/videocommon/view/StarLevelView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_67

    .line 90
    :cond_e2
    if-lt v0, v7, :cond_95

    const/16 v3, 0x9

    if-gt v0, v3, :cond_95

    .line 91
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/mintegral/msdk/videocommon/view/StarLevelView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 93
    invoke-virtual {p0}, Lcom/mintegral/msdk/videocommon/view/StarLevelView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "mintegral_video_common_half_star"

    const-string v5, "drawable"

    invoke-static {v3, v4, v5}, Lcom/mintegral/msdk/base/utils/p;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 94
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 95
    invoke-virtual {v3, v7, v1, v7, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 96
    invoke-virtual {p0, v0, v3}, Lcom/mintegral/msdk/videocommon/view/StarLevelView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_95
.end method
