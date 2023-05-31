.class Lcom/tds/achievement/ui/PopView;
.super Landroid/widget/FrameLayout;
.source "PopView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tds/achievement/ui/PopView$PopViewAnimCallback;
    }
.end annotation


# static fields
.field private static final DURATION_CIRCLE_IN:I = 0xc8

.field private static final DURATION_CIRCLE_OUT:I = 0x12c

.field private static final DURATION_DISMISS:I = 0x12c

.field private static final DURATION_INTERVAL_IN_QUEUE:I = 0x3e8

.field private static final DURATION_START_CIRCLE_UP:I = 0xc8

.field private static final DURATION_START_WIDTH_UP:I = 0xc8

.field private static final DURATION_START_WIDTH_UP_DELAY:I = 0x12c


# instance fields
.field private bgView:Landroid/view/View;

.field private callback:Lcom/tds/achievement/ui/PopView$PopViewAnimCallback;

.field dp180:I

.field dp40:I

.field private iconImage:Lcom/tds/common/widgets/image/RoundNetImageView;

.field private root:Landroid/widget/LinearLayout;

.field private titleText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 44
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 40
    sget v0, Lcom/tds/achievement/ui/UIManager;->SCALE:F

    const/high16 v1, 0x42200000    # 40.0f

    invoke-static {v0, v1}, Lcom/tds/common/utils/UIUtils;->dp2pxWithScale(FF)I

    move-result v0

    iput v0, p0, Lcom/tds/achievement/ui/PopView;->dp40:I

    .line 41
    sget v0, Lcom/tds/achievement/ui/UIManager;->SCALE:F

    const/high16 v1, 0x43340000    # 180.0f

    invoke-static {v0, v1}, Lcom/tds/common/utils/UIUtils;->dp2pxWithScale(FF)I

    move-result v0

    iput v0, p0, Lcom/tds/achievement/ui/PopView;->dp180:I

    .line 45
    invoke-direct {p0}, Lcom/tds/achievement/ui/PopView;->initLayout()V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "width"    # I

    .line 49
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 40
    sget v0, Lcom/tds/achievement/ui/UIManager;->SCALE:F

    const/high16 v1, 0x42200000    # 40.0f

    invoke-static {v0, v1}, Lcom/tds/common/utils/UIUtils;->dp2pxWithScale(FF)I

    move-result v0

    iput v0, p0, Lcom/tds/achievement/ui/PopView;->dp40:I

    .line 41
    sget v0, Lcom/tds/achievement/ui/UIManager;->SCALE:F

    const/high16 v1, 0x43340000    # 180.0f

    invoke-static {v0, v1}, Lcom/tds/common/utils/UIUtils;->dp2pxWithScale(FF)I

    move-result v0

    iput v0, p0, Lcom/tds/achievement/ui/PopView;->dp180:I

    .line 50
    iput p2, p0, Lcom/tds/achievement/ui/PopView;->dp180:I

    .line 51
    invoke-direct {p0}, Lcom/tds/achievement/ui/PopView;->initLayout()V

    .line 52
    return-void
.end method

.method static synthetic access$000(Lcom/tds/achievement/ui/PopView;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lcom/tds/achievement/ui/PopView;

    .line 24
    iget-object v0, p0, Lcom/tds/achievement/ui/PopView;->bgView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/tds/achievement/ui/PopView;)Landroid/widget/LinearLayout;
    .registers 2
    .param p0, "x0"    # Lcom/tds/achievement/ui/PopView;

    .line 24
    iget-object v0, p0, Lcom/tds/achievement/ui/PopView;->root:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$200(Lcom/tds/achievement/ui/PopView;)V
    .registers 1
    .param p0, "x0"    # Lcom/tds/achievement/ui/PopView;

    .line 24
    invoke-direct {p0}, Lcom/tds/achievement/ui/PopView;->timer()V

    return-void
.end method

.method static synthetic access$300(Lcom/tds/achievement/ui/PopView;)Lcom/tds/common/widgets/image/RoundNetImageView;
    .registers 2
    .param p0, "x0"    # Lcom/tds/achievement/ui/PopView;

    .line 24
    iget-object v0, p0, Lcom/tds/achievement/ui/PopView;->iconImage:Lcom/tds/common/widgets/image/RoundNetImageView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/tds/achievement/ui/PopView;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lcom/tds/achievement/ui/PopView;

    .line 24
    iget-object v0, p0, Lcom/tds/achievement/ui/PopView;->titleText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/tds/achievement/ui/PopView;Lcom/tds/achievement/TapAchievementBean;)V
    .registers 2
    .param p0, "x0"    # Lcom/tds/achievement/ui/PopView;
    .param p1, "x1"    # Lcom/tds/achievement/TapAchievementBean;

    .line 24
    invoke-direct {p0, p1}, Lcom/tds/achievement/ui/PopView;->itemAnimUp(Lcom/tds/achievement/TapAchievementBean;)V

    return-void
