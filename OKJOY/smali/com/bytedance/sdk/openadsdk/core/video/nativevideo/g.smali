.class public Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;
.super Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;
.source "NativeVideoDetailLayout.java"


# instance fields
.field private J:Landroid/widget/TextView;

.field private K:Landroid/widget/ImageView;

.field private L:Landroid/view/View;

.field private M:Landroid/widget/TextView;

.field private N:Landroid/widget/TextView;

.field private O:Landroid/widget/TextView;

.field private P:Landroid/widget/ImageView;

.field private Q:Landroid/view/View;

.field private R:Landroid/widget/ImageView;

.field private S:Landroid/widget/TextView;

.field private T:Landroid/view/View;

.field private U:Landroid/widget/SeekBar;

.field private V:Landroid/widget/TextView;

.field private W:Landroid/widget/TextView;

.field private X:Landroid/widget/ImageView;

.field private final Y:Lcom/bytedance/sdk/openadsdk/utils/ak;

.field private Z:Z

.field private aA:Z

.field private aB:Z

.field private aa:Z

.field private ab:I

.field private ac:I

.field private ad:I

.field private ae:I

.field private af:I

.field private final ag:Landroid/graphics/Rect;

.field private ah:Landroid/content/res/ColorStateList;

.field private ai:F

.field private final aj:Landroid/graphics/Rect;

.field private ak:I

.field private al:Z

.field private am:I

.field private an:I

.field private ao:Lcom/bytedance/sdk/openadsdk/core/widget/d;

.field private ap:Z

.field private final aq:Landroid/view/View$OnTouchListener;

.field private ar:F

.field private as:Landroid/content/res/ColorStateList;

.field private at:F

.field private final au:Landroid/graphics/Rect;

.field private av:F

.field private aw:Landroid/content/res/ColorStateList;

.field private ax:F

.field private final ay:Landroid/graphics/Rect;

