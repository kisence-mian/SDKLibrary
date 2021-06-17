.class public Lcom/facebook/share/internal/LikeBoxCountView;
.super Landroid/widget/FrameLayout;
.source "LikeBoxCountView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/share/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private additionalTextPadding:I

.field private borderPaint:Landroid/graphics/Paint;

.field private borderRadius:F

.field private caretHeight:F

.field private caretPosition:Lcom/facebook/share/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;

.field private caretWidth:F

.field private likeCountLabel:Landroid/widget/TextView;

.field private textPadding:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 67
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 52
    sget-object v0, Lcom/facebook/share/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;->LEFT:Lcom/facebook/share/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;

    iput-object v0, p0, Lcom/facebook/share/internal/LikeBoxCountView;->caretPosition:Lcom/facebook/share/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;

    .line 68
    invoke-direct {p0, p1}, Lcom/facebook/share/internal/LikeBoxCountView;->initialize(Landroid/content/Context;)V

    .line 69
    return-void
.end method

.method private drawBorder(Landroid/graphics/Canvas;FFFF)V
    .registers 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "right"    # F
    .param p5, "bottom"    # F

    .line 178
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 180
    .local v0, "borderPath":Landroid/graphics/Path;
    iget v1, p0, Lcom/facebook/share/internal/LikeBoxCountView;->borderRadius:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v1, v1, v2

    .line 183
    .local v1, "ovalSize":F
    new-instance v3, Landroid/graphics/RectF;

    add-float v4, p2, v1

    add-float v5, p3, v1

    invoke-direct {v3, p2, p3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v4, -0x3ccc0000    # -180.0f

    const/high16 v5, 0x42b40000    # 90.0f

    invoke-virtual {v0, v3, v4, v5}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    .line 186
    iget-object v3, p0, Lcom/facebook/share/internal/LikeBoxCountView;->caretPosition:Lcom/facebook/share/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;

    sget-object v4, Lcom/facebook/share/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;->TOP:Lcom/facebook/share/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;

    if-ne v3, v4, :cond_40

    .line 187
    sub-float v3, p4, p2

    iget v4, p0, Lcom/facebook/share/internal/LikeBoxCountView;->caretWidth:F

    sub-float/2addr v3, v4

    div-float/2addr v3, v2

    add-float/2addr v3, p2

    invoke-virtual {v0, v3, p3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 188
    sub-float v3, p4, p2

    div-float/2addr v3, v2

    add-float/2addr v3, p2

    iget v4, p0, Lcom/facebook/share/internal/LikeBoxCountView;->caretHeight:F

    sub-float v4, p3, v4

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 189
    sub-float v3, p4, p2

    iget v4, p0, Lcom/facebook/share/internal/LikeBoxCountView;->caretWidth:F

    add-float/2addr v3, v4

    div-float/2addr v3, v2

    add-float/2addr v3, p2

    invoke-virtual {v0, v3, p3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 193
    :cond_40
    iget v3, p0, Lcom/facebook/share/internal/LikeBoxCountView;->borderRadius:F

    sub-float v3, p4, v3

    invoke-virtual {v0, v3, p3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 196
    new-instance v3, Landroid/graphics/RectF;

    sub-float v4, p4, v1

    add-float v6, p3, v1

    invoke-direct {v3, v4, p3, p4, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v4, -0x3d4c0000    # -90.0f

    invoke-virtual {v0, v3, v4, v5}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    .line 199
    iget-object v3, p0, Lcom/facebook/share/internal/LikeBoxCountView;->caretPosition:Lcom/facebook/share/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;

    sget-object v4, Lcom/facebook/share/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;->RIGHT:Lcom/facebook/share/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;

    if-ne v3, v4, :cond_79

    .line 200
    sub-float v3, p5, p3

    iget v4, p0, Lcom/facebook/share/internal/LikeBoxCountView;->caretWidth:F

    sub-float/2addr v3, v4

    div-float/2addr v3, v2

    add-float/2addr v3, p3

    invoke-virtual {v0, p4, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 201
    iget v3, p0, Lcom/facebook/share/internal/LikeBoxCountView;->caretHeight:F

    add-float/2addr v3, p4

    sub-float v4, p5, p3

    div-float/2addr v4, v2

    add-float/2addr v4, p3

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 202
    sub-float v3, p5, p3

    iget v4, p0, Lcom/facebook/share/internal/LikeBoxCountView;->caretWidth:F

    add-float/2addr v3, v4

    div-float/2addr v3, v2

    add-float/2addr v3, p3

    invoke-virtual {v0, p4, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 206
    :cond_79
    iget v3, p0, Lcom/facebook/share/internal/LikeBoxCountView;->borderRadius:F

    sub-float v3, p5, v3

    invoke-virtual {v0, p4, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 209
    new-instance v3, Landroid/graphics/RectF;

    sub-float v4, p4, v1

    sub-float v6, p5, v1

    invoke-direct {v3, v4, v6, p4, p5}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v5}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    .line 212
    iget-object v3, p0, Lcom/facebook/share/internal/LikeBoxCountView;->caretPosition:Lcom/facebook/share/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;

    sget-object v4, Lcom/facebook/share/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;->BOTTOM:Lcom/facebook/share/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;

    if-ne v3, v4, :cond_b1

    .line 213
    sub-float v3, p4, p2

    iget v4, p0, Lcom/facebook/share/internal/LikeBoxCountView;->caretWidth:F

    add-float/2addr v3, v4

    div-float/2addr v3, v2

    add-float/2addr v3, p2

    invoke-virtual {v0, v3, p5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 214
    sub-float v3, p4, p2

    div-float/2addr v3, v2

    add-float/2addr v3, p2

    iget v4, p0, Lcom/facebook/share/internal/LikeBoxCountView;->caretHeight:F

    add-float/2addr v4, p5

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 215
    sub-float v3, p4, p2

    iget v4, p0, Lcom/facebook/share/internal/LikeBoxCountView;->caretWidth:F

    sub-float/2addr v3, v4

    div-float/2addr v3, v2

    add-float/2addr v3, p2

    invoke-virtual {v0, v3, p5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 219
    :cond_b1
    iget v3, p0, Lcom/facebook/share/internal/LikeBoxCountView;->borderRadius:F

    add-float/2addr v3, p2

    invoke-virtual {v0, v3, p5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 222
    new-instance v3, Landroid/graphics/RectF;

    sub-float v4, p5, v1

    add-float v6, p2, v1

    invoke-direct {v3, p2, v4, v6, p5}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v0, v3, v5, v5}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    .line 225
    iget-object v3, p0, Lcom/facebook/share/internal/LikeBoxCountView;->caretPosition:Lcom/facebook/share/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;

    sget-object v4, Lcom/facebook/share/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;->LEFT:Lcom/facebook/share/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;

    if-ne v3, v4, :cond_e8

    .line 226
    sub-float v3, p5, p3

    iget v4, p0, Lcom/facebook/share/internal/LikeBoxCountView;->caretWidth:F

    add-float/2addr v3, v4

    div-float/2addr v3, v2

    add-float/2addr v3, p3

    invoke-virtual {v0, p2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 227
    iget v3, p0, Lcom/facebook/share/internal/LikeBoxCountView;->caretHeight:F

    sub-float v3, p2, v3

    sub-float v4, p5, p3

    div-float/2addr v4, v2

    add-float/2addr v4, p3

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 228
    sub-float v3, p5, p3

    iget v4, p0, Lcom/facebook/share/internal/LikeBoxCountView;->caretWidth:F

    sub-float/2addr v3, v4

    div-float/2addr v3, v2

    add-float/2addr v3, p3

    invoke-virtual {v0, p2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 232
    :cond_e8
    iget v2, p0, Lcom/facebook/share/internal/LikeBoxCountView;->borderRadius:F

    add-float/2addr v2, p3

    invoke-virtual {v0, p2, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 234
    iget-object v2, p0, Lcom/facebook/share/internal/LikeBoxCountView;->borderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 235
    return-void
.end method

.method private initialize(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 133
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/share/internal/LikeBoxCountView;->setWillNotDraw(Z)V

    .line 134
    invoke-virtual {p0}, Lcom/facebook/share/internal/LikeBoxCountView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/common/R$dimen;->com_facebook_likeboxcountview_caret_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/facebook/share/internal/LikeBoxCountView;->caretHeight:F

    .line 135
    invoke-virtual {p0}, Lcom/facebook/share/internal/LikeBoxCountView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/common/R$dimen;->com_facebook_likeboxcountview_caret_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/facebook/share/internal/LikeBoxCountView;->caretWidth:F

    .line 136
    invoke-virtual {p0}, Lcom/facebook/share/internal/LikeBoxCountView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/common/R$dimen;->com_facebook_likeboxcountview_border_radius:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/facebook/share/internal/LikeBoxCountView;->borderRadius:F

    .line 138
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/facebook/share/internal/LikeBoxCountView;->borderPaint:Landroid/graphics/Paint;

    .line 139
    nop

    .line 140
    invoke-virtual {p0}, Lcom/facebook/share/internal/LikeBoxCountView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/facebook/common/R$color;->com_facebook_likeboxcountview_border_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 139
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 141
    iget-object v0, p0, Lcom/facebook/share/internal/LikeBoxCountView;->borderPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/facebook/share/internal/LikeBoxCountView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/facebook/common/R$dimen;->com_facebook_likeboxcountview_border_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 142
    iget-object v0, p0, Lcom/facebook/share/internal/LikeBoxCountView;->borderPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 144
    invoke-direct {p0, p1}, Lcom/facebook/share/internal/LikeBoxCountView;->initializeLikeCountLabel(Landroid/content/Context;)V

    .line 146
    iget-object v0, p0, Lcom/facebook/share/internal/LikeBoxCountView;->likeCountLabel:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/facebook/share/internal/LikeBoxCountView;->addView(Landroid/view/View;)V

    .line 148
    iget-object v0, p0, Lcom/facebook/share/internal/LikeBoxCountView;->caretPosition:Lcom/facebook/share/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;

    invoke-virtual {p0, v0}, Lcom/facebook/share/internal/LikeBoxCountView;->setCaretPosition(Lcom/facebook/share/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;)V

    .line 149
    return-void
.end method

.method private initializeLikeCountLabel(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .line 152
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/share/internal/LikeBoxCountView;->likeCountLabel:Landroid/widget/TextView;

    .line 153
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 156
    .local v0, "likeCountLabelLayoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v1, p0, Lcom/facebook/share/internal/LikeBoxCountView;->likeCountLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 157
    iget-object v1, p0, Lcom/facebook/share/internal/LikeBoxCountView;->likeCountLabel:Landroid/widget/TextView;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 158
    iget-object v1, p0, Lcom/facebook/share/internal/LikeBoxCountView;->likeCountLabel:Landroid/widget/TextView;

    .line 160
    invoke-virtual {p0}, Lcom/facebook/share/internal/LikeBoxCountView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/facebook/common/R$dimen;->com_facebook_likeboxcountview_text_size:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    .line 158
    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 161
    iget-object v1, p0, Lcom/facebook/share/internal/LikeBoxCountView;->likeCountLabel:Landroid/widget/TextView;

    .line 162
    invoke-virtual {p0}, Lcom/facebook/share/internal/LikeBoxCountView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/facebook/common/R$color;->com_facebook_likeboxcountview_text_color:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 161
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 163
    invoke-virtual {p0}, Lcom/facebook/share/internal/LikeBoxCountView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/facebook/common/R$dimen;->com_facebook_likeboxcountview_text_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/facebook/share/internal/LikeBoxCountView;->textPadding:I

    .line 166
    invoke-virtual {p0}, Lcom/facebook/share/internal/LikeBoxCountView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/facebook/common/R$dimen;->com_facebook_likeboxcountview_caret_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/facebook/share/internal/LikeBoxCountView;->additionalTextPadding:I

    .line 167
    return-void
.end method

.method private setAdditionalTextPadding(IIII)V
    .registers 10
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 170
    iget-object v0, p0, Lcom/facebook/share/internal/LikeBoxCountView;->likeCountLabel:Landroid/widget/TextView;

    iget v1, p0, Lcom/facebook/share/internal/LikeBoxCountView;->textPadding:I

    add-int v2, v1, p1

    add-int v3, v1, p2

    add-int v4, v1, p3

    add-int/2addr v1, p4

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 175
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 109
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 111
    invoke-virtual {p0}, Lcom/facebook/share/internal/LikeBoxCountView;->getPaddingTop()I

    move-result v0

    .local v0, "top":I
    invoke-virtual {p0}, Lcom/facebook/share/internal/LikeBoxCountView;->getPaddingLeft()I

    move-result v1

    .line 112
    .local v1, "left":I
    invoke-virtual {p0}, Lcom/facebook/share/internal/LikeBoxCountView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/facebook/share/internal/LikeBoxCountView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    .local v2, "right":I
    invoke-virtual {p0}, Lcom/facebook/share/internal/LikeBoxCountView;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/facebook/share/internal/LikeBoxCountView;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    .line 114
    .local v3, "bottom":I
    sget-object v4, Lcom/facebook/share/internal/LikeBoxCountView$1;->$SwitchMap$com$facebook$share$internal$LikeBoxCountView$LikeBoxCountViewCaretPosition:[I

    iget-object v5, p0, Lcom/facebook/share/internal/LikeBoxCountView;->caretPosition:Lcom/facebook/share/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;

    invoke-virtual {v5}, Lcom/facebook/share/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_4e

    goto :goto_43

    .line 116
    :pswitch_2b
    int-to-float v4, v3

    iget v5, p0, Lcom/facebook/share/internal/LikeBoxCountView;->caretHeight:F

    sub-float/2addr v4, v5

    float-to-int v3, v4

    .line 117
    goto :goto_43

    .line 125
    :pswitch_31
    int-to-float v4, v2

    iget v5, p0, Lcom/facebook/share/internal/LikeBoxCountView;->caretHeight:F

    sub-float/2addr v4, v5

    float-to-int v2, v4

    goto :goto_43

    .line 122
    :pswitch_37
    int-to-float v4, v0

    iget v5, p0, Lcom/facebook/share/internal/LikeBoxCountView;->caretHeight:F

    add-float/2addr v4, v5

    float-to-int v0, v4

    .line 123
    goto :goto_43

    .line 119
    :pswitch_3d
    int-to-float v4, v1

    iget v5, p0, Lcom/facebook/share/internal/LikeBoxCountView;->caretHeight:F

    add-float/2addr v4, v5

    float-to-int v1, v4

    .line 120
    nop

    .line 129
    :goto_43
    int-to-float v6, v1

    int-to-float v7, v0

    int-to-float v8, v2

    int-to-float v9, v3

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v4 .. v9}, Lcom/facebook/share/internal/LikeBoxCountView;->drawBorder(Landroid/graphics/Canvas;FFFF)V

    .line 130
    return-void

    nop

    :pswitch_data_4e
    .packed-switch 0x1
        :pswitch_3d
        :pswitch_37
        :pswitch_31
        :pswitch_2b
    .end packed-switch
.end method

.method public setCaretPosition(Lcom/facebook/share/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;)V
    .registers 4
    .param p1, "caretPosition"    # Lcom/facebook/share/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 86
    iput-object p1, p0, Lcom/facebook/share/internal/LikeBoxCountView;->caretPosition:Lcom/facebook/share/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;

    .line 90
    sget-object v0, Lcom/facebook/share/internal/LikeBoxCountView$1;->$SwitchMap$com$facebook$share$internal$LikeBoxCountView$LikeBoxCountViewCaretPosition:[I

    invoke-virtual {p1}, Lcom/facebook/share/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_28

    goto :goto_27

    .line 101
    :pswitch_f
    iget v0, p0, Lcom/facebook/share/internal/LikeBoxCountView;->additionalTextPadding:I

    invoke-direct {p0, v1, v1, v1, v0}, Lcom/facebook/share/internal/LikeBoxCountView;->setAdditionalTextPadding(IIII)V

    goto :goto_27

    .line 98
    :pswitch_15
    iget v0, p0, Lcom/facebook/share/internal/LikeBoxCountView;->additionalTextPadding:I

    invoke-direct {p0, v1, v1, v0, v1}, Lcom/facebook/share/internal/LikeBoxCountView;->setAdditionalTextPadding(IIII)V

    .line 99
    goto :goto_27

    .line 95
    :pswitch_1b
    iget v0, p0, Lcom/facebook/share/internal/LikeBoxCountView;->additionalTextPadding:I

    invoke-direct {p0, v1, v0, v1, v1}, Lcom/facebook/share/internal/LikeBoxCountView;->setAdditionalTextPadding(IIII)V

    .line 96
    goto :goto_27

    .line 92
    :pswitch_21
    iget v0, p0, Lcom/facebook/share/internal/LikeBoxCountView;->additionalTextPadding:I

    invoke-direct {p0, v0, v1, v1, v1}, Lcom/facebook/share/internal/LikeBoxCountView;->setAdditionalTextPadding(IIII)V

    .line 93
    nop

    .line 105
    :goto_27
    return-void

    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_21
        :pswitch_1b
        :pswitch_15
        :pswitch_f
    .end packed-switch
.end method

.method public setText(Ljava/lang/String;)V
    .registers 3
    .param p1, "text"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 77
    iget-object v0, p0, Lcom/facebook/share/internal/LikeBoxCountView;->likeCountLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    return-void
.end method