.end method

.method static synthetic access$600(Lcom/tds/achievement/ui/PopView;)Lcom/tds/achievement/ui/PopView$PopViewAnimCallback;
    .registers 2
    .param p0, "x0"    # Lcom/tds/achievement/ui/PopView;

    .line 24
    iget-object v0, p0, Lcom/tds/achievement/ui/PopView;->callback:Lcom/tds/achievement/ui/PopView$PopViewAnimCallback;

    return-object v0
.end method

.method private initLayout()V
    .registers 10

    .line 64
    invoke-virtual {p0}, Lcom/tds/achievement/ui/PopView;->removeAllViews()V

    .line 65
    invoke-virtual {p0}, Lcom/tds/achievement/ui/PopView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 66
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, p0, Lcom/tds/achievement/ui/PopView;->dp180:I

    iget v3, p0, Lcom/tds/achievement/ui/PopView;->dp40:I

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1}, Lcom/tds/achievement/ui/PopView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 68
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/tds/achievement/ui/PopView;->bgView:Landroid/view/View;

    .line 70
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 71
    .local v1, "bg":Landroid/graphics/drawable/GradientDrawable;
    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 72
    iget v2, p0, Lcom/tds/achievement/ui/PopView;->dp40:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 73
    iget-object v2, p0, Lcom/tds/achievement/ui/PopView;->bgView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 75
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/tds/achievement/ui/PopView;->root:Landroid/widget/LinearLayout;

    .line 76
    sget v2, Lcom/tds/achievement/ui/UIManager;->SCALE:F

    const/high16 v3, 0x40e00000    # 7.0f

    invoke-static {v2, v3}, Lcom/tds/common/utils/UIUtils;->dp2pxWithScale(FF)I

    move-result v2

    .line 77
    .local v2, "dp7":I
    iget-object v3, p0, Lcom/tds/achievement/ui/PopView;->root:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4, v2, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 78
    iget-object v3, p0, Lcom/tds/achievement/ui/PopView;->root:Landroid/widget/LinearLayout;

    const/16 v5, 0x10

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 80
    sget v3, Lcom/tds/achievement/ui/UIManager;->SCALE:F

    const/high16 v5, 0x41d00000    # 26.0f

    invoke-static {v3, v5}, Lcom/tds/common/utils/UIUtils;->dp2pxWithScale(FF)I

    move-result v3

    .line 81
    .local v3, "dp26":I
    new-instance v5, Lcom/tds/common/widgets/image/RoundNetImageView;

    invoke-direct {v5, v0, v3}, Lcom/tds/common/widgets/image/RoundNetImageView;-><init>(Landroid/content/Context;I)V

    iput-object v5, p0, Lcom/tds/achievement/ui/PopView;->iconImage:Lcom/tds/common/widgets/image/RoundNetImageView;

    .line 82
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v6, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6}, Lcom/tds/common/widgets/image/RoundNetImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 83
    iget-object v5, p0, Lcom/tds/achievement/ui/PopView;->root:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/tds/achievement/ui/PopView;->iconImage:Lcom/tds/common/widgets/image/RoundNetImageView;

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 85
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/tds/achievement/ui/PopView;->titleText:Landroid/widget/TextView;

    .line 86
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v7, -0x1

    const/4 v8, -0x2

    invoke-direct {v6, v7, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 88
    iget-object v5, p0, Lcom/tds/achievement/ui/PopView;->titleText:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 89
    iget-object v5, p0, Lcom/tds/achievement/ui/PopView;->titleText:Landroid/widget/TextView;

    const/high16 v6, 0x41400000    # 12.0f

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 90
    iget-object v5, p0, Lcom/tds/achievement/ui/PopView;->titleText:Landroid/widget/TextView;

    sget v6, Lcom/tds/achievement/ui/UIManager;->SCALE:F

    const/high16 v7, 0x40800000    # 4.0f

    invoke-static {v6, v7}, Lcom/tds/common/utils/UIUtils;->dp2pxWithScale(FF)I

    move-result v6

    invoke-virtual {v5, v6, v4, v4, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 91
    iget-object v4, p0, Lcom/tds/achievement/ui/PopView;->titleText:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->setSingleLine()V

    .line 92
    iget-object v4, p0, Lcom/tds/achievement/ui/PopView;->titleText:Landroid/widget/TextView;

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 93
    iget-object v4, p0, Lcom/tds/achievement/ui/PopView;->titleText:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setAlpha(F)V

    .line 94
    iget-object v4, p0, Lcom/tds/achievement/ui/PopView;->root:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/tds/achievement/ui/PopView;->titleText:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 95
    invoke-direct {p0}, Lcom/tds/achievement/ui/PopView;->resetLayoutToDefault()V

    .line 96
    iget-object v4, p0, Lcom/tds/achievement/ui/PopView;->bgView:Landroid/view/View;

    invoke-virtual {p0, v4}, Lcom/tds/achievement/ui/PopView;->addView(Landroid/view/View;)V

    .line 97
    iget-object v4, p0, Lcom/tds/achievement/ui/PopView;->root:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v4}, Lcom/tds/achievement/ui/PopView;->addView(Landroid/view/View;)V

    .line 98
    return-void
.end method

.method private itemAnimUp(Lcom/tds/achievement/TapAchievementBean;)V
    .registers 5
    .param p1, "achievement"    # Lcom/tds/achievement/TapAchievementBean;

    .line 217
    iget-object v0, p0, Lcom/tds/achievement/ui/PopView;->iconImage:Lcom/tds/common/widgets/image/RoundNetImageView;

    invoke-virtual {p1}, Lcom/tds/achievement/TapAchievementBean;->getAchieveIcon()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tds/common/widgets/image/RoundNetImageView;->setImageUrl(Ljava/lang/String;)V

    .line 218
    iget-object v0, p0, Lcom/tds/achievement/ui/PopView;->titleText:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/tds/achievement/TapAchievementBean;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 220
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_36

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 221
    .local v0, "valueAnim":Landroid/animation/ValueAnimator;
    new-instance v1, Lcom/tds/achievement/ui/PopView$6;

    invoke-direct {v1, p0}, Lcom/tds/achievement/ui/PopView$6;-><init>(Lcom/tds/achievement/ui/PopView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 230
    new-instance v1, Lcom/tds/achievement/ui/PopView$7;

    invoke-direct {v1, p0}, Lcom/tds/achievement/ui/PopView$7;-><init>(Lcom/tds/achievement/ui/PopView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 251
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 252
    return-void

    :array_36
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private resetLayoutToDefault()V
    .registers 6

    .line 101
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lcom/tds/achievement/ui/PopView;->dp40:I

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 102
    .local v0, "bgLP":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 103
    iget-object v1, p0, Lcom/tds/achievement/ui/PopView;->bgView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 104
    iget-object v1, p0, Lcom/tds/achievement/ui/PopView;->root:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 106
    iget-object v1, p0, Lcom/tds/achievement/ui/PopView;->bgView:Landroid/view/View;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleX(F)V

    .line 107
    iget-object v1, p0, Lcom/tds/achievement/ui/PopView;->bgView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleY(F)V

    .line 108
    iget-object v1, p0, Lcom/tds/achievement/ui/PopView;->iconImage:Lcom/tds/common/widgets/image/RoundNetImageView;

    invoke-virtual {p0}, Lcom/tds/achievement/ui/PopView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "ic_achievement_pop_logo"

    invoke-static {v3, v4}, Lcom/tds/common/utils/UIUtils;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/tds/common/widgets/image/RoundNetImageView;->setDefaultImageResId(I)V

    .line 109
    iget-object v1, p0, Lcom/tds/achievement/ui/PopView;->iconImage:Lcom/tds/common/widgets/image/RoundNetImageView;

    const-string v3, ""

    invoke-virtual {v1, v3}, Lcom/tds/common/widgets/image/RoundNetImageView;->setImageUrl(Ljava/lang/String;)V

    .line 110
    iget-object v1, p0, Lcom/tds/achievement/ui/PopView;->iconImage:Lcom/tds/common/widgets/image/RoundNetImageView;

    invoke-virtual {v1, v2}, Lcom/tds/common/widgets/image/RoundNetImageView;->setScaleX(F)V

    .line 111
    iget-object v1, p0, Lcom/tds/achievement/ui/PopView;->iconImage:Lcom/tds/common/widgets/image/RoundNetImageView;

    invoke-virtual {v1, v2}, Lcom/tds/common/widgets/image/RoundNetImageView;->setScaleY(F)V

    .line 112
    iget-object v1, p0, Lcom/tds/achievement/ui/PopView;->titleText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/tds/achievement/ui/PopView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "tds_achievement_string_pop_title"

    invoke-static {v2, v3}, Lcom/tds/common/utils/UIUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    iget-object v1, p0, Lcom/tds/achievement/ui/PopView;->titleText:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 114
    return-void
.end method

.method private timer()V
    .registers 8

    .line 297
    new-instance v6, Lcom/tds/achievement/ui/PopView$10;

    const-wide/16 v2, 0x3e8

    const-wide/16 v4, 0x3e8

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/tds/achievement/ui/PopView$10;-><init>(Lcom/tds/achievement/ui/PopView;JJ)V

    .line 311
    .local v0, "timer":Landroid/os/CountDownTimer;
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 312
    return-void
.end method


# virtual methods
.method public dismiss()V
    .registers 4

    .line 255
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_24

    .line 256
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 257
    .local v0, "valueAnim":Landroid/animation/ValueAnimator;
    new-instance v1, Lcom/tds/achievement/ui/PopView$8;

    invoke-direct {v1, p0}, Lcom/tds/achievement/ui/PopView$8;-><init>(Lcom/tds/achievement/ui/PopView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 270
    new-instance v1, Lcom/tds/achievement/ui/PopView$9;

    invoke-direct {v1, p0}, Lcom/tds/achievement/ui/PopView$9;-><init>(Lcom/tds/achievement/ui/PopView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 293
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 294
    return-void

    :array_24
    .array-data 4
        0x64
        0x0
    .end array-data
.end method

.method public getSize()I
    .registers 2

    .line 60
    iget v0, p0, Lcom/tds/achievement/ui/PopView;->dp180:I

    return v0
.end method

.method public resetWidth(I)V
    .registers 2
    .param p1, "width"    # I

    .line 55
    iput p1, p0, Lcom/tds/achievement/ui/PopView;->dp180:I

    .line 56
    invoke-direct {p0}, Lcom/tds/achievement/ui/PopView;->initLayout()V

    .line 57
    return-void
.end method

.method public setCallback(Lcom/tds/achievement/ui/PopView$PopViewAnimCallback;)V
    .registers 2
    .param p1, "callback"    # Lcom/tds/achievement/ui/PopView$PopViewAnimCallback;

    .line 117
    iput-object p1, p0, Lcom/tds/achievement/ui/PopView;->callback:Lcom/tds/achievement/ui/PopView$PopViewAnimCallback;

    .line 118
    return-void
.end method

.method public showNext(Lcom/tds/achievement/TapAchievementBean;)V
    .registers 5
    .param p1, "achievement"    # Lcom/tds/achievement/TapAchievementBean;

    .line 181
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_24

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 182
    .local v0, "valueAnim":Landroid/animation/ValueAnimator;
    new-instance v1, Lcom/tds/achievement/ui/PopView$4;

    invoke-direct {v1, p0}, Lcom/tds/achievement/ui/PopView$4;-><init>(Lcom/tds/achievement/ui/PopView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 192
    new-instance v1, Lcom/tds/achievement/ui/PopView$5;

    invoke-direct {v1, p0, p1}, Lcom/tds/achievement/ui/PopView$5;-><init>(Lcom/tds/achievement/ui/PopView;Lcom/tds/achievement/TapAchievementBean;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 213
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 214
    return-void

    :array_24
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public start()V
    .registers 9

    .line 121
    invoke-direct {p0}, Lcom/tds/achievement/ui/PopView;->resetLayoutToDefault()V

    .line 122
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 124
    .local v0, "animatorSet":Landroid/animation/AnimatorSet;
    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_6a

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 125
    const-wide/16 v3, 0xc8

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 126
    .local v2, "scaleAnim":Landroid/animation/ValueAnimator;
    new-instance v5, Lcom/tds/achievement/ui/PopView$1;

    invoke-direct {v5, p0}, Lcom/tds/achievement/ui/PopView$1;-><init>(Lcom/tds/achievement/ui/PopView;)V

    invoke-virtual {v2, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 137
    iget-object v5, p0, Lcom/tds/achievement/ui/PopView;->titleText:Landroid/widget/TextView;

    new-array v6, v1, [F

    fill-array-data v6, :array_72

    .line 138
    const-string v7, "alpha"

    invoke-static {v5, v7, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 139
    invoke-virtual {v5, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 140
    .local v5, "titleAlphaAnim":Landroid/animation/ObjectAnimator;
    new-array v1, v1, [I

    iget v6, p0, Lcom/tds/achievement/ui/PopView;->dp40:I

    const/4 v7, 0x0

    aput v6, v1, v7

    iget v6, p0, Lcom/tds/achievement/ui/PopView;->dp180:I

    const/4 v7, 0x1

    aput v6, v1, v7

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 141
    invoke-virtual {v1, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 142
    .local v1, "widthChangeAnimator":Landroid/animation/ValueAnimator;
    const-wide/16 v3, 0x12c

    invoke-virtual {v1, v3, v4}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 143
    new-instance v3, Lcom/tds/achievement/ui/PopView$2;

    invoke-direct {v3, p0}, Lcom/tds/achievement/ui/PopView$2;-><init>(Lcom/tds/achievement/ui/PopView;)V

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 153
    invoke-virtual {v0, v5}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 155
    new-instance v3, Lcom/tds/achievement/ui/PopView$3;

    invoke-direct {v3, p0}, Lcom/tds/achievement/ui/PopView$3;-><init>(Lcom/tds/achievement/ui/PopView;)V

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 177
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 178
    return-void

    nop

    :array_6a
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_72
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
