.class public Lcom/JoyFramework/wight/DownLoadSeekBar;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private b:I

.field private c:I

.field private d:F

.field private e:Landroid/graphics/Paint;

.field private f:Landroid/graphics/Paint;

.field private g:I

.field private h:Z

.field private i:I

.field private j:I

.field private k:F

.field private l:F

.field private m:Z

.field private n:F

.field private o:Landroid/graphics/Paint;

.field private p:F

.field private q:F

.field private r:F

.field private s:F

.field private t:Ljava/lang/String;

.field private u:F

.field private v:Z

.field private w:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 74
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/JoyFramework/wight/DownLoadSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .prologue
    .line 78
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/JoyFramework/wight/DownLoadSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8

    .prologue
    const/high16 v3, 0x41200000    # 10.0f

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 82
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    iput-boolean v1, p0, Lcom/JoyFramework/wight/DownLoadSeekBar;->h:Z

    .line 47
    iput-boolean v1, p0, Lcom/JoyFramework/wight/DownLoadSeekBar;->m:Z

    .line 55
    const/high16 v0, 0x41700000    # 15.0f

    iput v0, p0, Lcom/JoyFramework/wight/DownLoadSeekBar;->p:F

    .line 57
    iput v3, p0, Lcom/JoyFramework/wight/DownLoadSeekBar;->q:F

    .line 60
    const/high16 v0, 0x420c0000    # 35.0f

    iput v0, p0, Lcom/JoyFramework/wight/DownLoadSeekBar;->r:F

    .line 62
    iput v3, p0, Lcom/JoyFramework/wight/DownLoadSeekBar;->s:F

    .line 67
    iput-boolean v1, p0, Lcom/JoyFramework/wight/DownLoadSeekBar;->v:Z

    .line 70
    const/high16 v0, 0x41c80000    # 25.0f

    iput v0, p0, Lcom/JoyFramework/wight/DownLoadSeekBar;->w:F

    .line 83
    iput-object p1, p0, Lcom/JoyFramework/wight/DownLoadSeekBar;->a:Landroid/content/Context;

    .line 85
    iget-object v0, p0, Lcom/JoyFramework/wight/DownLoadSeekBar;->a:Landroid/content/Context;

    const-string v1, "joygame_high_light_grey"

    invoke-static {v0, v1}, Lcom/JoyFramework/d/as;->h(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/JoyFramework/wight/DownLoadSeekBar;->a(I)I

    move-result v0

    iput v0, p0, Lcom/JoyFramework/wight/DownLoadSeekBar;->b:I

    .line 86
    iget-object v0, p0, Lcom/JoyFramework/wight/DownLoadSeekBar;->a:Landroid/content/Context;

    const-string v1, "joy_base_color"

    invoke-static {v0, v1}, Lcom/JoyFramework/d/as;->h(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/JoyFramework/wight/DownLoadSeekBar;->a(I)I

    move-result v0

    iput v0, p0, Lcom/JoyFramework/wight/DownLoadSeekBar;->c:I

    .line 87
    iget-object v0, p0, Lcom/JoyFramework/wight/DownLoadSeekBar;->a:Landroid/content/Context;

    const/high16 v1, 0x41500000    # 13.0f

    invoke-virtual {p0, v0, v1}, Lcom/JoyFramework/wight/DownLoadSeekBar;->a(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/JoyFramework/wight/DownLoadSeekBar;->d:F

    .line 88
    iget-object v0, p0, Lcom/JoyFramework/wight/DownLoadSeekBar;->a:Landroid/content/Context;

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-virtual {p0, v0, v1}, Lcom/JoyFramework/wight/DownLoadSeekBar;->a(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/JoyFramework/wight/DownLoadSeekBar;->l:F

    .line 92
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/JoyFramework/wight/DownLoadSeekBar;->e:Landroid/graphics/Paint;

    .line 93
    iget-object v0, p0, Lcom/JoyFramework/wight/DownLoadSeekBar;->e:Landroid/graphics/Paint;

    iget v1, p0, Lcom/JoyFramework/wight/DownLoadSeekBar;->b:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 94
    iget v0, p0, Lcom/JoyFramework/wight/DownLoadSeekBar;->w:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_6d

    .line 95
    iget-object v0, p0, Lcom/JoyFramework/wight/DownLoadSeekBar;->e:Landroid/graphics/Paint;

    iget v1, p0, Lcom/JoyFramework/wight/DownLoadSeekBar;->w:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 98
    :cond_6d
    iget-object v0, p0, Lcom/JoyFramework/wight/DownLoadSeekBar;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 100
    iget-object v0, p0, Lcom/JoyFramework/wight/DownLoadSeekBar;->e:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 103
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/JoyFramework/wight/DownLoadSeekBar;->f:Landroid/graphics/Paint;

    .line 104
    iget-object v0, p0, Lcom/JoyFramework/wight/DownLoadSeekBar;->f:Landroid/graphics/Paint;

    iget v1, p0, Lcom/JoyFramework/wight/DownLoadSeekBar;->c:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 105
    iget-object v0, p0, Lcom/JoyFramework/wight/DownLoadSeekBar;->f:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 106
    iget-object v0, p0, Lcom/JoyFramework/wight/DownLoadSeekBar;->f:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 109
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/JoyFramework/wight/DownLoadSeekBar;->o:Landroid/graphics/Paint;

    .line 110
    iget-object v0, p0, Lcom/JoyFramework/wight/DownLoadSeekBar;->o:Landroid/graphics/Paint;

    iget v1, p0, Lcom/JoyFramework/wight/DownLoadSeekBar;->c:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 111
    iget-object v0, p0, Lcom/JoyFramework/wight/DownLoadSeekBar;->o:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 112
    iget-object v0, p0, Lcom/JoyFramework/wight/DownLoadSeekBar;->o:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 114
    iget-boolean v0, p0, Lcom/JoyFramework/wight/DownLoadSeekBar;->v:Z

    if-eqz v0, :cond_bf

    .line 115
    iget v0, p0, Lcom/JoyFramework/wight/DownLoadSeekBar;->d:F

    const/high16 v1, 0x41f00000    # 30.0f

    add-float/2addr v0, v1

    iput v0, p0, Lcom/JoyFramework/wight/DownLoadSeekBar;->n:F

    .line 116
    iget v0, p0, Lcom/JoyFramework/wight/DownLoadSeekBar;->n:F

    iget v1, p0, Lcom/JoyFramework/wight/DownLoadSeekBar;->d:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/JoyFramework/wight/DownLoadSeekBar;->d:F

    .line 120
    :cond_bf
    return-void
.end method

.method private a(I)I
    .registers 3

    .prologue
    .line 123
    iget-object v0, p0, Lcom/JoyFramework/wight/DownLoadSeekBar;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method

.method private a(II)I
    .registers 4

    .prologue
    .line 297
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 298
    packed-switch v0, :pswitch_data_a

    .line 308
    :pswitch_7
    const/4 v0, 0x0

    return v0

    .line 298
    nop

    :pswitch_data_a
    .packed-switch 0x40000000
        :pswitch_7
    .end packed-switch
.end method

.method private a(Landroid/content/Context;)I
    .registers 3

    .prologue
    .line 312
    if-nez p1, :cond_4

    .line 313
    const/4 v0, 0x0

    .line 317
    :goto_3
    return v0

    .line 315
    :cond_4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 317
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    goto :goto_3
.end method


# virtual methods
.method public a(Landroid/content/Context;F)I
    .registers 5

    .prologue
    .line 284
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 285
    mul-float/2addr v0, p2

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public b(Landroid/content/Context;F)I
    .registers 5

    .prologue
    .line 292
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 293
    div-float v0, p2, v0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 10

    .prologue
    const/high16 v7, 0x41b00000    # 22.0f

    const/high16 v6, 0x40000000    # 2.0f

    const/4 v1, 0x0

    .line 128
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 130
    iget-boolean v0, p0, Lcom/JoyFramework/wight/DownLoadSeekBar;->h:Z

    if-nez v0, :cond_47

    .line 131
    iget v0, p0, Lcom/JoyFramework/wight/DownLoadSeekBar;->i:I

    if-nez v0, :cond_16

    .line 132
    invoke-virtual {p0}, Lcom/JoyFramework/wight/DownLoadSeekBar;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcom/JoyFramework/wight/DownLoadSeekBar;->i:I

    .line 135
    :cond_16
    iget v0, p0, Lcom/JoyFramework/wight/DownLoadSeekBar;->l:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_37

    .line 136
    new-instance v0, Landroid/graphics/RectF;

    iget v2, p0, Lcom/JoyFramework/wight/DownLoadSeekBar;->n:F

    invoke-virtual {p0}, Lcom/JoyFramework/wight/DownLoadSeekBar;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/JoyFramework/wight/DownLoadSeekBar;->d:F

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 137
    iget v1, p0, Lcom/JoyFramework/wight/DownLoadSeekBar;->l:F

    iget v2, p0, Lcom/JoyFramework/wight/DownLoadSeekBar;->l:F

    iget-object v3, p0, Lcom/JoyFramework/wight/DownLoadSeekBar;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 141
    :goto_33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/JoyFramework/wight/DownLoadSeekBar;->h:Z

    .line 199
    :cond_36
    :goto_36
    return-void

    .line 139
    :cond_37
    iget v2, p0, Lcom/JoyFramework/wight/DownLoadSeekBar;->n:F

    invoke-virtual {p0}, Lcom/JoyFramework/wight/DownLoadSeekBar;->getMeasuredWidth()I

    move-result v0

    int-to-float v3, v0

    iget v4, p0, Lcom/JoyFramework/wight/DownLoadSeekBar;->d:F

    iget-object v5, p0, Lcom/JoyFramework/wight/DownLoadSeekBar;->e:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_33

    .line 146
    :cond_47
    iget v0, p0, Lcom/JoyFramework/wight/DownLoadSeekBar;->k:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_36

    .line 148
    iget v0, p0, Lcom/JoyFramework/wight/DownLoadSeekBar;->l:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_16f

    .line 149
    iget v0, p0, Lcom/JoyFramework/wight/DownLoadSeekBar;->k:F

    iget v2, p0, Lcom/JoyFramework/wight/DownLoadSeekBar;->l:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_158

    .line 150
    iget v0, p0, Lcom/JoyFramework/wight/DownLoadSeekBar;->k:F

    iget v2, p0, Lcom/JoyFramework/wight/DownLoadSeekBar;->i:I

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_7a

    .line 152
    new-instance v0, Landroid/graphics/RectF;

    iget v2, p0, Lcom/JoyFramework/wight/DownLoadSeekBar;->n:F

    iget v3, p0, Lcom/JoyFramework/wight/DownLoadSeekBar;->i:I

    int-to-float v3, v3

    iget v4, p0, Lcom/JoyFramework/wight/DownLoadSeekBar;->d:F

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 153
    iget v1, p0, Lcom/JoyFramework/wight/DownLoadSeekBar;->l:F

    iget v2, p0, Lcom/JoyFramework/wight/DownLoadSeekBar;->l:F

    iget-object v3, p0, Lcom/JoyFramework/wight/DownLoadSeekBar;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_36

    .line 156
    :cond_7a
    new-instance v0, Landroid/graphics/RectF;

    iget v2, p0, Lcom/JoyFramework/wight/DownLoadSeekBar;->n:F

    iget v3, p0, Lcom/JoyFramework/wight/DownLoadSeekBar;->i:I

    int-to-float v3, v3

    iget v4, p0, Lcom/JoyFramework/wight/DownLoadSeekBar;->d:F

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 157
    iget v2, p0, Lcom/JoyFramework/wight/DownLoadSeekBar;->l:F

    iget v3, p0, Lcom/JoyFramework/wight/DownLoadSeekBar;->l:F

    iget-object v4, p0, Lcom/JoyFramework/wight/DownLoadSeekBar;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 159
    new-instance v0, Landroid/graphics/RectF;

    iget v2, p0, Lcom/JoyFramework/wight/DownLoadSeekBar;->n:F

    iget v3, p0, Lcom/JoyFramework/wight/DownLoadSeekBar;->k:F

    iget v4, p0, Lcom/JoyFramework/wight/DownLoadSeekBar;->d:F

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 160
    iget v2, p0, Lcom/JoyFramework/wight/DownLoadSeekBar;->l:F

    iget v3, p0, Lcom/JoyFramework/wight/DownLoadSeekBar;->l:F

    iget-object v4, p0, Lcom/JoyFramework/wight/DownLoadSeekBar;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 162
    iget-boolean v0, p0, Lcom/JoyFramework/wight/DownLoadSeekBar;->v:Z

    if-eqz v0, :cond_36

    .line 163
    iget v0, p0, Lcom/JoyFramework/wight/DownLoadSeekBar;->k:F

    iget v2, p0, Lcom/JoyFramework/wight/DownLoadSeekBar;->r:F

    sub-float/2addr v0, v2

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_36

    .line 167
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 168
    iget v1, p0, Lcom/JoyFramework/wight/DownLoadSeekBar;->k:F

    iget v2, p0, Lcom/JoyFramework/wight/DownLoadSeekBar;->p:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/JoyFramework/wight/DownLoadSeekBar;->n:F

    iget v3, p0, Lcom/JoyFramework/wight/DownLoadSeekBar;->q:F

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 169
    iget v1, p0, Lcom/JoyFramework/wight/DownLoadSeekBar;->k:F

    iget v2, p0, Lcom/JoyFramework/wight/DownLoadSeekBar;->p:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/JoyFramework/wight/DownLoadSeekBar;->n:F

    iget v3, p0, Lcom/JoyFramework/wight/DownLoadSeekBar;->q:F

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 170
    iget v1, p0, Lcom/JoyFramework/wight/DownLoadSeekBar;->k:F

    iget v2, p0, Lcom/JoyFramework/wight/DownLoadSeekBar;->n:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 171
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 172
    iget-object v1, p0, Lcom/JoyFramework/wight/DownLoadSeekBar;->o:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 174
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/JoyFramework/wight/DownLoadSeekBar;->k:F

    iget v2, p0, Lcom/JoyFramework/wight/DownLoadSeekBar;->r:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/JoyFramework/wight/DownLoadSeekBar;->s:F

    iget v3, p0, Lcom/JoyFramework/wight/DownLoadSeekBar;->k:F

    iget v4, p0, Lcom/JoyFramework/wight/DownLoadSeekBar;->r:F

    add-float/2addr v3, v4

    iget v4, p0, Lcom/JoyFramework/wight/DownLoadSeekBar;->n:F

    iget v5, p0, Lcom/JoyFramework/wight/DownLoadSeekBar;->q:F

    sub-float/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 176
    iget-object v1, p0, Lcom/JoyFramework/wight/DownLoadSeekBar;->o:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v7, v7, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 179
    iget-object v0, p0, Lcom/JoyFramework/wight/DownLoadSeekBar;->e:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    .line 180
    iget v1, p0, Lcom/JoyFramework/wight/DownLoadSeekBar;->n:F

    iget v2, p0, Lcom/JoyFramework/wight/DownLoadSeekBar;->q:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/JoyFramework/wight/DownLoadSeekBar;->s:F

    sub-float/2addr v1, v2

    div-float/2addr v1, v6

    iget v2, p0, Lcom/JoyFramework/wight/DownLoadSeekBar;->s:F

    add-float/2addr v1, v2

    iget v2, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    add-float/2addr v0, v2

    div-float/2addr v0, v6

    sub-float v0, v1, v0

    .line 181
    iget-object v1, p0, Lcom/JoyFramework/wight/DownLoadSeekBar;->t:Ljava/lang/String;

    iget v2, p0, Lcom/JoyFramework/wight/DownLoadSeekBar;->k:F

    iget v3, p0, Lcom/JoyFramework/wight/DownLoadSeekBar;->u:F

    div-float/2addr v3, v6

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/JoyFramework/wight/DownLoadSeekBar;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 182
    const-string v0, "DownLoadSeekBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mNeedToDrawWidth - (textWidth / 2) = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/JoyFramework/wight/DownLoadSeekBar;->k:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/JoyFramework/wight/DownLoadSeekBar;->u:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "     "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/JoyFramework/wight/DownLoadSeekBar;->k:F

    iget v3, p0, Lcom/JoyFramework/wight/DownLoadSeekBar;->u:F

    div-float/2addr v3, v6

    sub-float/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_36

    .line 189
    :cond_158
    new-instance v0, Landroid/graphics/RectF;

    iget v2, p0, Lcom/JoyFramework/wight/DownLoadSeekBar;->n:F

    iget v3, p0, Lcom/JoyFramework/wight/DownLoadSeekBar;->i:I

    int-to-float v3, v3

    iget v4, p0, Lcom/JoyFramework/wight/DownLoadSeekBar;->d:F

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 190
    iget v1, p0, Lcom/JoyFramework/wight/DownLoadSeekBar;->l:F

    iget v2, p0, Lcom/JoyFramework/wight/DownLoadSeekBar;->l:F

    iget-object v3, p0, Lcom/JoyFramework/wight/DownLoadSeekBar;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto/16 :goto_36

    .line 193
    :cond_16f
    iget v2, p0, Lcom/JoyFramework/wight/DownLoadSeekBar;->n:F

    iget v3, p0, Lcom/JoyFramework/wight/DownLoadSeekBar;->k:F

    iget v4, p0, Lcom/JoyFramework/wight/DownLoadSeekBar;->d:F

    iget-object v5, p0, Lcom/JoyFramework/wight/DownLoadSeekBar;->f:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 194
    iget v1, p0, Lcom/JoyFramework/wight/DownLoadSeekBar;->k:F

    iget v2, p0, Lcom/JoyFramework/wight/DownLoadSeekBar;->n:F

    invoke-virtual {p0}, Lcom/JoyFramework/wight/DownLoadSeekBar;->getMeasuredWidth()I

    move-result v0

    int-to-float v3, v0

    iget v4, p0, Lcom/JoyFramework/wight/DownLoadSeekBar;->d:F

    iget-object v5, p0, Lcom/JoyFramework/wight/DownLoadSeekBar;->e:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_36
.end method

.method protected onMeasure(II)V
    .registers 4

    .prologue
    .line 204
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 211
    iget v0, p0, Lcom/JoyFramework/wight/DownLoadSeekBar;->d:F

    float-to-int v0, v0

    invoke-virtual {p0, p1, v0}, Lcom/JoyFramework/wight/DownLoadSeekBar;->setMeasuredDimension(II)V

    .line 212
    return-void
.end method

.method public setMaxProgressSize(I)V
    .registers 5

    .prologue
    .line 263
    if-gtz p1, :cond_3

    .line 278
    :cond_2
    :goto_2
    return-void

    .line 266
    :cond_3
    iput p1, p0, Lcom/JoyFramework/wight/DownLoadSeekBar;->g:I

    .line 269
    iget v0, p0, Lcom/JoyFramework/wight/DownLoadSeekBar;->i:I

    if-lez v0, :cond_2

    .line 270
    iget v0, p0, Lcom/JoyFramework/wight/DownLoadSeekBar;->i:I

    iget v1, p0, Lcom/JoyFramework/wight/DownLoadSeekBar;->g:I

    if-le v0, v1, :cond_34

    .line 271
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/JoyFramework/wight/DownLoadSeekBar;->m:Z

    .line 272
    iget v0, p0, Lcom/JoyFramework/wight/DownLoadSeekBar;->i:I

    iget v1, p0, Lcom/JoyFramework/wight/DownLoadSeekBar;->g:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/JoyFramework/wight/DownLoadSeekBar;->j:I

    .line 276
    :goto_19
    const-string v0, "DownLoadSeekBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSingleWidth  ----   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/JoyFramework/wight/DownLoadSeekBar;->j:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 274
    :cond_34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/JoyFramework/wight/DownLoadSeekBar;->m:Z

    goto :goto_19
.end method

.method public setProgressSize(I)V
    .registers 7

    .prologue
    const/high16 v4, 0x42c80000    # 100.0f

    .line 220
    if-ltz p1, :cond_8

    iget v0, p0, Lcom/JoyFramework/wight/DownLoadSeekBar;->g:I

    if-gez v0, :cond_9

    .line 247
    :cond_8
    :goto_8
    return-void

    .line 224
    :cond_9
    iget v0, p0, Lcom/JoyFramework/wight/DownLoadSeekBar;->g:I

    if-lt p1, v0, :cond_6e

    .line 226
    iget v0, p0, Lcom/JoyFramework/wight/DownLoadSeekBar;->i:I

    int-to-float v0, v0

    iput v0, p0, Lcom/JoyFramework/wight/DownLoadSeekBar;->k:F

    .line 235
    :cond_12
    :goto_12
    iget-boolean v0, p0, Lcom/JoyFramework/wight/DownLoadSeekBar;->m:Z

    if-eqz v0, :cond_6a

    .line 236
    iget v0, p0, Lcom/JoyFramework/wight/DownLoadSeekBar;->g:I

    iget v1, p0, Lcom/JoyFramework/wight/DownLoadSeekBar;->i:I

    div-int/2addr v0, v1

    int-to-float v0, v0

    mul-float/2addr v0, v4

    .line 240
    const-string v1, "DownLoadSeekBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " mMaxSize = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/JoyFramework/wight/DownLoadSeekBar;->g:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,   progressSize = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    int-to-float v1, p1

    div-float/2addr v1, v0

    mul-float/2addr v1, v4

    iput v1, p0, Lcom/JoyFramework/wight/DownLoadSeekBar;->k:F

    .line 242
    const-string v1, "DownLoadSeekBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " mMaxSize / progressSize  == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "     ,mTotalWidth   == "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/JoyFramework/wight/DownLoadSeekBar;->i:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    :cond_6a
    invoke-virtual {p0}, Lcom/JoyFramework/wight/DownLoadSeekBar;->postInvalidate()V

    goto :goto_8

    .line 229
    :cond_6e
    iget v0, p0, Lcom/JoyFramework/wight/DownLoadSeekBar;->j:I

    if-lez v0, :cond_12

    .line 231
    iget v0, p0, Lcom/JoyFramework/wight/DownLoadSeekBar;->j:I

    mul-int/2addr v0, p1

    int-to-float v0, v0

    iput v0, p0, Lcom/JoyFramework/wight/DownLoadSeekBar;->k:F

    goto :goto_12
.end method

.method public setTextForProgress(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 250
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 251
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/JoyFramework/wight/DownLoadSeekBar;->v:Z

    .line 252
    iput-object p1, p0, Lcom/JoyFramework/wight/DownLoadSeekBar;->t:Ljava/lang/String;

    .line 253
    iget-object v0, p0, Lcom/JoyFramework/wight/DownLoadSeekBar;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/JoyFramework/wight/DownLoadSeekBar;->u:F

    .line 255
    :cond_13
    return-void
.end method
