.class public Lcom/anythink/basead/ui/EndCardView;
.super Landroid/widget/RelativeLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/basead/ui/EndCardView$a;
    }
.end annotation


# instance fields
.field private a:Lcom/anythink/basead/ui/EndCardView$a;

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:Landroid/widget/ImageView;

.field private i:Lcom/anythink/basead/ui/component/RoundImageView;

.field private j:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;IILcom/anythink/core/common/d/h;ZLcom/anythink/basead/ui/EndCardView$a;)V
    .registers 14

    .line 41
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/anythink/basead/ui/EndCardView;->d:I

    .line 33
    const/4 v1, 0x1

    iput v1, p0, Lcom/anythink/basead/ui/EndCardView;->e:I

    .line 34
    const/4 v2, 0x2

    iput v2, p0, Lcom/anythink/basead/ui/EndCardView;->f:I

    .line 35
    const/4 v3, 0x3

    iput v3, p0, Lcom/anythink/basead/ui/EndCardView;->g:I

    .line 42
    iput-object p6, p0, Lcom/anythink/basead/ui/EndCardView;->a:Lcom/anythink/basead/ui/EndCardView$a;

    .line 44
    iput p2, p0, Lcom/anythink/basead/ui/EndCardView;->b:I

    .line 45
    iput p3, p0, Lcom/anythink/basead/ui/EndCardView;->c:I

    .line 47
    nop

    .line 1078
    new-instance p2, Lcom/anythink/basead/ui/component/RoundImageView;

    invoke-virtual {p0}, Lcom/anythink/basead/ui/EndCardView;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/anythink/basead/ui/component/RoundImageView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/anythink/basead/ui/EndCardView;->i:Lcom/anythink/basead/ui/component/RoundImageView;

    .line 1079
    sget-object p3, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p2, p3}, Lcom/anythink/basead/ui/component/RoundImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1081
    new-instance p2, Lcom/anythink/basead/ui/component/RoundImageView;

    invoke-virtual {p0}, Lcom/anythink/basead/ui/EndCardView;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/anythink/basead/ui/component/RoundImageView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/anythink/basead/ui/EndCardView;->h:Landroid/widget/ImageView;

    .line 1083
    new-instance p2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 p3, -0x1

    invoke-direct {p2, p3, p3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1086
    new-instance p6, Landroid/widget/RelativeLayout$LayoutParams;

    iget v3, p0, Lcom/anythink/basead/ui/EndCardView;->b:I

    iget v4, p0, Lcom/anythink/basead/ui/EndCardView;->c:I

    invoke-direct {p6, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1087
    const/16 v3, 0xd

    invoke-virtual {p6, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1089
    iget-object v3, p0, Lcom/anythink/basead/ui/EndCardView;->i:Lcom/anythink/basead/ui/component/RoundImageView;

    iget v4, p0, Lcom/anythink/basead/ui/EndCardView;->d:I

    invoke-virtual {p0, v3, v4, p2}, Lcom/anythink/basead/ui/EndCardView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1090
    iget-object p2, p0, Lcom/anythink/basead/ui/EndCardView;->h:Landroid/widget/ImageView;

    iget v3, p0, Lcom/anythink/basead/ui/EndCardView;->e:I

    invoke-virtual {p0, p2, v3, p6}, Lcom/anythink/basead/ui/EndCardView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1092
    nop

    .line 1140
    iget p2, p0, Lcom/anythink/basead/ui/EndCardView;->f:I

    invoke-virtual {p0, p2}, Lcom/anythink/basead/ui/EndCardView;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_65

    .line 1141
    iget p2, p0, Lcom/anythink/basead/ui/EndCardView;->f:I

    invoke-virtual {p0, p2}, Lcom/anythink/basead/ui/EndCardView;->removeViewAt(I)V

    .line 1144
    :cond_65
    new-instance p2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/anythink/basead/ui/EndCardView;->getContext()Landroid/content/Context;

    move-result-object p6

    invoke-direct {p2, p6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1145
    invoke-virtual {p0}, Lcom/anythink/basead/ui/EndCardView;->getContext()Landroid/content/Context;

    move-result-object p6

    const-string v3, "myoffer_video_close"

    const-string v4, "drawable"

    invoke-static {p6, v3, v4}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p6

    invoke-virtual {p2, p6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1147
    const/high16 p6, 0x41e80000    # 29.0f

    invoke-virtual {p0}, Lcom/anythink/basead/ui/EndCardView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v1, p6, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p6

    float-to-int p6, p6

    .line 1148
    const/high16 v3, 0x41f00000    # 30.0f

    invoke-virtual {p0}, Lcom/anythink/basead/ui/EndCardView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-static {v1, v3, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    .line 1149
    const/high16 v4, 0x41980000    # 19.0f

    invoke-virtual {p0}, Lcom/anythink/basead/ui/EndCardView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    invoke-static {v1, v4, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    float-to-int v4, v4

    .line 1150
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, p6, p6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1151
    const/16 v6, 0xb

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1152
    iput v4, v5, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 1153
    iput v3, v5, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 1154
    iget v3, p0, Lcom/anythink/basead/ui/EndCardView;->f:I

    invoke-virtual {p0, p2, v3, v5}, Lcom/anythink/basead/ui/EndCardView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1157
    div-int/2addr p6, v2

    invoke-static {p2, p6}, Lcom/anythink/basead/ui/a/a;->a(Landroid/view/View;I)V

    .line 1159
    new-instance p6, Lcom/anythink/basead/ui/EndCardView$4;

    invoke-direct {p6, p0}, Lcom/anythink/basead/ui/EndCardView$4;-><init>(Lcom/anythink/basead/ui/EndCardView;)V

    invoke-virtual {p2, p6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1094
    if-eqz p5, :cond_121

    .line 1095
    nop

    .line 2110
    new-instance p2, Lcom/anythink/basead/ui/component/RoundImageView;

    invoke-virtual {p0}, Lcom/anythink/basead/ui/EndCardView;->getContext()Landroid/content/Context;

    move-result-object p5

    invoke-direct {p2, p5}, Lcom/anythink/basead/ui/component/RoundImageView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/anythink/basead/ui/EndCardView;->j:Landroid/widget/ImageView;

    .line 2112
    new-instance p2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 p5, -0x2

    invoke-direct {p2, p5, p5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 2113
    invoke-virtual {p2, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 2114
    const/16 p5, 0xc

    invoke-virtual {p2, p5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 2115
    iget-object p5, p0, Lcom/anythink/basead/ui/EndCardView;->j:Landroid/widget/ImageView;

    iget p6, p0, Lcom/anythink/basead/ui/EndCardView;->g:I

    invoke-virtual {p0, p5, p6, p2}, Lcom/anythink/basead/ui/EndCardView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 2117
    invoke-virtual {p4}, Lcom/anythink/core/common/d/h;->k()Ljava/lang/String;

    move-result-object p2

    .line 2118
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p5

    if-nez p5, :cond_121

    .line 2119
    iget-object p5, p0, Lcom/anythink/basead/ui/EndCardView;->j:Landroid/widget/ImageView;

    invoke-virtual {p5}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p5

    .line 2120
    iget p6, p5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2121
    iget p5, p5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2122
    invoke-virtual {p0}, Lcom/anythink/basead/ui/EndCardView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/anythink/core/common/res/b;->a(Landroid/content/Context;)Lcom/anythink/core/common/res/b;

    move-result-object v3

    new-instance v4, Lcom/anythink/core/common/res/e;

    invoke-direct {v4, v1, p2}, Lcom/anythink/core/common/res/e;-><init>(ILjava/lang/String;)V

    new-instance v5, Lcom/anythink/basead/ui/EndCardView$3;

    invoke-direct {v5, p0, p2}, Lcom/anythink/basead/ui/EndCardView$3;-><init>(Lcom/anythink/basead/ui/EndCardView;Ljava/lang/String;)V

    invoke-virtual {v3, v4, p6, p5, v5}, Lcom/anythink/core/common/res/b;->a(Lcom/anythink/core/common/res/e;IILcom/anythink/core/common/res/b$a;)V

    .line 1098
    :cond_121
    new-instance p2, Lcom/anythink/basead/ui/EndCardView$2;

    invoke-direct {p2, p0}, Lcom/anythink/basead/ui/EndCardView$2;-><init>(Lcom/anythink/basead/ui/EndCardView;)V

    invoke-virtual {p0, p2}, Lcom/anythink/basead/ui/EndCardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    nop

    .line 2170
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    if-ne p2, v2, :cond_133

    .line 2171
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 2174
    :cond_133
    new-instance p2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p2, p3, p3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 2175
    invoke-virtual {p1, p0, v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 50
    nop

    .line 3055
    :try_start_13c
    invoke-virtual {p0}, Lcom/anythink/basead/ui/EndCardView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/anythink/core/common/res/b;->a(Landroid/content/Context;)Lcom/anythink/core/common/res/b;

    move-result-object p1

    new-instance p2, Lcom/anythink/core/common/res/e;

    invoke-virtual {p4}, Lcom/anythink/core/common/d/h;->j()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, v1, p3}, Lcom/anythink/core/common/res/e;-><init>(ILjava/lang/String;)V

    iget p3, p0, Lcom/anythink/basead/ui/EndCardView;->b:I

    iget p5, p0, Lcom/anythink/basead/ui/EndCardView;->c:I

    new-instance p6, Lcom/anythink/basead/ui/EndCardView$1;

    invoke-direct {p6, p0, p4}, Lcom/anythink/basead/ui/EndCardView$1;-><init>(Lcom/anythink/basead/ui/EndCardView;Lcom/anythink/core/common/d/h;)V

    invoke-virtual {p1, p2, p3, p5, p6}, Lcom/anythink/core/common/res/b;->a(Lcom/anythink/core/common/res/e;IILcom/anythink/core/common/res/b$a;)V
    :try_end_159
    .catch Ljava/lang/OutOfMemoryError; {:try_start_13c .. :try_end_159} :catch_15f
    .catch Ljava/lang/Exception; {:try_start_13c .. :try_end_159} :catch_15a

    .line 3074
    return-void

    .line 3073
    :catch_15a
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 51
    return-void

    .line 3071
    :catch_15f
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 3074
    return-void
.end method

.method static synthetic a(Lcom/anythink/basead/ui/EndCardView;)Landroid/widget/ImageView;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/anythink/basead/ui/EndCardView;->h:Landroid/widget/ImageView;

    return-object p0
.end method

.method private a()V
    .registers 7

    .line 140
    iget v0, p0, Lcom/anythink/basead/ui/EndCardView;->f:I

    invoke-virtual {p0, v0}, Lcom/anythink/basead/ui/EndCardView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 141
    iget v0, p0, Lcom/anythink/basead/ui/EndCardView;->f:I

    invoke-virtual {p0, v0}, Lcom/anythink/basead/ui/EndCardView;->removeViewAt(I)V

    .line 144
    :cond_d
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/anythink/basead/ui/EndCardView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 145
    invoke-virtual {p0}, Lcom/anythink/basead/ui/EndCardView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "myoffer_video_close"

    const-string v3, "drawable"

    invoke-static {v1, v2, v3}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 147
    const/high16 v1, 0x41e80000    # 29.0f

    invoke-virtual {p0}, Lcom/anythink/basead/ui/EndCardView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    .line 148
    const/high16 v2, 0x41f00000    # 30.0f

    invoke-virtual {p0}, Lcom/anythink/basead/ui/EndCardView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-static {v3, v2, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    .line 149
    const/high16 v4, 0x41980000    # 19.0f

    invoke-virtual {p0}, Lcom/anythink/basead/ui/EndCardView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    invoke-static {v3, v4, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    .line 150
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 151
    const/16 v5, 0xb

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 152
    iput v3, v4, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 153
    iput v2, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 154
    iget v2, p0, Lcom/anythink/basead/ui/EndCardView;->f:I

    invoke-virtual {p0, v0, v2, v4}, Lcom/anythink/basead/ui/EndCardView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 157
    div-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lcom/anythink/basead/ui/a/a;->a(Landroid/view/View;I)V

    .line 159
    new-instance v1, Lcom/anythink/basead/ui/EndCardView$4;

    invoke-direct {v1, p0}, Lcom/anythink/basead/ui/EndCardView$4;-><init>(Lcom/anythink/basead/ui/EndCardView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    return-void
.end method

.method private a(Landroid/view/ViewGroup;)V
    .registers 5

    .line 170
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_b

    .line 171
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 174
    :cond_b
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 175
    invoke-virtual {p1, p0, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 176
    return-void
.end method

.method private a(Lcom/anythink/core/common/d/h;)V
    .registers 7

    .line 55
    :try_start_0
    invoke-virtual {p0}, Lcom/anythink/basead/ui/EndCardView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/common/res/b;->a(Landroid/content/Context;)Lcom/anythink/core/common/res/b;

    move-result-object v0

    new-instance v1, Lcom/anythink/core/common/res/e;

    const/4 v2, 0x1

    invoke-virtual {p1}, Lcom/anythink/core/common/d/h;->j()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/anythink/core/common/res/e;-><init>(ILjava/lang/String;)V

    iget v2, p0, Lcom/anythink/basead/ui/EndCardView;->b:I

    iget v3, p0, Lcom/anythink/basead/ui/EndCardView;->c:I

    new-instance v4, Lcom/anythink/basead/ui/EndCardView$1;

    invoke-direct {v4, p0, p1}, Lcom/anythink/basead/ui/EndCardView$1;-><init>(Lcom/anythink/basead/ui/EndCardView;Lcom/anythink/core/common/d/h;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/anythink/core/common/res/b;->a(Lcom/anythink/core/common/res/e;IILcom/anythink/core/common/res/b$a;)V
    :try_end_1e
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_1e} :catch_24
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1e} :catch_1f

    .line 74
    return-void

    .line 73
    :catch_1f
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 75
    return-void

    .line 71
    :catch_24
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 74
    return-void
.end method

.method private a(Lcom/anythink/core/common/d/h;Z)V
    .registers 10

    .line 78
    new-instance v0, Lcom/anythink/basead/ui/component/RoundImageView;

    invoke-virtual {p0}, Lcom/anythink/basead/ui/EndCardView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/anythink/basead/ui/component/RoundImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/anythink/basead/ui/EndCardView;->i:Lcom/anythink/basead/ui/component/RoundImageView;

    .line 79
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/anythink/basead/ui/component/RoundImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 81
    new-instance v0, Lcom/anythink/basead/ui/component/RoundImageView;

    invoke-virtual {p0}, Lcom/anythink/basead/ui/EndCardView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/anythink/basead/ui/component/RoundImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/anythink/basead/ui/EndCardView;->h:Landroid/widget/ImageView;

    .line 83
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 86
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, p0, Lcom/anythink/basead/ui/EndCardView;->b:I

    iget v3, p0, Lcom/anythink/basead/ui/EndCardView;->c:I

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 87
    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 89
    iget-object v2, p0, Lcom/anythink/basead/ui/EndCardView;->i:Lcom/anythink/basead/ui/component/RoundImageView;

    iget v3, p0, Lcom/anythink/basead/ui/EndCardView;->d:I

    invoke-virtual {p0, v2, v3, v0}, Lcom/anythink/basead/ui/EndCardView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 90
    iget-object v0, p0, Lcom/anythink/basead/ui/EndCardView;->h:Landroid/widget/ImageView;

    iget v2, p0, Lcom/anythink/basead/ui/EndCardView;->e:I

    invoke-virtual {p0, v0, v2, v1}, Lcom/anythink/basead/ui/EndCardView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 92
    nop

    .line 3140
    iget v0, p0, Lcom/anythink/basead/ui/EndCardView;->f:I

    invoke-virtual {p0, v0}, Lcom/anythink/basead/ui/EndCardView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4b

    .line 3141
    iget v0, p0, Lcom/anythink/basead/ui/EndCardView;->f:I

    invoke-virtual {p0, v0}, Lcom/anythink/basead/ui/EndCardView;->removeViewAt(I)V

    .line 3144
    :cond_4b
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/anythink/basead/ui/EndCardView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 3145
    invoke-virtual {p0}, Lcom/anythink/basead/ui/EndCardView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "myoffer_video_close"

    const-string v3, "drawable"

    invoke-static {v1, v2, v3}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3147
    const/high16 v1, 0x41e80000    # 29.0f

    invoke-virtual {p0}, Lcom/anythink/basead/ui/EndCardView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    .line 3148
    const/high16 v2, 0x41f00000    # 30.0f

    invoke-virtual {p0}, Lcom/anythink/basead/ui/EndCardView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-static {v3, v2, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    .line 3149
    const/high16 v4, 0x41980000    # 19.0f

    invoke-virtual {p0}, Lcom/anythink/basead/ui/EndCardView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    invoke-static {v3, v4, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    float-to-int v4, v4

    .line 3150
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 3151
    const/16 v6, 0xb

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 3152
    iput v4, v5, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 3153
    iput v2, v5, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 3154
    iget v2, p0, Lcom/anythink/basead/ui/EndCardView;->f:I

    invoke-virtual {p0, v0, v2, v5}, Lcom/anythink/basead/ui/EndCardView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 3157
    div-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lcom/anythink/basead/ui/a/a;->a(Landroid/view/View;I)V

    .line 3159
    new-instance v1, Lcom/anythink/basead/ui/EndCardView$4;

    invoke-direct {v1, p0}, Lcom/anythink/basead/ui/EndCardView$4;-><init>(Lcom/anythink/basead/ui/EndCardView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    if-eqz p2, :cond_109

    .line 95
    nop

    .line 4110
    new-instance p2, Lcom/anythink/basead/ui/component/RoundImageView;

    invoke-virtual {p0}, Lcom/anythink/basead/ui/EndCardView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/anythink/basead/ui/component/RoundImageView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/anythink/basead/ui/EndCardView;->j:Landroid/widget/ImageView;

    .line 4112
    new-instance p2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p2, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 4113
    invoke-virtual {p2, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 4114
    const/16 v0, 0xc

    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 4115
    iget-object v0, p0, Lcom/anythink/basead/ui/EndCardView;->j:Landroid/widget/ImageView;

    iget v1, p0, Lcom/anythink/basead/ui/EndCardView;->g:I

    invoke-virtual {p0, v0, v1, p2}, Lcom/anythink/basead/ui/EndCardView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 4117
    invoke-virtual {p1}, Lcom/anythink/core/common/d/h;->k()Ljava/lang/String;

    move-result-object p1

    .line 4118
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_109

    .line 4119
    iget-object p2, p0, Lcom/anythink/basead/ui/EndCardView;->j:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    .line 4120
    iget v0, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 4121
    iget p2, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 4122
    invoke-virtual {p0}, Lcom/anythink/basead/ui/EndCardView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/anythink/core/common/res/b;->a(Landroid/content/Context;)Lcom/anythink/core/common/res/b;

    move-result-object v1

    new-instance v2, Lcom/anythink/core/common/res/e;

    invoke-direct {v2, v3, p1}, Lcom/anythink/core/common/res/e;-><init>(ILjava/lang/String;)V

    new-instance v3, Lcom/anythink/basead/ui/EndCardView$3;

    invoke-direct {v3, p0, p1}, Lcom/anythink/basead/ui/EndCardView$3;-><init>(Lcom/anythink/basead/ui/EndCardView;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v0, p2, v3}, Lcom/anythink/core/common/res/b;->a(Lcom/anythink/core/common/res/e;IILcom/anythink/core/common/res/b$a;)V

    .line 98
    :cond_109
    new-instance p1, Lcom/anythink/basead/ui/EndCardView$2;

    invoke-direct {p1, p0}, Lcom/anythink/basead/ui/EndCardView$2;-><init>(Lcom/anythink/basead/ui/EndCardView;)V

    invoke-virtual {p0, p1}, Lcom/anythink/basead/ui/EndCardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    return-void
.end method

.method static synthetic b(Lcom/anythink/basead/ui/EndCardView;)Lcom/anythink/basead/ui/component/RoundImageView;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/anythink/basead/ui/EndCardView;->i:Lcom/anythink/basead/ui/component/RoundImageView;

    return-object p0
.end method

.method private b(Lcom/anythink/core/common/d/h;)V
    .registers 7

    .line 110
    new-instance v0, Lcom/anythink/basead/ui/component/RoundImageView;

    invoke-virtual {p0}, Lcom/anythink/basead/ui/EndCardView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/anythink/basead/ui/component/RoundImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/anythink/basead/ui/EndCardView;->j:Landroid/widget/ImageView;

    .line 112
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 113
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 114
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 115
    iget-object v1, p0, Lcom/anythink/basead/ui/EndCardView;->j:Landroid/widget/ImageView;

    iget v2, p0, Lcom/anythink/basead/ui/EndCardView;->g:I

    invoke-virtual {p0, v1, v2, v0}, Lcom/anythink/basead/ui/EndCardView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 117
    invoke-virtual {p1}, Lcom/anythink/core/common/d/h;->k()Ljava/lang/String;

    move-result-object p1

    .line 118
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4c

    .line 119
    iget-object v0, p0, Lcom/anythink/basead/ui/EndCardView;->j:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 120
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 121
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 122
    invoke-virtual {p0}, Lcom/anythink/basead/ui/EndCardView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/anythink/core/common/res/b;->a(Landroid/content/Context;)Lcom/anythink/core/common/res/b;

    move-result-object v2

    new-instance v3, Lcom/anythink/core/common/res/e;

    const/4 v4, 0x1

    invoke-direct {v3, v4, p1}, Lcom/anythink/core/common/res/e;-><init>(ILjava/lang/String;)V

    new-instance v4, Lcom/anythink/basead/ui/EndCardView$3;

    invoke-direct {v4, p0, p1}, Lcom/anythink/basead/ui/EndCardView$3;-><init>(Lcom/anythink/basead/ui/EndCardView;Ljava/lang/String;)V

    invoke-virtual {v2, v3, v1, v0, v4}, Lcom/anythink/core/common/res/b;->a(Lcom/anythink/core/common/res/e;IILcom/anythink/core/common/res/b$a;)V

    .line 136
    :cond_4c
    return-void
.end method

.method static synthetic c(Lcom/anythink/basead/ui/EndCardView;)Lcom/anythink/basead/ui/EndCardView$a;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/anythink/basead/ui/EndCardView;->a:Lcom/anythink/basead/ui/EndCardView$a;

    return-object p0
.end method

.method static synthetic d(Lcom/anythink/basead/ui/EndCardView;)Landroid/widget/ImageView;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/anythink/basead/ui/EndCardView;->j:Landroid/widget/ImageView;

    return-object p0
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .registers 1

    .line 180
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 181
    return-void
.end method