.field private final az:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;ZLjava/util/EnumSet;Lcom/bytedance/sdk/openadsdk/core/d/k;Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;Z)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/view/View;",
            "Z",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$a;",
            ">;",
            "Lcom/bytedance/sdk/openadsdk/core/d/k;",
            "Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;",
            "Z)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 99
    invoke-direct/range {p0 .. p7}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;-><init>(Landroid/content/Context;Landroid/view/View;ZLjava/util/EnumSet;Lcom/bytedance/sdk/openadsdk/core/d/k;Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;Z)V

    .line 71
    new-instance v0, Lcom/bytedance/sdk/openadsdk/utils/ak;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/utils/ak;-><init>(Lcom/bytedance/sdk/openadsdk/utils/ak$a;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->Y:Lcom/bytedance/sdk/openadsdk/utils/ak;

    .line 72
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->Z:Z

    .line 73
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->aa:Z

    .line 75
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->ab:I

    .line 76
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->ac:I

    .line 77
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->ad:I

    .line 78
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->ae:I

    .line 80
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->af:I

    .line 81
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->ag:Landroid/graphics/Rect;

    .line 86
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->aj:Landroid/graphics/Rect;

    .line 88
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->ak:I

    .line 93
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->am:I

    .line 94
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->an:I

    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->ao:Lcom/bytedance/sdk/openadsdk/core/widget/d;

    .line 260
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->ap:Z

    .line 262
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g$7;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g$7;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->aq:Landroid/view/View$OnTouchListener;

    .line 655
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->au:Landroid/graphics/Rect;

    .line 660
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->ay:Landroid/graphics/Rect;

    .line 661
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->az:Landroid/graphics/Rect;

    .line 100
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->z:Landroid/content/Context;

    .line 101
    invoke-virtual {p0, p7}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->c(Z)V

    .line 102
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->a:Landroid/view/View;

    .line 103
    iput-boolean p3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->u:Z

    .line 104
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/widget/d;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/widget/d;-><init>(Lcom/bytedance/sdk/openadsdk/core/widget/d$a;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->ao:Lcom/bytedance/sdk/openadsdk/core/widget/d;

    .line 105
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->ao:Lcom/bytedance/sdk/openadsdk/core/widget/d;

    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->u:Z

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/d;->a(Z)V

    .line 106
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->z:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 107
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->am:I

    .line 108
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->an:I

    .line 109
    if-nez p4, :cond_87

    const-class v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$a;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object p4

    :cond_87
    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->x:Ljava/util/EnumSet;

    .line 110
    iput-object p6, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->E:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    .line 111
    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->y:Lcom/bytedance/sdk/openadsdk/core/d/k;

    .line 112
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->c(I)V

    .line 113
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->a:Landroid/view/View;

    invoke-virtual {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 114
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->a()V

    .line 115
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->n()V

    .line 116
    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;)Z
    .registers 2

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->Z:Z

    return v0
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;Z)Z
    .registers 2

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->ap:Z

    return p1
.end method

.method private e(Z)V
    .registers 2

    .prologue
    .line 645
    if-eqz p1, :cond_6

    .line 646
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->y()V

    .line 649
    :goto_5
    return-void

    .line 648
    :cond_6
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->z()V

    goto :goto_5
.end method

.method private y()V
    .registers 12

    .prologue
    const/4 v10, 0x0

    const v9, 0x3f59999a    # 0.85f

    const/high16 v8, 0x41600000    # 14.0f

    const/high16 v7, 0x3f000000    # 0.5f

    const/4 v6, 0x1

    .line 664
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->z:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 667
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->W:Landroid/widget/TextView;

    if-eqz v0, :cond_96

    .line 668
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->W:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->ar:F

    .line 669
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->W:Landroid/widget/TextView;

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 670
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->W:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->as:Landroid/content/res/ColorStateList;

    .line 672
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->as:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_3e

    .line 673
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->W:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->z:Landroid/content/Context;

    const-string v3, "tt_ssxinzi15"

    invoke-static {v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/ab;->i(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 675
    :cond_3e
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->W:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getAlpha()F

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->at:F

    .line 676
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->W:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setAlpha(F)V

    .line 677
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->W:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->z:Landroid/content/Context;

    invoke-static {v2, v7}, Lcom/bytedance/sdk/openadsdk/utils/ai;->a(Landroid/content/Context;F)F

    move-result v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->z:Landroid/content/Context;

    invoke-static {v3, v7}, Lcom/bytedance/sdk/openadsdk/utils/ai;->a(Landroid/content/Context;F)F

    move-result v3

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->z:Landroid/content/Context;

    const-string v5, "tt_video_shaoow_color_fullscreen"

    invoke-static {v4, v5}, Lcom/bytedance/sdk/openadsdk/utils/ab;->i(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v10, v2, v3, v4}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 678
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->W:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 679
    instance-of v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_96

    .line 680
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 681
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->au:Landroid/graphics/Rect;

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v2, v3, v4, v5, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 682
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->W:Landroid/widget/TextView;

    const/high16 v2, 0x41800000    # 16.0f

    invoke-static {v6, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->au:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    .line 683
    invoke-static {v6, v8, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->au:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    .line 682
    invoke-static {v0, v2, v3, v4, v5}, Lcom/bytedance/sdk/openadsdk/utils/ai;->b(Landroid/view/View;IIII)V

    .line 688
    :cond_96
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->V:Landroid/widget/TextView;

    if-eqz v0, :cond_116

    .line 689
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->V:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->av:F

    .line 690
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->V:Landroid/widget/TextView;

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 691
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->V:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->aw:Landroid/content/res/ColorStateList;

    .line 693
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->aw:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_c1

    .line 694
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->V:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->z:Landroid/content/Context;

    const-string v3, "tt_ssxinzi15"

    invoke-static {v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/ab;->i(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 696
    :cond_c1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->V:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getAlpha()F

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->ax:F

    .line 697
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->V:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setAlpha(F)V

    .line 698
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->V:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->z:Landroid/content/Context;

    invoke-static {v2, v7}, Lcom/bytedance/sdk/openadsdk/utils/ai;->a(Landroid/content/Context;F)F

    move-result v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->z:Landroid/content/Context;

    invoke-static {v3, v7}, Lcom/bytedance/sdk/openadsdk/utils/ai;->a(Landroid/content/Context;F)F

    move-result v3

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->z:Landroid/content/Context;

    const-string v5, "tt_video_shaoow_color_fullscreen"

    invoke-static {v4, v5}, Lcom/bytedance/sdk/openadsdk/utils/ab;->i(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v10, v2, v3, v4}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 699
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->V:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 700
    instance-of v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_116

    .line 701
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 702
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->ay:Landroid/graphics/Rect;

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v2, v3, v4, v5, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 703
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->V:Landroid/widget/TextView;

    invoke-static {v6, v8, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->ay:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->ay:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->ay:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-static {v0, v2, v3, v4, v5}, Lcom/bytedance/sdk/openadsdk/utils/ai;->b(Landroid/view/View;IIII)V

    .line 709
    :cond_116
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->X:Landroid/widget/ImageView;

    if-eqz v0, :cond_14b

    .line 710
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->X:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 711
    instance-of v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_14b

    .line 712
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 713
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->az:Landroid/graphics/Rect;

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v2, v3, v4, v5, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 714
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->X:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->az:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->az:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    const/high16 v4, 0x41800000    # 16.0f

    .line 715
    invoke-static {v6, v4, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->az:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    .line 714
    invoke-static {v0, v2, v3, v4, v5}, Lcom/bytedance/sdk/openadsdk/utils/ai;->b(Landroid/view/View;IIII)V

    .line 721
    :cond_14b
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->X:Landroid/widget/ImageView;

    if-eqz v0, :cond_15c

    .line 722
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->X:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->z:Landroid/content/Context;

    const-string v3, "tt_shrink_fullscreen"

    invoke-static {v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/ab;->c(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 725
    :cond_15c
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->N:Landroid/widget/TextView;

    if-eqz v0, :cond_1b7

    .line 726
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->N:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->ah:Landroid/content/res/ColorStateList;

    .line 727
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->ah:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_179

    .line 728
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->N:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->z:Landroid/content/Context;

    const-string v3, "tt_ssxinzi15"

    invoke-static {v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/ab;->i(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 730
    :cond_179
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->N:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getAlpha()F

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->ai:F

    .line 731
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->N:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setAlpha(F)V

    .line 732
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->N:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 733
    instance-of v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_1b7

    .line 734
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 735
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->aj:Landroid/graphics/Rect;

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v2, v3, v4, v5, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 736
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->N:Landroid/widget/TextView;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v6, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->ay:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->ay:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->ay:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-static {v0, v2, v3, v4, v5}, Lcom/bytedance/sdk/openadsdk/utils/ai;->b(Landroid/view/View;IIII)V

    .line 741
    :cond_1b7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->L:Landroid/view/View;

    if-eqz v0, :cond_1e0

    .line 742
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->L:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 743
    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->ak:I

    .line 744
    const/high16 v2, 0x42440000    # 49.0f

    invoke-static {v6, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 745
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->L:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 746
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->L:Landroid/view/View;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->z:Landroid/content/Context;

    const-string v2, "tt_shadow_fullscreen_top"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ab;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 749
    :cond_1e0
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->al:Z

    invoke-virtual {p0, v0, v6}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->b(ZZ)V

    .line 750
    return-void
.end method

.method private z()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    .line 757
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->W:Landroid/widget/TextView;

    if-eqz v0, :cond_49

    .line 758
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->W:Landroid/widget/TextView;

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->ar:F

    invoke-virtual {v0, v7, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 760
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->as:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1a

    .line 761
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->W:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->as:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 763
    :cond_1a
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->W:Landroid/widget/TextView;

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->at:F

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 764
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->W:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->z:Landroid/content/Context;

    invoke-static {v1, v6}, Lcom/bytedance/sdk/openadsdk/utils/ai;->a(Landroid/content/Context;F)F

    move-result v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->z:Landroid/content/Context;

    const-string v3, "tt_video_shadow_color"

    invoke-static {v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/ab;->i(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v5, v5, v2}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 765
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->W:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->au:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->au:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->au:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->au:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/utils/ai;->b(Landroid/view/View;IIII)V

    .line 769
    :cond_49
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->V:Landroid/widget/TextView;

    if-eqz v0, :cond_8e

    .line 770
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->V:Landroid/widget/TextView;

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->av:F

    invoke-virtual {v0, v7, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 771
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->aw:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_5f

    .line 772
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->V:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->aw:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 774
    :cond_5f
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->V:Landroid/widget/TextView;

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->ax:F

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 775
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->V:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->z:Landroid/content/Context;

    invoke-static {v1, v6}, Lcom/bytedance/sdk/openadsdk/utils/ai;->a(Landroid/content/Context;F)F

    move-result v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->z:Landroid/content/Context;

    const-string v3, "tt_video_shadow_color"

    invoke-static {v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/ab;->i(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v5, v5, v2}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 776
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->V:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->ay:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->ay:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->ay:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->ay:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/utils/ai;->b(Landroid/view/View;IIII)V

    .line 779
    :cond_8e
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->X:Landroid/widget/ImageView;

    if-eqz v0, :cond_a7

    .line 780
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->X:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->az:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->az:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->az:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->az:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/utils/ai;->b(Landroid/view/View;IIII)V

    .line 784
    :cond_a7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->X:Landroid/widget/ImageView;

    if-eqz v0, :cond_b8

    .line 785
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->X:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->z:Landroid/content/Context;

    const-string v2, "tt_enlarge_video"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ab;->c(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 788
    :cond_b8
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->N:Landroid/widget/TextView;

    if-eqz v0, :cond_e3

    .line 789
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->ah:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_c7

    .line 790
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->N:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->ah:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 792
    :cond_c7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->N:Landroid/widget/TextView;

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->ai:F

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 793
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->N:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->ay:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->ay:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->ay:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->ay:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/utils/ai;->b(Landroid/view/View;IIII)V

    .line 797
    :cond_e3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->L:Landroid/view/View;

    if-eqz v0, :cond_103

    .line 798
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->L:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 799
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->ak:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 800
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->L:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 804
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->L:Landroid/view/View;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->z:Landroid/content/Context;

    const-string v2, "tt_video_black_desc_gradient"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ab;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 807
    :cond_103
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->al:Z

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->b(ZZ)V

    .line 808
    return-void
.end method


# virtual methods
.method protected a()V
    .registers 6

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 166
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->a()V

    .line 167
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->ao:Lcom/bytedance/sdk/openadsdk/core/widget/d;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->a:Landroid/view/View;

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/widget/d;->a(Landroid/view/View;)V

    .line 169
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->K:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->u:Z

    if-nez v0, :cond_1d

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->x:Ljava/util/EnumSet;

    sget-object v4, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$a;->a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$a;

    invoke-virtual {v0, v4}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7d

    :cond_1d
    move v0, v2

    :goto_1e
    invoke-static {v3, v0}, Lcom/bytedance/sdk/openadsdk/utils/ai;->a(Landroid/view/View;I)V

    .line 170
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->K:Landroid/widget/ImageView;

    new-instance v3, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g$1;

    invoke-direct {v3, p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->J:Landroid/widget/TextView;

    iget-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->u:Z

    if-eqz v3, :cond_7f

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->x:Ljava/util/EnumSet;

    sget-object v4, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$a;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$a;

    invoke-virtual {v3, v4}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7f

    :goto_3b
    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/utils/ai;->a(Landroid/view/View;I)V

    .line 181
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->J:Landroid/widget/TextView;

    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g$2;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->P:Landroid/widget/ImageView;

    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g$3;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->R:Landroid/widget/ImageView;

    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g$4;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g$4;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 213
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->X:Landroid/widget/ImageView;

    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g$5;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g$5;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 223
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->U:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setThumbOffset(I)V

    .line 224
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->U:Landroid/widget/SeekBar;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g$6;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g$6;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 255
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->U:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->aq:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 257
    return-void

    :cond_7d
    move v0, v1

    .line 169
    goto :goto_1e

    :cond_7f
    move v2, v1

    .line 180
    goto :goto_3b
.end method

.method public a(I)V
    .registers 4

    .prologue
    .line 353
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->T:Landroid/view/View;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->T:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_14

    .line 354
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->o:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ai;->a(Landroid/view/View;I)V

    .line 360
    :goto_13
    return-void

    .line 356
    :cond_14
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->o:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ai;->a(Landroid/view/View;I)V

    .line 357
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->U:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 358
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->o:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_13
.end method

.method public a(J)V
    .registers 6

    .prologue
    .line 407
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->W:Landroid/widget/TextView;

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/video/d/a;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 408
    return-void
.end method

.method public a(JJ)V
    .registers 8

    .prologue
    .line 375
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->V:Landroid/widget/TextView;

    invoke-static {p3, p4}, Lcom/bytedance/sdk/openadsdk/core/video/d/a;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 376
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->W:Landroid/widget/TextView;

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/video/d/a;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 377
    invoke-static {p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/video/d/a;->a(JJ)I

    move-result v0

    .line 378
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->U:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 379
    return-void
.end method

.method protected a(Landroid/content/Context;Landroid/view/View;)V
    .registers 4

    .prologue
    .line 123
    invoke-super {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 125
    const-string v0, "tt_video_back"

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/ab;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->J:Landroid/widget/TextView;

    .line 126
    const-string v0, "tt_video_close"

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/ab;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->K:Landroid/widget/ImageView;

    .line 127
    const-string v0, "tt_video_top_layout"

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/ab;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->L:Landroid/view/View;

    .line 128
    const-string v0, "tt_video_fullscreen_back"

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/ab;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->P:Landroid/widget/ImageView;

    .line 129
    const-string v0, "tt_video_title"

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/ab;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->M:Landroid/widget/TextView;

    .line 130
    const-string v0, "tt_video_top_title"

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/ab;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->N:Landroid/widget/TextView;

    .line 131
    const-string v0, "tt_video_current_time"

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/ab;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->O:Landroid/widget/TextView;

    .line 133
    const-string v0, "tt_video_loading_retry"

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/ab;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->Q:Landroid/view/View;

    .line 134
    const-string v0, "tt_video_retry"

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/ab;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->R:Landroid/widget/ImageView;

    .line 135
    const-string v0, "tt_video_retry_des"

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/ab;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->S:Landroid/widget/TextView;

    .line 137
    const-string v0, "tt_video_seekbar"

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/ab;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->U:Landroid/widget/SeekBar;

    .line 138
    const-string v0, "tt_video_time_left_time"

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/ab;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->V:Landroid/widget/TextView;

    .line 139
    const-string v0, "tt_video_time_play"

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/ab;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->W:Landroid/widget/TextView;

    .line 141
    const-string v0, "tt_video_ad_bottom_layout"

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/ab;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->T:Landroid/view/View;

    .line 142
    const-string v0, "tt_video_ad_full_screen"

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/ab;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->X:Landroid/widget/ImageView;

    .line 144
    const-string v0, "tt_video_ad_cover"

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/ab;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->g:Landroid/view/ViewStub;

    .line 145
    return-void
.end method

.method public a(Landroid/os/Message;)V
    .registers 3

    .prologue
    .line 812
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_a

    .line 820
    :goto_5
    return-void

    .line 814
    :pswitch_6
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->j()V

    goto :goto_5

    .line 812
    :pswitch_data_a
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method

.method public a(Landroid/view/View;Z)V
    .registers 8

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 926
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->h()Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 927
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v3, "HH:mm"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 928
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 929
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->y:Lcom/bytedance/sdk/openadsdk/core/d/k;

    if-eqz v3, :cond_35

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->y:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/d/k;->J()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_35

    .line 930
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->y:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/d/k;->J()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->a(Ljava/lang/String;)V

    .line 932
    :cond_35
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->O:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 938
    :goto_3a
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->C:Z

    if-nez v0, :cond_5e

    .line 940
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->u:Z

    if-eqz v0, :cond_6c

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->Z:Z

    if-nez v0, :cond_6c

    move v0, v1

    :goto_47
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->b(Z)V

    .line 941
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->r()Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 942
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->B:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->d:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_5b

    move v2, v1

    :cond_5b
    invoke-interface {v0, p0, p1, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;Landroid/view/View;ZZ)V

    .line 945
    :cond_5e
    return-void

    .line 934
    :cond_5f
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->a(Ljava/lang/String;)V

    .line 935
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->O:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3a

    :cond_6c
    move v0, v2

    .line 940
    goto :goto_47
.end method

.method public a(Landroid/view/ViewGroup;)V
    .registers 10
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v5, 0x3

    const/4 v7, 0x1

    const/4 v2, -0x1

    const/16 v6, 0x8

    const/4 v3, 0x0

    .line 542
    if-nez p1, :cond_9

    .line 593
    :cond_8
    :goto_8
    return-void

    .line 545
    :cond_9
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_8

    .line 549
    iput-boolean v7, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->Z:Z

    .line 550
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 551
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->ac:I

    .line 552
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->ab:I

    .line 553
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->ad:I

    .line 554
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->ae:I

    .line 555
    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 556
    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 557
    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 558
    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 559
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 561
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 562
    instance-of v0, v1, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v0, :cond_56

    move-object v0, v1

    .line 563
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 564
    invoke-virtual {v0}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object v2

    .line 565
    array-length v4, v2

    if-lez v4, :cond_ad

    aget v2, v2, v5

    :goto_4e
    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->af:I

    .line 566
    invoke-virtual {v0, v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 567
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 569
    :cond_56
    instance-of v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_6c

    .line 570
    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 571
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->ag:Landroid/graphics/Rect;

    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v0, v2, v4, v5, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 572
    invoke-static {p1, v3, v3, v3, v3}, Lcom/bytedance/sdk/openadsdk/utils/ai;->b(Landroid/view/View;IIII)V

    .line 574
    :cond_6c
    invoke-virtual {p0, v7}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->a(Z)V

    .line 576
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->X:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->z:Landroid/content/Context;

    const-string v2, "tt_shrink_video"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ab;->c(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 578
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->U:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->z:Landroid/content/Context;

    const-string v2, "tt_seek_thumb_fullscreen_selector"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ab;->c(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 579
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->U:Landroid/widget/SeekBar;

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setThumbOffset(I)V

    .line 582
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->a:Landroid/view/View;

    invoke-static {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/video/d/a;->a(Landroid/view/View;Z)V

    .line 583
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->Z:Z

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->e(Z)V

    .line 585
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->L:Landroid/view/View;

    invoke-static {v0, v6}, Lcom/bytedance/sdk/openadsdk/utils/ai;->a(Landroid/view/View;I)V

    .line 586
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->u:Z

    if-nez v0, :cond_af

    .line 587
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->K:Landroid/widget/ImageView;

    invoke-static {v0, v6}, Lcom/bytedance/sdk/openadsdk/utils/ai;->a(Landroid/view/View;I)V

    .line 588
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->J:Landroid/widget/TextView;

    invoke-static {v0, v6}, Lcom/bytedance/sdk/openadsdk/utils/ai;->a(Landroid/view/View;I)V

    goto/16 :goto_8

    :cond_ad
    move v2, v3

    .line 565
    goto :goto_4e

    .line 589
    :cond_af
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->x:Ljava/util/EnumSet;

    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$a;->a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$a;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 590
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->K:Landroid/widget/ImageView;

    invoke-static {v0, v6}, Lcom/bytedance/sdk/openadsdk/utils/ai;->a(Landroid/view/View;I)V

    goto/16 :goto_8
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/ref/WeakReference;Z)V
    .registers 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/core/d/k;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x4

    const/4 v4, 0x0

    .line 414
    if-nez p1, :cond_5

    .line 484
    :cond_4
    :goto_4
    return-void

    .line 417
    :cond_5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->a:Landroid/view/View;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->a(Landroid/view/View;Landroid/content/Context;)V

    .line 418
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->u:Z

    invoke-virtual {p0, v4, v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->a(ZZ)V

    .line 419
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->h:Landroid/view/View;

    invoke-static {v0, v4}, Lcom/bytedance/sdk/openadsdk/utils/ai;->a(Landroid/view/View;I)V

    .line 420
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->i:Landroid/widget/ImageView;

    invoke-static {v0, v4}, Lcom/bytedance/sdk/openadsdk/utils/ai;->a(Landroid/view/View;I)V

    .line 422
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->j:Landroid/view/View;

    invoke-static {v0, v4}, Lcom/bytedance/sdk/openadsdk/utils/ai;->a(Landroid/view/View;I)V

    .line 423
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->i:Landroid/widget/ImageView;

    if-eqz v0, :cond_53

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->y:Lcom/bytedance/sdk/openadsdk/core/d/k;

    if-eqz v0, :cond_53

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->y:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->z()Lcom/bytedance/sdk/openadsdk/core/d/r;

    move-result-object v0

    if-eqz v0, :cond_53

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->y:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->z()Lcom/bytedance/sdk/openadsdk/core/d/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/r;->f()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_53

    .line 424
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->z:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/g/e;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/g/e;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->y:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/k;->z()Lcom/bytedance/sdk/openadsdk/core/d/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/r;->f()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->i:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/g/e;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 427
    :cond_53
    const-string v0, ""

    .line 428
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/k;->A()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_ed

    .line 429
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/k;->A()Ljava/lang/String;

    move-result-object v0

    .line 437
    :cond_63
    :goto_63
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->y:Lcom/bytedance/sdk/openadsdk/core/d/k;

    if-eqz v1, :cond_10d

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->y:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/k;->C()Lcom/bytedance/sdk/openadsdk/core/d/j;

    move-result-object v1

    if-eqz v1, :cond_10d

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->y:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/k;->C()Lcom/bytedance/sdk/openadsdk/core/d/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/j;->a()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_10d

    .line 438
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->k:Lcom/bytedance/sdk/openadsdk/core/widget/RoundImageView;

    invoke-static {v1, v4}, Lcom/bytedance/sdk/openadsdk/utils/ai;->a(Landroid/view/View;I)V

    .line 439
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->l:Landroid/widget/TextView;

    invoke-static {v1, v3}, Lcom/bytedance/sdk/openadsdk/utils/ai;->a(Landroid/view/View;I)V

    .line 440
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->k:Lcom/bytedance/sdk/openadsdk/core/widget/RoundImageView;

    if-eqz v1, :cond_ac

    .line 441
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->z:Landroid/content/Context;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/g/e;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/g/e;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->y:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/d/k;->C()Lcom/bytedance/sdk/openadsdk/core/d/j;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/d/j;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->k:Lcom/bytedance/sdk/openadsdk/core/widget/RoundImageView;

    invoke-virtual {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/g/e;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 442
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->k:Lcom/bytedance/sdk/openadsdk/core/widget/RoundImageView;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->F:Lcom/bytedance/sdk/openadsdk/core/a/a;

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/widget/RoundImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 443
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->k:Lcom/bytedance/sdk/openadsdk/core/widget/RoundImageView;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->F:Lcom/bytedance/sdk/openadsdk/core/a/a;

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/widget/RoundImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 457
    :cond_ac
    :goto_ac
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->m:Landroid/widget/TextView;

    if-eqz v1, :cond_bb

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_bb

    .line 458
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->m:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 460
    :cond_bb
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->m:Landroid/widget/TextView;

    invoke-static {v0, v4}, Lcom/bytedance/sdk/openadsdk/utils/ai;->a(Landroid/view/View;I)V

    .line 462
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->n:Landroid/widget/TextView;

    invoke-static {v0, v4}, Lcom/bytedance/sdk/openadsdk/utils/ai;->a(Landroid/view/View;I)V

    .line 464
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/k;->B()I

    move-result v0

    packed-switch v0, :pswitch_data_158

    .line 476
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->z:Landroid/content/Context;

    const-string v1, "tt_video_mobile_go_detail"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ab;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 479
    :goto_d4
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->n:Landroid/widget/TextView;

    if-eqz v1, :cond_4

    .line 480
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->n:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 481
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->n:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->F:Lcom/bytedance/sdk/openadsdk/core/a/a;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 482
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->n:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->F:Lcom/bytedance/sdk/openadsdk/core/a/a;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto/16 :goto_4

    .line 430
    :cond_ed
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/k;->J()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_fd

    .line 431
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/k;->J()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_63

    .line 432
    :cond_fd
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/k;->K()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_63

    .line 433
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/k;->K()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_63

    .line 445
    :cond_10d
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_ac

    .line 446
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->k:Lcom/bytedance/sdk/openadsdk/core/widget/RoundImageView;

    invoke-static {v1, v3}, Lcom/bytedance/sdk/openadsdk/utils/ai;->a(Landroid/view/View;I)V

    .line 447
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->l:Landroid/widget/TextView;

    invoke-static {v1, v4}, Lcom/bytedance/sdk/openadsdk/utils/ai;->a(Landroid/view/View;I)V

    .line 448
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->l:Landroid/widget/TextView;

    if-eqz v1, :cond_ac

    .line 449
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->l:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 452
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->l:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->F:Lcom/bytedance/sdk/openadsdk/core/a/a;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 453
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->l:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->F:Lcom/bytedance/sdk/openadsdk/core/a/a;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto/16 :goto_ac

    .line 466
    :pswitch_13b
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->z:Landroid/content/Context;

    const-string v1, "tt_video_download_apk"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ab;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_d4

    .line 469
    :pswitch_144
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->z:Landroid/content/Context;

    const-string v1, "tt_video_dial_phone"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ab;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_d4

    .line 473
    :pswitch_14d
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->z:Landroid/content/Context;

    const-string v1, "tt_video_mobile_go_detail"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ab;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_d4

    .line 464
    nop

    :pswitch_data_158
    .packed-switch 0x2
        :pswitch_14d
        :pswitch_14d
        :pswitch_13b
        :pswitch_144
    .end packed-switch
.end method

.method public a(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 342
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->M:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    .line 343
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->M:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 345
    :cond_9
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->N:Landroid/widget/TextView;

    if-eqz v0, :cond_12

    .line 346
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->N:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 348
    :cond_12
    return-void
.end method

.method public a(Z)V
    .registers 8

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 301
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->h()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->an:I

    .line 302
    :goto_a
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->h()Z

    move-result v1

    if-eqz v1, :cond_1e

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->am:I

    .line 303
    :goto_12
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->t:I

    if-lez v2, :cond_1a

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->s:I

    if-gtz v2, :cond_21

    .line 337
    :cond_1a
    :goto_1a
    return-void

    .line 301
    :cond_1b
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->q:I

    goto :goto_a

    .line 302
    :cond_1e
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->r:I

    goto :goto_12

    .line 306
    :cond_21
    if-lez v0, :cond_1a

    .line 312
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->i()Z

    move-result v2

    if-nez v2, :cond_39

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->h()Z

    move-result v2

    if-nez v2, :cond_39

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->x:Ljava/util/EnumSet;

    sget-object v3, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$a;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$a;

    invoke-virtual {v2, v3}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_66

    .line 318
    :cond_39
    :goto_39
    int-to-float v2, v0

    mul-float/2addr v2, v4

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->s:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 319
    iget v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->t:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 320
    if-le v2, v1, :cond_79

    .line 322
    int-to-float v0, v1

    mul-float/2addr v0, v4

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->t:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    .line 323
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->s:I

    int-to-float v2, v2

    mul-float/2addr v0, v2

    float-to-int v0, v0

    move v5, v1

    move v1, v0

    move v0, v5

    .line 329
    :goto_54
    if-nez p1, :cond_60

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->h()Z

    move-result v2

    if-nez v2, :cond_60

    .line 330
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->q:I

    .line 331
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->r:I

    .line 336
    :cond_60
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->b:Lcom/bytedance/sdk/openadsdk/core/video/renderview/b;

    invoke-interface {v2, v1, v0}, Lcom/bytedance/sdk/openadsdk/core/video/renderview/b;->a(II)V

    goto :goto_1a

    .line 315
    :cond_66
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->z:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->z:Landroid/content/Context;

    const-string v3, "tt_video_container_maxheight"

    invoke-static {v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/ab;->h(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_39

    :cond_79
    move v1, v0

    move v0, v2

    .line 325
    goto :goto_54
.end method

.method public a(ZZ)V
    .registers 7

    .prologue
    const/4 v1, 0x0

    const/16 v2, 0x8

    .line 854
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->T:Landroid/view/View;

    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/utils/ai;->a(Landroid/view/View;I)V

    .line 855
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->L:Landroid/view/View;

    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/utils/ai;->a(Landroid/view/View;I)V

    .line 856
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->o:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_46

    move v0, v1

    :goto_12
    invoke-static {v3, v0}, Lcom/bytedance/sdk/openadsdk/utils/ai;->a(Landroid/view/View;I)V

    .line 857
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->c:Landroid/widget/ImageView;

    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/utils/ai;->a(Landroid/view/View;I)V

    .line 858
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->u:Z

    if-nez v0, :cond_48

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->Z:Z

    if-nez v0, :cond_48

    .line 859
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->K:Landroid/widget/ImageView;

    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/utils/ai;->a(Landroid/view/View;I)V

    .line 860
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->x:Ljava/util/EnumSet;

    sget-object v3, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$a;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$a;

    invoke-virtual {v0, v3}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_36

    .line 861
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->J:Landroid/widget/TextView;

    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/utils/ai;->a(Landroid/view/View;I)V

    .line 866
    :cond_36
    :goto_36
    if-eqz p2, :cond_42

    .line 867
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->K:Landroid/widget/ImageView;

    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/utils/ai;->a(Landroid/view/View;I)V

    .line 868
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->J:Landroid/widget/TextView;

    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/utils/ai;->a(Landroid/view/View;I)V

    .line 870
    :cond_42
    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->b(Z)V

    .line 871
    return-void

    :cond_46
    move v0, v2

    .line 856
    goto :goto_12

    .line 863
    :cond_48
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->x:Ljava/util/EnumSet;

    sget-object v3, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$a;->a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$a;

    invoke-virtual {v0, v3}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 864
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->K:Landroid/widget/ImageView;

    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/utils/ai;->a(Landroid/view/View;I)V

    goto :goto_36
.end method

.method public a(ZZZ)V
    .registers 8

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 824
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->T:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ai;->a(Landroid/view/View;I)V

    .line 825
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->o:Landroid/widget/ProgressBar;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ai;->a(Landroid/view/View;I)V

    .line 826
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->Z:Z

    if-eqz v0, :cond_5b

    .line 827
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->L:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ai;->a(Landroid/view/View;I)V

    .line 828
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->N:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ai;->a(Landroid/view/View;I)V

    .line 832
    :cond_1b
    :goto_1b
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->c:Landroid/widget/ImageView;

    if-eqz p1, :cond_63

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_63

    move v0, v1

    :goto_28
    invoke-static {v3, v0}, Lcom/bytedance/sdk/openadsdk/utils/ai;->a(Landroid/view/View;I)V

    .line 833
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->u:Z

    if-nez v0, :cond_4b

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->Z:Z

    if-nez v0, :cond_4b

    .line 834
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->x:Ljava/util/EnumSet;

    sget-object v3, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$a;->a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$a;

    invoke-virtual {v0, v3}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_44

    if-nez p3, :cond_44

    .line 835
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->K:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ai;->a(Landroid/view/View;I)V

    .line 837
    :cond_44
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->J:Landroid/widget/TextView;

    if-eqz p3, :cond_65

    :goto_48
    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/utils/ai;->a(Landroid/view/View;I)V

    .line 840
    :cond_4b
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->V:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ai;->a(Landroid/view/View;I)V

    .line 841
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->W:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ai;->a(Landroid/view/View;I)V

    .line 842
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->U:Landroid/widget/SeekBar;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ai;->a(Landroid/view/View;I)V

    .line 843
    return-void

    .line 829
    :cond_5b
    if-eqz p3, :cond_1b

    .line 830
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->L:Landroid/view/View;

    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/utils/ai;->a(Landroid/view/View;I)V

    goto :goto_1b

    :cond_63
    move v0, v2

    .line 832
    goto :goto_28

    :cond_65
    move v2, v1

    .line 837
    goto :goto_48
.end method

.method public b()V
    .registers 5

    .prologue
    const/4 v1, 0x1

    .line 289
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->Y:Lcom/bytedance/sdk/openadsdk/utils/ak;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ak;->removeMessages(I)V

    .line 290
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->Y:Lcom/bytedance/sdk/openadsdk/utils/ak;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ak;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 291
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->Y:Lcom/bytedance/sdk/openadsdk/utils/ak;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/ak;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 292
    return-void
.end method

.method public b(Landroid/view/ViewGroup;)V
    .registers 8
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 598
    const-string v0, "FullScreen"

    const-string v1, "Detail exitFullScreen....."

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    if-nez p1, :cond_c

    .line 641
    :cond_b
    :goto_b
    return-void

    .line 602
    :cond_c
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->a:Landroid/view/View;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_b

    .line 605
    iput-boolean v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->Z:Z

    .line 606
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 607
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->ad:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 608
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->ae:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 609
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->ac:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 610
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->ab:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 612
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 614
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 615
    instance-of v0, v1, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v0, :cond_4d

    move-object v0, v1

    .line 616
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 617
    const/4 v2, 0x3

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->af:I

    invoke-virtual {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 618
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 620
    :cond_4d
    instance-of v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_64

    .line 621
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->ag:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->ag:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->ag:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->ag:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-static {p1, v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/ai;->b(Landroid/view/View;IIII)V

    .line 623
    :cond_64
    invoke-virtual {p0, v5}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->a(Z)V

    .line 625
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->X:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->z:Landroid/content/Context;

    const-string v2, "tt_enlarge_video"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ab;->c(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 628
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->U:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->z:Landroid/content/Context;

    const-string v2, "tt_seek_thumb_normal"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ab;->c(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 629
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->U:Landroid/widget/SeekBar;

    invoke-virtual {v0, v4}, Landroid/widget/SeekBar;->setThumbOffset(I)V

    .line 632
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->a:Landroid/view/View;

    invoke-static {v0, v5}, Lcom/bytedance/sdk/openadsdk/core/video/d/a;->a(Landroid/view/View;Z)V

    .line 634
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->Z:Z

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->e(Z)V

    .line 636
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->L:Landroid/view/View;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ai;->a(Landroid/view/View;I)V

    .line 637
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->x:Ljava/util/EnumSet;

    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$a;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$a;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 638
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->J:Landroid/widget/TextView;

    invoke-static {v0, v4}, Lcom/bytedance/sdk/openadsdk/utils/ai;->a(Landroid/view/View;I)V

    goto/16 :goto_b
.end method

.method public b(Z)V
    .registers 4

    .prologue
    const/16 v0, 0x8

    .line 885
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->M:Landroid/widget/TextView;

    if-eqz v1, :cond_f

    .line 886
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->u:Z

    if-eqz v1, :cond_10

    .line 887
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->M:Landroid/widget/TextView;

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/ai;->a(Landroid/view/View;I)V

    .line 892
    :cond_f
    :goto_f
    return-void

    .line 889
    :cond_10
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->M:Landroid/widget/TextView;

    if-eqz p1, :cond_15

    const/4 v0, 0x0

    :cond_15
    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/ai;->a(Landroid/view/View;I)V

    goto :goto_f
.end method

.method public b(I)Z
    .registers 3

    .prologue
    .line 880
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->U:Landroid/widget/SeekBar;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->U:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getSecondaryProgress()I

    move-result v0

    if-le p1, v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public c()V
    .registers 3

    .prologue
    .line 296
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->Y:Lcom/bytedance/sdk/openadsdk/utils/ak;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ak;->removeMessages(I)V

    .line 297
    return-void
.end method

.method public c(I)V
    .registers 3

    .prologue
    .line 901
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->w:I

    .line 902
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->a:Landroid/view/View;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/ai;->a(Landroid/view/View;I)V

    .line 904
    if-eqz p1, :cond_d

    .line 905
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->aB:Z

    .line 909
    :cond_c
    :goto_c
    return-void

    .line 906
    :cond_d
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->aA:Z

    if-eqz v0, :cond_c

    .line 907
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->aB:Z

    goto :goto_c
.end method

.method public d()V
    .registers 4

    .prologue
    .line 384
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->d:Landroid/view/View;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/ai;->e(Landroid/view/View;)V

    .line 385
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->e:Landroid/view/View;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/ai;->e(Landroid/view/View;)V

    .line 386
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->Q:Landroid/view/View;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/ai;->d(Landroid/view/View;)V

    .line 388
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->f:Landroid/widget/ImageView;

    if-eqz v0, :cond_45

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->y:Lcom/bytedance/sdk/openadsdk/core/d/k;

    if-eqz v0, :cond_45

    .line 389
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->y:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->z()Lcom/bytedance/sdk/openadsdk/core/d/r;

    move-result-object v0

    if-eqz v0, :cond_45

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->y:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->z()Lcom/bytedance/sdk/openadsdk/core/d/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/r;->f()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_45

    .line 390
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->f:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/ai;->e(Landroid/view/View;)V

    .line 391
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->z:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/g/e;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/g/e;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->y:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/k;->z()Lcom/bytedance/sdk/openadsdk/core/d/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/r;->f()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/g/e;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 395
    :cond_45
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->c:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_54

    .line 396
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->c:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ai;->a(Landroid/view/View;I)V

    .line 398
    :cond_54
    return-void
.end method

.method public e()V
    .registers 3

    .prologue
    .line 401
    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->u:Z

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->a(ZZ)V

    .line 402
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->v()V

    .line 403
    return-void
.end method

.method public f()V
    .registers 2

    .prologue
    .line 495
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->d:Landroid/view/View;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/ai;->d(Landroid/view/View;)V

    .line 496
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->Q:Landroid/view/View;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/ai;->d(Landroid/view/View;)V

    .line 497
    return-void
.end method

.method public g()V
    .registers 5

    .prologue
    const/4 v1, 0x0

    const/16 v3, 0x8

    .line 501
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->U:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 502
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->U:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setSecondaryProgress(I)V

    .line 503
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->o:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 504
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->o:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 506
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->V:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->z:Landroid/content/Context;

    const-string v2, "tt_00_00"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ab;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 507
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->W:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->z:Landroid/content/Context;

    const-string v2, "tt_00_00"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ab;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 509
    invoke-virtual {p0, v3}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->c(I)V

    .line 510
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->x()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 511
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->b:Lcom/bytedance/sdk/openadsdk/core/video/renderview/b;

    invoke-interface {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/video/renderview/b;->setVisibility(I)V

    .line 513
    :cond_3f
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->f:Landroid/widget/ImageView;

    if-eqz v0, :cond_49

    .line 514
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->f:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 516
    :cond_49
    invoke-virtual {p0, v3}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->c(I)V

    .line 517
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->T:Landroid/view/View;

    invoke-static {v0, v3}, Lcom/bytedance/sdk/openadsdk/utils/ai;->a(Landroid/view/View;I)V

    .line 518
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->h:Landroid/view/View;

    invoke-static {v0, v3}, Lcom/bytedance/sdk/openadsdk/utils/ai;->a(Landroid/view/View;I)V

    .line 519
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->i:Landroid/widget/ImageView;

    invoke-static {v0, v3}, Lcom/bytedance/sdk/openadsdk/utils/ai;->a(Landroid/view/View;I)V

    .line 520
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->j:Landroid/view/View;

    invoke-static {v0, v3}, Lcom/bytedance/sdk/openadsdk/utils/ai;->a(Landroid/view/View;I)V

    .line 521
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->k:Lcom/bytedance/sdk/openadsdk/core/widget/RoundImageView;

    invoke-static {v0, v3}, Lcom/bytedance/sdk/openadsdk/utils/ai;->a(Landroid/view/View;I)V

    .line 522
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->l:Landroid/widget/TextView;

    invoke-static {v0, v3}, Lcom/bytedance/sdk/openadsdk/utils/ai;->a(Landroid/view/View;I)V

    .line 523
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->m:Landroid/widget/TextView;

    invoke-static {v0, v3}, Lcom/bytedance/sdk/openadsdk/utils/ai;->a(Landroid/view/View;I)V

    .line 524
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->A:Lcom/bytedance/sdk/openadsdk/core/widget/e;

    if-eqz v0, :cond_79

    .line 525
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->A:Lcom/bytedance/sdk/openadsdk/core/widget/e;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/e;->a(Z)V

    .line 527
    :cond_79
    return-void
.end method

.method public h()Z
    .registers 2

    .prologue
    .line 531
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->Z:Z

    return v0
.end method

.method public i()Z
    .registers 2

    .prologue
    .line 536
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->u:Z

    return v0
.end method

.method public j()V
    .registers 3

    .prologue
    .line 875
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->a(ZZ)V

    .line 876
    return-void
.end method

.method public k()Z
    .registers 2

    .prologue
    .line 896
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->v:Z

    return v0
.end method

.method public l()V
    .registers 2

    .prologue
    .line 949
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->j()V

    .line 950
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->b(Z)V

    .line 951
    return-void
.end method

.method public m()Z
    .registers 2

    .prologue
    .line 955
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->A:Lcom/bytedance/sdk/openadsdk/core/widget/e;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->A:Lcom/bytedance/sdk/openadsdk/core/widget/e;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/e;->a()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method
