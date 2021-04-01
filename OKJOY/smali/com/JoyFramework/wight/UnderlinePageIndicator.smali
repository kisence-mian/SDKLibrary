.class public Lcom/JoyFramework/wight/UnderlinePageIndicator;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/JoyFramework/wight/UnderlinePageIndicator$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:Landroid/widget/LinearLayout;

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;

.field private h:Lcom/JoyFramework/wight/UnderlinePageIndicator$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/JoyFramework/wight/UnderlinePageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/JoyFramework/wight/UnderlinePageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 9

    .prologue
    const/4 v4, -0x1

    .line 60
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    const-string v0, "#2CAEFE"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/JoyFramework/wight/UnderlinePageIndicator;->a:I

    .line 41
    iget v0, p0, Lcom/JoyFramework/wight/UnderlinePageIndicator;->a:I

    ushr-int/lit8 v0, v0, 0x19

    shl-int/lit8 v0, v0, 0x18

    iget v1, p0, Lcom/JoyFramework/wight/UnderlinePageIndicator;->a:I

    const-string v2, "#000000"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    iput v0, p0, Lcom/JoyFramework/wight/UnderlinePageIndicator;->b:I

    .line 43
    const/16 v0, 0x10

    iput v0, p0, Lcom/JoyFramework/wight/UnderlinePageIndicator;->c:I

    .line 44
    const-string v0, "#2CAEFE"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/JoyFramework/wight/UnderlinePageIndicator;->d:I

    .line 61
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/JoyFramework/wight/UnderlinePageIndicator;->setOrientation(I)V

    .line 63
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/JoyFramework/wight/UnderlinePageIndicator;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/JoyFramework/wight/UnderlinePageIndicator;->e:Landroid/widget/LinearLayout;

    .line 64
    iget-object v0, p0, Lcom/JoyFramework/wight/UnderlinePageIndicator;->e:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 65
    iget-object v0, p0, Lcom/JoyFramework/wight/UnderlinePageIndicator;->e:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v4, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 66
    iget-object v0, p0, Lcom/JoyFramework/wight/UnderlinePageIndicator;->e:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/JoyFramework/wight/UnderlinePageIndicator;->addView(Landroid/view/View;)V

    .line 68
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Lcom/JoyFramework/wight/UnderlinePageIndicator;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/JoyFramework/wight/UnderlinePageIndicator;->f:Landroid/view/View;

    .line 69
    iget-object v0, p0, Lcom/JoyFramework/wight/UnderlinePageIndicator;->f:Landroid/view/View;

    iget v1, p0, Lcom/JoyFramework/wight/UnderlinePageIndicator;->d:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 70
    iget-object v0, p0, Lcom/JoyFramework/wight/UnderlinePageIndicator;->f:Landroid/view/View;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v2, 0x12c

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {p1, v3}, Lcom/JoyFramework/d/ar;->a(Landroid/content/Context;F)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 71
    iget-object v0, p0, Lcom/JoyFramework/wight/UnderlinePageIndicator;->f:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/JoyFramework/wight/UnderlinePageIndicator;->addView(Landroid/view/View;)V

    .line 73
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Lcom/JoyFramework/wight/UnderlinePageIndicator;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/JoyFramework/wight/UnderlinePageIndicator;->g:Landroid/view/View;

    .line 74
    iget-object v0, p0, Lcom/JoyFramework/wight/UnderlinePageIndicator;->g:Landroid/view/View;

    iget v1, p0, Lcom/JoyFramework/wight/UnderlinePageIndicator;->d:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 75
    iget-object v0, p0, Lcom/JoyFramework/wight/UnderlinePageIndicator;->g:Landroid/view/View;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, 0x2

    invoke-direct {v1, v4, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 76
    iget-object v0, p0, Lcom/JoyFramework/wight/UnderlinePageIndicator;->g:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/JoyFramework/wight/UnderlinePageIndicator;->addView(Landroid/view/View;)V

    .line 77
    return-void
.end method

.method static synthetic a(Lcom/JoyFramework/wight/UnderlinePageIndicator;)Lcom/JoyFramework/wight/UnderlinePageIndicator$a;
    .registers 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/JoyFramework/wight/UnderlinePageIndicator;->h:Lcom/JoyFramework/wight/UnderlinePageIndicator$a;

    return-object v0
.end method

.method private a()V
    .registers 4

    .prologue
    .line 89
    iget-object v0, p0, Lcom/JoyFramework/wight/UnderlinePageIndicator;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 90
    iget-object v1, p0, Lcom/JoyFramework/wight/UnderlinePageIndicator;->f:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 91
    if-gtz v0, :cond_17

    .line 92
    const/4 v0, 0x0

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 96
    :goto_11
    iget-object v0, p0, Lcom/JoyFramework/wight/UnderlinePageIndicator;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 98
    return-void

    .line 94
    :cond_17
    invoke-virtual {p0}, Lcom/JoyFramework/wight/UnderlinePageIndicator;->getWidth()I

    move-result v2

    div-int v0, v2, v0

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_11
.end method

.method static synthetic b(Lcom/JoyFramework/wight/UnderlinePageIndicator;)V
    .registers 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/JoyFramework/wight/UnderlinePageIndicator;->a()V

    return-void
.end method


# virtual methods
.method public a(IZ)V
    .registers 8

    .prologue
    const/4 v2, 0x0

    .line 150
    iget-object v0, p0, Lcom/JoyFramework/wight/UnderlinePageIndicator;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    .line 151
    if-ltz p1, :cond_b

    if-lt p1, v3, :cond_c

    .line 171
    :cond_b
    :goto_b
    return-void

    :cond_c
    move v1, v2

    .line 155
    :goto_d
    if-ge v1, v3, :cond_2e

    .line 156
    iget-object v0, p0, Lcom/JoyFramework/wight/UnderlinePageIndicator;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 157
    iget v4, p0, Lcom/JoyFramework/wight/UnderlinePageIndicator;->c:I

    int-to-float v4, v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 158
    if-ne v1, p1, :cond_28

    .line 159
    iget v4, p0, Lcom/JoyFramework/wight/UnderlinePageIndicator;->a:I

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 155
    :goto_24
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_d

    .line 161
    :cond_28
    iget v4, p0, Lcom/JoyFramework/wight/UnderlinePageIndicator;->b:I

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_24

    .line 165
    :cond_2e
    iget-object v0, p0, Lcom/JoyFramework/wight/UnderlinePageIndicator;->f:Landroid/view/View;

    const-string v1, "x"

    const/4 v3, 0x1

    new-array v3, v3, [F

    iget-object v4, p0, Lcom/JoyFramework/wight/UnderlinePageIndicator;->f:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    mul-int/2addr v4, p1

    int-to-float v4, v4

    aput v4, v3, v2

    invoke-static {v0, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 166
    if-eqz p2, :cond_4f

    .line 167
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_b

    .line 169
    :cond_4f
    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_b
.end method

.method protected onSizeChanged(IIII)V
    .registers 5

    .prologue
    .line 81
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    .line 82
    invoke-direct {p0}, Lcom/JoyFramework/wight/UnderlinePageIndicator;->a()V

    .line 83
    return-void
.end method

.method public setOnTabsItemClickListener(Lcom/JoyFramework/wight/UnderlinePageIndicator$a;)V
    .registers 2

    .prologue
    .line 179
    iput-object p1, p0, Lcom/JoyFramework/wight/UnderlinePageIndicator;->h:Lcom/JoyFramework/wight/UnderlinePageIndicator$a;

    .line 180
    return-void
.end method

.method public setTabs(Ljava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/16 v7, 0x1e

    const/4 v2, 0x0

    .line 106
    iget-object v0, p0, Lcom/JoyFramework/wight/UnderlinePageIndicator;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 107
    if-eqz p1, :cond_64

    move v1, v2

    .line 108
    :goto_b
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_59

    .line 109
    new-instance v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/JoyFramework/wight/UnderlinePageIndicator;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 110
    const/4 v0, 0x2

    const/high16 v4, 0x41c00000    # 24.0f

    invoke-virtual {v3, v0, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 112
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setClickable(Z)V

    .line 114
    invoke-virtual {v3, v2, v7, v2, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 115
    const/16 v0, 0x11

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 116
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v0, v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 117
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 118
    new-instance v0, Lcom/JoyFramework/wight/x;

    invoke-direct {v0, p0}, Lcom/JoyFramework/wight/x;-><init>(Lcom/JoyFramework/wight/UnderlinePageIndicator;)V

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    iget-object v0, p0, Lcom/JoyFramework/wight/UnderlinePageIndicator;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 108
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_b

    .line 132
    :cond_59
    invoke-virtual {p0, v2, v2}, Lcom/JoyFramework/wight/UnderlinePageIndicator;->a(IZ)V

    .line 134
    new-instance v0, Lcom/JoyFramework/wight/y;

    invoke-direct {v0, p0}, Lcom/JoyFramework/wight/y;-><init>(Lcom/JoyFramework/wight/UnderlinePageIndicator;)V

    invoke-virtual {p0, v0}, Lcom/JoyFramework/wight/UnderlinePageIndicator;->post(Ljava/lang/Runnable;)Z

    .line 142
    :cond_64
    return-void
.end method
