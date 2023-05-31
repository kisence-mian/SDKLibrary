.class public Lcom/JoyFramework/wight/h;
.super Landroid/widget/TextView;
.source "SourceFile"


# static fields
.field public static final a:I = 0x1

.field public static final b:I = 0x2

.field public static final c:I = 0x3

.field public static final d:I = 0x4

.field public static final e:I = 0x5

.field private static final f:I = 0x5

.field private static final g:I = 0x5

.field private static final h:I = 0x8

.field private static final i:I = 0x2

.field private static final j:I

.field private static final k:I = -0x1

.field private static l:Landroid/view/animation/Animation;

.field private static m:Landroid/view/animation/Animation;


# instance fields
.field private n:Landroid/content/Context;

.field private o:Landroid/view/View;

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:Z

.field private u:Landroid/graphics/drawable/ShapeDrawable;

.field private v:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 37
    const-string v0, "#CCFF0000"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/JoyFramework/wight/h;->j:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 58
    const/4 v0, 0x0

    check-cast v0, Landroid/util/AttributeSet;

    const v1, 0x1010084

    invoke-direct {p0, p1, v0, v1}, Lcom/JoyFramework/wight/h;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .prologue
    .line 62
    const v0, 0x1010084

    invoke-direct {p0, p1, p2, v0}, Lcom/JoyFramework/wight/h;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 10

    .prologue
    .line 92
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/JoyFramework/wight/h;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/view/View;I)V

    .line 93
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/view/View;I)V
    .registers 6

    .prologue
    .line 96
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 97
    invoke-direct {p0, p1, p4, p5}, Lcom/JoyFramework/wight/h;->a(Landroid/content/Context;Landroid/view/View;I)V

    .line 98
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .registers 9

    .prologue
    .line 74
    const/4 v2, 0x0

    const v3, 0x1010084

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/JoyFramework/wight/h;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/view/View;I)V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/TabWidget;I)V
    .registers 10

    .prologue
    .line 88
    const/4 v2, 0x0

    const v3, 0x1010084

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/JoyFramework/wight/h;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/view/View;I)V

    .line 89
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/view/View;I)V
    .registers 12

    .prologue
    const-wide/16 v6, 0xc8

    const/4 v1, 0x5

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 102
    iput-object p1, p0, Lcom/JoyFramework/wight/h;->n:Landroid/content/Context;

    .line 103
    iput-object p2, p0, Lcom/JoyFramework/wight/h;->o:Landroid/view/View;

    .line 104
    iput p3, p0, Lcom/JoyFramework/wight/h;->v:I

    .line 107
    const/4 v0, 0x2

    iput v0, p0, Lcom/JoyFramework/wight/h;->p:I

    .line 108
    invoke-direct {p0, v1}, Lcom/JoyFramework/wight/h;->c(I)I

    move-result v0

    iput v0, p0, Lcom/JoyFramework/wight/h;->q:I

    .line 109
    iget v0, p0, Lcom/JoyFramework/wight/h;->q:I

    iput v0, p0, Lcom/JoyFramework/wight/h;->r:I

    .line 110
    sget v0, Lcom/JoyFramework/wight/h;->j:I

    iput v0, p0, Lcom/JoyFramework/wight/h;->s:I

    .line 112
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {p0, v0}, Lcom/JoyFramework/wight/h;->setTypeface(Landroid/graphics/Typeface;)V

    .line 113
    invoke-direct {p0, v1}, Lcom/JoyFramework/wight/h;->c(I)I

    move-result v0

    .line 114
    invoke-virtual {p0, v0, v2, v0, v2}, Lcom/JoyFramework/wight/h;->setPadding(IIII)V

    .line 115
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/JoyFramework/wight/h;->setTextColor(I)V

    .line 117
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    sput-object v0, Lcom/JoyFramework/wight/h;->l:Landroid/view/animation/Animation;

    .line 118
    sget-object v0, Lcom/JoyFramework/wight/h;->l:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 119
    sget-object v0, Lcom/JoyFramework/wight/h;->l:Landroid/view/animation/Animation;

    invoke-virtual {v0, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 121
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v4, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    sput-object v0, Lcom/JoyFramework/wight/h;->m:Landroid/view/animation/Animation;

    .line 122
    sget-object v0, Lcom/JoyFramework/wight/h;->m:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 123
    sget-object v0, Lcom/JoyFramework/wight/h;->m:Landroid/view/animation/Animation;

    invoke-virtual {v0, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 125
    iput-boolean v2, p0, Lcom/JoyFramework/wight/h;->t:Z

    .line 127
    iget-object v0, p0, Lcom/JoyFramework/wight/h;->o:Landroid/view/View;

    if-eqz v0, :cond_66

    .line 128
    iget-object v0, p0, Lcom/JoyFramework/wight/h;->o:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/JoyFramework/wight/h;->a(Landroid/view/View;)V

    .line 133
    :goto_65
    return-void

    .line 130
    :cond_66
    invoke-virtual {p0}, Lcom/JoyFramework/wight/h;->a()V

    goto :goto_65
.end method

.method private a(Landroid/view/View;)V
    .registers 8

    .prologue
    const/16 v5, 0x8

    const/4 v4, -0x1

    .line 137
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 138
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 139
    new-instance v2, Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/JoyFramework/wight/h;->n:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 141
    instance-of v3, p1, Landroid/widget/TabWidget;

    if-eqz v3, :cond_31

    .line 144
    check-cast p1, Landroid/widget/TabWidget;

    iget v0, p0, Lcom/JoyFramework/wight/h;->v:I

    invoke-virtual {p1, v0}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    .line 145
    iput-object v0, p0, Lcom/JoyFramework/wight/h;->o:Landroid/view/View;

    .line 147
    check-cast v0, Landroid/view/ViewGroup;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 150
    invoke-virtual {p0, v5}, Lcom/JoyFramework/wight/h;->setVisibility(I)V

    .line 151
    invoke-virtual {v2, p0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 171
    :goto_30
    return-void

    .line 156
    :cond_31
    check-cast v0, Landroid/view/ViewGroup;

    .line 157
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v3

    .line 159
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 160
    invoke-virtual {v0, v2, v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 162
    invoke-virtual {v2, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 164
    invoke-virtual {p0, v5}, Lcom/JoyFramework/wight/h;->setVisibility(I)V

    .line 165
    invoke-virtual {v2, p0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 167
    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    goto :goto_30
.end method

.method private a(ZLandroid/view/animation/Animation;)V
    .registers 4

    .prologue
    .line 253
    invoke-virtual {p0}, Lcom/JoyFramework/wight/h;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_15

    .line 254
    iget-object v0, p0, Lcom/JoyFramework/wight/h;->u:Landroid/graphics/drawable/ShapeDrawable;

    if-nez v0, :cond_10

    .line 255
    invoke-direct {p0}, Lcom/JoyFramework/wight/h;->getDefaultBackground()Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/JoyFramework/wight/h;->u:Landroid/graphics/drawable/ShapeDrawable;

    .line 257
    :cond_10
    iget-object v0, p0, Lcom/JoyFramework/wight/h;->u:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {p0, v0}, Lcom/JoyFramework/wight/h;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 259
    :cond_15
    invoke-direct {p0}, Lcom/JoyFramework/wight/h;->d()V

    .line 261
    if-eqz p1, :cond_1d

    .line 262
    invoke-virtual {p0, p2}, Lcom/JoyFramework/wight/h;->startAnimation(Landroid/view/animation/Animation;)V

    .line 264
    :cond_1d
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/JoyFramework/wight/h;->setVisibility(I)V

    .line 265
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/JoyFramework/wight/h;->t:Z

    .line 266
    return-void
.end method

.method private a(ZLandroid/view/animation/Animation;Landroid/view/animation/Animation;)V
    .registers 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 277
    iget-boolean v2, p0, Lcom/JoyFramework/wight/h;->t:Z

    if-eqz v2, :cond_10

    .line 278
    if-eqz p1, :cond_e

    if-eqz p3, :cond_e

    :goto_a
    invoke-direct {p0, v0, p3}, Lcom/JoyFramework/wight/h;->b(ZLandroid/view/animation/Animation;)V

    .line 282
    :goto_d
    return-void

    :cond_e
    move v0, v1

    .line 278
    goto :goto_a

    .line 280
    :cond_10
    if-eqz p1, :cond_18

    if-eqz p2, :cond_18

    :goto_14
    invoke-direct {p0, v0, p2}, Lcom/JoyFramework/wight/h;->a(ZLandroid/view/animation/Animation;)V

    goto :goto_d

    :cond_18
    move v0, v1

    goto :goto_14
.end method

.method private b(ZLandroid/view/animation/Animation;)V
    .registers 4

    .prologue
    .line 269
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/JoyFramework/wight/h;->setVisibility(I)V

    .line 270
    if-eqz p1, :cond_a

    .line 271
    invoke-virtual {p0, p2}, Lcom/JoyFramework/wight/h;->startAnimation(Landroid/view/animation/Animation;)V

    .line 273
    :cond_a
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/JoyFramework/wight/h;->t:Z

    .line 274
    return-void
.end method

.method private c(I)I
    .registers 5

    .prologue
    .line 456
    invoke-virtual {p0}, Lcom/JoyFramework/wight/h;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 457
    const/4 v1, 0x1

    int-to-float v2, p1

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    .line 458
    float-to-int v0, v0

    return v0
.end method

.method private d()V
    .registers 5

    .prologue
    const/4 v1, -0x2

    const/4 v3, 0x0

    .line 332
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 334
    iget v1, p0, Lcom/JoyFramework/wight/h;->p:I

    packed-switch v1, :pswitch_data_48

    .line 359
    :goto_c
    invoke-virtual {p0, v0}, Lcom/JoyFramework/wight/h;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 361
    return-void

    .line 336
    :pswitch_10
    const/16 v1, 0x33

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 337
    iget v1, p0, Lcom/JoyFramework/wight/h;->q:I

    iget v2, p0, Lcom/JoyFramework/wight/h;->r:I

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_c

    .line 340
    :pswitch_1c
    const/16 v1, 0x35

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 341
    iget v1, p0, Lcom/JoyFramework/wight/h;->r:I

    iget v2, p0, Lcom/JoyFramework/wight/h;->q:I

    invoke-virtual {v0, v3, v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_c

    .line 344
    :pswitch_28
    const/16 v1, 0x53

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 345
    iget v1, p0, Lcom/JoyFramework/wight/h;->q:I

    iget v2, p0, Lcom/JoyFramework/wight/h;->r:I

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_c

    .line 348
    :pswitch_34
    const/16 v1, 0x55

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 349
    iget v1, p0, Lcom/JoyFramework/wight/h;->q:I

    iget v2, p0, Lcom/JoyFramework/wight/h;->r:I

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_c

    .line 352
    :pswitch_40
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 353
    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_c

    .line 334
    :pswitch_data_48
    .packed-switch 0x1
        :pswitch_10
        :pswitch_1c
        :pswitch_28
        :pswitch_34
        :pswitch_40
    .end packed-switch
.end method

.method private getDefaultBackground()Landroid/graphics/drawable/ShapeDrawable;
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/16 v1, 0x8

    .line 319
    invoke-direct {p0, v1}, Lcom/JoyFramework/wight/h;->c(I)I

    move-result v0

    .line 320
    new-array v1, v1, [F

    const/4 v2, 0x0

    int-to-float v3, v0

    aput v3, v1, v2

    const/4 v2, 0x1

    int-to-float v3, v0

    aput v3, v1, v2

    const/4 v2, 0x2

    int-to-float v3, v0

    aput v3, v1, v2

    const/4 v2, 0x3

    int-to-float v3, v0

    aput v3, v1, v2

    const/4 v2, 0x4

    int-to-float v3, v0

    aput v3, v1, v2

    const/4 v2, 0x5

    int-to-float v3, v0

    aput v3, v1, v2

    const/4 v2, 0x6

    int-to-float v3, v0

    aput v3, v1, v2

    const/4 v2, 0x7

    int-to-float v0, v0

    aput v0, v1, v2

    .line 322
    new-instance v0, Landroid/graphics/drawable/shapes/RoundRectShape;

    invoke-direct {v0, v1, v4, v4}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    .line 323
    new-instance v1, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 324
    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    iget v2, p0, Lcom/JoyFramework/wight/h;->s:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 326
    return-object v1
.end method


# virtual methods
.method public a(I)I
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 291
    invoke-virtual {p0}, Lcom/JoyFramework/wight/h;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 293
    if-eqz v1, :cond_f

    .line 295
    :try_start_7
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_e
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_e} :catch_18

    move-result v0

    .line 302
    :cond_f
    :goto_f
    add-int/2addr v0, p1

    .line 303
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/JoyFramework/wight/h;->setText(Ljava/lang/CharSequence;)V

    .line 304
    return v0

    .line 296
    :catch_18
    move-exception v1

    goto :goto_f
.end method

.method public a()V
    .registers 3

    .prologue
    .line 178
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/JoyFramework/wight/h;->a(ZLandroid/view/animation/Animation;)V

    .line 179
    return-void
.end method

.method public a(II)V
    .registers 3

    .prologue
    .line 433
    iput p1, p0, Lcom/JoyFramework/wight/h;->q:I

    .line 434
    iput p2, p0, Lcom/JoyFramework/wight/h;->r:I

    .line 435
    return-void
.end method

.method public a(Landroid/view/animation/Animation;)V
    .registers 3

    .prologue
    .line 196
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/JoyFramework/wight/h;->a(ZLandroid/view/animation/Animation;)V

    .line 197
    return-void
.end method

.method public a(Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V
    .registers 4

    .prologue
    .line 249
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/JoyFramework/wight/h;->a(ZLandroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    .line 250
    return-void
.end method

.method public a(Z)V
    .registers 3

    .prologue
    .line 187
    sget-object v0, Lcom/JoyFramework/wight/h;->l:Landroid/view/animation/Animation;

    invoke-direct {p0, p1, v0}, Lcom/JoyFramework/wight/h;->a(ZLandroid/view/animation/Animation;)V

    .line 188
    return-void
.end method

.method public b(I)I
    .registers 3

    .prologue
    .line 314
    neg-int v0, p1

    invoke-virtual {p0, v0}, Lcom/JoyFramework/wight/h;->a(I)I

    move-result v0

    return v0
.end method

.method public b()V
    .registers 3

    .prologue
    .line 204
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/JoyFramework/wight/h;->b(ZLandroid/view/animation/Animation;)V

    .line 205
    return-void
.end method

.method public b(Landroid/view/animation/Animation;)V
    .registers 3

    .prologue
    .line 222
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/JoyFramework/wight/h;->b(ZLandroid/view/animation/Animation;)V

    .line 223
    return-void
.end method

.method public b(Z)V
    .registers 3

    .prologue
    .line 213
    sget-object v0, Lcom/JoyFramework/wight/h;->m:Landroid/view/animation/Animation;

    invoke-direct {p0, p1, v0}, Lcom/JoyFramework/wight/h;->b(ZLandroid/view/animation/Animation;)V

    .line 214
    return-void
.end method

.method public c()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 230
    const/4 v0, 0x0

    invoke-direct {p0, v0, v1, v1}, Lcom/JoyFramework/wight/h;->a(ZLandroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    .line 231
    return-void
.end method

.method public c(Z)V
    .registers 4

    .prologue
    .line 239
    sget-object v0, Lcom/JoyFramework/wight/h;->l:Landroid/view/animation/Animation;

    sget-object v1, Lcom/JoyFramework/wight/h;->m:Landroid/view/animation/Animation;

    invoke-direct {p0, p1, v0, v1}, Lcom/JoyFramework/wight/h;->a(ZLandroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    .line 240
    return-void
.end method

.method public getBadgeBackgroundColor()I
    .registers 2

    .prologue
    .line 442
    iget v0, p0, Lcom/JoyFramework/wight/h;->s:I

    return v0
.end method

.method public getBadgePosition()I
    .registers 2

    .prologue
    .line 387
    iget v0, p0, Lcom/JoyFramework/wight/h;->p:I

    return v0
.end method

.method public getHorizontalBadgeMargin()I
    .registers 2

    .prologue
    .line 405
    iget v0, p0, Lcom/JoyFramework/wight/h;->q:I

    return v0
.end method

.method public getTarget()Landroid/view/View;
    .registers 2

    .prologue
    .line 368
    iget-object v0, p0, Lcom/JoyFramework/wight/h;->o:Landroid/view/View;

    return-object v0
.end method

.method public getVerticalBadgeMargin()I
    .registers 2

    .prologue
    .line 413
    iget v0, p0, Lcom/JoyFramework/wight/h;->r:I

    return v0
.end method

.method public isShown()Z
    .registers 2

    .prologue
    .line 377
    iget-boolean v0, p0, Lcom/JoyFramework/wight/h;->t:Z

    return v0
.end method

.method public setBadgeBackgroundColor(I)V
    .registers 3

    .prologue
    .line 451
    iput p1, p0, Lcom/JoyFramework/wight/h;->s:I

    .line 452
    invoke-direct {p0}, Lcom/JoyFramework/wight/h;->getDefaultBackground()Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/JoyFramework/wight/h;->u:Landroid/graphics/drawable/ShapeDrawable;

    .line 453
    return-void
.end method

.method public setBadgeMargin(I)V
    .registers 2

    .prologue
    .line 422
    iput p1, p0, Lcom/JoyFramework/wight/h;->q:I

    .line 423
    iput p1, p0, Lcom/JoyFramework/wight/h;->r:I

    .line 424
    return-void
.end method

.method public setBadgePosition(I)V
    .registers 2

    .prologue
    .line 397
    iput p1, p0, Lcom/JoyFramework/wight/h;->p:I

    .line 398
    return-void
.end method
